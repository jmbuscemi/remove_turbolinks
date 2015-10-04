# Remove Turbolinks
Turbolinks can cause JS troubles in a rails app, unless properly used.  This is a simple ruby file to remove everything related to turbolinks from a rails app.

## To Use
1. Create a new Rails app `rails new my_awesome_app`
2. Add file `remove_tl.rb` to the root directory of your Rails app.
3. `cd my_awesome_app`
4. `ruby remove_tl.rb`
5. Enjoy a turbolinks free app, where your FE engineers won't be confused as to why none of their JS isn't working properly.
