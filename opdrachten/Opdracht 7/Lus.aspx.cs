using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Initialiseren
        int i;
        // Random Generator
        int Getal = Convert.ToInt32(tafelT.Text);
        Random generator = new Random();
        // De loop voor het maken van de sommen
        for ( i = 1; i < 6; i++)
        {
            // Vind de label met de naam "Label"+i
            Label rek = FindControl("Label" + i) as Label;
            //FindControl zoekt naar alles op een webpagina TextBox, Labels, Knoppen etc.
            // Zet de Text naar het random getal
            int rdmtf = generator.Next(Getal) + 1;
            rek.Text = rdmtf.ToString();
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        // g = Goed | c = Cijfer | i = Voor Tellen | gp = Gemaakt door de pc |
        // ant = antwoord | ing = Ingevult
        int g = 0;
        int c = 0;
        int i = 0;
        int ant = 0;
        int ing = 0;
        for (i = 1; i < 6; i++ )
        {
            //FindControls gebruiken om te lezen wat er op de labels staan.
            Label gp = FindControl("Label" + i) as Label;
            ant = Convert.ToInt32(gp.Text);
            // Nu lezen wat de gebruiker heeft ingevoerd
            TextBox u = FindControl("TextBox" + i) as TextBox;
            ing = Convert.ToInt32(u.Text);
            //Som uitrekenen
            int som = i * ant;
            //Kijken of het goed is
            if (ing == som)
            {
                //g++ voor het goeie antwoord
                g++;
                //Als het antwoord goed is dan laat die goed zien.
                Label goed = FindControl("Goed" + i) as Label;
                goed.Text = "Goed";
                //Als het eerst fout was en je verbeterde het word fout weg gehaald.
                Label fout = FindControl("Fout" + i) as Label;
                fout.Text = "";
            }
            else
            {
                //Als het antwoord goed is dan laat die fout zien.
                Label fout = FindControl("Fout" + i) as Label;
                fout.Text = "Fout";
                //Als je het antwoord fout zou maken dan word goed dus hier weg gehaald.
                Label goed = FindControl("Goed" + i) as Label;
                goed.Text = "";
            }
            //Het cijfer gaat met 2 punten omhoog bij elk punt. Dus wij doen aan het einde: Goed * 2
            //Waarom? Als je er 3 goed hebt het je dan normaal gepsproken een 3 maar door die x2 is het een 6
            // Je hebt normaal max een 5 hiervoor maar het moest een tien worden. 10/2 = 5. dus *2 breng je het weer teug naar het orginele cijfer.
            c = g * 2;
            Label6.Text = c.ToString();
        }
    }

    protected void reset_Click(object sender, EventArgs e)
    {
            //Haalt alles weg. Hij redirect je naar de pagina waar je nu op bent.
            // Op een normale refresh doet die niet. dus stuur je hem nu naar je Raw Page. Dus de pagine waar nog niks opstaat. (Het cahce geheugen is er uit).
            Response.Redirect(Request.RawUrl);
    }
}