using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GateHealth : MonoBehaviour{
	public int startingHealth = 100;                            // The amount of health the gate starts the game with.
	public int currentHealth;                                   // The current health the gate has.
	public GameObject pieces;									// piece to spawn after destroyed.
	bool isDead = false;                                                // Whether the gate is dead.	
	
	void Awake(){
		currentHealth = startingHealth;
	}

	void Update(){
		if(isDead == true){
			Destroy (gameObject);
			GameObject piecesTemp = Instantiate(pieces, transform.position, transform.rotation) as GameObject;
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