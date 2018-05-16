// First Chest
// Version: 1.4.0
// Compatilble: Unity 5.6.1 or higher, see more info in Readme.txt file.
//
// Developer:			Gold Experience Team (https://www.assetstore.unity3d.com/en/#!/search/page=1/sortby=popularity/query=publisher:4162)
// Unity Asset Store:	https://www.assetstore.unity3d.com/en/#!/content/18353
//
// Please direct any bugs/comments/suggestions to geteamdev@gmail.com

#region Namespaces

using UnityEngine;
using System.Collections;

#endregion

// ######################################################################
// First Chest Sound Handler.
// Play/Stop sounds.
// ######################################################################

public class FCSound : MonoBehaviour
{
	// ########################################
	// Variables
	// ########################################

	#region Variables

	public string m_tempString = "";

	// Close sound variables
	public bool m_EnableSoundClose = true;
	public AudioClip m_SoundClose;
	[Range(0, 2)]
	public float
			m_SoundCloseDelay = 0.25f;

	// Open sound variables
	public bool m_EnableSoundOpen = true;
	public AudioClip m_SoundOpen;
	[Range(0, 2)]
	public float
			m_SoundOpenDelay = 0.0f;

	// Open faile sound variables
	public bool m_EnableSoundOpenFailed = true;
	public AudioClip m_SoundOpenFailed;
	[Range(0, 2)]
	public float
			m_SoundOpenFailedDelay = 0.0f;

	// Lock sound variables
	public bool m_EnableSoundSetLock = true;
	public AudioClip m_SoundSetLock;
	[Range(0, 2)]
	public float
			m_SoundSetLockDelay = 0.0f;

	// Unlock sound variables
	public bool m_EnableSoundSetUnlock = true;
	public AudioClip m_SoundSetUnlock;
	[Range(0, 2)]
	public float
			m_SoundSetUnlockDelay = 0.0f;

	// Prop sound variables
	public bool m_EnableSoundProp = true;
	public AudioClip m_SoundProp;
	[Range(0, 2)]
	public float
			m_SoundPropDelay = 0.25f;

	#endregion // Variables

	// ########################################
	// MonoBehaviour Functions
	// http://docs.unity3d.com/ScriptReference/MonoBehaviour.html
	// ########################################

	#region MonoBehaviour

	// Start is called on the frame when a script is enabled just before any of the Update methods is called the first time.
	// http://docs.unity3d.com/ScriptReference/MonoBehaviour.Start.html
	void Start()
	{
		// Create AudioSounce
		CreateAudioSource();
	}

	// Update is called every frame, if the MonoBehaviour is enabled.
	// http://docs.unity3d.com/ScriptReference/MonoBehaviour.Update.html
	void Update()
	{

	}

	#endregion // MonoBehaviour

	// ########################################
	// Play/Stop sound Functions
	// ########################################

	#region Play/Stop sound Functions

	// Create AudioSource
	public void CreateAudioSource()
	{
		AudioSource pAudioSource = GetComponent<AudioSource>();
		if (pAudioSource == null)
		{
			pAudioSource = this.gameObject.AddComponent<AudioSource>();
			pAudioSource.rolloffMode = AudioRolloffMode.Linear;
		}
	}

	// Play close sound
	public void PlaySoundClose()
	{
		if (m_EnableSoundClose == true && m_SoundClose != null)
		{
			// Stop Prop sound
			StopSoundProp(m_SoundCloseDelay * 0.5f);

			// Play Close sound
			PlaySound(m_SoundClose, m_SoundCloseDelay);
		}
	}

	// Play Open sound
	public void PlaySoundOpen()
	{
		if (m_EnableSoundOpen == true && m_SoundOpen != null)
			PlaySound(m_SoundOpen, m_SoundOpenDelay);
	}

	// Play Open failed sound
	public void PlaySoundOpenFailed()
	{
		if (m_EnableSoundOpenFailed == true && m_SoundOpenFailed != null)
			PlaySound(m_SoundOpenFailed, m_SoundOpenFailedDelay);
	}

	// Play Lock sound
	public void PlaySoundSetLock()
	{
		if (m_EnableSoundSetLock == true && m_SoundSetLock != null)
			PlaySound(m_SoundSetLock, m_SoundSetLockDelay);
	}

	// Play Unlock sound
	public void PlaySoundSetUnlock()
	{
		if (m_EnableSoundSetUnlock == true && m_SoundSetUnlock != null)
			PlaySound(m_SoundSetUnlock, m_SoundSetUnlockDelay);
	}

	// Play Propshow sound
	public void PlaySoundProp()
	{
		if (m_EnableSoundProp == true && m_SoundProp != null)
			PlaySound(m_SoundProp, m_SoundPropDelay);
	}

	// Stop Propshow sound
	public void StopSoundProp()
	{
		if (m_EnableSoundProp == true && m_SoundProp != null)
		{
			if (!GetComponent<AudioSource>().isPlaying)
			{
				GetComponent<AudioSource>().Stop();
			}
		}
	}

	// Stop Prop sound after any delay
	public void StopSoundProp(float Delay)
	{
		// Play sound after any delay
		if (Delay > 0)
		{
			StartCoroutine(StopSoundDelay(Delay));
		}
		// Play sound immediately
		else
		{
			GetComponent<AudioSource>().Stop();
		}
	}

	#endregion // Play/Stop sound Functions

	// ########################################
	// Play/Stop Common Functions
	// ########################################

	#region Play/Stop Common Functions

	// Play specific AudioClip sound with delay
	void PlaySound(AudioClip pAudioClip, float Delay)
	{
		// Nothing to do if pAudioClip is null
		if (pAudioClip == null)
		{
			return;
		}

		// Play sound after any delay
		if (Delay > 0)
		{
			StartCoroutine(PlaySoundDelay(pAudioClip, Delay));
		}
		// Play sound immediately
		else
		{
			GetComponent<AudioSource>().PlayOneShot(pAudioClip);
		}
	}

	// Play sound after any delay
	IEnumerator PlaySoundDelay(AudioClip pAudioClip, float Delay)
	{
		yield return new WaitForSeconds(Delay);
		GetComponent<AudioSource>().PlayOneShot(pAudioClip);
		yield break;
	}

	// Stop sound after any delay
	IEnumerator StopSoundDelay(float Delay)
	{
		yield return new WaitForSeconds(Delay);
		GetComponent<AudioSource>().Stop();
		yield break;
	}

	#endregion // Play/Stop Common Functions
}
