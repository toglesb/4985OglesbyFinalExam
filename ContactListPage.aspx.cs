using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactListPage : System.Web.UI.Page
{
    private CustomerList contactList;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.contactList = CustomerList.GetCustomers();

        if (!this.IsPostBack)
        {
            this.DisplayContacts();
        }


    }

    private void DisplayContacts()
    {
        this.lbCustomerContacts.Items.Clear();

        for (int i = 0; i < this.contactList.Count; i++)
        {
            this.lbCustomerContacts.Items.Add(this.contactList[i].Display());
        }

    }
    protected void btnRemoveCustomer_Click(object sender, EventArgs e)
    {
        if (this.contactList.Count > 0)
        {
            if (this.lbCustomerContacts.SelectedIndex > -1)
            {
                this.contactList.RemoveAt(this.lbCustomerContacts.SelectedIndex);
                this.DisplayContacts();
            }
            else
            {
                
            }
        }
    }
    protected void btnSelectCustomers_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("CustomerListPage.aspx");
    }
    protected void btnClearList_Click(object sender, EventArgs e)
    {
        if (this.contactList.Count < 0)
            return;
        this.contactList.Clear();
        this.lbCustomerContacts.Items.Clear();
        
    }
}