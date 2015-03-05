using System;

using System.Data;

using System.Web.UI;

/// <summary>
/// Code file for the CustomerPage
/// </summary>
/// <author>
/// TJ Oglesby
/// </author>
/// <version>
/// 3/4/15
/// </version>
public partial class CustomerPage : Page
{
    private Customer selectedCustomer;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.ddlCustomerData.DataBind();
        }

        this.selectedCustomer = this.getSelectedCustomer();
        this.txtName.Text = this.selectedCustomer.Name;
        this.txtAddress.Text = this.selectedCustomer.Address;
        this.txtCity.Text = this.selectedCustomer.City;
        this.txtState.Text = this.selectedCustomer.State;
        this.txtZipCode.Text = this.selectedCustomer.Zipcode;
        this.txtPhone.Text = this.selectedCustomer.Phone;
        this.txtEmail.Text = this.selectedCustomer.Email;
    }

    /// <summary>
    /// Gets the selected customer.
    /// </summary>
    /// <returns></returns>
    private Customer getSelectedCustomer()
    {
        var customerTable = (DataView) this.CustomersData.Select(DataSourceSelectArguments.Empty);
        if (customerTable != null)
        {
            customerTable.RowFilter = "CustomerID = '" + this.ddlCustomerData.SelectedValue + "'";
            var row = customerTable[0];

            var cust = new Customer()
            {
                CustomerId = row["CustomerID"].ToString(),
                Name = row["Name"].ToString(),
                Address = row["Address"].ToString(),
                City = row["City"].ToString(),
                State = row["State"].ToString(),
                Zipcode = row["ZipCode"].ToString(),
                Phone = row["Phone"].ToString(),
                Email = row["Email"].ToString()
            };

            return cust;
        }
        return null;
    }
    /// <summary>
    /// Handles the Click event of the btnAddContacts control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnAddContacts_Click(object sender, EventArgs e)
    {
        CustomerList custList = CustomerList.GetCustomers();
        Customer cust = custList[this.selectedCustomer.CustomerId];

        if (cust == null)
        {
            custList.AddItem(this.selectedCustomer);
            this.lblError.Text = "";
        }
        else
        {
            this.lblError.Text = "Customer name already contained in contact list";
        }


    }
    /// <summary>
    /// Handles the Click event of the btnViewContacts control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnViewContacts_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactListPage.aspx");
    }
}