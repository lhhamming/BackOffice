using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calender : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void kalVerjaardag_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = kalVerjaardag.SelectedDate.ToString("dd/MM/yyyy");
    }

    protected void btnLeeftijd_Click(object sender, EventArgs e)
    {
        int Kal;
        int age;
        DateTime Nu = DateTime.Today;
        Kal = kalVerjaardag.SelectedDate.Year;
        age = Nu.Year - Kal;
        TextBox2.Text = age.ToString();
    }






    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        kalVerjaardag.SelectedDate = Convert.ToDateTime(TextBox1.Text);
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

}