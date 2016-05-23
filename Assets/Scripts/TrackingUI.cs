using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class TrackingUI : MonoBehaviour {

	public CardboardHead head;
	public Image right;
	public Image left;
	public Image main;
	[SerializeField] private float currentAmount;
	[SerializeField] private float speed;
	// Use this for initialization
	void Start () {
		head = Camera.main.GetComponent<StereoController>().Head;
		currentAmount = 100;
	}

	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		Physics.Raycast(head.Gaze, out hit, Mathf.Infinity);
		if(hit.collider.tag == "Present" || hit.collider.tag == "Bright" || hit.collider.tag == "WEnd"){
			speed = 80;
			currentAmount += speed * Time.deltaTime;
			right.fillAmount = currentAmount / 100;
			left.fillAmount = currentAmount / 100;
			main.fillAmount = currentAmount / 100;
		}else{
			speed = 0;
			currentAmount = 0;
			right.fillAmount = currentAmount;
			left.fillAmount = currentAmount;
			main.fillAmount = currentAmount;
		}
		if(currentAmount >= 100){
			hit.collider.gameObject.GetComponent<EnemyManager>().isTracked = true;
			right.fillAmount = currentAmount;
			left.fillAmount = currentAmount;
			main.fillAmount = currentAmount;
		}
	}
}
