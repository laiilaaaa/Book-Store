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
        public IActionResult Index()
        {
            var books = _bookRepository.GetAllBooks();
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
            
                    int res = _bookRepository.CreateBook(book);
                    if (res > 0)
                    {
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
            int res =_bookRepository.UpdateBook(book);

            return RedirectToAction(nameof(Index));
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


        #endregion
        #region Delete Student
        [HttpPost]
        public IActionResult Delete(int? id)
        {
            
            var book = _bookRepository.GetbookById(id.Value);
          
             int res = _bookRepository.DeleteBook(book);
                if (res > 0)
                {
                    return RedirectToAction(nameof(Index));
                }
                ModelState.AddModelError(string.Empty, "Failed To Delete Student");
            return RedirectToAction(nameof(Index));
        }

        #endregion



    }
}
