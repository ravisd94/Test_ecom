using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace mvc_test.Models
{
    [Table("product_master")]
    public class Product
    {
        [Key]
        public int prd_id { get; set; }
        public string prd_Name { get; set; }
        public float prd_price { get; set; }
        public float prod_weight { get; set; }
        public string prod_image { get; set; }
        public int prod_category_id { get; set; }
        public int prod_stock { get; set; }
        public int prod_sale { get; set; }

    }
}