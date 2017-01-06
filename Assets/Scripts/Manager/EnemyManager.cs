/* EnemyManager
 * Manager that controls enemy movement
*/
using UnityEngine;
using System.Collections;

public class EnemyManager : MonoBehaviour {
	public int currentHealth;                    // The current health the enemy has.
	public int scoreValue;               		// The amount added to the player's score when the enemy dies.
	public bool isTracked = false;				// Whether the enemy has been tracked by the Spotter
	public float timeBetweenAttacks;
	public int attackDamage;
	private float timer;


	private GameObject generator;
	private GenHealth genHealth;
	private GateHealth gateHealth;
	private bool genTargetInRange;
	private bool gateTargetInRange;
	private UnityEngine.AI.NavMeshAgent nav;    // Reference to the nav mesh agent.
	private int damage = 1;

	// Use this for initialization
	void Start () {
		generator = GameObject.FindGameObjectWithTag ("Generator");
		genHealth = generator.GetComponent <GenHealth>();
		nav = GetComponent<UnityEngine.AI.NavMeshAgent>();
	}

	// Update is called once per frame
	void Update () {
		if(currentHealth > 0){
			nav.destination = generator.transform.position;
		}else{
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
			this.gameObject.GetComponentInChildren<TextMesh>().text = "X";
			currentHealth -= damage;
			if(currentHealth <= 0){
				EnemySPManager.count -= 1;
				ScoreManager.score += scoreValue;
				VRFilterManager.enemList.Remove(this.gameObject);
				Destroy (gameObject);
			}
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
