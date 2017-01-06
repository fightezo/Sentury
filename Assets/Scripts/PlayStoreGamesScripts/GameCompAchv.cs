using UnityEngine;
using System.Collections;

public class GameCompAchv : MonoBehaviour {
	private string gameComp = "CgkIoZ2o4r4OEAIQBA";
	// Use this for initialization
	void Start () {
		Social.ReportProgress(gameComp, 100.0f, (bool success) => {
			if(success){
				Debug.Log("ONE GAME COMPLETED ACHIEVEMENT UNLOCKED");
			}
			else{
				Debug.Log("ACHIEVEMENT NOPED");
			}
		});
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
