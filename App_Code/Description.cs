using System;


/// <summary>
/// Summary description for Description
/// </summary>
///  <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 3/4/15
/// </version>
public class Description
{


    private int _customerID { get; set; }
    private int _feedbackID { get; set; }
    private int _serviceTime { get; set; }
    private int _efficiency { get; set; }
    private int _resolution { get; set; }
    private string _comments { get; set; }
    private bool _contact { get; set; }
    private string _contactMethod { get; set; }

    /// <summary>
    /// Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    /// The customer identifier.
    /// </value>
    public int CustomerID
    {
        get { return this._customerID; }
        set { this._customerID = value; }
    }

    /// <summary>
    /// Gets or sets the feedback identifier.
    /// </summary>
    /// <value>
    /// The feedback identifier.
    /// </value>
    public int FeedbackID
    {
        get { return this._feedbackID; }
        set
        {
            this._feedbackID = value; 
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
            this._contactMethod = value; 
        }
    }
}