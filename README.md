# README
## Device + OmniAuth (with guest appearance: Rails Credentials)
Fork and open this repo in your favorite editor to get started.
[Youtube Walk Through](https://youtu.be/P-MWCdm9R2c)

## Gems:
  - Let's install gems for devise. In your gem file add:
    ```
      gem 'devise'
      gem 'ruby_parser'
      gem 'nokogiri'
    ```
  - run `bundle install`

## Devise:
  - Set up devise.
      run `rails g devise:install`
  - Create a devise model.  It can be named anything but here we will use 'user'.
      run `rails g devise user`
  - Migrate.  If you are using postgresql, you'll need to create the database first.
    If not skip the create command.
      run `rails db:create`
      run `rails db:migrate`

## Views:
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

## Providers:
  - Signup for your Oauth ids.

### Facebook
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

### Github
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

### Google
  - Sign up for google here: [google developer](https://console.developers.google.com/)
  - At the top click on the down arrow.
      ![Google website page](public/images/google1.png)
      ---
      ---
  - Click on new project
      ![Google website page](public/images/google2.png)
      ---
      ---
  - Fill in your project name and click create
      ![Google website page](public/images/google3.png)
      ---
      ---
  - Return to dashboard and make sure your current project is the one listed at the top. Select "Consent Screen" from the right.  Click on "external" then "create"
      ![Google website page](public/images/google5.png)
      ---
      ---
 - Fill in application name and leave everything else blank.  Click save
    ![Google website page](public/images/google6.png)
    ---
    ---
 - Click on credentials on the left then select create credentials from the top. After that select OAuth client ID
    ![Google website page](public/images/google7.png)
    ---
    ---
 - Under application type select "Web Application", give your app a name.
 - Your JavaScript origin is your local domain. So for the example it is "http://localhost:3000"
 - Your Authorized redirect URI is "http://localhost:3000/users/auth/google_oauth2/callback"
 - Select "Create"
    ![Google website page](public/images/google8.png)
    ---
    ---
- Copy and Paste your Id and secret as before

## The Code:
### Lets go to the code!  Follow step by step guide for the rest by searching "Step One", "Step Two", and so on! There are 18 additional steps in all.

test
