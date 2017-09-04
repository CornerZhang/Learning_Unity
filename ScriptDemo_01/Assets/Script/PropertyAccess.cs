using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PropertyAccess : MonoBehaviour {
	public Material mat;
	public Texture myPic;
	public Matrix4x4 matrix;

//	public Color purple;
//	public Cubemap cube;
//	public Vector4 vec;
//	public float val_1;
//	public float val_2;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		mat.SetTexture("_MainTex", myPic);
		mat.SetMatrix("_MyMatrix", matrix);
//		mat.SetColor("_MyColor", purple);
//		mat.SetTexture("_MyCube", cube);
//		mat.SetVector("_MyVector", vec);
//		mat.SetFloat("_MyFloat", val_1);
//		mat.SetFloat("_MyRange", val_2);

//		myPic = mat.GetTexture("_MainTex");
		// ...
	}
}
