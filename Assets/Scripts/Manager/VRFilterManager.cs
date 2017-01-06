/*
 * Script for rendering enemies/terrains with respect to the current era the player is in.
 * ex) if player is in "Present", then only make GameObjects with "Present" tag visible.
*/
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class VRFilterManager : MonoBehaviour {

	public Material[] skybox;
	public Terrain[] terrain;

	public static List<GameObject> enemList;
	private int current;

	// Use this for initialization
	void Start (){
		current = 0;
		RenderSettings.skybox = skybox[current];
		for(int i = 0; i < skybox.Length; i++){
			if(i == current){ 
				terrain[i].enabled = true;
			}else terrain[i].enabled = false;

		}
		enemList = new List<GameObject>();
		enemList.Clear();
	}

	void Update () {
		//if the magnetic disk is pull or user flicks his head, we change eras.
		//hange terrain, wall textures, and city floor
		if((Cardboard.SDK.Triggered == true) || (Input.deviceOrientation == DeviceOrientation.FaceDown)){
			//Blink to Bright 
			if(RenderSettings.skybox == skybox[0]){
				current = 1;
				RenderSettings.skybox = skybox[current];
				for(int i = 0; i < skybox.Length; i++){
					terrain[i].enabled = (i == current) ? true : false;
				}
				for(int i = 0; i < enemList.Count; i++){
					enemList[i].GetComponentsInChildren<Renderer>()[0].enabled = enemList[i].CompareTag("Bright") ? true : false;
					enemList[i].GetComponentsInChildren<Renderer>()[1].enabled = enemList[i].CompareTag("Bright") ? true : false;
				}
			}//Blink to WEnd
			else if(RenderSettings.skybox == skybox[1]){
				current = 2;
				RenderSettings.skybox = skybox[current];
				for(int i = 0; i < skybox.Length; i++){
					terrain[i].enabled = (i == current) ? true : false;
				}
				for(int i = 0; i < enemList.Count; i++){
					enemList[i].GetComponentsInChildren<Renderer>()[0].enabled = enemList[i].CompareTag("WEnd") ? true : false;
					enemList[i].GetComponentsInChildren<Renderer>()[1].enabled = enemList[i].CompareTag("WEnd") ? true : false;
				}
			}//Blink to Present
			else if(RenderSettings.skybox == skybox[2]){
				current = 0;
				RenderSettings.skybox = skybox[current];
				for(int i = 0; i < skybox.Length; i++){
					terrain[i].enabled = (i == current) ? true : false;
				}
				for(int i = 0; i < enemList.Count; i++){
					enemList[i].GetComponentsInChildren<Renderer>()[0].enabled = enemList[i].CompareTag("Present") ? true : false;
					enemList[i].GetComponentsInChildren<Renderer>()[1].enabled = enemList[i].CompareTag("Present") ? true : false;
				}
			}
		}
	}
}
