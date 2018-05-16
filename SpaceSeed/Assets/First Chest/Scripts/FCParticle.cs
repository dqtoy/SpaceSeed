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
// First Chest Particles Handler. This is base class for FCPropParticle and FCChestParticle.
// Create, Remove and Update ParticleSystem.
// ######################################################################

public class FCParticle : MonoBehaviour
{
	// ########################################
	// Variables
	// ########################################

	#region Variables

	// Repository of FCMain component
	FCMain m_Main = null;

	// Prefab and Particle objects
	public GameObject m_Prefab;
	GameObject m_ParticleGameObject;

	// ParticleSystem objects
	ParticleSystem m_ParticleSystem;

	// Offset position to relate to FCProp or FCMain position
	public Vector3 m_OffSetLocalPosition;
	Vector3 m_OffSetLocalPositionOld;

	// ParticleSystem variables
	public bool m_isLoop = true;
	public ParticleSystemSimulationSpace m_SimulationSpace = ParticleSystemSimulationSpace.World;

	// ParticleSystem duration to use when call FCGameObjectUtil.SelfRemoveParticle
	float m_ParticleDuration = 1.0f;

	// Remove variable
	[Range(0, 5)]
	public float
			m_RemoveDelay = 1.0f;

	// Counter of how many time CreateParticle function is called
	public int m_CreateCount = 0;

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
		// Get FCMain compoment objects
		m_Main = this.GetComponent<FCMain>();
	}

	// Update is called every frame, if the MonoBehaviour is enabled.
	// http://docs.unity3d.com/ScriptReference/MonoBehaviour.Update.html
	void Update()
	{
	}

	#endregion // MonoBehaviour

	// ########################################
	// Create and init functions
	// ########################################

	#region Create and init functions

	// Create Particle
	public void CreateParticle()
	{
		if (m_Prefab != null && m_ParticleGameObject == null && this.gameObject != null)
		{
			// Make sure there is FCMain compoment
			m_Main = this.GetComponent<FCMain>();
			if (m_Main == null)
			{
				return;
			}

			// Create Particle from m_Prefab
			m_ParticleGameObject = Instantiate(m_Prefab, this.gameObject.transform.position + m_Prefab.transform.position + m_OffSetLocalPosition, transform.rotation) as GameObject;

			// Update Particle position
			UpdateParticlePosition();
			m_OffSetLocalPositionOld = m_OffSetLocalPosition;

			// Set up ParticleSystem variables
			if (m_ParticleSystem == null)
			{
				m_ParticleSystem = m_ParticleGameObject.GetComponent<ParticleSystem>();
				m_ParticleDuration = m_ParticleSystem.main.duration;
				SetParticleLoop(m_ParticleGameObject.transform, m_isLoop);
			}

			// Increase counter of how many time this function is called
			m_CreateCount++;
		}
	}

	// Set Loop to children Particle
	void SetParticleLoop(Transform tran, bool isLoop)
	{
		ParticleSystem pParticleSystem = tran.gameObject.GetComponent<ParticleSystem>();

		if (pParticleSystem != null)
		{
			pParticleSystem.loop = m_isLoop;
			pParticleSystem.simulationSpace = ParticleSystemSimulationSpace.World;
		}

		// continue find Lid in children GameObject
		foreach (Transform child in tran)
		{
			SetParticleLoop(child, isLoop);
		}
	}

	#endregion // Create and init functions

	// ########################################
	// Remove particle functions
	// ########################################

	#region Remove particle functions

	// Remove Particle
	public void Remove()
	{
		Remove(m_RemoveDelay);
	}

	// Remove particle after any delay
	public void Remove(float Delay)
	{
		// Stop particle system
		if (m_ParticleSystem != null)
		{
			m_ParticleSystem.loop = false;
			m_ParticleSystem.Stop();
		}

		// Update delay time
		m_RemoveDelay = Delay;

		// Destroy m_ParticleGameObject with FCGameObjectUtil
		if (m_RemoveDelay > 0)
		{
			// Attach FCGameObjectUtil to m_ParticleGameObject
			FCGameObjectUtil pFCGameObjectUtil = m_ParticleGameObject.GetComponent<FCGameObjectUtil>();
			if (pFCGameObjectUtil == null)
			{
				pFCGameObjectUtil = m_ParticleGameObject.AddComponent<FCGameObjectUtil>();
			}
			// Call FCGameObjectUtil.SelfRemoveParticle
			pFCGameObjectUtil.SelfRemoveParticle(m_RemoveDelay, m_ParticleDuration);
			m_ParticleGameObject = null;
		}
		// Destroy m_ParticleGameObject immediately
		else
		{
			Destroy(m_ParticleGameObject);
			m_ParticleGameObject = null;
		}
	}

	#endregion // Remove particle functions

	// ########################################
	// Update particle functions
	// ########################################

	#region Update particle functions

	// update particle position
	public void UpdateParticlePosition()
	{
		if (m_Main != null)
		{
			if (m_OffSetLocalPositionOld != m_OffSetLocalPosition)
			{
				// Particle was not created as a child of this Chest
				if (m_Main.m_Elastic == true)
				{
					m_ParticleGameObject.transform.position = transform.position + m_Prefab.transform.position + m_OffSetLocalPosition;
				}
				// Particle was created as a child of this Chest
				else
				{
					m_ParticleGameObject.transform.parent = this.gameObject.transform;
					m_ParticleGameObject.transform.position = m_ParticleGameObject.transform.position + m_Prefab.transform.position + m_OffSetLocalPosition;
				}
				m_OffSetLocalPositionOld = m_OffSetLocalPosition;
			}
		}
	}

	#endregion // Update particle functions

	// ########################################
	// Get functions
	// ########################################

	#region Get functions

	// Get Prefab
	public GameObject getPrefab()
	{
		return m_Prefab;
	}

	// Get Particle GameObject
	public GameObject getParticleGameObject()
	{
		return m_ParticleGameObject;
	}

	// Get FCMain component
	public FCMain getMain()
	{
		return m_Main;
	}

	// Get Counter
	public int getCounter()
	{
		return m_CreateCount;
	}

	#endregion // Get functions

	// ########################################
	// Set functions
	// ########################################

	#region Set functions

	// Set RemoveDelay
	public void setRemoveDelay(float RemoveDelay)
	{
		m_RemoveDelay = RemoveDelay;
	}

	#endregion // Set functions
}
