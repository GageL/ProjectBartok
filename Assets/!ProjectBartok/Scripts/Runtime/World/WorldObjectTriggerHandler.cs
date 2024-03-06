using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;

namespace BlacksiteStudio.ProjectBartok {
    public class WorldObjectTriggerHandler : MonoBehaviour {
        #region Public/Private Variables
        [SerializeField]
        private MeshRenderer[] meshes;
        #endregion

        #region Runtime Variables
        #endregion

        #region Native Methods
        private void Awake() {
            foreach (var mesh in meshes) {
                mesh.shadowCastingMode = ShadowCastingMode.On;
            }
        }
        #endregion

        #region Callback Methods
        private void OnTriggerEnter(Collider other) {
            if (other.gameObject.layer == LayerMask.NameToLayer("Player")) {
                foreach (var mesh in meshes) {
                    mesh.shadowCastingMode = ShadowCastingMode.ShadowsOnly;
                }
            }
        }

        private void OnTriggerExit(Collider other) {
            if (other.gameObject.layer == LayerMask.NameToLayer("Player")) {
                foreach (var mesh in meshes) {
                    mesh.shadowCastingMode = ShadowCastingMode.On;
                }
            }
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