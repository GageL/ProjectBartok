using System;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;
using System.Text.RegularExpressions;

namespace BlacksiteStudio.ProjectBartok {
    public static class Utils {
        #region Public/Private Variables
        #endregion

        #region Runtime Variables
        #endregion

        #region Native Methods
        #endregion

        #region Callback Methods
        #endregion

        #region Static Methods
        public static byte[] GenerateEncryptionKey() {
            // Generate a random key of a specific length (in this case, 256 bits / 32 bytes)
            using (RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider()) {
                byte[] key = new byte[32]; // 32 bytes = 256 bits
                rng.GetBytes(key);
                return key;
            }
        }

        public static bool RandomBool() {
            var random = new System.Random();
            if (random.NextDouble() >= 0.5) {
                return true;
            } else {
                return false;
            }
        }

        public static int GetTrueRandomNumber(int minValue, int maxValue) {
            if (minValue >= maxValue) {
                throw new ArgumentException("Invalid input: minValue must be less than maxValue.");
            }

            using (RNGCryptoServiceProvider rngCrypto = new RNGCryptoServiceProvider()) {
                byte[] randomNumber = new byte[1];
                int range = maxValue - minValue + 1;
                do {
                    rngCrypto.GetBytes(randomNumber);
                } while (!IsValidRandomNumber(randomNumber[0], range));
                return minValue + (randomNumber[0] % range);
            }
        }

        private static bool IsValidRandomNumber(byte randomNumber, int range) {
            int fullSetsOfValues = Byte.MaxValue / range;
            return randomNumber < range * fullSetsOfValues;
        }

        public static bool IsHeadlessApplicationMode() {
            return SystemInfo.graphicsDeviceType == UnityEngine.Rendering.GraphicsDeviceType.Null;
        }

        public static string ShortGuid(int length = 5) {
            var _generated = Guid.NewGuid().ToString();
            _generated = Regex.Replace(_generated, "[^a-zA-Z0-9]", "");
            _generated = _generated.Substring(0, Math.Min(length, _generated.Length));
            return _generated;
        }

        public static string ToHexString(this Color color) {
            return "#" + ColorUtility.ToHtmlStringRGB(color);
        }

        public static void OneShotAudioClip2D(AudioClip clip, float volume = 1f) {
            // Create a new GameObject with an AudioSource
            GameObject _go = new GameObject($"-OneShotAudio- {clip.name}");
            _go.transform.position = Vector3.zero;
            AudioSource _audioSource = _go.AddComponent<AudioSource>();

            // Configure the AudioSource and play
            _audioSource.playOnAwake = false;
            _audioSource.clip = clip;
            _audioSource.volume = volume;
            _audioSource.spatialBlend = 0f;
            _audioSource.Play();

            // Destroy the AudioSource once it has finished playing
            GameObject.Destroy(_go, clip.length);
        }
        #endregion

        #region Public Methods
        #endregion

        #region Private Methods
        #endregion
    }
}