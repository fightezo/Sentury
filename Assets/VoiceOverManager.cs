using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

using GooglePlayGames;
using GooglePlayGames.BasicApi;
using UnityEngine.SocialPlatforms;
public class VoiceOverManager : MonoBehaviour {

	public AudioClip[] audioC;
	public GameObject[] triggers;
	public GameObject restrictions;

	private AudioSource audioSo;
	private IEnumerator coroutine;
	public int cntr = 0;

	private string TutAchv = "CgkIoZ2o4r4OEAIQCA";
	// Use this for initialization
	void Start () {
		audioSo = this.GetComponent<AudioSource>();
		//tutorial00
		StartCoroutine(WaitAndPlay(5.0f, 0));
		StartCoroutine(WaitAndTrigger(49.0f, 0));
	}


	// Update is called once per frame
	void Update () {
		//tutorial01
		if(cntr == 0)	restrictions.SetActive(false);
		if(cntr == 1){
			if(triggers[0].GetComponentInChildren<TextMesh>().text == "X"){
				PlayVoice(audioC[1]);
			}
		}
		if(cntr == 2){
			if(audioSo.clip == audioC[1] && !audioSo.isPlaying){
				restrictions.SetActive(true);
			}
			//tutorial02
			if(RenderSettings.skybox.name == "beaut-fut-sky"){
				restrictions.SetActive(false);
				PlayVoice(audioC[2]);
				StartCoroutine(WaitAndTrigger(25.0f, 1));
			}
		}
		//tutorial03
		if(cntr == 3){
			if(triggers[1].GetComponentInChildren<TextMesh>().text == "X"){
				PlayVoice(audioC[3]);
			}
		}
		//tutorial04
		if(cntr == 4){
			if(audioSo.clip == audioC[3] && !audioSo.isPlaying){
				restrictions.SetActive(true);
			}
			if(RenderSettings.skybox.name == "worldEnd-fut-sky"){
				restrictions.SetActive(false);
				StartCoroutine(WaitAndTrigger(0f, 2));
			}
			if(triggers[2].GetComponentInChildren<TextMesh>().text == "X"){
				PlayVoice(audioC[4]);
			}
		}

		if(cntr == 5){
			if(audioSo.clip == audioC[4] && !audioSo.isPlaying){
				StartCoroutine(WaitAndEnd(5.0f));
			}
		}

	}

	IEnumerator WaitAndPlay(float waitTime, int play){
		yield return new WaitForSeconds(waitTime);
		PlayVoice(audioC[play]);
	}
	void PlayVoice(AudioClip clip){
		audioSo.clip = clip;
		audioSo.Play();
		cntr++;
	}

	IEnumerator WaitAndTrigger(float waitTime, int trigger){
		yield return new WaitForSeconds(waitTime);
		PlayTrigger(triggers[trigger]);
	}
	void PlayTrigger(GameObject obj){
		obj.SetActive(true);
	}

	IEnumerator WaitAndEnd(float waitTime){
		yield return new WaitForSeconds(waitTime);
		Social.ReportProgress(TutAchv, 100.0f, (bool success) => {
			if(success){
				Debug.Log("HEAVY ACHIEVEMENT UNLOCKED");
			}
			else{
				Debug.Log("ACHIEVEMENT NOPED");
			}
		});
		SceneManager.LoadScene("Menu");
	}

}
