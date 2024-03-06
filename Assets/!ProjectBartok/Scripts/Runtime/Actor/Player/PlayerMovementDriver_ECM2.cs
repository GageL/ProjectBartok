using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using ECM2;

namespace BlacksiteStudio.ProjectBartok {
    public class PlayerMovementDriver_ECM2 : Character {
        #region Public/Private Variables
        #endregion

        #region Runtime Variables
        private Player playerRef;
        
        private Vector3 aimDirection;
        #endregion

        #region Native Methods
        protected override void Awake() {
            base.Awake();
            playerRef = this.GetComponentInParent<Player>();
            camera = playerRef.PlayerCameraController.Camera;
        }
        
        private void Update() {
            // Movement direction in world space

            Vector3 movementDirection = Vector3.zero;

            movementDirection += Vector3.right * playerRef.PlayerInputListener.MoveAxis.x;
            movementDirection += Vector3.forward * playerRef.PlayerInputListener.MoveAxis.y;

            // If character has a camera assigned...

            // Make movement direction relative to its camera view direction
            movementDirection = movementDirection.relativeTo(cameraTransform);

            // Set Character's movement direction

            SetMovementDirection(movementDirection);

            // Calc aim direction

            Vector3 aimDirection = Vector3.zero;

            if (playerRef.PlayerInputListener.FocusButton) {
                // Convert mouse screen position to world position

                Ray ray = camera.ScreenPointToRay(Input.mousePosition);
                if (Physics.Raycast(ray, out RaycastHit hitResult, Mathf.Infinity)) {
                    // Compute aim direction vector (character direction -> mouse world position)

                    Vector3 toHitPoint2D = (hitResult.point - GetPosition()).onlyXZ();
                    aimDirection = toHitPoint2D.normalized;
                }
            }

            // Set Character's aim direction

            SetAimDirection(aimDirection);
        }
        #endregion

        #region Callback Methods
        #endregion

        #region Static Methods
        #endregion

        #region Public Methods
        /// <summary>
        /// Returns the current aim direction vector.
        /// </summary>
        public virtual Vector3 GetAimDirection() {
            return aimDirection;
        }

        /// <summary>
        /// Sets the desired aim direction vector (in world space).
        /// </summary>
        public virtual void SetAimDirection(Vector3 worldDirection) {
            aimDirection = worldDirection;
        }
        #endregion

        #region Private Methods
        /// <summary>
        /// Use a custom rotation mode to rotate towards aim direction (if shooting)
        /// or towards movement direction if not.
        /// </summary>
        /// <param name="deltaTime">The simulation delta time</param>
        protected override void CustomRotationMode(float deltaTime) {
            // Call base method implementation

            base.CustomRotationMode(deltaTime);

            // Update character rotation

            Vector3 targetDirection = aimDirection.isZero() ? GetMovementDirection() : GetAimDirection();

            RotateTowards(targetDirection, deltaTime);
        }
        #endregion
    }
}