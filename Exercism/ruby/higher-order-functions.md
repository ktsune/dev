# each (each_with_index) -- interchangeable with a for loop

Goes over every item in an array,
  returns nil

For example, print the title of all books:

```ruby
@books.each { |book| puts "Book name: " + book.title }
```

# select (filter -- generic name)

Goes over every item in an array,
  if the block return true it keeps it
    else drops it.

Input: [1, 2, 3, ...]   length n
Output: [1,3,5, ...]    length n'

```ruby
@books.select { |book| book.is_book_checked_out? }
```

# map (collect)

Goes over every item in an array,
  transforms the item,
    returns the new item

Input: [1, 2, 3, ...]   length n
Output: [a, b, c, ...]  length n

```ruby
@books.map { |book| book.author }
```

# reduce / fold

Goes over every item in an array,
  and uses a block to combine to a new item
  reducing the initial array to a combined final item

Input: [1, 2, 3, ...]   length n
Output: 293848          single item

```ruby
[1, 1, 1].reduce( |sum, n| sum + n )
# => 3   
```
