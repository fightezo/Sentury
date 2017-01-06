/*
 * Script that determines how much health the gates have left
*/
using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GateHealth : MonoBehaviour{
	// piece to spawn after destroyed.
	public GameObject pieces;
	// The current health the gate has.
	private int currentHealth = 100;
	// Whether the gate is dead.
	private bool isDead = false;

	void Update(){
		if(isDead == true){
			Destroy (gameObject);
			Instantiate(pieces, transform.position, transform.rotation);
		}
	}
	
	public void TakeDamage(int amount){
		currentHealth -= amount;
		if(currentHealth <= 0 && !isDead){
			isDead = true;
		}
	}
}