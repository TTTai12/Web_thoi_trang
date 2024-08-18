using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
using System.Data.Entity;

namespace DoAn.Controllers
{
    public class ProductCategoryController : Controller
    {
        // GET: ProductCategory
        public ActionResult Index(int CategoryID, String Sex)
        {
            BanHang_DB db = new BanHang_DB();
            List<Product> ListProduct = db.Products.Include(Cat => Cat.Category).Where(pro => pro.CateID == CategoryID && pro.Sex==Sex).ToList();
            return View(ListProduct);

            
        }
    }
}