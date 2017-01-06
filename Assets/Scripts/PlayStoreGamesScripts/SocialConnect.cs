using UnityEngine;
using System.Collections;

using GooglePlayGames;
using GooglePlayGames.BasicApi;
using UnityEngine.SocialPlatforms;

public class SocialConnect : MonoBehaviour {

	void Start(){
//		PlayGamesClientConfiguration config = new PlayGamesClientConfiguration.Builder()
//			.EnableSavedGames()
//			.Build();
////		 recommended for debugging:
//		PlayGamesPlatform.InitializeInstance(config);
//		PlayGamesPlatform.DebugLogEnabled = true;
		PlayGamesPlatform.Activate();
		if(!PlayGamesPlatform.Instance.localUser.authenticated){
			SignIn();
		}
		Debug.Log(PlayGamesPlatform.Instance.localUser.authenticated);
	}
	public void SignIn(){
			Social.localUser.Authenticate((bool success) => {
				if(success){
					Debug.Log("LOG IN SUCCESS!!");
				}
				else{
					Debug.Log("LOG IN FAIL");
				}
			});
		}
}