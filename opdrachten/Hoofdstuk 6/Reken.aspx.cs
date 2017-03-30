using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reken : System.Web.UI.Page
{
    // Kijken of er 7 cijfers inzitten
    protected void btn1_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "1";
        }
    }

    protected void btn2_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "2";
        }
    }

    protected void btn3_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "3";
        }
    }

    protected void Button22_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "0";
        }
    }

    protected void btnPunt_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Contains(",") != true)
        {
            if (txtScherm.Text.Length == 0)
            {
                txtScherm.Text += "0,";
            }
            else
            {
                txtScherm.Text += ",";
            }
        }
    }

    protected void btn4_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "4";
        }
    }

    protected void btn5_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "5";
        }
    }

    protected void btn6_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "6";
        }
    }

    protected void btn7_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "7";
        }
    }

    protected void btn8_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "8";
        }
    }

    protected void btn9_Click_Click(object sender, EventArgs e)
    {
        if (txtScherm.Text.Length < 7)
        {
            txtScherm.Text += "9";
        }
    }
    // ----------------------------------------------------------------------------------------------------------------------------------
    protected void btnPlus_Click_Click(object sender, EventArgs e)
    {
        lGetal1.Text = txtScherm.Text;
        txtScherm.Text = string.Empty;
        lBereken.Text = "+";
    }


    protected void btnIs_Click_Click(object sender, EventArgs e)
    {
        // Getal 2 op scherm Zetten
        lGetal2.Text = txtScherm.Text;
        // Getallen in variabbelen zetten
        double G1 = Convert.ToDouble(txtScherm.Text);
        double G2 = Convert.ToDouble(lGetal1.Text);
        double Uitkomst = 0;
        // Berekening
        if (lBereken.Text == "+")
        {
            Uitkomst = G1 + G2;
        }
        if (lBereken.Text == "-")
        {
            Uitkomst = G2 - G1;
        }
        // Zet de berekening in het scherm
        txtScherm.Text = Uitkomst.ToString();
    }

    protected void btnC_Click_Click(object sender, EventArgs e)
    {
        txtScherm.Text = String.Empty;
    }

    protected void btnBack_Click_Click(object sender, EventArgs e)
    {
        txtScherm.Text = txtScherm.Text.Substring(0, txtScherm.Text.Length - 1);
    }

    protected void btnMin_Click_Click(object sender, EventArgs e)
    {
        lGetal1.Text = txtScherm.Text;
        txtScherm.Text = string.Empty;
        lBereken.Text = "-";
    }
}
