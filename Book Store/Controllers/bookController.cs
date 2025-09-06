
//this file is called bookController.cs



using Book_Store.Data;
using Book_Store.Repositories.BookRepositories;
using Microsoft.AspNetCore.Mvc;

namespace Book_Store.Controllers
{
    public class bookController : Controller
    {
        private readonly IBookRepository _bookRepository;

        public bookController(IBookRepository bookRepository)
        {
            _bookRepository = bookRepository;
        }





        public IActionResult Index(string? searchString, string? category)
        {
            var books = _bookRepository.GetAllBooks();

            ViewBag.Categories = books.Select(b => b.Category).Distinct().ToList();
            ViewBag.SelectedCategory = category;

           
            searchString = string.IsNullOrWhiteSpace(searchString) ? null : searchString.Trim();
            ViewBag.SearchQuery = searchString;

            if (!string.IsNullOrEmpty(category))
                books = books.Where(b => b.Category == category).ToList();

            if (!string.IsNullOrEmpty(searchString))
            {
                var query = searchString.ToLower();
                books = books.Where(b =>
                    b.Title.ToLower().StartsWith(query) ||
                    b.Author.ToLower().StartsWith(query)
                ).ToList();
            }

            if (!books.Any())
                ViewBag.Message = string.IsNullOrEmpty(searchString)
                    ? "Sorry, no books found."
                    : $"No books found for '{searchString}'.";

            return View(books);
        }






        #region Create Book
        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Book book)
        {
            if (!ModelState.IsValid)
                return View(book);

            int res = _bookRepository.CreateBook(book);
            if (res > 0)
            {
                TempData["SuccessMessage"] = $"Book '{book.Title}' has been added!";
                return RedirectToAction(nameof(Index));
            }

            ModelState.AddModelError(string.Empty, "Failed To Create Book");
            return View(book);
        }
        #endregion

        #region Edit book
        [HttpGet]
        public IActionResult Edit(int? id)
        {
            var book = _bookRepository.GetbookById(id.Value);
            if (book == null)
                return NotFound();
            return View(book);
        }

        [HttpPost]
        public IActionResult Edit(Book book)
        {
            if (!ModelState.IsValid)
                return View(book);

            int res = _bookRepository.UpdateBook(book);
            if (res > 0)
            {
                TempData["SuccessMessage"] = $"Book '{book.Title}' has been updated!";
                return RedirectToAction(nameof(Index));
            }

            ModelState.AddModelError(string.Empty, "Failed To Update Book");
            return View(book);
        }
        #endregion



        #region Details
        public IActionResult Details(int? id)
        {

            if (id == null)
                return BadRequest();
            var book = _bookRepository.GetbookById(id.Value);
            if (book == null)
                return NotFound();
            return View(book);
        }

        public IActionResult Confirmation(string message)
        {
            ViewBag.ConfirmationMessage = message;
            return View();
        }

        [HttpPost]
        public IActionResult PlaceOrder(int id)
        {
            var book = _bookRepository.GetbookById(id);
            if (book == null)
                return NotFound();

            string message = $"˗ˏˋOrder placed successfully for '{book.Title}' by {book.Author}! ˎˊ˗";
            return RedirectToAction("Confirmation", new { message });
        }
        #endregion



        #region Delete Book
        [HttpPost]
        public IActionResult Delete(int? id)
        {
            if (id == null)
                return BadRequest();

            var book = _bookRepository.GetbookById(id.Value);
            if (book == null)
                return NotFound();

            int res = _bookRepository.DeleteBook(book);
            if (res > 0)
            {
                TempData["SuccessMessage"] = $"Book '{book.Title}' has been deleted!";
                return RedirectToAction(nameof(Index));
            }

            ModelState.AddModelError(string.Empty, "Failed To Delete Book.");
            return RedirectToAction(nameof(Index));
        }
        #endregion




    }
}


