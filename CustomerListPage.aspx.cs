using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// 
/// </summary>
public partial class CustomerPage : System.Web.UI.Page
{
    private Customer selectedCustomer;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
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
        customerTable.RowFilter = "CustomerID = '" + this.ddlCustomerData.SelectedValue + "'";
        var row = (DataRowView) customerTable[0];
        var cust = new Customer();
        cust.CustomerId = row["CustomerID"].ToString();
        cust.Name = row["Name"].ToString();
        cust.Address = row["Address"].ToString();
        cust.City = row["City"].ToString();
        cust.State = row["State"].ToString();
        cust.Zipcode = row["ZipCode"].ToString();
        cust.Phone = row["Phone"].ToString();
        cust.Email = row["Email"].ToString();

        return cust;
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
        }


    }
    /// <summary>
    /// Handles the Click event of the btnViewContacts control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnViewContacts_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("ContactListPage.aspx");
    }
}