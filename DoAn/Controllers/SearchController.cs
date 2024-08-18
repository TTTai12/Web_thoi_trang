using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;

namespace DoAn.Controllers
{
    public class SearchController : Controller
    {
        [HttpPost]
        // GET: Search
        public ActionResult Index( string srch)
        {
            ViewBag.search = srch;
            BanHang_DB db = new BanHang_DB();
            var proSrch = db.Products.Where(sr => sr.ProductName.Contains(srch)).ToList();
            return View(proSrch);
        }
    }
}