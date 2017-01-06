using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

using GooglePlayGames;
using GooglePlayGames.BasicApi;
using UnityEngine.SocialPlatforms;

public class LeaderboardUI : MonoBehaviour {
	private CardboardHead head;
	private float delay;
	// Use this for initialization
	private GameObject user;
	private string leaderboard = "CgkIoZ2o4r4OEAIQBw";
	// Use this for initialization
	void Start () {
		head = Camera.main.GetComponent<StereoController>().Head;
	}

	// Update is called once per frame
	void Update () {
		RaycastHit hit;
		bool isLookedAt = GetComponent<Collider>().Raycast(head.Gaze, out hit, Mathf.Infinity);
		if(!isLookedAt){
			delay = Time.time + 2.0f;
		}
		if((isLookedAt == true && Cardboard.SDK.Triggered == true)||(isLookedAt == true && Time.time>delay)){
			ShowLeaderboards();
			}
	}
	public void ShowLeaderboards(){
		if(PlayGamesPlatform.Instance.localUser.authenticated){
			PlayGamesPlatform.Instance.ShowLeaderboardUI(leaderboard);	
		} else{
			Debug.Log("can't show leaderboard; not authenticated");
		}
	}
}
