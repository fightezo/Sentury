/* Cardboard VR Toggle
 * sets which items to display in VR mode
*/
using UnityEngine;
using System.Collections;

public class CardboardToggle : MonoBehaviour {

	private int vrModeInt;
	public GameObject vrToggle;

	public void ToggleVRMode () {
		vrModeInt = (PlayerPrefs.GetInt("Vr Mode") == 1) ? 0 : 1;
		vrToggle.SetActive((PlayerPrefs.GetInt("Vr Mode") == 0) ? true : false);
		PlayerPrefs.SetInt("Vr Mode", vrModeInt);
	}

	void Update () {
		Cardboard.SDK.VRModeEnabled = (PlayerPrefs.GetInt("Vr Mode") == 0) ? true : false;
	}
}
