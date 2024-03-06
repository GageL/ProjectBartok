using System;
using System.Collections;
using System.Collections.Generic;
using Sirenix.OdinInspector;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
    public class PlayerCameraController : MonoBehaviour {
        #region Public/Private Variables
        [Title("References")]
        [SerializeField]
        private Camera camera;

        [Title("Tracking")]
        [SerializeField]
        private float trackSmoothing = 3f;
        [SerializeField]
        private Vector3 trackOffset;
        [SerializeField]
        private float maxLookRadius = 10f;

        [Title("Rotation")]
        [SerializeField]
        private float defaultRotation = 45f;
        [SerializeField]
        private float rotateSpeed = 2f;

        [Title("Zoom")]
        [SerializeField]
        private float defaultZoom = 60f;
        [SerializeField]
        private float zoomSmoothing = 6f;
        [SerializeField]
        private float minFOVZoom = 20;
        [SerializeField]
        private float maxFOVZoom = 60;

        public Camera Camera => camera;
        #endregion

        #region Runtime Variables
        private Player playerRef;

        [Title("Runtime Debug")]
        [ReadOnly]
        [SerializeField]
        private float currentFOVZoom;
        #endregion

        #region Native Methods
        private void Awake() {
            playerRef = this.GetComponentInParent<Player>();

            this.transform.localEulerAngles = new Vector3(0, defaultRotation, 0);
            currentFOVZoom = defaultZoom;
        }

        private void Start() {
            Initialize();
        }

        private void Update() {}

        private void LateUpdate() {
            TrackTarget();
            DoRotate();
            DoZoom();
        }
        #endregion

        #region Callback Methods
        #endregion

        #region Static Methods
        private System.Drawing.Point? cachedMousePoint;

        [System.Runtime.InteropServices.DllImport("user32.dll")]
        public static extern bool SetCursorPos(int X, int Y);

        public static void SetCursorPosition(int x, int y) {
            SetCursorPos(x, y);
        }

        [System.Runtime.InteropServices.DllImport("user32.dll")]
        public static extern bool GetCursorPos(out POINT lpPoint);

        // POINT structure used by user32 functions
        [System.Runtime.InteropServices.StructLayout(System.Runtime.InteropServices.LayoutKind.Sequential)]
        public struct POINT {
            public int X;
            public int Y;
        }

        public static System.Drawing.Point GetCurrentCursorPosition() {
            POINT lpPoint;
            // Call the function and pass in the POINT object
            GetCursorPos(out lpPoint);
            // Convert the POINT structure to a more usable Point structure
            return new System.Drawing.Point(lpPoint.X, lpPoint.Y);
        }

        public static void RestoreCursorPosition(System.Drawing.Point position) {
            SetCursorPos(position.X, position.Y);
        }
        #endregion

        #region Public Methods
        #endregion

        #region Private Methods
        private void Initialize() {
            this.transform.SetParent(null);
        }

        private void TrackTarget() {
            if (cachedMousePoint != null) {
                // Restore the cursor position and clear the cache
                RestoreCursorPosition(cachedMousePoint.Value);
                cachedMousePoint = null;
            }
            // Follow the target with dynamic smoothing
            Vector3 desiredPosition = playerRef.transform.position + trackOffset;
            transform.position = Vector3.Lerp(transform.position, desiredPosition, trackSmoothing * Time.deltaTime);

            // Get mouse world position at the height of the target
            Vector3 mouseWorldPosition = camera.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, camera.transform.position.y - playerRef.transform.position.y));
            Vector3 direction = mouseWorldPosition - playerRef.transform.position;

            // Calculate the current distance from the camera to the target
            float currentDistance = Vector3.Distance(playerRef.transform.position, transform.position - trackOffset);

            // Check if the camera is already at the edge of its max extend
            bool isAtMaxExtend = currentDistance >= maxLookRadius;

            // Update direction only if we are not at max extend, or if the mouse is inside the max extend radius
            if (!isAtMaxExtend || direction.magnitude <= maxLookRadius) {
                if (direction.magnitude > maxLookRadius) {
                    direction = direction.normalized * maxLookRadius;
                }

                Vector3 newCamPos = playerRef.transform.position + trackOffset + new Vector3(direction.x, 0, direction.z);

                // Apply a more significant threshold when deciding whether to update the camera's position
                if ((newCamPos - transform.position).magnitude > 0.01f) {
                    transform.position = Vector3.Lerp(transform.position, newCamPos, trackSmoothing * Time.deltaTime);
                }
            }
        }

        private void DoRotate() {
            if (playerRef.PlayerInputListener.CameraRotateButton) {
                if (cachedMousePoint == null) {
                    // Cache the current windows mouse position
                    cachedMousePoint = GetCurrentCursorPosition();
                }
                // Set/lock the cursor position to the cached position
                SetCursorPosition(cachedMousePoint.Value.X, cachedMousePoint.Value.Y);
                float mouseX = Input.GetAxis("Mouse X");
                transform.RotateAround(playerRef.transform.position, Vector3.up, mouseX * rotateSpeed);
            }
        }

        private void DoZoom() {
            // Adjust target FOV based on player input
            currentFOVZoom -= playerRef.PlayerInputListener.CameraZoomAxis * zoomSmoothing;
            currentFOVZoom = Mathf.Clamp(currentFOVZoom, minFOVZoom, maxFOVZoom);
            // Smoothly interpolate the camera's FOV towards the target FOV
            camera.fieldOfView = Mathf.Lerp(camera.fieldOfView, currentFOVZoom, Time.deltaTime * zoomSmoothing);
        }
        #endregion
    }
}