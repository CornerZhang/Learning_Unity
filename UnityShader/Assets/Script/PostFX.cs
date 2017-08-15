using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
[RequireComponent (typeof(Camera))]
public class PostFX : MonoBehaviour {

	// Use this for initialization
	void Start () {
		CheckResponse ();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	[ImageEffectOpaque]	// add the property, be called before transparent objects, after opaque objects
	void OnRenderImage(RenderTexture src, RenderTexture dest) {
		Debug.Log ("on render image");
	}

	protected void CheckResponse() {
		bool isSupported = CheckSupport ();

		if (isSupported == false) {
			NotSupported ();
		}
	}

	protected bool CheckSupport() {
		if (SystemInfo.supportsImageEffects == false || SystemInfo.supportsRenderTextures == false) {
			Debug.LogWarning ("THis platform does not support image effects or render textures.");
		}
		return false;
	}

	protected void NotSupported() {
		enabled = false;
	}

	protected Material CheckShaderAndCreateMaterial(Shader shader, Material material) {
		if (shader == null) {
			return null;
		}

		if (shader.isSupported && material && material.shader == shader)
			return material;

		if (!shader.isSupported) {
			return null;
		}
		else {
			material = new Material(shader);
			material.hideFlags = HideFlags.DontSave;
			if (material)
				return material;
			else 
				return null;
		}
	}

}
