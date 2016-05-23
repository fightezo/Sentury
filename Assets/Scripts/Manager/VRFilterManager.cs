using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class VRFilterManager : MonoBehaviour {

	public Material skybox1; //present day
	public Material skybox2; //bright future
	public Material skybox3; //world's end
	public Terrain present;
	public Terrain bright;
	public Terrain wEnd;

	public static List<GameObject> enemList;
//	private GameObject[] object1;
//	private GameObject[] object2;
//	private GameObject[] object3;

	// Use this for initialization
	void Start (){
//		object1 = GameObject.FindGameObjectsWithTag("Present");
//		object2 = GameObject.FindGameObjectsWithTag("Bright");
//		object3 = GameObject.FindGameObjectsWithTag("WEnd");

		RenderSettings.skybox = skybox1;
		present.enabled = true;
		bright.enabled = false;
		wEnd.enabled = false;
		enemList = new List<GameObject>();
		enemList.Clear();
	}

	void Update () {
		//if the magnetic disk is pull or user flicks his head, we change eras.
		//we need to change terrain, wall textures, and city floor
//		object1 = GameObject.FindGameObjectsWithTag("Present");
//		object2 = GameObject.FindGameObjectsWithTag("Bright");
//		object3 = GameObject.FindGameObjectsWithTag("WEnd");
//		Debug.Log(enemList.Count);
		//Bright
		if((RenderSettings.skybox == skybox1) &&
			((Cardboard.SDK.Triggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown))){
           RenderSettings.skybox = skybox2;
			present.enabled = false;
			bright.enabled = true;
			wEnd.enabled = false;

			for(int i = 0; i < enemList.Count; i++){
				if(enemList[i].CompareTag("Bright")){
					enemList[i].GetComponent<Renderer>().enabled = true;
					enemList[i].GetComponentInChildren<Renderer>().enabled = true;
				} else{
					enemList[i].GetComponent<Renderer>().enabled = false;
					enemList[i].GetComponentInChildren<Renderer>().enabled = false;
				}
			}

//				for(int i = 0; i < object1.Length; i++){
//				object1[i].GetComponent<Renderer>().enabled = false;
//				object1[i].GetComponentInChildren<Renderer>().enabled = false;
//				}
//				for(int i = 0; i < object2.Length; i++){
//				object2[i].GetComponent<Renderer>().enabled = true;
//				object2[i].GetComponentInChildren<Renderer>().enabled = true;
//				}
//				for(int i = 0; i < object3.Length; i++){
//				object3[i].GetComponent<Renderer>().enabled = false;
//				object3[i].GetComponentInChildren<Renderer>().enabled = false;
//				}

			//WEnd
		} else if((RenderSettings.skybox == skybox2) &&
			((Cardboard.SDK.Triggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown))){
			RenderSettings.skybox = skybox3;
			present.enabled = false;
			bright.enabled = false;
			wEnd.enabled = true;

			for(int i = 0; i < enemList.Count; i++){
				if(enemList[i].CompareTag("WEnd")){
					enemList[i].GetComponent<Renderer>().enabled = true;
					enemList[i].GetComponentInChildren<Renderer>().enabled = true;
				} else{
					enemList[i].GetComponent<Renderer>().enabled = false;
					enemList[i].GetComponentInChildren<Renderer>().enabled = false;
				}
			}
//			for(int i = 0; i < object1.Length; i++){
//				object1[i].GetComponent<Renderer>().enabled = false;
//				object1[i].GetComponentInChildren<Renderer>().enabled = false;
//			}
//			for(int i = 0; i < object2.Length; i++){
//				object2[i].GetComponent<Renderer>().enabled = false;
//				object2[i].GetComponentInChildren<Renderer>().enabled = false;
//			}
//			for(int i = 0; i < object3.Length; i++){
//				object3[i].GetComponent<Renderer>().enabled = true;
//				object3[i].GetComponentInChildren<Renderer>().enabled = true;
//			}

		//Present
		} else if((RenderSettings.skybox == skybox3) &&
			((Cardboard.SDK.Triggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown))){
			RenderSettings.skybox = skybox1;
			present.enabled = true;
			bright.enabled = false;
			wEnd.enabled = false;

			for(int i = 0; i < enemList.Count; i++){
				if(enemList[i].CompareTag("Present")){
					enemList[i].GetComponent<Renderer>().enabled = true;
					enemList[i].GetComponentInChildren<Renderer>().enabled = true;
				} else{
					enemList[i].GetComponent<Renderer>().enabled = false;
					enemList[i].GetComponentInChildren<Renderer>().enabled = false;
				}
			}

//			for(int i = 0; i < object1.Length; i++){
//				object1[i].GetComponent<Renderer>().enabled = true;
//				object1[i].GetComponentInChildren<Renderer>().enabled = true;
//			}
//			for(int i = 0; i < object2.Length; i++){
//				object2[i].GetComponent<Renderer>().enabled = false;
//				object2[i].GetComponentInChildren<Renderer>().enabled = false;
//			}
//			for(int i = 0; i < object3.Length; i++){
//				object3[i].GetComponent<Renderer>().enabled = false;
//				object3[i].GetComponentInChildren<Renderer>().enabled = false;
//			}
		}
	}
}
