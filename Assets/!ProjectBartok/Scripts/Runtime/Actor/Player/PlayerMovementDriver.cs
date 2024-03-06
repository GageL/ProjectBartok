using System;
using System.Collections;
using System.Collections.Generic;
using Sirenix.OdinInspector;
using UnityEngine;
using UnityEngine.UIElements;

namespace BlacksiteStudio.ProjectBartok {
    public class PlayerMovementDriver : MonoBehaviour {
        #region Public/Private Variables
        [Title("Collision")]
        [SerializeField]
        private CharacterController controller;
        [SerializeField]
        private float colliderRadius = 0.28f;
        [SerializeField]
        private float colliderHeight = 1.78f;
        [SerializeField]
        private float gravity = -9.81f;
        [SerializeField]
        private Transform groundCheck;
        [SerializeField]
        private float groundDistance = 0.4f;
        [SerializeField]
        private LayerMask groundMask;

        [Title("Movement")]
        [SerializeField]
        private float crouchSpeed = .75f;
        [SerializeField]
        private float walkSpeed = 1.5f;
        [SerializeField]
        private float runSpeed = 2f;
        [SerializeField]
        private float sprintMultiplier = 1.5f;
        [SerializeField]
        private float speedInterpolation = 8;
        [SerializeField]
        private float jumpHeight = 1f;

        [Title("Rotation")]
        [SerializeField]
        private float crouchRotateSpeed = 15;
        [SerializeField]
        private float walkRotateSpeed = 30;
        [SerializeField]
        private float normalRotateSpeed = 40;
        #endregion

        #region Runtime Variables
        [Title("Runtime Debug")]
        [ReadOnly]
        [SerializeField]
        private Vector3 velocity;
        [ReadOnly]
        [SerializeField]
        private bool isGrounded;
        [ReadOnly]
        [SerializeField]
        private Vector3 moveDirection;
        [ReadOnly]
        [SerializeField]
        private float currentSpeed;
        [ReadOnly]
        [SerializeField]
        private bool isWalking;
        [ReadOnly]
        [SerializeField]
        private bool isCrouched;

        private Player playerRef;

        public bool IsGrounded => isGrounded;
        public float CurrentSpeed => currentSpeed;
        public bool IsWalking => isWalking;
        public bool IsCrouched => isCrouched;
        #endregion

        #region Native Methods
        private void OnDrawGizmosSelected() {
            Color _gc = isGrounded ? Color.green : Color.red;
            _gc.a = 0.5f;
            Gizmos.color = _gc;
            Gizmos.DrawSphere(groundCheck.position, groundDistance);
        }

        private void OnValidate() {
            if (controller != null) {
                controller.radius = colliderRadius;
                if (colliderHeight <= 0.55f) {
                    colliderHeight = 0.56f;
                }
                controller.height = colliderHeight;
                controller.center = new Vector3(0, colliderHeight / 2, 0);
            }
        }

        private void Awake() {
            playerRef = this.GetComponent<Player>();
        }

        private void OnEnable() {
            PlayerInputListener.OnButtonDownJump += PlayerInputListener_OnButtonDownJump;
            PlayerInputListener.OnButtonDownToggleWalk += PlayerInputListener_OnButtonDownToggleWalk;
            PlayerInputListener.OnButtonDownCrouch += PlayerInputListener_OnButtonDownCrouch;
        }

        private void Update() {
            DoMove();
            DoRotate();
        }

        private void FixedUpdate() {
            CheckGrounded();
        }

        private void OnDisable() {
            PlayerInputListener.OnButtonDownJump -= PlayerInputListener_OnButtonDownJump;
            PlayerInputListener.OnButtonDownToggleWalk -= PlayerInputListener_OnButtonDownToggleWalk;
            PlayerInputListener.OnButtonDownCrouch -= PlayerInputListener_OnButtonDownCrouch;
        }
        #endregion

        #region Callback Methods
        private void PlayerInputListener_OnButtonDownJump() {
            if (isGrounded) {
                velocity.y = Mathf.Sqrt(jumpHeight * -2f * gravity);
            }
        }

        private void PlayerInputListener_OnButtonDownToggleWalk() {
            isWalking = !isWalking;
        }

        private void PlayerInputListener_OnButtonDownCrouch() {
            isCrouched = !isCrouched;
        }
        #endregion

        #region Static Methods
        #endregion

        #region Public Methods
        public float GetMaxSpeed() {
            return runSpeed + runSpeed * sprintMultiplier;
        }
        #endregion

        #region Private Methods
        private void CheckGrounded() {
            isGrounded = Physics.CheckSphere(groundCheck.position, groundDistance, groundMask);
        }

        private void DoMove() {
            if (isGrounded && velocity.y < 0) {
                velocity.y = -2f;
            }

            // Movement based on camera forward direction
            Vector3 _mDir = (playerRef.PlayerCameraController.transform.right * playerRef.PlayerInputListener.MoveAxis.x + playerRef.PlayerCameraController.transform.forward * playerRef.PlayerInputListener.MoveAxis.y).normalized; // Use camera's directions
            _mDir.y = 0; // This ensures the movement is only horizontal

            // Apply the movement
            if (playerRef.PlayerInputListener.MoveAxis != Vector2.zero) {
                float _targetSpeed = 0;
                if (isCrouched) {
                    _targetSpeed = crouchSpeed;
                } else if (isWalking) {
                    _targetSpeed = walkSpeed;
                } else if (!playerRef.PlayerInputListener.FocusButton && playerRef.PlayerInputListener.SprintButton) {
                    _targetSpeed = runSpeed + runSpeed * sprintMultiplier;
                } else if (!playerRef.PlayerInputListener.FocusButton) {
                    _targetSpeed = runSpeed;
                } else {
                    _targetSpeed = walkSpeed; // Default to walk speed as focus is assumed
                }
                currentSpeed = Mathf.Lerp(currentSpeed, _targetSpeed, speedInterpolation * Time.deltaTime);
            } else {
                currentSpeed = Mathf.Lerp(currentSpeed, 0, speedInterpolation * Time.deltaTime);
            }
            controller.Move(_mDir * (currentSpeed * Time.deltaTime));

            // Apply gravity
            velocity.y += gravity * Time.deltaTime;
            controller.Move(velocity * Time.deltaTime);

            // Rotation to match movement direction (optional)
            if (_mDir != Vector3.zero) {
                moveDirection = _mDir; // Need to store moveDirection after zero check as itll cause forward snapping after movement stops
            }
        }

        private void DoRotate() {
            if (playerRef.PlayerInputListener.FocusButton) {
                moveDirection = Vector3.zero; // Clear move direction when focusing
                    
                float _targetRotateSpeed = 0;
                if (isCrouched) {
                    _targetRotateSpeed = crouchRotateSpeed;
                } else if (isWalking) {
                    _targetRotateSpeed = walkRotateSpeed;
                } else {
                    _targetRotateSpeed = walkRotateSpeed; // Default to walk speed as focus is assumed
                }

                Ray _ray = playerRef.PlayerCameraController.Camera.ScreenPointToRay(Input.mousePosition);
                RaycastHit _hit;

                if (Physics.Raycast(_ray, out _hit, Mathf.Infinity)) {
                    Vector3 _lookDirection = _hit.point - this.transform.position;
                    _lookDirection.y = 0; // Keep the rotation in the horizontal plane
                    if (_lookDirection != Vector3.zero) {
                        Quaternion _newRotation = Quaternion.LookRotation(_lookDirection);
                        this.transform.rotation = Quaternion.Slerp(this.transform.rotation, _newRotation, _targetRotateSpeed * Time.deltaTime);
                    }
                }
            } else {
                if (moveDirection == Vector3.zero) { // If not focusing and not moving, don't rotate
                    return;
                }
                Quaternion _toRotation = Quaternion.LookRotation(moveDirection, Vector3.up);
                this.transform.rotation = Quaternion.RotateTowards(this.transform.rotation, _toRotation, normalRotateSpeed * Time.deltaTime * 10); // Adjust rotation speed as needed
            }
        }
        #endregion
    }
}