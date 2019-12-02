using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace WebApplication1
{
    public partial class Timings_Files : System.Web.UI.Page
    {
        List<string> allLinesText = File.ReadAllLines(@"E:\ka\quran\mp3\002.txt").ToList();

        protected void Page_Load(object sender, EventArgs e)
        {
            int j = 1;

            foreach (var item in allLinesText)
            {
                lblResult.Text += j.ToString().PadLeft(3, '0') + " : " + item.Substring(8,8) + "<br />";
                j++;
            }
        }

        protected void btnFfmpeg_Click(object sender, EventArgs e)
        {
            lblFfmpeg.Text = "ffmpeg -i 002.mp3 -ss " +
                allLinesText[(int.Parse(tbFrom.Text) - 1)].Substring(8, 8) + " -to " +
                allLinesText[int.Parse(tbTo.Text)].Substring(8, 8) +
                " -y 002" +
                int.Parse(tbFrom.Text).ToString().PadLeft(3, '0') +
                int.Parse(tbTo.Text).ToString().PadLeft(3, '0') + ".mp3";

            File.AppendAllText(@"E:\ka\quran\mp3\f.txt", lblFfmpeg.Text + Environment.NewLine);
        }
    }
}