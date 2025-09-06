using System.ComponentModel.DataAnnotations;

public class Book
{
    public int Id { get; set; }

    [Required(ErrorMessage = "Title is required.")]
    [StringLength(100, ErrorMessage = "Title cannot exceed 100 characters.")]
    [RegularExpression(@"^\S.*", ErrorMessage = "Title cannot start with a space.")]
    public string Title { get; set; }

    [Required(ErrorMessage = "Author is required.")]
    [StringLength(100, ErrorMessage = "Author name cannot exceed 100 characters.")]
    [RegularExpression(@"^\S.*", ErrorMessage = "Author cannot start with a space.")]
    public string Author { get; set; }

    [Required(ErrorMessage = "Category is required.")]
    [StringLength(50, ErrorMessage = "Category cannot exceed 50 characters.")]
    [RegularExpression(@"^\S.*", ErrorMessage = "Category cannot start with a space.")]
    public string Category { get; set; }

    [Required(ErrorMessage = "Description is required.")]
    [StringLength(500, ErrorMessage = "Description cannot exceed 500 characters.")]
    [RegularExpression(@"^\S.*", ErrorMessage = "Description cannot start with a space.")]
    public string Description { get; set; }

    [Required(ErrorMessage = "Price is required.")]
    [Range(0, 9999.99, ErrorMessage = "Price must be between 0 and 9999.99.")]
    public decimal Price { get; set; }
}
