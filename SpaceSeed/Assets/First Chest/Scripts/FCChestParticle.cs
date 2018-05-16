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
// First Chest Chest Particle Handler.
// This class derived form FCParticle class. It contains a function to move particle follow the Chest.
// ######################################################################

public class FCChestParticle : FCParticle
{
	// ########################################
	// Variables
	// ########################################

	#region Variables

	// Variables
	public bool m_RemoveWhenChestOpen = true;
	public bool m_CreateWhenChestClose = false;

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
		// Move Particle when user updates ChestParticle Offset position in Inspector
		UpdateParticlePosition();
	}

	#endregion // MonoBehaviour
}
