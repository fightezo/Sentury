using UnityEngine;
using System.Collections;

public class EnemyAttack : MonoBehaviour{
	public float timeBetweenAttacks = 0.5f;
	public int attackDamage = 10;

	public GameObject generator;
	public GenHealth genHealth;
	public GateHealth gateHealth;
	public bool genTargetInRange;
	public bool gateTargetInRange;
	public float timer;
	
	void Start(){
		generator = GameObject.FindGameObjectWithTag ("Generator");
		genHealth = generator.GetComponent <GenHealth>();
	}

	void OnCollisionEnter(Collision other){
		Debug.Log(other);
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

	void Update(){
		timer += Time.deltaTime;
		if((timer >= timeBetweenAttacks && gateTargetInRange) ||
		   (timer >= timeBetweenAttacks && genTargetInRange)){
			Attack();
		}
	}
		
	void Attack(){
		timer = 0f;
		if(genTargetInRange == true){
			genHealth.TakeDamage(attackDamage);
		} else if(gateTargetInRange == true){
			gateHealth.TakeDamage(attackDamage);
		}
	}
}
