using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
	public class UnityMainThreadDispatcher : MonoBehaviour {
		#region Public/Private Variables
		private static UnityMainThreadDispatcher _instance = null;
		private static readonly Queue<Action> _executionQueue = new Queue<Action>();
		#endregion

		#region Runtime Variables

		#endregion

		#region Native Methods
		void Awake() {
			if (_instance == null) {
				_instance = this;
				DontDestroyOnLoad(this.gameObject);
			}
		}

		public void Update() {
			lock (_executionQueue) {
				while (_executionQueue.Count > 0) {
					_executionQueue.Dequeue().Invoke();
				}
			}
		}

		void OnDestroy() {
			_instance = null;
		}
		#endregion

		#region Callback Methods

		#endregion

		#region Static Methods
		public static UnityMainThreadDispatcher Instance() {
			if (!Exists()) {
				throw new Exception("UnityMainThreadDispatcher could not find the UnityMainThreadDispatcher object. Please ensure you have added the MainThreadExecutor Prefab to your scene.");
			}
			return _instance;
		}

		public static bool Exists() {
			return _instance != null;
		}
		#endregion

		#region Public Methods
		/// <summary>
		/// Locks the queue and adds the IEnumerator to the queue
		/// </summary>
		/// <param name="action">IEnumerator function that will be executed from the main thread.</param>
		public void Enqueue(IEnumerator action) {
			lock (_executionQueue) {
				_executionQueue.Enqueue(() => {
					StartCoroutine(action);
				});
			}
		}

		/// <summary>
		/// Locks the queue and adds the Action to the queue
		/// </summary>
		/// <param name="action">function that will be executed from the main thread.</param>
		public void Enqueue(Action action) {
			Enqueue(ActionWrapper(action));
		}

		/// <summary>
		/// Locks the queue and adds the Action to the queue, returning a Task which is completed when the action completes
		/// </summary>
		/// <param name="action">function that will be executed from the main thread.</param>
		/// <returns>A Task that can be awaited until the action completes</returns>
		public Task EnqueueAsync(Action action) {
			var tcs = new TaskCompletionSource<bool>();

			void WrappedAction() {
				try {
					action();
					tcs.TrySetResult(true);
				} catch (Exception ex) {
					tcs.TrySetException(ex);
				}
			}

			Enqueue(ActionWrapper(WrappedAction));
			return tcs.Task;
		}
		#endregion

		#region Private Methods
		IEnumerator ActionWrapper(Action a) {
			a();
			yield return null;
		}
		#endregion
	}
}