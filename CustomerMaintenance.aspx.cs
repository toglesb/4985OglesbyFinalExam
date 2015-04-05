using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerMaintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dvCustomerDetail_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that product. Please try again";

        }
        else
        {
            this.gvCustomerInfo.DataBind();
        }
    }

    protected void dvCustomerDetail_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that product. Please try again";

        }
        else
        {
            this.gvCustomerInfo.DataBind();
        }
    }

    protected void dvCustomerDetail_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
        }
        else
        {
            this.gvCustomerInfo.DataBind();
        }
    }
}