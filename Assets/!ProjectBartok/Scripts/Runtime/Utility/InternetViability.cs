using System;
using System.Net;
using System.Net.Sockets;
using System.Collections;
using System.Threading;
using System.Threading.Tasks;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using Sirenix.OdinInspector;

namespace BlacksiteStudio.ProjectBartok {
	public class InternetViability : MonoBehaviour {
		#region Public/Private Variables
		public static InternetViability Instance { get; private set; }
		private static readonly float InternetStatusPingInterval = 10;
		public static Action<bool> InternetStatusPing;
		#endregion

		#region Runtime Variables
		public bool IsInternetConnected { get { return isInternetConnected; } }
		public bool IsOfflineMode { get { return isOfflineMode; } }
		[Title("Runtime Debug")]
		[ReadOnly]
		[SerializeField] private bool everPingedInternet;
		[ReadOnly]
		[SerializeField] private bool isInternetConnected;
		[ReadOnly]
		[SerializeField] private bool isOfflineMode;
		[ReadOnly]
		[SerializeField] private bool runPingInternetQueued;

		private Coroutine internetPingProcess;
		private Thread runPingInternetThread;
		#endregion

		#region Native Methods
		private void Awake() {
			Instance = this;
			DontDestroyOnLoad(this.gameObject);
			ManualRunPingInternet();
			internetPingProcess = StartCoroutine(InternetPingProcess());
		}

		private void OnApplicationQuit() {
			if (runPingInternetThread != null) {
				runPingInternetThread.Join();
			}
			if (internetPingProcess != null) {
				StopCoroutine(internetPingProcess);
				internetPingProcess = null;
			}
		}
		#endregion

		#region Callback Methods

		#endregion

		#region Static Methods

		#endregion

		#region Public Methods
		public bool ManualRunPingInternet() {
			try {
				var host = System.Net.Dns.GetHostEntry("baymanager.fullswingapps.com");
				isInternetConnected = true;
				Debug.Log("Internet is connected");
				return true;
			} catch (SocketException e) {
				isInternetConnected = false;
				Debug.LogError("Internet is not connected");
				return false;
			}
		}
		#endregion

		#region Private Methods
		private IEnumerator InternetPingProcess() {
			while (true) {
				if (!everPingedInternet) {
					yield return new WaitForSeconds(5);
				}
				if (runPingInternetQueued) { yield return new WaitForEndOfFrame(); }
				runPingInternetQueued = true;
				runPingInternetThread = new Thread(RunPingInternet);
				runPingInternetThread.Start();
				yield return new WaitForSeconds(InternetStatusPingInterval);
			}
		}

		private void RunPingInternet() {
			try {
				var host = System.Net.Dns.GetHostEntry("baymanager.fullswingapps.com"); // TODO: Route to a host that is specific to this project
				UnityMainThreadDispatcher.Instance().Enqueue(() => {
					if (!isInternetConnected) {
						isInternetConnected = true;
						if (everPingedInternet) {
							Debug.Log("Internet connection has been re-established");
							InternetStatusPing?.Invoke(true);
						}
					}
					everPingedInternet = true;
					runPingInternetQueued = false;
				});
			} catch (System.Net.Sockets.SocketException e) {
				UnityMainThreadDispatcher.Instance().Enqueue(() => {
					if (isInternetConnected) {
						Debug.LogError($"Internet connection has been lost, entering OFFLINE mode [SocketException: {e.Message}]");
						isInternetConnected = false;
						SetOfflineMode(true);
						InternetStatusPing?.Invoke(false);
					}
					everPingedInternet = true;
					runPingInternetQueued = false;
				});
			}
		}

		public void SetOfflineMode(bool value) {
			isOfflineMode = value;
			if (value) {
				
			}
		}
		#endregion
	}
}