using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// 
/// </summary>
public partial class ContactListPage : System.Web.UI.Page
{
    private CustomerList contactList;

    /// <summary>
    /// Handles the Load event of the Page control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void Page_Load(object sender, EventArgs e)
    {
        this.contactList = CustomerList.GetCustomers();

        if (!this.IsPostBack)
        {
            this.DisplayContacts();
        }


    }

    /// <summary>
    /// Displays the contacts.
    /// </summary>
    private void DisplayContacts()
    {
        this.lbCustomerContacts.Items.Clear();

        for (int i = 0; i < this.contactList.Count; i++)
        {
            this.lbCustomerContacts.Items.Add(this.contactList[i].Display());
        }

    }
    /// <summary>
    /// Handles the Click event of the btnRemoveCustomer control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
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
    /// <summary>
    /// Handles the Click event of the btnSelectCustomers control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnSelectCustomers_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("CustomerListPage.aspx");
    }
    /// <summary>
    /// Handles the Click event of the btnClearList control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
    protected void btnClearList_Click(object sender, EventArgs e)
    {
        if (this.contactList.Count < 0)
            return;
        this.contactList.Clear();
        this.lbCustomerContacts.Items.Clear();
        
    }
}