--not empty
create DATABASE IF NOT EXISTS alx_book_store;
use alx_book_store;

-- Authors: Stores information about authors.
create table Authors(
    author_id int Primary Key,
    author_name VARCHAR(215)
);


--Books: Stores information about books available in the bookstore.
create TABLE Books(
    book_id INT AUTO_INCREMENT Primary Key,
    title VARCHAR(130),
    author_id  INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

--Customers: Stores information about customers.
CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT Primary Key,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Orders: Stores information about orders placed by customers.
CREATE TABLE Orders(
    order_id int AUTO_INCREMENT Primary Key,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY customer_id REFERENCES Customers(customer_id)
);
-- Order_Details: Stores information about the books included in each order.

CREATE TABLE Order_Details(
    orderdetailid INT AUTO_INCREMENT Primary Key,
    order_id int,
    book_id int,
    quantity DOUBLE,
    Foreign Key (order_id) REFERENCES Orders(order_id),
    Foreign Key (book_id) REFERENCES Books(book_id)
);

