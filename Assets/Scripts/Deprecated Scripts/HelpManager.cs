using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class HelpManager: MonoBehaviour {
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
		//GetComponent<Renderer>().material.color = isLookedAt ? Color.clear : Color.clear;
		if(!isLookedAt){
			delay = Time.time + 2.0f;
		}

		if((((Cardboard.SDK.Triggered == true) && isLookedAt== true)||(isLookedAt == true && Time.time>delay))){
        //if(isLookedAt == true && Time.time>delay){
            //Application.LoadLevel("help");
            SceneManager.LoadScene("help");
		}
	}
}
