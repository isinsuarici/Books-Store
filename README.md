# Books Store

## Vision Statement
This project was carried out by targeting the user group who wants to know the price of the book they are looking for in Eskişehir, at the bookstore, and to shop consciously accordingly. It is intended to be a humanitarian practice. 
In the application, there are information about the best-selling books in Eskişehir, the title of the book, the name of the author, the year of publication of the book, the category, the image, the number of pages, the summary, the bookstores where it is sold, the price of the book in these bookstores and the amount of stock for the book in the bookstore.

## Major Features
Data is pulled from json file. The json file contains the id, image, name, author name, summary, publication year, number of pages, category, rank, price, bookstore and stock amounts of the books. These data were drawn with the MockBooksService class, and data structures were determined in the classes under the model folder.


## Main Page
![image](https://user-images.githubusercontent.com/44557162/213013821-b1ac6c17-b156-4385-ac77-bafaa7d6d28b.png)
![image](https://user-images.githubusercontent.com/44557162/213013911-f7fe8b8e-349b-41ad-9657-ce41af6209c4.png)

On the main screen of our application, there are pages that welcome our users and talk about small details about our project. The user can move between these pages by clicking next or skip to the last page by clicking skip.

## First Page
![image](https://user-images.githubusercontent.com/44557162/213014023-75074726-3ca6-4e0e-b94a-300ab9f1bdd1.png)
![image](https://user-images.githubusercontent.com/44557162/213014031-62af0e8d-fad7-47a9-a882-83bc12ff9bb0.png)

This is the page that shows most of the core functions for our app. App consists of 3 main parts except bar and footer. These are all books, best sellers and categories. For the best seller section, we filter the data we pulled from our json file and show the books with a rate score of 5. You can see the details of the books by clicking images. For the all books section, we show some of the data we pulled from our json file. By clicking the more button on the side, a page opens where we can access the list of all books. We can see the categories of all the books available in the categories section and reach the books according to the categories. 

## All Books
![image](https://user-images.githubusercontent.com/44557162/213014044-bd09f859-d091-49c5-b3cc-8d0fae66ec25.png)

In this section, users can see the picture, author and name of the book for each of the available books. They can also see the details of the books by clicking on them.


## Details Page
 ![image](https://user-images.githubusercontent.com/44557162/213014053-f297d3f9-e8ce-4b85-bf9f-1c4ff4c363c8.png)
![image](https://user-images.githubusercontent.com/44557162/213014059-18828570-e306-4f0b-97fa-3a825a3068a8.png)

In the detail section, users can see the category, title, publication date and page number of the book. In addition, users can access the summary of the books and read the summary of the book from the summary section of the book so that they have preliminary information about the book. In addition, they can compare the price of the book from the place where the book is sold.


