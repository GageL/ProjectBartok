using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace BlacksiteStudio.ProjectBartok {
		public static class RuntimeInitializer {
		#region Public/Private Variables

		#endregion

		#region Runtime Variables

		#endregion

		#region Native Methods

		#endregion

		#region Callback Methods

		#endregion

		#region Static Methods
		[RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
		private static void RuntimeInitializeOnLoad() {
#if UNITY_DISABLE_AUTOMATIC_SYSTEM_BOOTSTRAP
#endif
			//if (SceneManager.GetActiveScene().buildIndex == 0) { return; }
			//SceneManager.LoadScene(0);
		}
		#endregion

		#region Public Methods

		#endregion

		#region Private Methods

		#endregion
	}
}