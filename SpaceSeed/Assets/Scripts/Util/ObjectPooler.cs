﻿using System;
using System.Collections.Generic;
using SpaceTravel;
using UnityEngine;

[Serializable]
public class Pool
{
    public string tag;
    public GameObject prefab;
    public int size;
}

public class ObjectPooler : SingletonBehaviour<ObjectPooler> {

    public List<Pool> pools;
    public Dictionary<string, Queue<GameObject>> poolDictionary;

	void Start () {
        poolDictionary = new Dictionary<string, Queue<GameObject>>();	

        foreach(Pool pool in pools)
        {
            Queue<GameObject> objectPool = new Queue<GameObject>();

            for (int i = 0; i < pool.size; i++)
            {
                GameObject obj = Instantiate(pool.prefab);
                obj.SetActive(false);
                objectPool.Enqueue(obj);
            }

            poolDictionary.Add(pool.tag, objectPool);
        }
	}

    public GameObject SpawnFromPool(string tag, Vector3 position, Vector3 eulerAngles)
    {
        if (!poolDictionary.ContainsKey(tag))
        {
            Debug.LogWarning("Pool with tag " + tag + "doesn't exist.");
            return null;
        }
            
        GameObject objectToSpawn = poolDictionary[tag].Dequeue();
        objectToSpawn.SetActive(true);
        objectToSpawn.transform.position = position;
        //objectToSpawn.transform.rotation = rotation;
        objectToSpawn.transform.eulerAngles = eulerAngles;

        /*
        IPooledObject pooledObj = objectToSpawn.GetComponent<IPooledObject>();
        if (pooledObj != null)
        {
            pooledObj.OnObjectSpawn();
        }
        */


        poolDictionary[tag].Enqueue(objectToSpawn);

        return objectToSpawn;
    }

    public void RecycleObject(GameObject gameObj)
    {
        gameObj.SetActive(false);
    }
}
