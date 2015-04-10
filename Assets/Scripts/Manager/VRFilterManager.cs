using UnityEngine;
using System.Collections;

public class VRFilterManager : MonoBehaviour {

	CardboardHead head;
	public Material skybox1; //sky
	public Material skybox2; //louissky
	public Material skybox3; //menusky
	
	GameObject[] object1;
	GameObject[] object2;
	GameObject[] object3;

	// Use this for initialization
	void Awake (){
		RenderSettings.skybox = skybox1;
		//Activation(1);
	}

	void Update () {
		//if the magnetic disk is pull or user flicks his head, we change eras.
		//we need to change terrain, wall textures, and city floor
		object1 = GameObject.FindGameObjectsWithTag("grass");
		object2 = GameObject.FindGameObjectsWithTag("sand");
		object3 = GameObject.FindGameObjectsWithTag("future");

		//grass
		if((RenderSettings.skybox == skybox1) &&
		   ((Cardboard.SDK.CardboardTriggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown))){
			RenderSettings.skybox = skybox2;
			//Activation(2);
				for(int i = 0; i < object1.Length; i++){
					object1[i].SetActive(false);
				//}
				//for(int i = 0; i < object2.Length; i++){
					object2[i].SetActive(true);
				//}
				//for(int i = 0; i < object3.Length; i++){
					object3[i].SetActive(false);
				}

			//sand
		} else if((RenderSettings.skybox == skybox2) &&
		   ((Cardboard.SDK.CardboardTriggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown))){
			RenderSettings.skybox = skybox3;
			//Activation(3);
			for(int i = 0; i < object1.Length; i++){
				object1[i].SetActive(false);
			//}
			//for(int i = 0; i < object2.Length; i++){
				object2[i].SetActive(false);
			//}
			//for(int i = 0; i < object3.Length; i++){
				object3[i].SetActive(true);
			}

			//future
		} else if((RenderSettings.skybox == skybox3) &&
		   ((Cardboard.SDK.CardboardTriggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown))){
			RenderSettings.skybox = skybox1;
			//Activation(1);
			for(int i = 0; i < object1.Length; i++){
				object1[i].SetActive(true);
			//}
			//for(int i = 0; i < object2.Length; i++){
				object2[i].SetActive(false);
			//}
			//for(int i = 0; i < object3.Length; i++){
				object3[i].SetActive(false);
			}
		}
	}
	void Activation(int active){
		if(active == 1){
			for(int i = 0; i < object1.Length; i++){
				object1[i].SetActive(true);
			}
			for(int i = 0; i < object2.Length; i++){
				object2[i].SetActive(false);
			}
			for(int i = 0; i < object3.Length; i++){
				object3[i].SetActive(false);
			}
		}
		if(active == 2){
			for(int i = 0; i < object1.Length; i++){
				object1[i].SetActive(false);
			}
			for(int i = 0; i < object2.Length; i++){
				object2[i].SetActive(true);
			}
			for(int i = 0; i < object3.Length; i++){
				object3[i].SetActive(false);
			}
		}
		if(active == 3){
			for(int i = 0; i < object1.Length; i++){
				object1[i].SetActive(false);
			}
			for(int i = 0; i < object2.Length; i++){
				object2[i].SetActive(false);
			}
			for(int i = 0; i < object3.Length; i++){
				object3[i].SetActive(true);
			}
		}
	}
}
