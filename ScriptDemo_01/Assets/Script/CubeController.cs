using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Controller {
	[System.Serializable]
	public struct TextureElement {
		public string path;
		public string name;
		public uint		id;
	};
}

public class CubeController : MonoBehaviour {

	public string	name;
	public bool		enable;
	public uint count;
	public float distancePerFrame = 1;
	public Controller.TextureElement[] textures;
	public List<Controller.TextureElement> texl;

	[SerializeField]
	private bool hasHealthPotion = true;

	protected string elem;

	// Use this for initialization
	void Start () {
		Rigidbody rb = GetComponent<Rigidbody> ();

		elem = "dafa";

		Debug.Log ("on start...");

		Vector3 a = new Vector3(1,1,1);
		Vector3 b = new Vector3 (3, 2, 1);

		Vector3 j = Vector3.Cross (a, b);
		j.Normalize ();


	}

	// Update is called once per frame
	void Update () {
		float deltaTime = Time.deltaTime;
		transform.Translate (0, 0, distancePerFrame * deltaTime);

		if (elem != null) {
			elem = null;
		}
	}

	void Destory() {
		Debug.Log ("on destory");
	}
}
