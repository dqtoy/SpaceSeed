using System.Collections;
using System.Collections.Generic;
using SpaceTravel;
using UnityEngine;

public class AllLevelsManager : SingletonBehaviour<AllLevelsManager> {

    public Transform[] levels;
    public int currentLevelIdx;
    public LevelManager currentLevel;
    public int levelIdx = -1;


    //temp
    public GameObject Level1Particle;


    private int totalLevels;

	void Start () {
        totalLevels = levels.Length;
        currentLevelIdx = 0;
	}

    public void LoadNextLevel()
    {
        levelIdx++;
        currentLevel = levels[levelIdx].GetComponent<LevelManager>();
        levels[levelIdx].gameObject.SetActive(true);
        currentLevel.StartLevel();
    }
	
	void Update () {
		
	}

    public void GoToNextLevel()
    {
        currentLevelIdx++;
        if (currentLevelIdx > totalLevels)
        {
            GameManager.Instance.PlayEnding();
        }
    }

    public void PlayLevel1Intro()
    {
        Level1Particle.SetActive(true);
    }
}
