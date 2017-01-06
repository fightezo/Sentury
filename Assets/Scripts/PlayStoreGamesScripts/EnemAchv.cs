using UnityEngine;
using System.Collections;

using GooglePlayGames;
using GooglePlayGames.BasicApi;
using UnityEngine.SocialPlatforms;

public class EnemydAchv : MonoBehaviour {
	public GameObject heavy;
	private string heavyAchv = "CgkIoZ2o4r4OEAIQAQ";

	public GameObject infantry;
	private string infantryAchv = "CgkIoZ2o4r4OEAIQAw";

	public GameObject drone;
	private string droneAchv = "CgkIoZ2o4r4OEAIQAg";

	// Use this for initialization

	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(heavy.GetComponent<EnemyManager>().currentHealth == 0){
			Social.ReportProgress(heavyAchv, 100.0f, (bool success) => {
				if(success){
					Debug.Log("HEAVY ACHIEVEMENT UNLOCKED");
				}
				else{
					Debug.Log("ACHIEVEMENT NOPED");
				}
			});
		}
		if(infantry.GetComponent<EnemyManager>().currentHealth == 0){
			Social.ReportProgress(infantryAchv, 100.0f, (bool success) => {
				if(success){
					Debug.Log("INFANTRY ACHIEVEMENT UNLOCKED");
				}
				else{
					Debug.Log("ACHIEVEMENT NOPED");
				}
			});
		}
		if(drone.GetComponent<EnemyManager>().currentHealth == 0){
			Social.ReportProgress(droneAchv, 100.0f, (bool success) => {
				if(success){
					Debug.Log("DRONE ACHIEVEMENT UNLOCKED");
				}
				else{
					Debug.Log("ACHIEVEMENT NOPED");
				}
			});
		}
	}
}
