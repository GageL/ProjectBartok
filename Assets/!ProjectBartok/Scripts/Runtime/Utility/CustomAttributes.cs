using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
#if UNITY_EDITOR
using UnityEditor;
#endif

namespace BlacksiteStudio.ProjectBartok {
	[AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
	class RuntimeDebugAttribute : PropertyAttribute {
		public RuntimeDebugAttribute() { }
	}

#if UNITY_EDITOR
	[CustomPropertyDrawer(typeof(RuntimeDebugAttribute))]
	class RuntimeDebugDrawer : PropertyDrawer {
		public override void OnGUI(Rect position, SerializedProperty property, GUIContent label) {
			var attribute = (RuntimeDebugAttribute)base.attribute;
			var headerRect = new Rect(position.x, position.y, position.width, 18);
			EditorGUI.LabelField(headerRect, "Runtime Debug", EditorStyles.boldLabel);
			EditorGUI.LabelField(new Rect(headerRect.x + 100, headerRect.y, headerRect.width, headerRect.height), "Values set at runtime", EditorStyles.miniLabel);
			var valueRect = new Rect(position.x, position.y + 18, position.width, position.height - 18);
			EditorGUI.PropertyField(valueRect, property, true);
			GUILayout.Space(16);
		}
	}
#endif
}