using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;

namespace Session6.Class
{
    public class ShamsiDate
    {
        public static string GetDateTimeStringInPersian(DateTime dateTime)
        {
            PersianCalendar pcal = new PersianCalendar();
            return
                pcal.GetYear(dateTime).ToString() +
                "/" +
                pcal.GetMonth(dateTime).ToString("00") +
                "/" +
                pcal.GetDayOfMonth(dateTime).ToString("00");
        }
    }
}