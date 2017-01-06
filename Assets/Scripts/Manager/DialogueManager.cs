/* Dialogue Manager
 * plays subtitles according to the audio
*/
using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Text.RegularExpressions;

public class DialogueManager : MonoBehaviour {
	//ISSUES WITH SCRIPT
	// not compatible with VR; need to modify
	public Camera screen;
	//private Rect _screenRect;

	private AudioSource audio;
	private const float _RATE = 44100.0f;
	private AudioClip dialogueAudio;

	private string[] fileLines;
	//subtitle variables
	private List<string> subtitleLines = new List<string>();

	private List<string> subtitleTimingStrings = new List<string>();
	public List<float> subtitleTimings = new List<float>();

	public List<string> subtitleText = new List<string>();

	private int nextSubtitle = 0;

	private string displaySubtitle;

	//Trigger variables
	private List<string> triggerLines = new List<string>();

	private List<string> triggerTimingStrings = new List<string>();
	public List<float> triggerTimings = new List<float>();

	private List<string> triggers = new List<string>();
	public List<string> triggerObjectNames = new List<string>();
	public List<string> triggerMethodNames = new List<string>();

	private int nextTrigger = 0;
	//GUI
	private GUIStyle subtitleStyle = new GUIStyle();

	//Singleton property
	public static DialogueManager Instance {get; private set;}


	void Awake(){
		if(Instance != null && Instance != this){
			Destroy(gameObject);
		}
		Instance = this;

		//gameObject.AddComponent<AudioSource>();
		audio = gameObject.GetComponent<AudioSource>();
		dialogueAudio = audio.clip;

	}

	void Start(){
		//Determines which subtitle script to enable
//		if(PlayerPrefs.GetInt("Vr Mode") == 0 && this.CompareTag("VR")){
//			this.gameObject.SetActive(true);
//		}else if(PlayerPrefs.GetInt("Vr Mode") == 1 && this.CompareTag("MainCamera")){
//			this.gameObject.SetActive(true);
//		}else{
//			this.gameObject.SetActive(false);
//		}
//		_screenRect = screen.pixelRect;
		BeginDialogue(dialogueAudio);
	}

	public void BeginDialogue(AudioClip dialogueAudio){
		subtitleLines = new List<string>();
		subtitleTimingStrings = new List<string>();
		subtitleTimings = new List<float>();
		subtitleText = new List<string>();

		triggerLines = new List<string>();
		triggerTimingStrings = new List<string>();
		triggerTimings = new List<float>();
		triggers = new List<string>();
		triggerObjectNames = new List<string>();
		triggerMethodNames = new List<string>();

		nextSubtitle = 0;
		nextTrigger = 0;

		//Get everything from text file
		TextAsset temp = Resources.Load("Dialogues/Tutorial/" + dialogueAudio.name) as TextAsset;
		fileLines = temp.text.Split('\n');

		//Split subtitle and trigger related lines into different lists
		foreach(string line in fileLines){
			if(line.Contains("<trigger/>")){
				triggerLines.Add(line);
			} else{
				subtitleLines.Add(line);
			}
		}

		//split our subtitle elements
		for(int cnt = 0; cnt < subtitleLines.Count; cnt++){
			string[] splitTemp = subtitleLines[cnt].Split('|');
			subtitleTimingStrings.Add(splitTemp[0]);
			subtitleTimings.Add(float.Parse(CleanTimeString(subtitleTimingStrings[cnt])));
			subtitleText.Add(splitTemp[1]);
		}

		//split our trigger elements
		for(int cnt = 0; cnt < triggerLines.Count; cnt++){
			string[] splitTemp1 = triggerLines[cnt].Split('|');
			triggerTimingStrings.Add(splitTemp1[0]);
			triggerTimings.Add(float.Parse(CleanTimeString(triggerTimingStrings[cnt])));

			triggers.Add(splitTemp1[1]);
			string[] splitTemp2 = triggers[cnt].Split('-');
			splitTemp2[0] = splitTemp2[0].Replace("<trigger>", "");
			triggerObjectNames.Add(splitTemp2[0]);
			triggerMethodNames.Add(splitTemp1[1]);
		}

		//Set initial subtitle text
		if(subtitleText[0] != null){
			displaySubtitle = subtitleText[0];
		}

		//Set and play the audio clip
		audio.Play();
	}
	//Remove all characters that are not part of timing float
	private string CleanTimeString(string timeString){
		return Regex.Replace(timeString,@"[^\d+(\.\d+)]","");
	}

	void OnGUI(){
		//Make sure we're using proper dialogueAudio file
		if (audio.clip != null && audio.clip.name == dialogueAudio.name){
			//check for <break/> or negative nextSubtitle
			if(nextSubtitle > 0 && !subtitleText[nextSubtitle - 1].Contains("<break/>")){
				//Create GUI
				GUI.depth = -1001;
				subtitleStyle.fixedWidth = Screen.width/1.5f;
				subtitleStyle.wordWrap = true;
				subtitleStyle.alignment = TextAnchor.MiddleCenter;
				subtitleStyle.normal.textColor = Color.white;
				subtitleStyle.fontSize = Mathf.FloorToInt(Screen.height * 0.0225f);

				//one pixel dropshadow
				Vector2 size = subtitleStyle.CalcSize(new GUIContent());
				GUI.contentColor = Color.black;
				GUI.Label(new Rect(Screen.width/2 - size.x/2 + 1, Screen.height/1.25f - size.y + 1, size.x, size.y), displaySubtitle, subtitleStyle);
				GUI.contentColor = Color.white;
				GUI.Label(new Rect(Screen.width/2 - size.x/2, Screen.height/1.25f - size.y, size.x, size.y), displaySubtitle, subtitleStyle);

			}

			//Increment nextSubtitle when we hit the associated time point
			if(nextSubtitle < subtitleText.Count){
				if(audio.timeSamples/_RATE > subtitleTimings[nextSubtitle]){
					displaySubtitle = subtitleText[nextSubtitle++];

				}
			}

			//Fire triggers when we hit the associated time point
			if(nextTrigger < triggers.Count){
				if(audio.timeSamples/_RATE > triggerTimings[nextTrigger]){
					//GameObject.Find(triggerObjectNames[nextTrigger]).SendMessage(triggerMethodNames[nextTrigger]);
					nextTrigger++;
				}
			}
		}
	}
}
