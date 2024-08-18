using DoAn.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Areas.PrivatePages.Controllers
{
    public class DatatablesController : Controller
    {

        // GET: PrivatePages/Datatables
        public ActionResult Index(string CurrentFilter, string SearchString, int? page)
        {
            var IstProduct = new List<Product>();
            BanHang_DB db = new BanHang_DB();
            if (SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = CurrentFilter;
            }
            if (!string.IsNullOrEmpty(SearchString))
            {
                IstProduct = db.Products.Where(n => n.ProductName.Contains(SearchString)).ToList();
            }
            else
            {
                IstProduct = db.Products.ToList();
            }
            ViewBag.CurrentFilter = SearchString;
            int pageSize = 10;
            int pageNumber = (page ?? 1);
            IstProduct = IstProduct.OrderByDescending(n => n.ID).ToList();
            return View(IstProduct.ToPagedList(pageNumber, pageSize));
        }
        [HttpGet]
        public ActionResult Delete(int ID)
        {
            BanHang_DB db = new BanHang_DB();
            Product product = db.Products.Where(h => h.ID == ID).FirstOrDefault();
            return View(product);
        }
        [HttpPost]
        public ActionResult Delete(Product delete)
        {
            BanHang_DB db = new BanHang_DB();
            Product product = db.Products.Where(n => n.ID == delete.ID).FirstOrDefault();
            //delete product//
            db.Products.Remove(product);
            //save//
            db.SaveChanges();
            return RedirectToAction("Index", "Datatables");
        }
        [HttpGet]
        public ActionResult Edit(int ID)
        {
            BanHang_DB db = new BanHang_DB();
            var product = db.Products.Find(ID);
            return View(product);
        }
        [HttpPost]
        public ActionResult Edit(Product product)
        {
            //Lưu dữ liệu vào db
            if (string.IsNullOrEmpty(product.ProductName) == true)
            {
                ModelState.AddModelError("", "Product name is not blank");
                return View(product);
            }
            if (product.Price <= 0)
            {
                ModelState.AddModelError("", "price must be greater than 0");
                return View(product);
            }
            BanHang_DB db = new BanHang_DB();
            var editProduct = db.Products.Find(product.ID);
            editProduct.ProductName = product.ProductName;
            editProduct.Price = product.Price;
            editProduct.Discount = product.Discount;
            editProduct.ID = product.ID;
            editProduct.Description = product.Description;
            var ID = db.SaveChanges();
            if (ID > 0)
            {
                return RedirectToAction("Index", "Datatables");
            }
            else
            {
                ModelState.AddModelError("", "tên sản phẩm không bỏ trống");
                return View(product);
            }
        }
    }
}

