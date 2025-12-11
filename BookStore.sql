
USE BookStore;
GO

-- Table for books
/*


CREATE TABLE Books (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    Author NVARCHAR(150),
    Description NVARCHAR(MAX),
    Category NVARCHAR(100),
    Price DECIMAL(10,2),
);


*/

 delete Books;

INSERT INTO Books (Title, Author, Category, Description, Price) VALUES

('Atomic Habits', 'James Clear', 'Self-Help', 'How tiny changes make big differences.', 19.99),
('Clean Code', 'Robert C. Martin', 'Technology', 'A handbook of agile software craftsmanship.', 29.95),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'Bilbo Baggins’ adventure through Middle-earth.', 35.50),
('Sapiens', 'Yuval Noah Harari', 'History', 'The history of humankind from the Stone Age to today.', 28.75),
('Harry Potter and the Sorcerer’s Stone', 'J.K. Rowling', 'Fantasy', 'The beginning of the legendary series.', 19.99),
('The Selfish Gene', 'Richard Dawkins', 'Science', 'Groundbreaking work on evolution and genetics.', 17.49),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'A tragic tale of love and the American Dream.', 20.99),
('1984', 'George Orwell', 'Fiction', 'Dystopian classic exploring surveillance and control.', 12.49),
('The 7 Habits of Highly Effective People', 'Stephen R. Covey', 'Self-Help', 'Timeless principles for success.', 16.25),
('Design Patterns', 'Gamma, Helm, Johnson, Vlissides', 'Technology', 'Reusable solutions to software design problems.', 34.95),
('The Diary of a Young Girl', 'Anne Frank', 'History', 'The iconic diary from WWII.', 11.50),
('Game of Thrones', 'George R.R. Martin', 'Fantasy', 'Epic fantasy of politics, war, and dragons.', 22.99),
('Cosmos', 'Carl Sagan', 'Science', 'A look at the universe and humanity’s place in it.', 19.50),
('How to Win Friends and Influence People', 'Dale Carnegie', 'Self-Help', 'Classic book on communication and influence.', 23.75),
('The Fellowship of the Ring', 'J.R.R. Tolkien', 'Fantasy', 'The first part of The Lord of the Rings.', 18.25),
('The Gene', 'Siddhartha Mukherjee', 'Science', 'The history and future of genetic research.', 21.99),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 'A coming-of-age story of teenage rebellion.', 12.50),
('A Brief History of Time', 'Stephen Hawking', 'Science', 'An exploration of the universe’s origins.', 15.75),
('The Pragmatic Programmer', 'Andrew Hunt & David Thomas', 'Technology', 'Practical tips for software developers.', 27.49),
('Pride and Prejudice', 'Jane Austen', 'Fiction', 'A romance and social satire masterpiece.', 18.99),
('Can’t Hurt Me', 'David Goggins', 'Self-Help', 'Lessons on discipline, grit, and overcoming pain.', 20.00),
('Why We Sleep', 'Matthew Walker', 'Science', 'The science of sleep and its impact on health.', 14.25),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'A classic novel about justice and morality.', 21.99),
('The Power of Now', 'Eckhart Tolle', 'Self-Help', 'Spiritual enlightenment through mindfulness.', 16.99),
('Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', 'Technology', 'Comprehensive guide to AI concepts.', 39.99),
('Homo Deus', 'Yuval Noah Harari', 'History', 'Exploring humanity’s possible futures.', 19.25),
('The Name of the Wind', 'Patrick Rothfuss', 'Fantasy', 'A tale of a gifted young man named Kvothe.', 17.99),
('Guns, Germs, and Steel', 'Jared Diamond', 'History', 'How geography and environment shaped societies.', 21.50),
('Introduction to Algorithms', 'Cormen et al.', 'Technology', 'The bible of algorithms and data structures.', 35.75),
('The Silk Roads', 'Peter Frankopan', 'History', 'A new history of the world from the East’s perspective.', 23.49),
('The Silent Patient', 'Alex Michaelides', 'Thriller', 'A psychological thriller about a woman who stops speaking after a shocking act of violence.', 19.99),
('Becoming', 'Michelle Obama', 'Biography', 'The memoir of former First Lady Michelle Obama, sharing her life story and insights.', 22.00),
('Head First Design Patterns', 'Eric Freeman', 'Software Architecture', 'Visual and interactive approach to learning design patterns in programming.', 27.99),
('The Alchemist', 'Paulo Coelho', 'Philosophy / Fiction', 'A philosophical novel about following your dreams and listening to your heart.', 33.50),
('Educated', 'Tara Westover', 'Biography', 'A memoir about a woman who grows up in a strict and abusive household in rural Idaho and seeks education.', 18.99),
('Refactoring', 'Martin Fowler', 'Software Engineering', 'Explains how to improve the structure of existing code without changing its behavior.', 39.99),
('Design Patterns', 'Erich Gamma', 'Software Architecture', 'Introduces reusable solutions to common problems in object-oriented software design.', 44.99),
('Working Effectively with Legacy Code', 'Michael Feathers', 'Maintenance & Refactoring', 'Provides strategies to understand, test, and refactor legacy systems.', 32.99),
('The Mythical Man-Month', 'Frederick P. Brooks Jr.', 'Project Management', 'Classic essays on software project management and pitfalls in scheduling.', 22.50),
('You Don’t Know JS Yet', 'Kyle Simpson', 'Programming Languages', 'Deep dive into the core mechanisms of JavaScript for developers.', 19.99),
('Code Complete', 'Steve McConnell', 'Software Engineering', 'Comprehensive book on software construction best practices.', 44.99),
('The Invisible Life of Addie LaRue', 'V.E. Schwab', 'Fantasy', 'A young woman makes a Faustian bargain to live forever, but is cursed to be forgotten by everyone she meets.', 22.50),
('The Midnight Library', 'Matt Haig', 'Fiction', 'A story exploring infinite possibilities of life choices in a magical library.', 20.25),
('Project Hail Mary', 'Andy Weir', 'Sci-Fi', 'A lone astronaut must save humanity in this thrilling science adventure.', 21.50),
('Where the Crawdads Sing', 'Delia Owens', 'Fiction', 'A mystery intertwined with a coming-of-age story in the marshlands.', 19.99),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Self-Help', 'A blunt guide to living a good life by focusing on what truly matters.', 18.99),
('The Four Agreements', 'Don Miguel Ruiz', 'Self-Help', 'Practical wisdom based on ancient Toltec principles.', 15.99),
('The Power of Habit', 'Charles Duhigg', 'Self-Help', 'An exploration of the science behind why habits exist and how to change them.', 19.25),
('Dune', 'Frank Herbert', 'Sci-Fi', 'Epic science fiction saga set on the desert planet Arrakis.', 22.75),
('The Alchemist', 'Paulo Coelho', 'Fiction', 'A mystical story about following your dreams and listening to your heart.', 17.99),
('Thinking, Fast and Slow', 'Daniel Kahneman', 'Psychology', 'An in-depth look at human thought processes and decision-making.', 20.50),
('Little Fires Everywhere', 'Celeste Ng', 'Fiction', 'A story about family secrets, social dynamics, and motherhood in a small town.', 18.75),
('The Night Circus', 'Erin Morgenstern', 'Fantasy', 'A magical competition unfolds within a mysterious traveling circus.', 21.99),
('Educated by Fire', 'John Doe', 'Thriller', 'A high-stakes story of espionage and secrets that could change the world.', 19.99),
('The Road', 'Cormac McCarthy', 'Fiction', 'A post-apocalyptic tale of a father and son journeying through a devastated world.', 18.50),
('Middlesex', 'Jeffrey Eugenides', 'Fiction', 'The epic story of a hermaphrodite navigating life and identity across generations.', 21.00),
('Neuromancer', 'William Gibson', 'Sci-Fi', 'A seminal cyberpunk novel exploring AI and virtual reality.', 19.75),
('The Wind-Up Bird Chronicle', 'Haruki Murakami', 'Fiction', 'A surreal journey of love, mystery, and self-discovery.', 20.25),
('Fahrenheit 451', 'Ray Bradbury', 'Fiction', 'A dystopian novel about a society where books are banned and burned.', 16.99),
('Brave New World', 'Aldous Huxley', 'Fiction', 'A futuristic society driven by technology, control, and conditioning.', 17.50),
('The Handmaid’s Tale', 'Margaret Atwood', 'Fiction', 'A chilling dystopian tale of oppression and survival in a theocratic regime.', 18.99),
('The Silent Patient', 'Alex Michaelides', 'Thriller', 'A psychological thriller about a woman who stops speaking after a shocking act of violence.', 19.99),
('Meditations', 'Marcus Aurelius', 'Philosophy', 'Reflections on life, duty, and virtue by the Roman emperor.', 14.50),
('Man’s Search for Meaning', 'Viktor E. Frankl', 'Self-Help', 'A Holocaust survivor explores how finding purpose can sustain us in suffering.', 16.75),
('Thinking in Systems', 'Donella Meadows', 'Science', 'A practical guide to understanding and managing complex systems.', 18.25),
('Outliers', 'Malcolm Gladwell', 'Self-Help', 'Examines what makes high-achievers different and successful.', 19.50),
('The Book Thief', 'Markus Zusak', 'Fiction', 'A young girl discovers the power of books in Nazi Germany.', 17.99),
('The Name of the Rose', 'Umberto Eco', 'Mystery', 'A historical murder mystery set in a medieval monastery.', 20.50),
('Life of Pi', 'Yann Martel', 'Fiction', 'A young boy survives a shipwreck and shares a lifeboat with a Bengal tiger.', 18.25),
('The Martian', 'Andy Weir', 'Sci-Fi', 'An astronaut stranded on Mars must use science to survive.', 21.25),
('Ender’s Game', 'Orson Scott Card', 'Sci-Fi', 'A young genius is trained through simulations to save humanity from an alien threat.', 19.99),
('Pachinko', 'Min Jin Lee', 'Fiction', 'A multi-generational saga about a Korean family in Japan.', 20.75),
('American Gods', 'Neil Gaiman', 'Fantasy', 'A mythical and modern tale about gods living in contemporary America.', 19.50),
('The Goldfinch', 'Donna Tartt', 'Fiction', 'A boy loses his mother in a tragedy and becomes entangled in a world of art and crime.', 22.00),
('The Underground Railroad', 'Colson Whitehead', 'Historical Fiction', 'A reimagined journey of a slave seeking freedom via a literal underground railroad.', 21.50),
('Station Eleven', 'Emily St. John Mandel', 'Sci-Fi', 'A post-apocalyptic story of a traveling Shakespeare troupe surviving a pandemic.', 19.25),
('Circe', 'Madeline Miller', 'Fantasy', 'A retelling of the life of the witch Circe from Greek mythology.', 18.75),
('The Priory of the Orange Tree', 'Samantha Shannon', 'Fantasy', 'An epic tale of dragons, magic, and powerful women defending their world.', 24.50),
('Annihilation', 'Jeff VanderMeer', 'Sci-Fi', 'A biologist explores a mysterious and mutated ecological zone.', 17.99),
('Educated', 'Tara Westover', 'Biography', 'Memoir about growing up in a strict household and seeking education.', 18.50),
('Shantaram', 'Gregory David Roberts', 'Fiction', 'An Australian fugitive finds a new life in the underworld of Bombay.', 22.75);





SELECT *
FROM Books;
