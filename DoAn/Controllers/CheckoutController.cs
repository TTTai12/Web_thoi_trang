using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Runtime.InteropServices;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
using System.Data.Entity;


namespace DoAn.Controllers
{
    public class CheckoutController : Controller
    {
        BanHang_DB db = new BanHang_DB();
        private string strCart = "Cart";
        // GET: Checkout
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult OrderNow(int? ID)
        {
            if (ID == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            if (Session[strCart] == null)
            {
                List<Cart> ListCart = new List<Cart>
                {
                    new Cart(db.Products.Find(ID),1)
                };
                Session[strCart] = ListCart;
            }
            else
            {
                List<Cart> ListCart = (List<Cart>)Session[strCart];
                int check = IsExistingCheck(ID);
                if (check == -1)
                    ListCart.Add(new Cart(db.Products.Find(ID), 1));
                else
                    ListCart[check].Quantity++;
                Session[strCart] = ListCart;
            }
            return View("Index");
        }
        private int IsExistingCheck(int? ID)
        {
            List<Cart> ListCart = (List<Cart>)Session[strCart];
            for (int i = 0; i< ListCart.Count; i++)
            {
                if (ListCart[i].Product.ID == ID)
                    return i;
            }
            return -1;
        }
        public ActionResult RemoveItem(int? ID)
        {
            if(ID == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            int check = IsExistingCheck(ID);
            List<Cart> ListCart = (List<Cart>)Session[strCart];
            ListCart.RemoveAt(check);
            if(ListCart.Count == 0)
            {
                Session[strCart] = null;
            }
            else
            {
                Session[strCart] = ListCart;
            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult ProcessOrder(FormCollection field)
        {
            List<Cart> ListCart = (List<Cart>)Session[strCart];
            var order = new DoAn.Models.Order()
            {
                FullName = field["cusName"],
                PhoneNumber = field["cusPhone"],
                Email = field["cusEmail"],
                Address = field["cusAddress"],
                OrderDate = DateTime.Now,
                PaymentType = "Cash",
                Status = "Processing"
            };
            db.Orders.Add(order);
            db.SaveChanges();
            foreach (Cart cart in ListCart)
            {
                OrderDetail orderDetail = new OrderDetail()
                {
                    OrderID = order.ID,
                    ProID = cart.Product.ID,
                    num = Convert.ToInt32(cart.Quantity),
                    Price = (int?)Convert.ToDouble(cart.Product.Price)
                };
                db.OrderDetails.Add(orderDetail);
                db.SaveChanges();
            }
            Session.Remove(strCart);
            return View("ProcessOrder");
        }
        public ActionResult Cart()
        {
            return View();
        }
       
        

    }

    
}