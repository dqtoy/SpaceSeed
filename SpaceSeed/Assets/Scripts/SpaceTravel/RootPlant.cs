using System.Collections;
using System.Collections.Generic;
using SpaceTravel;
using UnityEngine;
using UnityEngine.UI;

public enum TaskStatus
{
    task1, task2, task3
}

public class RootPlant : SingletonBehaviour<RootPlant> {
    public Text questText1;


    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            AllLevelsManager.Instance.currentLevel.Collect();
        }
    }
}
