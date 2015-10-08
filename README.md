# Remove Turbolinks
### NOTE: This file has been [moved to a gem](https://github.com/jmbuscemi/remove_tl).  You can still use it as is, but maybe use my [gem](https://github.com/jmbuscemi/remove_tl) instead?
Turbolinks can cause JS troubles in a rails app, unless properly used.  This is a simple ruby file to remove everything related to turbolinks from a rails app.

## To use the non-gem form
1. Create a new Rails app

  ```
  rails new my_awesome_app
  ```

2. Add file `remove_tl.rb` to the root directory of your Rails app.
3. CD into your app's directory.

  ```
  cd my_awesome_app
  ```
4. Execute code

  ```
  ruby remove_tl.rb
  ```
5. Your app is now Turbolinks free...your FE engineers won't be confused as to why none of their JS is working properly.
