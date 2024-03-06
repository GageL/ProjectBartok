using System;
using System.Timers;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
    public static class TimerUtility {
        #region Public/Private Variables
        #endregion

        #region Runtime Variables
        #endregion

        #region Native Methods
        #endregion

        #region Callback Methods
        #endregion

        #region Static Methods
        /// <summary>
        /// Starts a timer that executes a method after a specified length in milliseconds
        /// </summary>
        /// <param name="length">Duration of the timer</param>
        /// <param name="methodToExecute">Method to execute when the timer has finished</param>
        public static void StartTimerMsInt(int length, Action methodToExecute) {
            if (length == 0) {
                methodToExecute.Invoke();
                return;
            }
            Timer timer = new Timer(length);
            timer.Elapsed += (sender, e) => {
                timer.Stop(); // Stop the timer
                UnityMainThreadDispatcher.Instance().Enqueue(() => {
                    methodToExecute.Invoke(); // Execute the provided method
                });
            };
            timer.AutoReset = false; // Set AutoReset to false for one-time execution
            timer.Start(); // Start the timer
        }

        /// <summary>
        /// Starts a timer that executes a method after a specified length in seconds
        /// </summary>
        /// <param name="length">Duration of the timer (auto multiplied x1000 to meet ms target)</param>
        /// <param name="methodToExecute">Method to execute when the timer has finished</param>
        public static void StartTimerSecInt(int length, Action methodToExecute) {
            if (length == 0) {
                methodToExecute.Invoke();
                return;
            }
            Timer timer = new Timer(length * 1000);
            timer.Elapsed += (sender, e) => {
                timer.Stop(); // Stop the timer
                UnityMainThreadDispatcher.Instance().Enqueue(() => {
                    methodToExecute.Invoke(); // Execute the provided method
                });
            };
            timer.AutoReset = false; // Set AutoReset to false for one-time execution
            timer.Start(); // Start the timer
        }

        /// <summary>
        /// Starts a timer that executes a method after a specified length in seconds as a float
        /// </summary>
        /// <param name="length">Duration of the timer (auto multiplied x1000 to meet ms target)</param>
        /// <param name="methodToExecute">Method to execute when the timer has finished</param>
        public static void StartTimerSecFloat(float length, Action methodToExecute) {
            if (length == 0) {
                methodToExecute.Invoke();
                return;
            }
            Timer timer = new Timer(Mathf.RoundToInt(length * 1000f));
            timer.Elapsed += (sender, e) => {
                timer.Stop(); // Stop the timer
                UnityMainThreadDispatcher.Instance().Enqueue(() => {
                    methodToExecute.Invoke(); // Execute the provided method
                });
            };
            timer.AutoReset = false; // Set AutoReset to false for one-time execution
            timer.Start(); // Start the timer
        }
        #endregion

        #region Public Methods
        #endregion

        #region Private Methods
        #endregion
    }
}