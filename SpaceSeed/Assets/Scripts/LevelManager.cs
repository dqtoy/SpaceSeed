using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class LevelManager : MonoBehaviour {

    public int levelId;
    public Attractor[] planets;
    public float left;
    public float right;
    public float top;
    public float bottom;

    //quest
    public Text questText;
    public int totalNeeded;
    public int current;

    public void StartLevel()
    {
        if (levelId == 1)
        {
            AllLevelsManager.Instance.PlayLevel1Intro();
        }
        UpdateUI();
    }

    public void EndLevel()
    {
        gameObject.SetActive(false);
    }

    public void Collect()
    {
        current += PlayerCtroller.Instance.activeChildCount;
        PlayerCtroller.Instance.TeleportSeeds();
        questText.text = current + " / " + totalNeeded;
        if (current >= totalNeeded)
        {
            EndLevel();
            AllLevelsManager.Instance.LoadNextLevel();
        }
    }

    public Attractor[] GetPlanets()
    {
        return planets;
    }

    public void UpdateUI()
    {
        questText.text = current + " / " + totalNeeded;
    }
}
