using System;
using System.Reflection;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BlacksiteStudio.ProjectBartok {
    public static class AltLog {
        #region Public/Private Variables
        #endregion

        #region Runtime Variables
        #endregion

        #region Native Methods
        #endregion

        #region Callback Methods
        #endregion

        #region Static Methods
        public static void Print(object message = null, LogType logType = LogType.Log) {
            string _oClass = new System.Diagnostics.StackTrace().GetFrame(1).GetMethod().DeclaringType.Name;
            string _oMethod = new System.Diagnostics.StackTrace().GetFrame(1).GetMethod().Name;
            string _output = $"{_oClass} | {_oMethod}{(message == null ? string.Empty : $" | {message}")}";
            switch (logType) {
                case LogType.Assert:
                case LogType.Exception:
                case LogType.Error:
                    Debug.LogError(_output);
                    break;
                case LogType.Warning:
                    Debug.LogWarning(_output);
                    break;
                case LogType.Log:
                    Debug.Log(_output);
                    break;
            }
        }
        #endregion

        #region Public Methods
        #endregion

        #region Private Methods
        #endregion
    }
}