using Book_Store.Data;
using System.Linq.Expressions;

namespace Book_Store.Repositories.BookRepositories
{
    public interface IBookRepository
    {
        int CreateBook(Book book);

        // Read
        List<Book> GetAllBooks(bool WithTracking = false, Expression<Func<Book, bool>> filter = null);
        Book? GetbookById(int id);

        // Update
        int UpdateBook(Book book);
        // Delete
        int DeleteBook(Book book);
    }
}
