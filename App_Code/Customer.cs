

/// <summary>
/// Summary description for Customer
/// </summary>
/// <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 2/5/15
/// </version>
public class Customer
{


    /// <summary>
    /// Initializes a new instance of the <see cref="Customer"/> class.
    /// </summary>
	public Customer()
	{

	}

    public string CustomerId { get; set; }
    public string Name { get; set; }
    public string Address { get; set; }
    public string City { get; set; }
    public string State { get; set; }
    public string Zipcode { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }

    /// <summary>
    /// Displays this instance.
    /// </summary>
    /// <returns>output to be displayed</returns>
    public string Display()
    {
        string output = string.Format("{0}: {1}; {2} ", this.splitString(this.Name),this.Phone,this.Email);
        return output;
    }

    /// <summary>
    /// Splits the string.
    /// </summary>
    /// <param name="name">The name.</param>
    /// <returns>format in which string is to be displayed after being split</returns>
    private string splitString(string name)
    {
        
        string[] names = name.Split(' ');

        return names[1] + ", " + names[0];

    }
}