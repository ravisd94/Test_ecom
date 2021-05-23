using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using mvc_test.Models;

namespace mvc_test.Controllers
{
    public class HomeController : Controller
    {
        // GET: Homr
        public ActionResult Index()
        {
            List<Product> pr_List = new List<Product>();
            string CS = ConfigurationManager.ConnectionStrings["ProductCon"].ConnectionString;
            
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from product_master", con);
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Product pr = new Product();
                    pr.prod_image = rdr["prod_image"].ToString();
                    pr.prd_price =  float.Parse(rdr["prd_price"].ToString());
                    pr_List.Add(pr);
                }
            }
            
            return View(pr_List);
        }
        public ActionResult ProductDetails(int id)
        {
            Product pr = new Product();
            string CS = ConfigurationManager.ConnectionStrings["ProductCon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from product_master where prd_id ='"+id+"'", con);
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    pr.prod_image = rdr["prod_image"].ToString();
                    pr.prd_price = float.Parse(rdr["prd_price"].ToString());
                }
            }
            return View(pr);
        }
    }
}