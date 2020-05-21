# README
## Device + OmniAuth (with guest appearance: Rails Credentials)

## Step One:
  - Let's install gems for devise. In your gem file add:
    ```
      gem 'devise'
      gem 'ruby_parser'
      gem 'nokogiri'
    ```
  - run `bundle install`

## Step Two:
  - Set up devise.
      run `rails g devise:install`
  - Create a devise model.  It can be named anything but here we will use 'user'.
      run `rails g devise user`
  - Migrate.  If you are using postgresql, you'll need to create the database first.
    If not skip the create command.
      run `rails db:create`
      run `rails db:migrate`

## Step Three:
  - Set up devise views.
      run `rails g devise:views`
  - Add a home page to test on.
      in config/routes.rb add `root to: 'application#welcome'`
      in your views folder add a new folder called 'application'
      in the application folder you just created add a file called 'welcome.html.erb'
      in the welcome file add:
        ```
        <% if user_signed_in? %>
          <h1> Hello <%= current_user.email.split("@")[0]%> </h1>
          <h2><%= link_to('Logout', destroy_user_session_path, method: :delete)%></h2>
        <% else %>
          <h1>Welcome</h1>
        <% end %>
        ```

## Step Four:
  - Signup for your Oauth ids.

  - Facebook signup at: [facebook developer](developers.facebook.com)\
      ![facebook main page](public/images/facebook1.png)
      ---
      ---
  - under 'my apps' go to create app,\
      ![facebook create page](public/images/facebook2.png)
      ---
      ---
  - give your app a name, create app id.\
      ![facebook main page](public/images/facebook3.png)
      ---
      ---
  - Go to settings, basic.\
      ![facebook settings page](public/images/facebook4.png)
      ---
      ---
  - Here you will want to grab the app id and app secret.\
      ![facebook app page](public/images/facebook5.png)
      ---
      ---
  - Copy and paste those somewhere safe.\
  - In the field app domain put in 'http://localhost:3000'\
      ![facebook app page](public/images/facebook6.png)
      ---
      ---
  - Scroll down to 'add platform'\
      ![facebook platform page](public/images/facebook7.png)
      ---
      ---
  - Select 'website'\
      ![facebook website page](public/images/facebook8.png)
      ---
      ---
  - Website URL is 'http://localhost:3000'\
      ![facebook website page](public/images/facebook9.png)
      ---
      ---
  - Save\


  - Github signup at: [github developer](https://github.com/)
  - Go to settings under your profile picture on the right.
      ![Github website page](public/images/github1.png)
      ---
      ---
  - Go to developer settings
      ![Github website page](public/images/github2.png)
      ---
      ---

  - Oauth Apps
      ![Github website page](public/images/github3.png)
      ---
      ---
  - Select new
      ![Github website page](public/images/github4.png)
      ---
      ---
  - Give your app a name
  - Hompage url is the domain your website is at. In the example it's "http://localhost:3000"
  - Using the example about your callback url will be "http://localhost:3000/users/auth/github/callback"
  - If you change your routes or domain you will need to update this!
      ![Github website page](public/images/github5.png)
      ---
      ---
  - Copy and paste your id and secret and put it with the others for now.
      ![Github website page](public/images/github6.png)
      ---
      ---
