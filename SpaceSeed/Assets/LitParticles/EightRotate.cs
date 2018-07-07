using UnityEngine;
using System.Collections;

public class EightRotate : MonoBehaviour {

    Quaternion axis;

    [Header("Rotation")]
    public float speed = 5f;

    [Header("Pivot")]
    public Transform targetTransform;

    void Update()
    {
        if (Input.GetButton("Horizontal") || Input.GetButton("Vertical"))
        {
            Vector3 newForward  = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical")).normalized;
            if (newForward != Vector3.zero) transform.forward = newForward;
            transform.Translate(Vector3.forward * Time.deltaTime);
        }
    }
}
