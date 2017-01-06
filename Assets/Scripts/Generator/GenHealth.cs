/*
 * Script that determines how much health the generator has left; determines whether if it's game over for the player
*/

using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;
using GooglePlayGames;


public class GenHealth : MonoBehaviour{
	// The current health the generator has.
	private int currentHealth = 250;
	//Play Games leaderboard unique ID
	private string leaderboard = "CgkIoZ2o4r4OEAIQBw";			
	// Whether the generator is unrepairable.
	private bool isDead;

	void Update(){
		if(isDead == true){
			if(PlayGamesPlatform.Instance.localUser.authenticated){
				PlayGamesPlatform.Instance.ReportScore(ScoreManager.score, leaderboard, (bool success) =>{
					if(success){
						Debug.Log("score log success");
					}
					else{
						Debug.Log("score log fail");
					}
				});
			}
			SceneManager.LoadScene("GameOver");
		}
	}

	public void TakeDamage(int amount){
		currentHealth -= amount;
		if(currentHealth <= 0 && !isDead){
			isDead = true;
		}
	} 
}