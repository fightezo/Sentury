/*EnemySPManager
 * Controls how many enemies to spawn, where to spawn the enemy, and which era to spawn in.
*/
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemySPManager : MonoBehaviour{
	public GenHealth genHealth;       		// Reference to the player's health.

	public float timer = 3f;            	//Check time till spawn
	public int	maxEnemies = 15;			//# of enemies allowed on the screen
	public static int count;
	public Transform[] spawns;
	public GameObject[] enemies;
	public string[] eras;
	public float spawnWait = 5;
	public float spawnMostWait = 5;
	public float spawnLeastWait = 3;

	private GameObject enem;
	private bool spawning = false;
	private int randomPickLoc;
	private int randomPickEnemy;
	private int randomPickEra;
	private int randomPickEraLayer;


	void Start(){
		count = 0;
	}

	void Update(){
		spawnWait = Random.Range(spawnLeastWait, spawnMostWait);
		if(count == maxEnemies){
			spawning = false;
			timer = 0;
		}
		if(!spawning) timer += Time.deltaTime;
		if(timer >= spawnWait) Spawn();
	}

	//Spawn an enemy with the following descriptions
	void Spawn(){
		spawning = true;
		timer = 0;
		randomPickLoc = Random.Range(0,8);
		randomPickEnemy =  Random.Range(0,3);
		randomPickEra =  Random.Range(0,3);

		enem = Instantiate(enemies[randomPickEnemy], spawns[randomPickLoc].position, spawns[randomPickLoc].rotation) as GameObject;
		enem.tag = eras[randomPickEra];
		enem.GetComponentInChildren<TextMesh>().tag = eras[randomPickEra];
		enem.GetComponentInChildren<Renderer>().tag = eras[randomPickEra];
		enem.GetComponentInChildren<Renderer>().enabled = false;
		if(RenderSettings.skybox.name == "present-sky" && randomPickEra == 0) {
			enem.GetComponent<Renderer>().enabled = true;
		}else if(RenderSettings.skybox.name == "beaut-fut-sky" && randomPickEra == 1) {
			enem.GetComponent<Renderer>().enabled = true;
		}else if(RenderSettings.skybox.name == "worldEnd-fut-sky" && randomPickEra == 2) {
			enem.GetComponent<Renderer>().enabled = true;
		} else enem.GetComponent<Renderer>().enabled = false;
		count++;
		VRFilterManager.enemList.Add(enem);
		spawning = false;
	}
}