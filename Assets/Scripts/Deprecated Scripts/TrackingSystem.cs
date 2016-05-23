using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TrackingSystem : MonoBehaviour {

	private CardboardHead head;
//	private float delay = 0.0f;
//	public Image right;
//	public Image left;
//	public Image main;
//	private float currentAmount;
	//[SerializeField] private float speed;

	// Use this for initialization
	void Awake () {
		head = Camera.main.GetComponent<StereoController>().Head;
	}
	
	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		bool isLookedAt = GetComponent<Collider>().Raycast(head.Gaze, out hit, Mathf.Infinity);
		GetComponent<Renderer>().material.color = isLookedAt ? Color.green : Color.white;

	if(this.GetComponent<EnemyManager>().isTracked == true){
			GetComponent<Renderer>().material.color = Color.blue;
		}
	}

}
