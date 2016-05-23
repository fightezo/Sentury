using UnityEngine;

public class EnemySPManager : MonoBehaviour{
	public GenHealth genHealth;       		// Reference to the player's health.

	public float timer = 3f;            	//Check time till spawn
	public int	maxEnemies = 15;			//# of enemies allowed on the screen
	public int waitTime = 5;
	public static int count;

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

	private GameObject enem;
	private Transform location;
	private string era;
	private bool spawning = false;
	void Start(){
		count = 0;
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
		spawning = true;
		timer = 0;
		int randomPickLoc = Mathf.Abs (Random.Range(0,8));
		int randomPickEnemy =  Mathf.Abs (Random.Range(9,12));
		int randomPickEra =  Mathf.Abs (Random.Range(13,16));

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

		if(randomPickEra == 13){
			era = "Present";
		} else if(randomPickEra == 14){
			era = "WEnd";
		} else{
			era = "Bright";
		}

		enem = Instantiate(enem, location.position, location.rotation) as GameObject;
		enem.tag = era;
		enem.GetComponent<Renderer>().material.color = Color.white;
		enem.GetComponent<Renderer>().enabled = true;
		count++;
		VRFilterManager.enemList.Add(enem);
		spawning = false;

	}
}