


using System;


/// <summary>
/// Summary description for Description
/// </summary>
///  <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 4/20/2015
/// </version>
public class Description
{


    private int _customerId;
    private int _feedbackId;
    private int _serviceTime;
    private int _efficiency;
    private int _resolution;
    private string _comments;
    private bool _contact;
    private string _contactMethod;

    /// <summary>
    /// Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    /// The customer identifier.
    /// </value>
    public int CustomerId
    {
        get { return this._customerId; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentException("Not valid CustomerID");
            }
            this._customerId = value;
        }
    }

    /// <summary>
    /// Gets or sets the feedback identifier.
    /// </summary>
    /// <value>
    /// The feedback identifier.
    /// </value>
    public int FeedbackId
    {
        get { return this._feedbackId; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentException("Not valid FeedbackID");
            }
            this._feedbackId = value; 
        }
    }
    /// <summary>
    /// Gets or sets the service time.
    /// </summary>
    /// <value>
    /// The service time.
    /// </value>
    public int ServiceTime
    {
        get { return this._serviceTime; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentException("Not valid Service Time");
            }
            this._serviceTime = value; 
        }
    }
    /// <summary>
    /// Gets or sets the efficiency.
    /// </summary>
    /// <value>
    /// The efficiency.
    /// </value>
    public int Efficiency
    {
        get { return this._efficiency; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentException("Not valid Efficiency");
            }
            this._efficiency = value; 
        }
    }
    /// <summary>
    /// Gets or sets the resolution.
    /// </summary>
    /// <value>
    /// The resolution.
    /// </value>
    public int Resolution
    {
        get { return this._resolution; }
        set
        {
            if (value < 0)
            {
                throw new ArgumentException("Not valid Resolution");
            }
            this._resolution = value; 
        }
    }
    /// <summary>
    /// Gets or sets the comments.
    /// </summary>
    /// <value>
    /// The comments.
    /// </value>
    public string Comments
    {
        get { return this._comments; }
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Not valid comments");
            }
            this._comments = value; 
        }
    }
    /// <summary>
    /// Gets or sets a value indicating whether this <see cref="Description"/> is contact.
    /// </summary>
    /// <value>
    ///   <c>true</c> if contact; otherwise, <c>false</c>.
    /// </value>
    public bool Contact
    {
        get { return this._contact; }
        set
        {
            if (value.Equals(null))
            {
                throw new ArgumentException("Invalid contact");
            }
            this._contact = value; 
        }
    }
    /// <summary>
    /// Gets or sets the contact method.
    /// </summary>
    /// <value>
    /// The contact method.
    /// </value>
    public string ContactMethod
    {
        get { return this._contactMethod; }
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Not valid contact method");
            }
            this._contactMethod = value; 
        }
    }
}