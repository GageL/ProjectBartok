using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
    public class Player : MonoBehaviour {
        #region Public/Private Variables
        [SerializeField]
        private PlayerCameraController playerCameraController;
        [SerializeField]
        private PlayerInputListener playerInputListener;
        [SerializeField]
        private PlayerMovementDriver playerMovementDriver;
        [SerializeField]
        private PlayerAnimator playerAnimator;
        
        public PlayerCameraController PlayerCameraController => playerCameraController;
        public PlayerInputListener PlayerInputListener => playerInputListener;
        public PlayerMovementDriver PlayerMovementDriver => playerMovementDriver;
        public PlayerAnimator PlayerAnimator => playerAnimator;
        #endregion

        #region Runtime Variables
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
        #endregion
    }
}