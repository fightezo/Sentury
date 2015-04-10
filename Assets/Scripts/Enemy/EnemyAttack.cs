using UnityEngine;
using System.Collections;

public class EnemyAttack : MonoBehaviour{
	public float timeBetweenAttacks = 0.5f;
	public int attackDamage = 10;

	GameObject generator;
	GenHealth genHealth;
	GateHealth gateHealth;
	EnemyHealth enemyHealth;
	bool genTargetInRange;
	bool gateTargetInRange;
	float timer;
	
	void Awake(){
		generator = GameObject.FindGameObjectWithTag ("Generator");
		genHealth = generator.GetComponent <GenHealth>();
		enemyHealth = GetComponent<EnemyHealth>();
		//anim = GetComponent <Animator> ();
	}

	void OnTriggerEnter(Collider other){
		if(other.gameObject == generator){
			genTargetInRange = true;
		} else if(other.CompareTag ("Gate")){
			gateHealth = other.gameObject.GetComponent <GateHealth>();
			gateTargetInRange = true;
		}
	}

	void OnTriggerExit(Collider other){
		if(other.gameObject == generator){
			genTargetInRange = false;
		}
		if(other.CompareTag ("Gate")){
			gateTargetInRange = false;
		}
	}

	void Update(){
		timer += Time.deltaTime;
		if((timer >= timeBetweenAttacks && gateTargetInRange && enemyHealth.currentHealth > 0) ||
		   (timer >= timeBetweenAttacks && genTargetInRange && enemyHealth.currentHealth > 0)){
			Attack();
		}
	}
		
	void Attack(){
		timer = 0f;
		if(genHealth.currentHealth > 0 && genTargetInRange == true){
			genHealth.TakeDamage(attackDamage);
		} else if(gateHealth.currentHealth > 0 && gateTargetInRange == true){
			gateHealth.TakeDamage(attackDamage);
		}
	}
}
