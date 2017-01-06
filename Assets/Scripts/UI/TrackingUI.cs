/* TrackingUI
 * Script for determining whether the player has successfully identified the enemy
*/
using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TrackingUI : MonoBehaviour {

	public CardboardHead head;
	public Image right;
	public Image left;
	public Image main;
	[SerializeField] private float currentAmount = 100;
	[SerializeField] private float speed = 0;

	void Update () {
		RaycastHit hit;
		//Physics.Raycast(head.Gaze, out hit, Mathf.Infinity);
		Physics.SphereCast(head.Gaze, 3f, out hit, Mathf.Infinity);
		if(hit.collider == null) return;
		if(hit.collider.tag == "Present" || hit.collider.tag == "Bright" || hit.collider.tag == "WEnd"){
			if(hit.collider.gameObject.GetComponent<MeshRenderer>().isVisible){
				if(hit.collider.gameObject.GetComponent<EnemyManager>().isTracked == false){
					speed = 80;
					currentAmount += speed * Time.deltaTime;
					right.fillAmount = currentAmount / 100;
					left.fillAmount = currentAmount / 100;
					main.fillAmount = currentAmount / 100;
					if(currentAmount >= 100)	hit.collider.gameObject.GetComponent<EnemyManager>().isTracked = true;
				}
			}
		} else{
			speed = 0;
			currentAmount = 0;
			right.fillAmount = currentAmount;
			left.fillAmount = currentAmount;
			main.fillAmount = currentAmount;
		}
	}
}