using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum SeedStatus
{
    Idle, Collected, Sending, Done
}

public class EnergySeed : MonoBehaviour {

    public SeedStatus status;

    private Transform player;
    private float moveSpeed = 0.2f;

	private void Start()
	{
        status = SeedStatus.Idle;
        player = PlayerCtroller.Instance.gameObject.transform;
	}

	private void Update()
	{
        if (status == SeedStatus.Idle)
        {
            transform.RotateAround(transform.position, Vector3.up, 100 * Time.deltaTime);
        }
        else if (status == SeedStatus.Collected)
        {
            Vector3 distance = player.position - transform.position;
            Vector3 direction = distance.normalized;
            transform.RotateAround(player.position, player.up, 100 * Time.deltaTime);
            transform.position = player.transform.position - direction;

            //Attract();
        }
	}

    private void Attract()
    {
        Vector3 distance = player.position - transform.position;
        Vector3 direction = distance.normalized;
        transform.position = player.transform.position - direction;
        return;

        if (distance.magnitude < 1)
        {
            transform.position = player.transform.position - direction;
            return;
        }

        float deltaDistance = (distance.magnitude > moveSpeed) ? moveSpeed : distance.magnitude;
        Vector3 newTargetPos = transform.position + direction * deltaDistance;
        //transform.position = new Vector3(newTargetPos.x, newTargetPos.y, newTargetPos.z);
    }

	void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            PlayerCtroller.Instance.Collect(gameObject);
        }
    }
}
