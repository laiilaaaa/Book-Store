using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;

namespace Book_Store.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
        {
        }
        public DbSet<Book> Books { get; set; }

       


    }

}
