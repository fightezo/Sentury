using UnityEngine;

public class EnemyHealth : MonoBehaviour{
	public int startingHealth = 100;         	 // The amount of health the enemy starts the game with.
	public int currentHealth;                    // The current health the enemy has.
	public int scoreValue = 10;               	// The amount added to the player's score when the enemy dies.
	public bool isTracked = false;				// Whether the enemy has been tracked by the Spotter
	//public AudioClip deathClip;              // The sound to play when the enemy dies.	
	//Animator anim;                              // Reference to the animator.
	//AudioSource enemyAudio;              		// Reference to the audio source.
	//ParticleSystem hitParticles;          	   	// Reference to the particle system that plays when the enemy is damaged.
	bool isDead;                                  // Whether the enemy is dead.
	Transform emana;
	ScoreManager sm;
	EnemyManager eManager;

	void Awake(){
		// Setting up the references.
		//anim = GetComponent <Animator> ();
		//hitParticles = GetComponentInChildren <ParticleSystem>();
		currentHealth = startingHealth;
		emana = GameObject.FindGameObjectWithTag ("Manager").transform;
		eManager = emana.GetComponent <EnemyManager>();
	}
	
	void Update(){
		if(isTracked){
			TakeDamage(1);
			GetComponent<Renderer>().material.color = Color.yellow;
		}
		if(isDead){
			Destroy (gameObject);
			eManager.count -= 1;
			ScoreManager.score += scoreValue; 
		}

	}
	
	public void TakeDamage(int amount){
		if(isDead){
			return;
		}
		currentHealth -= amount;
		if(currentHealth <= 0){
			isDead = true;
			isTracked = false;
		}
	}

}