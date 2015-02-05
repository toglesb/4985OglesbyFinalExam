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
}