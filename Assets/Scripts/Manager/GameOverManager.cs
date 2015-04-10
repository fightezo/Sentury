using UnityEngine;

public class GameOverManager : MonoBehaviour{
	GameObject gen;
	GenHealth genHealth;

	void Awake(){
		gen = GameObject.FindGameObjectWithTag ("Generator");
		genHealth = gen.GetComponent <GenHealth> ();
	}
	void Update(){
		if(genHealth.currentHealth <= 0){
			Application.LoadLevel("GameOver");
			}
		}
	}