using System;
using System.Diagnostics;

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
    private string _customerId;
    private string _name;
    private string _address;
    private string _city;
    private string _state; 
    private string _zipcode; 
    private string _phone; 
    private string _email;

    /// <summary>
    ///     Gets or sets the customer identifier.
    /// </summary>
    /// <value>
    ///     The customer identifier.
    /// </value>
    public string CustomerId
    {
        get { return this._customerId; }
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid Customer ID");
            }
            this._customerId = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid Name");
            }
            this._name = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid Address");
            }
            this._address = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid City");
            }
            this._city = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid State");
            }
            this._state = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid Zipcode");
            }
            this._zipcode = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid Phone Number");
            }
            this._phone = value;
        }
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
        set
        {
            if (value == null)
            {
                throw new ArgumentException("Invalid Email");
            }
            this._email = value;
        }
    }

    /// <summary>
    ///     Displays this instance.
    /// </summary>
    /// <returns>output to be displayed</returns>
    public string Display()
    {
        var output = string.Format("{0}: {1}; {2} ", this.SplitString(this.Name), this.Phone, this.Email);
        return output;
    }

    /// <summary>
    ///     Splits the string.
    /// </summary>
    /// <param name="name">The name.</param>
    /// <returns>format in which string is to be displayed after being split</returns>
    private string SplitString(string name)
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