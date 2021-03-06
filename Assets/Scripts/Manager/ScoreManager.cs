﻿/*Score Manager
 * Display score in player's hud
*/
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class ScoreManager : MonoBehaviour{
	public static int score;       	// The player's score.
	public Text text;           	// Reference to the Text component.



	void Start(){
		// Set up the reference.
		text = GetComponent<Text>();

		// Reset the score.
		score = 0;
	}

	void Update(){
		// Set the displayed text to be the word "Score" followed by the score value.
		text.text = "SCORE: " + score;
	}
}