using UnityEngine;
using System.Collections;

public class EnemyMovement : MonoBehaviour{
	private Transform gen;               // Reference to the player's position.
	//private GenHealth genHealth;      	 // Reference to the player's health.
	private EnemyHealth enemyHealth;     // Reference to this enemy's health.
	private UnityEngine.AI.NavMeshAgent nav;            // Reference to the nav mesh agent.
	
	void Awake (){
		// Set up the references.
		gen = GameObject.FindGameObjectWithTag ("Generator").transform;
	//	genHealth = gen.GetComponent <GenHealth>();
		enemyHealth = GetComponent <EnemyHealth> ();
		nav = GetComponent <UnityEngine.AI.NavMeshAgent>();
	}
	
	
	void Update (){
		// If the enemy and the player have health left...
		if(enemyHealth.currentHealth > 0){
		// ... set the destination of the nav mesh agent to the player.
			nav.destination = gen.position;
		}else{
			// ... disable the nav mesh agent.
			nav.enabled = false;
		};
	}
}