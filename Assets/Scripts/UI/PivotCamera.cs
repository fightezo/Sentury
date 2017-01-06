/* PivotCamera
 * controls camera rotation
*/
using UnityEngine;
using System.Collections;

public class PivotCamera : MonoBehaviour {
	public GameObject head;
	public GameObject radar;

	// Update is called once per frame
	void Update () {
		radar.transform.rotation = Quaternion.Euler(90.0f, head.transform.rotation.eulerAngles.y, 0f);
	}
}
