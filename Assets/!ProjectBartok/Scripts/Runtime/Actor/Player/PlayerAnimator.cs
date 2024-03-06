using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
    public class PlayerAnimator : MonoBehaviour {
        #region Public/Private Variables
        [SerializeField]
        private Animator animator;
        [SerializeField]
        private string speedParameter = "Speed";
        [SerializeField]
        private string forwardParameter = "Forward";
        [SerializeField]
        private string strafeParameter = "Strafe";
        [SerializeField]
        private string isGroundedParameter = "IsGrounded";
        [SerializeField]
        private string isCrouchedParameter = "IsCrouched";
        [SerializeField]
        private string isSprintingParameter = "IsSprinting";
        [SerializeField]
        private string runWalkParameter = "RunWalk";
        [SerializeField]
        private string isFocusedParameter = "IsFocused";
        #endregion

        #region Runtime Variables
        private Player playerRef;
        #endregion

        #region Native Methods
        private void Awake() {
            playerRef = this.GetComponent<Player>();
        }

        private void OnEnable() {
            PlayerInputListener.OnButtonDownFocus += PlayerInputListener_OnButtonDownFocus;
            PlayerInputListener.OnButtonUpFocus += PlayerInputListener_OnButtonUpFocus;
        }

        private void Update() {
            GetAxisValueMove();
            animator.SetBool(isSprintingParameter, playerRef.PlayerInputListener.SprintButton);
            animator.SetBool(isGroundedParameter, playerRef.PlayerMovementDriver.IsGrounded);
            animator.SetBool(isCrouchedParameter, playerRef.PlayerMovementDriver.IsCrouched);
            animator.SetBool(runWalkParameter, playerRef.PlayerMovementDriver.IsWalking);
        }

        private void OnDisable() {
            PlayerInputListener.OnButtonDownFocus -= PlayerInputListener_OnButtonDownFocus;
            PlayerInputListener.OnButtonUpFocus -= PlayerInputListener_OnButtonUpFocus;
        }
        #endregion

        #region Callback Methods
        private void GetAxisValueMove() {
            if (playerRef.PlayerInputListener.FocusButton) {
                // Transform global movement input into the player's local space.
                Vector3 localMoveDirection = playerRef.transform.InverseTransformDirection(new Vector3(playerRef.PlayerInputListener.MoveAxis.x, 0, playerRef.PlayerInputListener.MoveAxis.y));

                // Calculate normalized speed.
                float normalizedSpeed = playerRef.PlayerMovementDriver.CurrentSpeed / playerRef.PlayerMovementDriver.GetMaxSpeed();
    
                // Set Animator parameters.
                animator.SetFloat(speedParameter, normalizedSpeed); // This is the overall speed regardless of direction.
                // For 'Forward' and 'Strafe', multiply normalized speed with respective local direction components to retain directional influence.
                animator.SetFloat(forwardParameter, normalizedSpeed * Mathf.Clamp(localMoveDirection.z, -1, 1)); // Ensuring it doesn't exceed range [-1, 1]
                animator.SetFloat(strafeParameter, normalizedSpeed * Mathf.Clamp(localMoveDirection.x, -1, 1)); // Same as above, ensuring range is maintained
            } else {
                animator.SetFloat(speedParameter, playerRef.PlayerMovementDriver.CurrentSpeed / playerRef.PlayerMovementDriver.GetMaxSpeed());
                animator.SetFloat(forwardParameter, (playerRef.PlayerMovementDriver.CurrentSpeed / playerRef.PlayerMovementDriver.GetMaxSpeed()) * playerRef.PlayerInputListener.MoveAxis.y);
                animator.SetFloat(strafeParameter, (playerRef.PlayerMovementDriver.CurrentSpeed / playerRef.PlayerMovementDriver.GetMaxSpeed()) * playerRef.PlayerInputListener.MoveAxis.x);
            }
        }

        private void PlayerInputListener_OnButtonDownFocus() {
            animator.SetBool(isFocusedParameter, true);
        }

        private void PlayerInputListener_OnButtonUpFocus() {
            animator.SetBool(isFocusedParameter, false);
        }
        #endregion

        #region Static Methods
        #endregion

        #region Public Methods
        #endregion

        #region Private Methods
        #endregion
    }
}