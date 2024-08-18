using DoAn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Controllers
{
    public class SingleController : Controller
    {
        // GET: Single
        public ActionResult Index(int ID)
        {
            BanHang_DB db = new BanHang_DB();
            Product SingleProduct = db.Products.Where(h => h.ID == ID).FirstOrDefault();
            return View(SingleProduct);
        }
    }
}