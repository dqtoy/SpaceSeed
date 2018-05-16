using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemGrow : MonoBehaviour {

	public GameObject curveObj1;
	public GameObject curveObj2;
	private Animator animator1;
	private Animator animator2;
	private Renderer renderer;

	// Use this for initialization
	void Start () {
		animator1 = curveObj1.GetComponent<Animator> ();
		animator2 = curveObj2.GetComponent<Animator> ();
		renderer = GetComponent<Renderer> ();
	}
	
	// Update is called once per frame
	void Update () {
		if (animator1.GetCurrentAnimatorStateInfo(animator1.GetLayerIndex ("Base Layer")).IsName("DampedSin") 
			|| animator1.GetCurrentAnimatorStateInfo(animator1.GetLayerIndex ("Base Layer")).IsName("Disappear")) {
			renderer.material.SetFloat ("_Grow", 0.5f + curveObj1.transform.position.y * 0.1f);
			transform.position = new Vector3 (transform.position.x, curveObj2.transform.position.y, transform.position.z);
		}
	}

	void OnMouseDown(){
		if (animator1.GetCurrentAnimatorStateInfo(animator1.GetLayerIndex ("Base Layer")).IsName("DefaultState")) {
			animator1.Play ("DampedSin");
			animator2.Play ("Appear");
		}
		else {
			animator1.Play ("Disappear");
		}
	} 
}
