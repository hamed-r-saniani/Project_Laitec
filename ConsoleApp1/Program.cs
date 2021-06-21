using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp1.TestService;
using System.Xml;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            MyWebServiceSoapClient mt = new MyWebServiceSoapClient();
            Console.WriteLine(mt.HelloWorld());
            int a, b;
            a = Convert.ToInt32(Console.ReadLine());
            b = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine(mt.Dev(a,b));
            Console.ReadKey();
        }
    }
}
