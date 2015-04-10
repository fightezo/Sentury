using UnityEngine;
using System.Collections;

public class TrackingSystem : MonoBehaviour {

	CardboardHead head;
	float delay = 0.0f;
	EnemyHealth enemyHealth;

	// Use this for initialization
	void Awake () {
		head = Camera.main.GetComponent<StereoController>().Head;
		enemyHealth = GetComponent <EnemyHealth> ();
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		bool isLookedAt = GetComponent<Collider>().Raycast(head.Gaze, out hit, Mathf.Infinity);
		GetComponent<Renderer>().material.color = isLookedAt ? Color.green : Color.red;
		if(!isLookedAt){
			delay = Time.time + 0.5f;
		}
		if(isLookedAt == true && Time.time>delay){
			enemyHealth.isTracked = true;
		}
	
	}

}
