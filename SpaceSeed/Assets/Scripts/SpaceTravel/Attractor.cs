using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Attractor : MonoBehaviour {

    static float maxDistance = 15.0f;

    const float G = 6.674f;

    public Rigidbody rb;
    public bool fixedPosition = false;


	private void FixedUpdate()
	{
        /*
        Attractor[] attractors = AllLevelsManager.Instance.currentLevel.GetPlanets();
        foreach(Attractor attractor in attractors)
        {
            if (attractor.fixedPosition || attractor == this)
                continue;
            
            Attract(attractor);
        }
        */
        Attractor attractor = PlayerCtroller.Instance.attractor;
        if (attractor == this)
            return;
        
        Attract(attractor);
	}

    void Attract(Attractor obj)
    {
        Rigidbody rbToAttract = obj.rb;

        Vector3 direction = rb.position - rbToAttract.position;
        float distance = direction.magnitude;

        if (distance > maxDistance)
            return;

        if (distance < 5)
            GiveEnergyByDistance(distance);

        distance = Mathf.Clamp(distance, 0, 10);

        float forceMagnitude = 0;
        if (distance < 5)
            distance = 5;
        forceMagnitude = G * (rb.mass * rbToAttract.mass) / Mathf.Pow(distance, 1f);
        Vector3 force = direction.normalized * forceMagnitude;

        rbToAttract.AddForce(force);

    }

    void GiveEnergyByDistance(float distance)
    {
        float energy = Mathf.Clamp((maxDistance - distance) / maxDistance, 0, 10);
        PlayerCtroller.Instance.UpdateEnergy(energy);
    }
}
