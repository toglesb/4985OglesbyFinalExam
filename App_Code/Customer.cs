/// <summary>
///     Summary description for Customer
/// </summary>
/// <author>
///     TJ Oglesby
/// </author>
/// <version>
///     3/4/15
/// </version>
public class Customer
{
    private string _customerId { get; set; }
    private string _name { get; set; }
    private string _address { get; set; }
    private string _city { get; set; }
    private string _state { get; set; }
    private string _zipcode { get; set; }
    private string _phone { get; set; }
    private string _email { get; set; }

    /// <summary>
    ///     Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    ///     The customer identifier.
    /// </value>
    public string CustomerId
    {
        get { return this._customerId; }
        set { this._customerId = value; }
    }

    /// <summary>
    ///     Gets or sets the name.
    /// </summary>
    /// <value>
    ///     The name.
    /// </value>
    public string Name
    {
        get { return this._name; }
        set { this._name = value; }
    }

    /// <summary>
    ///     Gets or sets the address.
    /// </summary>
    /// <value>
    ///     The address.
    /// </value>
    public string Address
    {
        get { return this._address; }
        set { this._address = value; }
    }

    /// <summary>
    ///     Gets or sets the city.
    /// </summary>
    /// <value>
    ///     The city.
    /// </value>
    public string City
    {
        get { return this._city; }
        set { this._city = value; }
    }

    /// <summary>
    ///     Gets or sets the state.
    /// </summary>
    /// <value>
    ///     The state.
    /// </value>
    public string State
    {
        get { return this._state; }
        set { this._state = value; }
    }

    /// <summary>
    ///     Gets or sets the zipcode.
    /// </summary>
    /// <value>
    ///     The zipcode.
    /// </value>
    public string Zipcode
    {
        get { return this._zipcode; }
        set { this._zipcode = value; }
    }

    /// <summary>
    ///     Gets or sets the phone.
    /// </summary>
    /// <value>
    ///     The phone.
    /// </value>
    public string Phone
    {
        get { return this._phone; }
        set { this._phone = value; }
    }

    /// <summary>
    ///     Gets or sets the email.
    /// </summary>
    /// <value>
    ///     The email.
    /// </value>
    public string Email
    {
        get { return this._email; }
        set { this._email = value; }
    }

    /// <summary>
    ///     Displays this instance.
    /// </summary>
    /// <returns>output to be displayed</returns>
    public string Display()
    {
        var output = string.Format("{0}: {1}; {2} ", this.splitString(this.Name), this.Phone, this.Email);
        return output;
    }

    /// <summary>
    ///     Splits the string.
    /// </summary>
    /// <param name="name">The name.</param>
    /// <returns>format in which string is to be displayed after being split</returns>
    private string splitString(string name)
    {
        if (name.Contains(" "))
        {
            var names = name.Split(' ');

            return names[1] + ", " + names[0];
        }
        else
        {
            return name;
        }
    }
}