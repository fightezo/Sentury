﻿/* Radar
 * to display enemy location based on current eras
 * By: Douglas Wong; based off Justin Zaun's radar script
*/
using UnityEngine;
using UnityEngine.UI;
using System.Collections;


public class RadarUI : MonoBehaviour{

	public enum RadarTypes : int {Textured, Round, Transparent};
	public enum RadarLocations : int {TopLeft, TopCenter, TopRight, BottomLeft, BottomCenter, BottomRight, Left, Center, Right, Custom};

	// Display Location
	public Camera screen;
	public RadarLocations radarLocation = RadarLocations.BottomCenter;
	public Vector2 radarLocationCustom;
	public RadarTypes radarType = RadarTypes.Round;
	public Color radarBackgroundA = new Color(0, 0, 0, 0.5f);
	//public Color radarBackgroundB = new Color(0, 0, 0, 0.5f);
	public Texture2D radarTexture;
	public float radarSize = 0.20f;  // The amount of the screen the radar will use
	public float radarZoom = 0.08f;

	// Center Object information
	public bool   radarCenterActive;
	public Color  radarCenterColor = new Color(255, 255, 255);
	public string radarCenterTag;

	// Blip information
	public bool   radarBlip1Active;
	public Color  radarBlip1Color = new Color(0, 0, 255);
	public string radarBlip1Tag;

	public bool   radarBlip2Active;
	public Color  radarBlip2Color = new Color(229, 222, 0);
	public string radarBlip2Tag;

	public bool   radarBlip3Active;
	public Color  radarBlip3Color = new Color(195, 0, 0);
	public string radarBlip3Tag;

	public bool   radarBlip4Active;
	public Color  radarBlip4Color = new Color(79, 79, 79);
	public string radarBlip4Tag;

	public bool   radarBlip5Active;
	public Color  radarBlip5Color = new Color(0, 0, 0);
	public string radarBlip5Tag;

	// Internal vars
	private GameObject _centerObject;
	private Rect 	   _screenRect;
	public int         _radarWidth;
	public int         _radarHeight;
	public float	   _radarXOffset;
	public float	   _radarYOffset;
	public float	   _radarVRXOffset;
	public float	   _radarVRYOffset;
	private Vector2    _radarCenter;
	private Texture2D  _radarCenterTexture;
	private Texture2D  _radarBlip1Texture;
	private Texture2D  _radarBlip2Texture;
	private Texture2D  _radarBlip3Texture;
	private Texture2D  _radarBlip4Texture;
	private Texture2D  _radarBlip5Texture;
	//private Texture2D  _radarViewCone;

	// Initialize the radar
	void Start (){
		//Determines which radar to enable
		if(PlayerPrefs.GetInt("Vr Mode") == 0 && this.CompareTag("VR")){
			this.gameObject.SetActive(true);
		}else if(PlayerPrefs.GetInt("Vr Mode") == 1 && this.CompareTag("MainCamera")){
			this.gameObject.SetActive(true);
		}else{
			this.gameObject.SetActive(false);
		}
		// Determine the size of the radar + screen dimension offsets
		_screenRect = screen.pixelRect;
		_radarWidth = (int)(_screenRect.width * radarSize);
		_radarHeight = _radarWidth;
		_radarXOffset = screen.pixelRect.x;
		_radarYOffset = screen.pixelRect.y;

		// Get the location of the radar
		setRadarLocation();

		// Create the blip textures
		_radarCenterTexture = new Texture2D(3, 3, TextureFormat.RGBA32, false);
		_radarBlip1Texture = new Texture2D(3, 3, TextureFormat.RGBA32, false);
		_radarBlip2Texture = new Texture2D(3, 3, TextureFormat.RGBA32, false);
		_radarBlip3Texture = new Texture2D(3, 3, TextureFormat.RGBA32, false);
		_radarBlip4Texture = new Texture2D(3, 3, TextureFormat.RGBA32, false);
		_radarBlip5Texture = new Texture2D(3, 3, TextureFormat.RGBA32, false);
		//_radarViewCone = new Texture2D(3, 3, TextureFormat.RGBA32, false);

		CreateBlipTexturePlayer(_radarCenterTexture, radarCenterColor);
		CreateBlipTexture(_radarBlip1Texture, radarBlip1Color);
		CreateBlipTexture(_radarBlip2Texture, radarBlip2Color);
		CreateBlipTexture(_radarBlip3Texture, radarBlip3Color);
		CreateBlipTexture(_radarBlip4Texture, radarBlip4Color);
		CreateBlipTexture(_radarBlip5Texture, radarBlip5Color);
		//CreateBlipTextureCone(_radarViewCone);

		// Setup the radar background texture
		if (radarType != RadarTypes.Textured)
		{
			radarTexture = new Texture2D(_radarWidth, _radarHeight, TextureFormat.RGBA32, false);
			//CreateRoundTexture(radarTexture, radarBackgroundA, radarBackgroundB);
			CreateRoundTexture(radarTexture, radarBackgroundA);
		}

		// Get our center object
		GameObject[] gos;
		gos = GameObject.FindGameObjectsWithTag(radarCenterTag);
		_centerObject = gos[0];
	}

	// Update is called once per frame
//	void Update(){
//		
//	}
	void OnGUI ()
	{
		GameObject[] gos;
		Matrix4x4 matrixbackUp = GUI.matrix;
		GUIUtility.RotateAroundPivot(-screen.gameObject.transform.rotation.eulerAngles.y, _radarCenter);
		// Draw th radar background
		if (radarType != RadarTypes.Transparent)
		{
			Rect radarRect = new Rect(_radarCenter.x - _radarWidth / 2, _radarCenter.y - _radarHeight / 2, _radarWidth, _radarHeight);
			GUI.DrawTexture(radarRect, radarTexture);
		}

		// Draw blips
		if(RenderSettings.skybox.name == "present-sky"){
			if (radarBlip1Active){
				// Find all game objects
				gos = GameObject.FindGameObjectsWithTag(radarBlip1Tag); 
				foreach (GameObject go in gos){
					drawBlip(go, _radarBlip1Texture);
				}
			}
		}else if(RenderSettings.skybox.name == "beaut-fut-sky"){
			if (radarBlip2Active){
				gos = GameObject.FindGameObjectsWithTag(radarBlip2Tag); 
				foreach (GameObject go in gos){
					drawBlip(go, _radarBlip2Texture);
				}
			}
		}else if(RenderSettings.skybox.name == "worldEnd-fut-sky"){
			if (radarBlip3Active){
				gos = GameObject.FindGameObjectsWithTag(radarBlip3Tag);
				foreach (GameObject go in gos){
					drawBlip(go, _radarBlip3Texture);
				}
			}
		}
			
		if (radarBlip4Active){
			gos = GameObject.FindGameObjectsWithTag(radarBlip4Tag); 
			foreach (GameObject go in gos){
				drawBlip(go, _radarBlip4Texture);
			}
		}
		if (radarBlip5Active){
			gos = GameObject.FindGameObjectsWithTag(radarBlip5Tag);
			foreach (GameObject go in gos){
				drawBlip(go, _radarBlip5Texture);
			}
		}
		// Draw center oject
		if (radarCenterActive){
			Rect centerRect = new Rect(_radarCenter.x - 1.5f, _radarCenter.y - 1.5f, 3, 3);
			GUI.DrawTexture(centerRect, _radarCenterTexture);
		}
		//GUI.matrix = matrixbackUp;
	}

	// Draw a blip for an object
	void drawBlip(GameObject go, Texture2D blipTexture){
		if (_centerObject){
			Vector3 centerPos = _centerObject.transform.position;
			Vector3 extPos = go.transform.position;

			// Get the distance to the object from the centerObject
			float dist = Vector3.Distance(centerPos, extPos);

			// Get the object's offset from the centerObject
			float bX = centerPos.x - extPos.x;
			float bY = centerPos.z - extPos.z;

			// Scale the objects position to fit within the radar
			bX = bX * radarZoom;
			bY = bY * radarZoom;

			// For a round radar, make sure we are within the circle
			if(dist <= (_radarWidth - 2) * 0.5 / radarZoom){
				Rect clipRect = new Rect(_radarCenter.x - bX - 1.5f, _radarCenter.y + bY - 1.5f, blipTexture.width, blipTexture.height);
				GUI.DrawTexture(clipRect, blipTexture);
			}
		}
	}

	// Create the blip textures
	void CreateBlipTexturePlayer(Texture2D tex, Color c){
		Color[] cols = {Color.black, Color.black, Color.black, 
						c, c, c,
						c, c, c,
						c, c, c,  
						c, c, c,
						c, c, c, 
						c, c, c,
						c, c, c,
						c, c, c,
						Color.black, Color.black, Color.black};
		tex.SetPixels(cols, 0);
		tex.Apply();
	}

	// Create the blip textures
	void CreateBlipTexture(Texture2D tex, Color c){
		int size = tex.height * tex.width;
		Color[] cols = new Color[size];
		for(int i = 0; i < size; i++){
			cols.SetValue(c,i);
		}
		tex.SetPixels(cols, 0);
		tex.Apply();
	}

	// Create a round texture
	//void CreateRoundTexture(Texture2D tex, Color a, Color b)
	void CreateRoundTexture(Texture2D tex, Color a){
		Color c = new Color(0, 0, 0, 0f);
		int size = (int)((_radarWidth / 2) / 4);

		// Clear the texture
		for (int x = 0; x < _radarWidth; x++){
			for (int y = 0; y < _radarWidth; y++){
				tex.SetPixel(x, y, c);
			}
		}
		for (int r = 4; r > 0; r--){
			if (r % 2 == 0)
			{
				c = a;
			}
//			else{
//				c = b;
//			}
			DrawFilledCircle(tex, (int)(_radarWidth / 2), (int)(_radarHeight / 2), (r * size), c);
		}
		tex.Apply();
	}

	// Draw a filled colored circle onto a texture
	void DrawFilledCircle(Texture2D tex, int cx, int cy, int r, Color c){
		for (int x = -r; x < r ; x++){
			int height = (int)Mathf.Sqrt(r * r - x * x);
			for (int y = -height; y < height; y++){
				tex.SetPixel(x + cx, y + cy, c);
			}
		}
	}

	// Figure out where to put the radar
	void setRadarLocation(){
		// Sets radarCenter based on enum selection
		if(radarLocation == RadarLocations.TopLeft)	{
			_radarCenter = new Vector2(_radarWidth / 2 , _radarHeight / 2);
		}else if(radarLocation == RadarLocations.TopCenter){
			_radarCenter = new Vector2((screen.pixelWidth / 2) + _radarXOffset - 50f, _radarHeight / 2);
		}else if(radarLocation == RadarLocations.TopRight){
			_radarCenter = new Vector2((screen.pixelWidth - _radarWidth / 2) + _radarXOffset - 50f, _radarHeight / 2 + 50f);
		}else if(radarLocation == RadarLocations.Left){
			_radarCenter = new Vector2(_radarWidth / 2, (screen.pixelHeight / 2) + _radarYOffset);
		}else if(radarLocation == RadarLocations.Center){
			_radarCenter = new Vector2((screen.pixelWidth / 2) + _radarXOffset, (screen.pixelHeight / 2) + _radarYOffset);
		}else if(radarLocation == RadarLocations.Right){
			_radarCenter = new Vector2((screen.pixelWidth - _radarWidth / 2) + _radarXOffset, (screen.pixelHeight / 2) + _radarYOffset);
		}else if(radarLocation == RadarLocations.BottomLeft){
			_radarCenter = new Vector2(_radarWidth / 2, (screen.pixelHeight - _radarHeight / 2) + _radarYOffset);
		}else if(radarLocation == RadarLocations.BottomCenter){
			_radarCenter = new Vector2((screen.pixelWidth / 2) + _radarXOffset, (screen.pixelHeight - _radarHeight / 2) + _radarYOffset -100f);
		}else if(radarLocation == RadarLocations.BottomRight){
			_radarCenter = new Vector2((screen.pixelWidth - _radarWidth / 2) + _radarXOffset, (screen.pixelHeight - _radarHeight / 2) + _radarYOffset);
		}else if(radarLocation == RadarLocations.Custom){
			_radarCenter = radarLocationCustom;
		}
	}
}