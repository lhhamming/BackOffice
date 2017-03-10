using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chkHobby_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void rbGeslacht_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnMaakKaart_Click1(object sender, EventArgs e)
    {
        string Naam, Geslacht, Hobby, Opleiding;
        Naam = txtNaam.Text;
        Geslacht = rbGeslacht.SelectedValue;
        Opleiding = cbOpleiding.SelectedValue;
        Hobby = "Hobby:";
        if (chkHobby.SelectedValue == "1")
        {
            Hobby += "Gamen ";
        }
        if (chkHobby.SelectedValue == "2")
        {
            Hobby += "Programmeren";
        }
        Response.Write("Naam:  " + Naam + "<br /");
        Response.Write(Hobby + "<br />");
        Response.Write("Opleiding:  " + Opleiding + "<br />");
        Response.Write("Geslacht:   " + Geslacht + "<br />");
    }


    protected void rbBeslist_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (this.rbBeslist.SelectedValue == "LFZ")
        {
            this.Panel1.Visible = true;
        }
        else
        {
            this.Panel1.Visible = false;
        }

    }
    }