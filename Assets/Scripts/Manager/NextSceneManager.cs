using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using UnityEngine.UI;

public class NextSceneManager: MonoBehaviour {
	private CardboardHead head;
	private float delay;
	public GameObject nextScene;

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
		if((isLookedAt == true && Cardboard.SDK.Triggered == true)||(isLookedAt == true && Time.time>delay)){
			SceneManager.LoadScene(nextScene.name);
		}
	}
}
