using Microsoft.AspNetCore.Mvc;
using YourApp.Models;

namespace Book_Store.Controllers
{
    public class AccountController : Controller
    {
        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [HttpPost]
        public IActionResult Login(LoginModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            return RedirectToAction("Index", "book"); // <— go to library
        }



        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }


        [HttpPost]
        public IActionResult Register(RegisterModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            return RedirectToAction("Index", "book"); // <— go to library
        }
    }
}
