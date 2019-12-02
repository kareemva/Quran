using System;
using System.Collections.Generic;
using System.IO;
using System.Text.Json;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WeatherForecast weatherForecast = new WeatherForecast();
            File.WriteAllText(@"E:\ka\quran\js.txt", JsonSerializer.Serialize(weatherForecast));

            string json = JsonSerializer.Serialize<WeatherForecast>(weatherForecast);
            byte[] jsonUtf8Bytes = JsonSerializer.SerializeToUtf8Bytes<WeatherForecast>(weatherForecast);
        }
    }

    public class WeatherForecast
    {
        public DateTimeOffset Date { get; set; }
        public int TemperatureC { get; set; }
        public string Summary { get; set; }
        public IList<DateTimeOffset> DatesAvailable { get; set; }
        public Dictionary<string, HighLowTemperatures> TemperatureRanges { get; set; }
        public string[] SummaryWords { get; set; }
    }

    public class HighLowTemperatures
    {
        public Temperature High { get; set; }
        public Temperature Low { get; set; }
    }

    public class Temperature
    {
        public int DegreesCelsius { get; set; }
    }
}