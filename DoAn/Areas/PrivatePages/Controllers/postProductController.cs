using DoAn.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Areas.PrivatePages.Controllers
{
    public class postProductController : Controller
    {
        // GET: PrivatePages/postProduct
        public ActionResult Index(Product product, HttpPostedFileBase item)
        {
          if (string.IsNullOrEmpty(product.ProductName) == true)
            {
                ModelState.AddModelError("", "tên sản phẩm không để trống");
                return View(product);
            }
          if (product.Price <= 0)
            {
                ModelState.AddModelError("", "giá không thấp hơn 0");
                return View(product);
            }
          if (item != null)
            {
                if (item.ContentLength > 0)
                {
                    var fileName = Path.GetFileName(item.FileName);
                    var path = Path.Combine(Server.MapPath("~/Content/images/product"), fileName); 
                    if (System.IO.File.Exists(path)) 
                    {
                        TempData["UploadFail"] = "Hình ảnh này đã tồn tại!";
                        return View();
                    }
                    else  
                    {
                        item.SaveAs(path); 
                        product.ProductPictures = item.FileName; 
                    }
                }
            }
          else
                {
                TempData["UploadFail"] = "chọn lại ảnh";
                return View();
                }
            BanHang_DB db = new BanHang_DB();
            db.Products.Add(product);
            db.SaveChanges();
            if (product.ID > 0)
            {
                return RedirectToAction("Index", "Datatables");
            }
            else
            {
                ModelState.AddModelError("", "dont save");
                return View(product);
            }
        }
    }
}