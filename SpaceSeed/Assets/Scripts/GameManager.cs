using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SpaceTravel;

public class GameManager : SingletonBehaviour<GameManager> {

    private bool gameStarted = false;

	private void Start()
	{
        StartGame();
	}

    public void StartGame()
    {
        gameStarted = true;
        PlayBeginning();
    }

	public void PlayBeginning()
    {
        
        //after beginning;
        PlayLevels();
    }

    public void PlayLevels()
    {
        AllLevelsManager.Instance.LoadNextLevel();
    }


    public void PlayEnding()
    {
        
    }
}
