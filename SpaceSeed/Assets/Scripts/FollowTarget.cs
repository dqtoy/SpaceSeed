using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowTarget : MonoBehaviour {

    #region Variables
    //public
    public Camera cam;
	public Transform target;


	//private
    private float moveSpeed = 2f;

	#endregion

	#region UnityFunctions

	void Update () 
	{
		Follow ();
        UpdateFOV();
	}

	#endregion 


	private void Follow()
	{
        Vector3 distance = target.position - transform.position;
        Vector3 direction = distance.normalized;
        float deltaDistance = (distance.magnitude > moveSpeed) ? moveSpeed : distance.magnitude;
        Vector3 newTargetPos = transform.position + direction * deltaDistance;

        if (newTargetPos.x > AllLevelsManager.Instance.currentLevel.right - 10)
            newTargetPos.x = AllLevelsManager.Instance.currentLevel.right - 10;
        if (newTargetPos.x < AllLevelsManager.Instance.currentLevel.left + 10)
            newTargetPos.x = AllLevelsManager.Instance.currentLevel.left + 10;
        if (newTargetPos.y > AllLevelsManager.Instance.currentLevel.top - 10)
            newTargetPos.y = AllLevelsManager.Instance.currentLevel.top - 10;
        if (newTargetPos.y > 10 && newTargetPos.y < AllLevelsManager.Instance.currentLevel.bottom + 10)
            newTargetPos.y = AllLevelsManager.Instance.currentLevel.bottom + 10;
        
        transform.position = new Vector3(newTargetPos.x, newTargetPos.y, transform.position.z);
	}

    private void UpdateFOV()
    {
        float fov = Remap(transform.position.y, 0, 15, 35, 60);
        cam.fieldOfView = fov;
    }

    private float Remap(float value, float from1, float to1, float from2, float to2)
    {
        value = Mathf.Clamp(value, from1, to1);
        return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
    }
}
