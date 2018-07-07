using UnityEngine;
using DG.Tweening;

public class RotateAround : MonoBehaviour {

    Quaternion axis;

    [Header("Rotation")]
    public float speed = 5f;

    [Header("Pivot")]
    public Transform targetTransform;

    public float progress;
    public float speed1;

	private void Start()
	{
        StartMoving();
	}

	private void StartMoving()
    {
        progress = -1;
        DOTween.To(() => progress, x => progress = x, 1, speed1).SetLoops(6, LoopType.Yoyo);
    }

	public static Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Quaternion angle)
    {
        return angle * (point - pivot) + pivot;
    }

    void Update()
    {
        axis = Quaternion.Euler(0, speed * Time.deltaTime, 0);

        transform.position = RotatePointAroundPivot(transform.position, targetTransform.position, axis);
        //transform.LookAt(transform.parent.position);
    }
}

