using UnityEngine;

public class EnemyHealth : MonoBehaviour{
	public int startingHealth = 100;         	 // The amount of health the enemy starts the game with.
	public int currentHealth;                    // The current health the enemy has.
	public int scoreValue = 10;               	// The amount added to the player's score when the enemy dies.
	public bool isTracked = false;				// Whether the enemy has been tracked by the Spotter
	private bool isDead;                        // Whether the enemy is dead.


	void Start(){
		currentHealth = startingHealth;
	}
	
	void Update(){
		if(isTracked){
			TakeDamage(1);
		}
		if(isDead){
			Destroy (gameObject);
			EnemySPManager.count -= 1;
			ScoreManager.score += scoreValue;
			//VRFilterManager.enemList.Remove(this.gameObject);
		}
	}
	
	public void TakeDamage(int amount){
		currentHealth -= amount;
		if(currentHealth <= 0){
			isDead = true;
		}
	}

}