URL SHORTENING SERVICE

1. Requirements and Specifications
  1. Given a URL, our service should create a shorter and unique alias 
  2. When users access a shorter URL our service must redirect to the original link
  3. There is no need for authentication or secret keys
  4. Users should be able to choose their shortlink
  5. Short Links should expore after 6 months after it's created
  6. URL redirection should happen in real time

2. Capacity Estimation
  1. Traffic estimates: let's assume that we would have 30M calls per month(1M calls per day) and we are going to keep our service for 5 years, our service will generate about 1.8B records
  2. URL Length: Shortened URL can be the combination of numbers(0-9) and characters(a-z) and (A-Z). And if we add "." and "-" we can use base 64. so let's set the shortened URL length as x = 6, this will render 64^6 ~= 68.7 billion possible strings

3. System APIs
  we can created two queries to expose the functionality of our service, one to create the URL and the other to delete it:
  1. createUrl(original_url, custom_alias=None user_name=None, expire_date=None)
    parameters: 
    1. original_url(string): Original url to be shortened
    2. custom_alias(string): Optional custom key for the URl
    3. user_name: Optional user name to be used in encoding
    4. expire_date: Optional expiration date for the shorteed Url

    Returns:(String)
    if is a succesful insertion, it returns the shortened URL. else it returns an error
      deleteURL(url_key)
    where "url_key" is a string representing the shortened URL to be retrieved. if is succesful it returns 'URL Removed'

4. Database Design
  we would need two tables, one for storing information about the url mappings and the other for users' data
  
  1. Creating the tables

    URL TABLE

    Hash: varchar(16)
    OriginalURL: varchar(512)
    CreationDate: datetime
    ExpirationDate: datatime
    UserID: int

    USER TABLE

    UserID: int
    Name: varchar(20)
    Email: varchar(32)
    CreationDate: datetime
    LastLogin: datatime

  2. Kind of database
    I prefer to use noSQL database(like mongo or redis) in this situation because we dont need to use relationships between objects and also it would be easier to scale. if we choose noSQL we wont be able to store UserID in the URL table, so we would need a third table wich will store the mapping between URL and the user
  


    

