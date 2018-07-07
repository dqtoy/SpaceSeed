using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Orbit : MonoBehaviour {

    public Transform target;
    public float speed;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        OrbitAround();
	}

    void OrbitAround()
    {
        transform.RotateAround(target.position, Vector3.up, speed * Time.deltaTime);
    }
}
