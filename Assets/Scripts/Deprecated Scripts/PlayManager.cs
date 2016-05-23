using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class PlayManager: MonoBehaviour {
	private CardboardHead head;
	private float delay;

	// Use this for initialization
	private GameObject user;

	void Awake () {
		head = Camera.main.GetComponent<StereoController>().Head;
	
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		bool isLookedAt = GetComponent<Collider>().Raycast(head.Gaze, out hit, Mathf.Infinity);
		if(!isLookedAt){
			delay = Time.time + 2.0f;
		}
		//play game
		if((isLookedAt== true && Cardboard.SDK.Triggered == true)||(isLookedAt == true && Time.time>delay)){
            SceneManager.LoadScene("Level00");
		}
	}
}
