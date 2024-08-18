using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
using PagedList;


namespace DoAn.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        BanHang_DB db = new BanHang_DB();
        public ActionResult Index()
        {
            
            List<Product> List = db.Products.ToList();
            return View(List);
        }
        



    }
}
