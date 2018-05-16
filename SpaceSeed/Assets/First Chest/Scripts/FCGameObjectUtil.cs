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
// First Chest GameObject Utility class.
// This class handles endless rotations, self remove GameObject/ParticleSystem and MeshRenderer fade out.
// ######################################################################

public class FCGameObjectUtil : MonoBehaviour
{
	// ########################################
	// Variables
	// ########################################

	#region Variables

	// Rotation
	public Vector3 m_rotation;
	public bool m_isRotate = false;

	// Remove variables
	public float m_RemoveDelay = 1.0f;
	public bool m_RemoveFadeout = false;

	// Fade variables
	public float m_DurationCount = 1.0f;
	public float m_FadeOutDuration = 1.0f;
	public float m_AlphaFadeValue = 1.0f;

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

	}

	// Update is called every frame, if the MonoBehaviour is enabled.
	// http://docs.unity3d.com/ScriptReference/MonoBehaviour.Update.html
	void Update()
	{

		// Update rotation
		if (m_isRotate == true)
		{
			transform.Rotate(m_rotation, Space.Self);
		}

		// Update GameObject fading out
		if (m_RemoveFadeout == true)
		{
			m_DurationCount -= Time.deltaTime / m_FadeOutDuration;
			m_AlphaFadeValue = m_DurationCount / m_FadeOutDuration;
			recursiveFade(this.transform, m_AlphaFadeValue);
			if (m_AlphaFadeValue <= 0)
			{
				RemoveGameObject();
			}
		}
	}

	#endregion // MonoBehaviour

	// ########################################
	// Rotation Functions
	// ########################################

	#region Rotation Functions

	// Initial rotation
	public void InitRotation(Vector3 rotation)
	{
		m_rotation = rotation;
	}

	// Start rotation
	public void StartRotation()
	{
		m_isRotate = true;
	}

	// End rotation
	public void StopRotation()
	{
		m_isRotate = false;
	}

	#endregion // Rotation Functions

	// ########################################
	// Remove GameObject Functions
	// ########################################

	#region Remove GameObject Functions

	// Remove this GameObject
	public void SelfRemoveGameObject(float RemoveDelay, bool RemoveFadeout, float FadeOutDuration)
	{
		m_RemoveDelay = RemoveDelay;
		if (m_RemoveDelay > 0)
		{
			StartCoroutine(RemoveGameObjectDelay(m_RemoveDelay, RemoveFadeout, FadeOutDuration));
		}
		else
		{
			RemoveGameObjectStart(RemoveFadeout, FadeOutDuration);
		}
	}

	// Coroutine function
	IEnumerator RemoveGameObjectDelay(float RemoveDelay, bool RemoveFadeout, float FadeOutDuration)
	{
		yield return new WaitForSeconds(RemoveDelay);
		RemoveGameObjectStart(RemoveFadeout, FadeOutDuration);
		yield break;
	}

	// Start removing with fade out parameters
	void RemoveGameObjectStart(bool RemoveFadeout, float FadeOutDuration)
	{
		m_RemoveFadeout = RemoveFadeout;
		m_FadeOutDuration = FadeOutDuration;
	}

	// Remove this GameObject
	void RemoveGameObject()
	{
		Destroy(this.gameObject);
	}

	#endregion // Remove GameObject Functions

	// ########################################
	// Remove Particle Functions
	// ########################################

	#region Remove Particle Functions

	// Remove Particle
	public void SelfRemoveParticle(float RemoveDelay, float ParticleLifeTime)
	{
		m_RemoveDelay = RemoveDelay;

		// Destroy m_ParticleGameObject after any delay
		if (m_RemoveDelay > 0)
		{
			StartCoroutine(SelfClearParticleDelay(ParticleLifeTime));
			StartCoroutine(SelfRemoveParticleDelay(m_RemoveDelay + ParticleLifeTime));
		}
		// Destroy m_ParticleGameObject immediately
		else
		{
			SelfRemoveParticle();
		}
	}

	// Remove particle after any delay
	IEnumerator SelfRemoveParticleDelay(float Delay)
	{
		yield return new WaitForSeconds(Delay);
		SelfRemoveParticle();
		yield break;
	}

	// Clear ParticleSystem after any delay
	IEnumerator SelfClearParticleDelay(float Delay)
	{
		yield return new WaitForSeconds(Delay);
		ParticleSystem pParticleSystem = this.GetComponent<ParticleSystem>();
		if (pParticleSystem != null)
		{
			pParticleSystem.Clear();
		}
		yield break;
	}

	// Destroy ParticleSystem and GameObject
	void SelfRemoveParticle()
	{
		ParticleSystem pParticleSystem = this.GetComponent<ParticleSystem>();
		if (pParticleSystem != null)
		{
			//pParticleSystem.Clear();
		}
		Destroy(this.gameObject);
	}

	#endregion // Remove Particle Functions

	// ########################################
	// Utilities Functions
	// ########################################

	#region Utilities Functions

	// Fade children GameObjects
	void recursiveFade(Transform tran, float alpha)
	{
		if (this.gameObject.GetComponent<Renderer>())
		{
			// Fade only if there is Material that supports alpha color
			if (tran.gameObject.GetComponent<Renderer>().material.HasProperty("_Color"))
			{
				Color color = this.gameObject.GetComponent<Renderer>().material.GetColor("_Color");
				tran.gameObject.GetComponent<Renderer>().material.SetColor("_Color", new Color(color.r,
														color.g,
														color.b,
														alpha));
			}

			foreach (Transform child in tran)
			{
				recursiveFade(child, alpha);
			}
		}
	}

	#endregion // Utilities Functions
}
