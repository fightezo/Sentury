using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;
using GooglePlayGames;


public class GenHealth : MonoBehaviour{
	public int startingHealth = 250;                            // The amount of health the generator starts the game with.
	public int currentHealth;                                   // The current health the generator has.

	private string leaderboard = "CgkIoZ2o4r4OEAIQBw";			//Play Games leaderboard unique ID
	private bool isDead;                                        // Whether the generator is unrepairable.

	void Awake(){
		// Set the initial health of the generator.
		currentHealth = startingHealth;
	}
	
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
		// If the player has lost all it's health and the death flag hasn't been set yet...
		if(currentHealth <= 0 && !isDead){
			isDead = true;
		}
	} 
}