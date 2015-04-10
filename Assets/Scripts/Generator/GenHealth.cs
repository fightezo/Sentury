using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GenHealth : MonoBehaviour{
	public int startingHealth = 1000;                            // The amount of health the generator starts the game with.
	public int currentHealth;                                   // The current health the generator has.
	//public AudioClip deathClip;                                 // The audio clip to play when the generator dies.

	bool isDead;                                                // Whether the generator is unrepairable.
	bool damaged;                                               // True when the generator gets damaged.

	void Awake(){
		// Set the initial health of the generator.
		currentHealth = startingHealth;
	}
	
	void Update(){
		if(isDead == true){
			Application.LoadLevel("GameOver");
		}
	}

	public void TakeDamage(int amount){
		currentHealth -= amount;
		// If the player has lost all it's health and the death flag hasn't been set yet...
		if(currentHealth <= 0 && !isDead){
			Death();
		}
	}
	void Death(){
		isDead = true;
	}       
}