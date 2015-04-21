using System;

using System.Web.UI.WebControls;

public partial class MaintainSupport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fvSupportDetails_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Meassage: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
        }
        else
        {
            this.lblError.Text = "";
            this.ddlSupportMembers.DataBind();
        }
    }

    
    protected void fvSupportDetails_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that product. " + "Please try again";
        }
        else
        {
            this.lblError.Text = "";
            this.ddlSupportMembers.DataBind();
        }
    }
    protected void fvSupportDetails_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that product. Please try again.";
        }
        else
        {
            this.lblError.Text = "";
            this.ddlSupportMembers.DataBind();
        }
    }
}