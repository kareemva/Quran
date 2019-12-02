using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml;

namespace WebApplication1
{
    internal class Word
    {
        public int WordID { get; internal set; }
        public string WordText { get; internal set; }
        public string WordKind { get; internal set; }
    }

    public partial class WebForm2 : System.Web.UI.Page
    {
        Random rnd = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> lw = new List<string>(), d = new List<string>(), ed = new List<string>(); // 0 - 470
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(@"E:\ka\English\quiz-data.xml");
                int j = 470, r = rnd.Next(0, j);
                string[] q1 = new string[2];
                string[] q2 = new string[4];

                XmlNodeList latinWord = xmlDoc.SelectNodes("//record/LatinWord"),
                    definition = xmlDoc.SelectNodes("//record/Definition"),
                    englishDerivatives = xmlDoc.SelectNodes("//record/EnglishDerivatives");

                foreach (XmlNode titleNode in latinWord)
                {
                    lw.Add(titleNode.InnerText);
                }
                foreach (XmlNode titleNode in definition)
                {
                    d.Add(titleNode.InnerText);
                }
                foreach (XmlNode titleNode in englishDerivatives)
                {
                    ed.Add(titleNode.InnerText);
                }

                q1[0] = lw[r];
                q1[1] = ed[r];
                q2[0] = d[r];
                lw.RemoveAt(r);
                d.RemoveAt(r);
                ed.RemoveAt(r);
                j--;
                r = rnd.Next(0, j);
                q2[1] = d[r];
                lw.RemoveAt(r);
                d.RemoveAt(r);
                ed.RemoveAt(r);
                j--;
                r = rnd.Next(0, j);
                q2[2] = d[r];
                lw.RemoveAt(r);
                d.RemoveAt(r);
                ed.RemoveAt(r);
                j--;
                r = rnd.Next(0, j);
                q2[3] = d[r];
                lw.RemoveAt(r);
                d.RemoveAt(r);
                ed.RemoveAt(r);

                string[] myRandomArray = q2.OrderBy(x => rnd.Next()).ToArray();

                questionLabel.Text = "Latin-English Words:<br/>What does " + q1[0] + " mean?";
                answer1RadioButton.Text = myRandomArray[0];
                if (myRandomArray[0] == q2[0])
                {
                    Session["answer1"] = "c";
                }
                else
                {
                    Session["answer1"] = "i";
                }
                answer2RadioButton.Text = myRandomArray[1];
                if (myRandomArray[1] == q2[0])
                {
                    Session["answer2"] = "c";
                }
                else
                {
                    Session["answer2"] = "i";
                }
                answer3RadioButton.Text = myRandomArray[2];
                if (myRandomArray[2] == q2[0])
                {
                    Session["answer3"] = "c";
                }
                else
                {
                    Session["answer3"] = "i";
                }
                answer4RadioButton.Text = myRandomArray[3];
                if (myRandomArray[3] == q2[0])
                {
                    Session["answer4"] = "c";
                }
                else
                {
                    Session["answer4"] = "i";
                }

                Session["example"] = q1[1];
            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (answer1RadioButton.Checked == true && ((string)Session["answer1"]) == "c")
            {
                answerLabel.Text = "Your answer is CORRECT!<br/>Example: " + Session["example"];
            }
            else if (answer2RadioButton.Checked == true && ((string)Session["answer2"]) == "c")
            {
                answerLabel.Text = "Your answer is CORRECT!<br/>Example: " + Session["example"];
            }
            else if (answer3RadioButton.Checked == true && ((string)Session["answer3"]) == "c")
            {
                answerLabel.Text = "Your answer is CORRECT!<br/>Example: " + Session["example"];
            }
            else if (answer4RadioButton.Checked == true && ((string)Session["answer4"]) == "c")
            {
                answerLabel.Text = "Your answer is CORRECT!<br/>Example: " + Session["example"];
            }
            else
            {
                answerLabel.Text = "Your answer IS NOT correct!";
            }
        }

        protected void refreshButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}