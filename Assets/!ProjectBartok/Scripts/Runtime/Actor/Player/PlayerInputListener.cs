using System;
using System.Collections;
using System.Collections.Generic;
using Sirenix.OdinInspector;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
    public class PlayerInputListener : MonoBehaviour {
        #region Public/Private Variables
        public static Action<Vector2> OnAxisValueMove;
        public static Action OnButtonDownCrouch;
        public static Action OnButtonUpCrouch;
        public static Action OnButtonDownJump;
        public static Action OnButtonUpJump;
        public static Action OnButtonDownSprint;
        public static Action OnButtonUpSprint;
        public static Action OnButtonDownToggleWalk;
        public static Action OnButtonUpToggleWalk;
        public static Action OnButtonDownFocus;
        public static Action OnButtonUpFocus;
        public static Action OnButtonDownInteract;
        public static Action OnButtonUpInteract;
        public static Action OnButtonDownCameraRotate;
        public static Action OnButtonUpCameraRotate;
        public static Action<float> OnAxisValueCameraZoom;

        [Title("Runtime Debug")]
        [ReadOnly]
        [SerializeField]
        private int playerIndex = 0;
        [ReadOnly]
        [SerializeField]
        private Vector2 moveAxis;
        [ReadOnly]
        [SerializeField]
        private bool crouchButton;
        [ReadOnly]
        [SerializeField]
        private bool jumpButton;
        [ReadOnly]
        [SerializeField]
        private bool sprintButton;
        [ReadOnly]
        [SerializeField]
        private bool toggleWalkButton;
        [ReadOnly]
        [SerializeField]
        private bool focusButton;
        [ReadOnly]
        [SerializeField]
        private bool interactButton;
        [ReadOnly]
        [SerializeField]
        private bool cameraRotateButton;
        [ReadOnly]
        [SerializeField]
        private float cameraZoomAxis;

        private Player playerRef;
        private Rewired.Player rPlayer;
        
        public Vector2 MoveAxis => moveAxis;
        public bool SprintButton => sprintButton;
        public bool FocusButton => focusButton;
        public bool CameraRotateButton => cameraRotateButton;
        public float CameraZoomAxis => cameraZoomAxis;
        #endregion

        #region Runtime Variables
        private void Awake() {
            playerRef = this.GetComponent<Player>();
            rPlayer = Rewired.ReInput.players.GetPlayer(playerIndex);
        }

        private void Update() {
            GetInput();
            ProcessInput();
        }
        #endregion

        #region Native Methods
        #endregion

        #region Callback Methods
        #endregion

        #region Static Methods
        #endregion

        #region Public Methods
        #endregion

        #region Private Methods
        private void GetInput() {
            moveAxis.x = rPlayer.GetAxis("XMove");
            moveAxis.y = rPlayer.GetAxis("ZMove");
            crouchButton = rPlayer.GetButton("Crouch");
            if (rPlayer.GetButtonDown("Crouch")) {
                OnButtonDownCrouch?.Invoke();
            }
            if (rPlayer.GetButtonUp("Crouch")) {
                OnButtonUpCrouch?.Invoke();
            }
            jumpButton = rPlayer.GetButton("Jump");
            if (rPlayer.GetButtonDown("Jump")) {
                OnButtonDownJump?.Invoke();
            }
            if (rPlayer.GetButtonUp("Jump")) {
                OnButtonUpJump?.Invoke();
            }
            sprintButton = rPlayer.GetButton("Sprint");
            if (rPlayer.GetButtonDown("Sprint")) {
                OnButtonDownSprint?.Invoke();
            }
            if (rPlayer.GetButtonUp("Sprint")) {
                OnButtonUpSprint?.Invoke();
            }
            toggleWalkButton = rPlayer.GetButton("ToggleWalk");
            if (rPlayer.GetButtonDown("ToggleWalk")) {
                OnButtonDownToggleWalk?.Invoke();
            }
            if (rPlayer.GetButtonUp("ToggleWalk")) {
                OnButtonUpToggleWalk?.Invoke();
            }
            focusButton = rPlayer.GetButton("Focus");
            if (rPlayer.GetButtonDown("Focus")) {
                OnButtonDownFocus?.Invoke();
            }
            if (rPlayer.GetButtonUp("Focus")) {
                OnButtonUpFocus?.Invoke();
            }
            interactButton = rPlayer.GetButton("Interact");
            if (rPlayer.GetButtonDown("Interact")) {
                OnButtonDownInteract?.Invoke();
            }
            if (rPlayer.GetButtonUp("Interact")) {
                OnButtonUpInteract?.Invoke();
            }
            cameraRotateButton = rPlayer.GetButton("CameraRotate");
            if (rPlayer.GetButtonDown("CameraRotate")) {
                OnButtonDownCameraRotate?.Invoke();
            }
            if (rPlayer.GetButtonUp("CameraRotate")) {
                OnButtonUpCameraRotate?.Invoke();
            }
            cameraZoomAxis = rPlayer.GetAxis("CameraZoom");
        }

        private void ProcessInput() {
            if (moveAxis.x != 0.0f || moveAxis.y != 0.0f) {
                OnAxisValueMove?.Invoke(moveAxis);
            }
            if (cameraZoomAxis != 0.0f) {
                OnAxisValueCameraZoom?.Invoke(cameraZoomAxis);
            }
        }
        #endregion
    }
}