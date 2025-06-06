 Feature: edit my library
    Scenario: edit book
        Given that I am in my personal library
        When I click edit on a book
        Then I am directed in the edit page
        And I should be prompted to update details (title,category,author,description,photos,cover photo) of the book
        And  I should see the updated book in my library
    Scenario: delete book
        Given that I am in edit mode of a book
        When I click to delete the book
        Then I should see a message saying "Book deleted successfully"
        And I should no longer see the book in my library
    Scenario: add/upload book
        Given that I am in my personal library
        When I click to add a new book
        Then I am directed in the upload page
        And I should be prompted to enter title,author,category,description,photos,cover photo
        And I should be able to click upload
        And  I should see the uploaded book in my library
    Scenario: upload wrong number of photos
        Given that I am in edit mode of book
        And that I upload 0-1 or 10+ photos
        When I upload the book
        Then I should see a message saying "Book can't be uploaded. Upload 2-10 photos of the book"
        And I should be redirected in the edit mode of a book
        And I should be prompted to try again
    Scenario: details are missing
        Given that I am in edit mode of book
        And that I dont add a title,category,author,photos,cover photo 
        When I upload the book
        Then I should see a message saying "Book can't be uploaded. Add all the essential details"
        And I should be redirected in the edit mode of a book
        And I should be prompted to try again
    Scenario: upload wrong image file type 
        Given that I am in the edit mode of book
        And that I upload a file that is not correct image type (jpeg,png) 
        When I upload the book
        Then I should see a message saying "Book can't be uploaded. Upload a valid image type"
        And I should be redirected in the edit mode of book
        And I should be prompted to try again


        
Feature: search books
    Scenario: search by title,author,username
        Given that I am in the home page
        When I search for a book by title,author,username
        Then I should see the search results
        And I should be able to scroll down the page
        And I should be able to use filters
    Scenario: search book that doesn't exist
        Given that I am in the home page
        When I search for a book that doesn't exist
        Then I should see a message saying "No matching results found"
        And I should be prompted to try again

Feature: manage book results
    Scenario: filter by author,location,category
        Given that I am in the home page
        When I filter by author,location,category
        Then I should see the search results
        And I should be able to scroll down the page
    Scenario: sort by rating, alphabet 
        Given that I am in the home page
        When I sort by rating, alphabet
        Then I should see the search results
        And I should be able to scroll down the page

Feature: send notification
    Scenario:  like notification
        Given that I am in the page or i have an internet connection
        When someone likes a book of mine
        Then I should see a notification
        And I should be able to click on the notification
        And i should be able to see the book that was liked
        And i should be able to see who liked it  
        And i should be able to click on the user who liked it?
    Scenario:  notification to leave a rating
        Given that I am in the web page or I have an an internet connection
        When exchange process is completed or canceled
        Then I should see a notification to rate my "book fella"
        And I should be able to click on the notification
        And I should be able to rate him
    Scenario: see rating notification 
        Given that I am logged-in in the application 
        When a "book fella" rates me
        Then I should see a notification
        And I should be able to click on the notification
        And I should be able to see the rating
    Scenario: match notification
        Given that I am in the web page or i have an internet connection
        When someone matches with me 
        Then I should see a notification saying "There is a match! Do you want to proceed with exchange process?"
        And I should be able to click on the notification
        And I should be able to see the user who matched with me
        And i should be able to see the book that was matched
        And I should be able to continue on chat 

Feature: rate user
    Scenario: rate user
        Given that I am in the profile page of a "book fella"
        When I click to rate the "book fella"
        Then I should see be able to rate the "book fella" on a scale of 1-5 
        And I should be able to leave a comment on my rating
        And I should be able to submit my rating 
        And I should be able to see the rating of the "book fella" in their profile

Feature: Control availability of books
    Scenario: make book available
        Given that
    Scenario: make book unavailable
        Given that I am in the edit mode of a book
        When I click to make the book unavailable
        Then I should see a message saying "Book is now unavailable for exchange"
        And I should not be able to see the book in the search results
    Scenario: book is already available
        Given that I am in the edit mode of a book
        And that the book is already available
        When I click to make the book available
        Then I should see a message saying "Book is already available"
        And I should be able to see the book in the search results
    Scenario: book is already unavailable
        Given that I am in the edit mode of a book
        And that the book is already unavailable
        When I click to make the book unavailable
        Then I should see a message saying "Book is already unavailable"
        And I should not be able to see the book in the search results



