using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerPage : System.Web.UI.Page
{
    private Customer selectedCustomer;

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
}