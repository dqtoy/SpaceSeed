using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using SpaceTravel;

public class PlayerCtroller : SingletonBehaviour<PlayerCtroller> {

    #region Variables
    //public
	public Vector3 gravity;
    public Animator animator;
    public float topSpeed = 100;
    public Attractor attractor;
    public float energy;
    public float maxEnergy = 200;
    public ParticleSystem _particleTrail;

    public int activeChildCount;
    public List<GameObject> childrenSlots;

	//private
	[SerializeField]
	private float movementSpeed = 0.0f;
	private Rigidbody myRB;
    private Renderer rend;
    public Color originColor;
    public float hue, saturation, value;
    private bool moving;

    private ParticleSystem.EmissionModule _particleTrailEmission;
    private ParticleSystem.MinMaxCurve _particleTrailEmissionRate;

    private int maxChildCount = 5;

	#endregion

	#region UnityFunctions

	private void Awake()
	{
        rend = GetComponent<Renderer>();
        originColor = rend.material.GetColor("_Color1");
        Color.RGBToHSV(originColor, out hue, out saturation, out value);

        energy = maxEnergy; 

        //particle
        _particleTrailEmission = _particleTrail.emission;
        _particleTrailEmissionRate = _particleTrailEmission.rate;
        _particleTrailEmissionRate.mode = ParticleSystemCurveMode.Constant;
        //_particleTrailEmission.enabled = false;


        activeChildCount = 0;
	}

	void Start () 
	{
		myRB = GetComponent<Rigidbody> ();
		Physics.gravity = gravity;
	}

	private void Update()
	{
        Color newColor = Color.HSVToRGB(hue, saturation, energy / maxEnergy + 0.2f);
        rend.material.SetColor("_Color1", newColor);

        if (transform.position.y < 10)
        {
            UpdateEnergy(1f);
        }
	}

	void FixedUpdate () 
	{
        Move();

	}

    #endregion

    public void Collect(GameObject seed)
    {
        if (activeChildCount >= maxChildCount)
            return;

        childrenSlots[activeChildCount++].SetActive(true);
    }

    public void TeleportSeeds()
    {
        for (int i = 0; i < activeChildCount; i++)
        {
            childrenSlots[i].gameObject.SetActive(false);
        }
        activeChildCount = 0;
    }

    public void UpdateEnergy(float deltaEnergy)
    {
        energy += deltaEnergy;
        energy = Mathf.Clamp(energy, 0, maxEnergy);
    }

	private void Move()
	{
        if (energy <= 0)
            return;
        
        if (transform.position.x < AllLevelsManager.Instance.currentLevel.left)
        {
            myRB.velocity = Vector3.zero;
            transform.position = new Vector3(AllLevelsManager.Instance.currentLevel.left,
                                             transform.position.y, transform.position.z);
            myRB.AddForce(Vector3.right * 2);
            return;
        }
        else if (transform.position.x > AllLevelsManager.Instance.currentLevel.right)
        {
            myRB.velocity = Vector3.zero;
            transform.position = new Vector3(AllLevelsManager.Instance.currentLevel.right,
                                             transform.position.y, transform.position.z);
            myRB.AddForce(Vector3.left * 2);
            return;
        }

        if (transform.position.y < AllLevelsManager.Instance.currentLevel.bottom)
        {
            myRB.velocity = Vector3.zero;
            transform.position = new Vector3(transform.position.x, 
                                             AllLevelsManager.Instance.currentLevel.bottom, transform.position.z);
            myRB.AddForce(Vector3.up * 2);
            return;
        }
        else if (transform.position.y > AllLevelsManager.Instance.currentLevel.top)
        {
            myRB.velocity = Vector3.zero;
            transform.position = new Vector3(transform.position.x,
                                             AllLevelsManager.Instance.currentLevel.top, transform.position.z);
            myRB.AddForce(Vector3.down * 2);
            return;
        }

        float hAxis = 0;
        float vAxis = 0;

        if (Input.GetAxis("Horizontal") != 0 || Input.GetAxis("Vertical") != 0 
            || Input.GetMouseButton(0) || Input.touchCount == 1)
        {

            if (Input.GetAxis("Horizontal") != 0)
            {
                hAxis = Input.GetAxis("Horizontal");
                if ((hAxis > 0 && myRB.velocity.x > topSpeed) ||
                    (hAxis < 0 && myRB.velocity.x < -topSpeed))
                {
                    
                }
                else
                {
                    UpdateEnergy(-Mathf.Abs(hAxis));
                    myRB.AddForce(Vector3.right * hAxis * movementSpeed, ForceMode.Acceleration);
                }
                    
            }
            if (Input.GetAxis("Vertical") != 0)
            {
                vAxis = - Input.GetAxis("Vertical");
                if ((vAxis > 0 && myRB.velocity.y > topSpeed) ||
                    (vAxis < 0 && myRB.velocity.y < -topSpeed))
                {

                }
                else
                {
                    UpdateEnergy(-Mathf.Abs(vAxis));
                    myRB.AddForce(Vector3.up * vAxis * movementSpeed, ForceMode.Acceleration);
                }
            }

            //myRB.velocity = Vector3.ClampMagnitude(myRB.velocity, topSpeed);

            //mouse
            /*
            else if (Input.GetMouseButton(0))
            {
                if (Input.mousePosition.x < (Screen.width / 2))
                {
                    hAxis = -0.8f;
                }
                else if (Input.mousePosition.x > Screen.width / 2)
                {
                    hAxis = 0.8f;
                }
            }
            */
            //handle touch
            /* 
            else if (Input.touchCount == 1)
            {
                Touch touch0 = Input.GetTouch(0);
                if (touch0.position.x < Screen.width / 2)
                {
                    hAxis = -0.8f;
                }
                else if (touch0.position.x > Screen.width / 2)
                {
                    hAxis = 0.8f;
                }
            }
            */


            if (!moving)
                UpdateParticle(true);
            moving = true;


            Vector3 moveDir = new Vector3(hAxis, vAxis, 0);
            //myRB.velocity = moveDir * movementSpeed * Time.fixedDeltaTime;

            /*
            if (hAxis < 0)
            {
                transform.eulerAngles = new Vector3(0, 90, 0);
            }
            else
            {
                transform.eulerAngles = new Vector3(0, -90, 0);
            }
            */
        }
        else
        {
            moving = false;
            UpdateParticle(false);
        }
	}

    void UpdateParticle(bool high)
    {
        _particleTrailEmissionRate.constantMax = high ? 120 : 20;
        _particleTrailEmission.rate = _particleTrailEmissionRate;
    }
}
