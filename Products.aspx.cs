using System;

using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblError.Text = "";
    }
    protected void btnAddSoftware_Click(object sender, EventArgs e)
    {
        this.sdsProducts.InsertParameters["SoftwareID"].DefaultValue = this.txtSoftwareID.Text;
        this.sdsProducts.InsertParameters["Name"].DefaultValue = this.txtSoftwareName.Text;
        this.sdsProducts.InsertParameters["Version"].DefaultValue = this.txtVersion.Text;
        this.sdsProducts.InsertParameters["ReleaseDate"].DefaultValue = this.txtReleaseDate.Text;

        try
        {
            this.sdsProducts.Insert();
            this.txtSoftwareID.Text = "";
            this.txtSoftwareName.Text = "";
            this.txtVersion.Text = "";
            this.txtReleaseDate.Text = "";

        }
        catch (Exception ex)
        {
            this.lblError.Text = "A database error has occured.  Message: " + ex.Message;
        }
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }
    protected void gvSoftwareData_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured.  Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;

        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that category. Please try again.";
        }
    }
    protected void gvSoftwareData_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblError.Text = "A database error has occured. Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            this.lblError.Text = "";
        }
        else if (e.AffectedRows == 0)
        {
            this.lblError.Text = "Another user may have updated that category. Please try again.";
        }
    }
}