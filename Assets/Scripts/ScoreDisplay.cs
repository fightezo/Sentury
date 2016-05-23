using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreDisplay : MonoBehaviour {
	public Text scoreDis;

	// Use this for initialization
	void Start () {
		scoreDis.text = "SCORE: " + ScoreManager.score;
	}
}
