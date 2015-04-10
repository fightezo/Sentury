using UnityEngine;

public class EnemyManager : MonoBehaviour{
	public GenHealth genHealth;       		// Reference to the player's health.

	public float timer = 3f;            	//Check time till spawn
	public int	maxEnemies = 10;

	public int waitTime = 5;

	public Transform spawn1;
	public Transform spawn2;
	public Transform spawn3;
	public Transform spawn4;
	public Transform spawn5;
	public Transform spawn6;
	public Transform spawn7;
	public Transform spawn8;


	public GameObject enem1;
	public GameObject enem2;
	public GameObject enem3;

	GameObject[] getCount;
	public int count;
	GameObject enem;
	Transform location;
	string era;
	bool spawning = false;


	void Start(){
		getCount = GameObject.FindGameObjectsWithTag("Enemy");
		count = getCount.Length;
	}

	void Update(){
		if(count == maxEnemies){
			spawning = false;
			timer = 0;
		}
		if(!spawning){
			timer += Time.deltaTime;
		}
		if(timer >= 2){
			Spawn();
		}

	}
	
	void Spawn(){
		if(genHealth.currentHealth <= 0f){
			return;
		}
		spawning = true;
		timer = 0;
		int randomPickLoc = Mathf.Abs (Random.Range(1,8));
		int randomPickEnemy =  Mathf.Abs (Random.Range(9,11));
		int randomPickEra =  Mathf.Abs (Random.Range(12,15));

		if(randomPickLoc == 1){
			location = spawn1;
		} else if(randomPickLoc == 2){
			location = spawn2;
		} else if(randomPickLoc == 3){
			location = spawn3;
		} else if(randomPickLoc == 4){
			location = spawn4;
		} else if(randomPickLoc == 5){
			location = spawn5;
		} else if(randomPickLoc == 6){
			location = spawn6;
		} else if(randomPickLoc == 7){
			location = spawn7;
		} else{
			location = spawn8;
		}

		if(randomPickEnemy == 9){
			enem = enem1;
		} else if(randomPickEnemy == 10){
			enem = enem2;
		} else{
			enem = enem3;
		}

		if(randomPickEra == 11){
			era = "grass";
		} else if(randomPickEra == 12){
			era = "sand";
		} else{
			era = "future";
		}

		enem = Instantiate(enem, location.position, location.rotation) as GameObject;
		enem.tag = era;
		count++;
		spawning = false;

	}
}