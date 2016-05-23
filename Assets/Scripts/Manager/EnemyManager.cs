using UnityEngine;
using System.Collections;

public class EnemyManager : MonoBehaviour {
	public int startingHealth = 100;         	 // The amount of health the enemy starts the game with.
	public int currentHealth;                    // The current health the enemy has.
	public int scoreValue = 10;               	// The amount added to the player's score when the enemy dies.
	public bool isTracked = false;				// Whether the enemy has been tracked by the Spotter

	public float timeBetweenAttacks = 0.5f;
	public int attackDamage = 10;
	public float timer;

	private GameObject generator;
	private GenHealth genHealth;
	private GateHealth gateHealth;
	private bool genTargetInRange;
	private bool gateTargetInRange;



	private bool isDead;                        // Whether the enemy is dead.
	private NavMeshAgent nav;            // Reference to the nav mesh agent.
	private int damage = 1;

	// Use this for initialization
	void Start () {
		generator = GameObject.FindGameObjectWithTag ("Generator");
		genHealth = generator.GetComponent <GenHealth>();
		currentHealth = startingHealth;
		nav = GetComponent<NavMeshAgent>();
	}

	// Update is called once per frame
	void Update () {
		// If the enemy and the player have health left...
		if(currentHealth > 0){
			// ... set the destination of the nav mesh agent to the player.
			nav.destination = generator.transform.position;
		}else{
			// ... disable the nav mesh agent.
			nav.enabled = false;
		};

		timer += Time.deltaTime;
		if((timer >= timeBetweenAttacks) && (gateTargetInRange || genTargetInRange)){
			timer = 0f;
			if(genTargetInRange == true){
				genHealth.TakeDamage(attackDamage);
			} else if(gateTargetInRange == true){
				gateHealth.TakeDamage(attackDamage);
			}
		}

		if(isTracked){
			GetComponent<Renderer>().material.color = Color.blue;
			currentHealth -= damage;
			if(currentHealth <= 0){
				isDead = true;
			}
		}

		if(isDead){
			EnemySPManager.count -= 1;
			ScoreManager.score += scoreValue;
			VRFilterManager.enemList.Remove(this.gameObject);
			Destroy (gameObject);
		}
	}

	void OnCollisionEnter(Collision other){
		if(other.gameObject == generator){
			genTargetInRange = true;
		} else{
			genTargetInRange = false;
		}

		if(other.collider.CompareTag("Gate")){
			gateHealth = other.collider.GetComponent<GateHealth>();
			gateTargetInRange = true;
		} else{
			gateTargetInRange = false;
		}
	}
}
