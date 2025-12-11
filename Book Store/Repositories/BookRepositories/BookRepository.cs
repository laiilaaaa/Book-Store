using Book_Store.Data;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Book_Store.Repositories.BookRepositories
{
    public class BookRepository : IBookRepository
    {
        private readonly AppDbContext _dbContext;

        public BookRepository(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public int CreateBook(Book book)
        {
            _dbContext.Books.Add(book);
            return _dbContext.SaveChanges();
        }

        public int DeleteBook(Book book)
        {
            _dbContext.Books.Remove(book);
            return _dbContext.SaveChanges();
        }

        public List<Book> GetAllBooks(bool WithTracking = false, Expression<Func<Book, bool>> filter = null)
        {
            IQueryable<Book> query = _dbContext.Books;

            if (!WithTracking)
                query = query.AsNoTracking();

            if (filter != null)
                query = query.Where(filter);

            return query.ToList();
        }

        public Book? GetbookById(int id)
        {
            return _dbContext.Books.FirstOrDefault(s => s.Id == id);
        }

        public int UpdateBook(Book book)
        {
            _dbContext.Books.Update(book);
            return _dbContext.SaveChanges();
        }
    }
}
