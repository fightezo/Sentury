/* Score Display
 * Script that displays the score
*/
using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScoreDisplay : MonoBehaviour {
	public Text scoreDis;

	void Start () {
		scoreDis.text = "SCORE: " + ScoreManager.score;
	}
}
