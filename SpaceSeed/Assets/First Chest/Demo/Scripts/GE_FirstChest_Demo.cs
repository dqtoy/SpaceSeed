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
// GE_FirstChest_Demo handles user inputs for demo scene
//
// Note this class is attached with the Main Camera object in "First Chest Demo (960x600px)" scene.
// ######################################################################

public class GE_FirstChest_Demo : MonoBehaviour
{
	// ########################################
	// Variables
	// ########################################

	#region Variables

	// Orbit camera
	Camera m_CurrentOrbitCamera = null;

	// Touch stationary time and duration variables
	public float TouchStationaryTime = 1.0f;
	public float TouchStationaryDuration = 0.0f;

	// Touch phases
	TouchPhase previousSingleTouchPhase = TouchPhase.Canceled;
	TouchPhase currentSingleTouchPhase = TouchPhase.Canceled;

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
		// Get Camera component
		m_CurrentOrbitCamera = GetComponent<Camera>();
	}

	// Update is called every frame, if the MonoBehaviour is enabled.
	// http://docs.unity3d.com/ScriptReference/MonoBehaviour.Update.html
	void Update()
	{
		// If there is single touch input
		if (Input.touchCount == 1)
		{
			// Get touch
			Touch touch = Input.GetTouch(0);

			// Touch began
			if (touch.phase == TouchPhase.Began)
			{
				// Keep current touch phase
				currentSingleTouchPhase = TouchPhase.Began;

				// reset touch stationary duration
				TouchStationaryDuration = 0;
			}
			// Touch moves
			else if (touch.phase == TouchPhase.Moved)
			{
				// Keep current touch phase
				currentSingleTouchPhase = TouchPhase.Moved;

				// reset touch stationary duration
				TouchStationaryDuration = 0;
			}
			// Touch stationary
			else if (touch.phase == TouchPhase.Stationary)
			{
				// Check if there is a hit on a chest
				FCMain pMain = GetHitChest(touch.position);
				if (pMain != null)
				{
					// Keep current touch phase
					currentSingleTouchPhase = TouchPhase.Stationary;

					// If last touch phase is stationary
					if (previousSingleTouchPhase == TouchPhase.Stationary)
					{
						// Increase stationary duration
						TouchStationaryDuration += Time.deltaTime;

						// Toggle lock/unlock if stationary has reached it limitation duration
						if (TouchStationaryDuration > TouchStationaryTime && TouchStationaryDuration < TouchStationaryTime + 1)
						{
							// Toggle lock/unlock
							pMain.ToggleLock();
							TouchStationaryDuration = TouchStationaryTime * 2;
						}
					}
				}
			}
			// Touch ended
			else if (touch.phase == TouchPhase.Ended)
			{
				// Keep current touch phase
				currentSingleTouchPhase = TouchPhase.Ended;

				// If last touch phase is not stationary
				if (previousSingleTouchPhase == TouchPhase.Began || (previousSingleTouchPhase == TouchPhase.Stationary && TouchStationaryDuration < TouchStationaryTime))
				{
					// Toggle open/close
					FCMain pMain = GetHitChest(touch.position);
					if (pMain != null)
					{
						pMain.ToggleOpen();
					}
				}

				// Reset touch stationary duration
				TouchStationaryDuration = 0;
			}

			// Store current touch phase in previous touch phase
			previousSingleTouchPhase = currentSingleTouchPhase;

			// set currentSingleTouchPhase to TouchPhase.Canceled
			currentSingleTouchPhase = TouchPhase.Canceled;
		}
		// Mouse inputs
		else
		{
			// User pressed the left mouse up
			if (Input.GetMouseButtonUp(0))
			{
				MouseButtonUp(0);
			}
			// User pressed the right mouse up
			else if (Input.GetMouseButtonUp(1))
			{
				MouseButtonUp(1);
			}
		}
	}

	#endregion // MonoBehaviour

	// ########################################
	// Player Input functions
	// ########################################

	#region Player Input functions

	// Toggle Open or lock
	void MouseButtonUp(int Button)
	{
		FCMain pMain = GetHitChest(Input.mousePosition);
		if (pMain != null)
		{
			if (Button == 0)
			{
				pMain.ToggleOpen();
			}
			else if (Button == 1)
			{
				pMain.ToggleLock();
			}
		}
	}

	// This function checks if there is a hit on chest and return the FCMain of the chest
	FCMain GetHitChest(Vector3 hitPosition)
	{
		// Make sure we have orbit camera
		if (m_CurrentOrbitCamera == null)
		{
			Debug.Log("Orbit camera not found!");
		}
		else
		{
			// We need to actually hit an object
			RaycastHit hitt;
			if (Physics.Raycast(m_CurrentOrbitCamera.ScreenPointToRay(hitPosition), out hitt, 1000))
			{
				if (hitt.collider)
				{
					// Return FCMain of the chest that was hit
					return hitt.collider.gameObject.GetComponent<FCMain>();
				}
			}
		}

		return null;
	}

	// Toggle Display particles
	public void OnToggleDisplayParticles()
	{
		// Make sure we have orbit camera
		if (m_CurrentOrbitCamera == null)
		{
			Debug.Log("Orbit camera not found!");
			return;
		}
		else
		{
			// This line just show you how to turn on TransparentFX layer
			//CurrentCamera.cullingMask |= 1 << LayerMask.NameToLayer("TransparentFX");

			// This line just show you how to Turn off TransparentFX layer
			//CurrentCamera.cullingMask &= ~(1 << LayerMask.NameToLayer("TransparentFX"));

			// Toggle on/off TransparentFX layer
			m_CurrentOrbitCamera.cullingMask ^= 1 << LayerMask.NameToLayer("TransparentFX");
		}
	}

	#endregion // Player Input functions
}