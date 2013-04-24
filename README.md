## Installation & Configuration

If you want to run the application by yourself here are the steps for
you.

First you need to clone the [repository from GitHub](http://github.com/fishman/oyoh-devise-client)

    git clone git://github.com/fishman/oyoh-devise-client.git

Install all the gems

    bundle install

And migrate the databse

    rake db:migrate

At this point the application should be ready to run, but it won't
communicate correctly with the provider. You need to set up environment
variables to indicate the oauth2 provider values. In your environemnt
file set up these variables

    DOORKEEPER_APP_ID = "375c2e3fd..." # ID for your app registered at the provider
    DOORKEEPER_APP_SECRET = "6a2fa82ab..." # Secret
    DOORKEEPER_APP_URL = "http://the-provider.com" # URL to the provider


Now you are ready to start the app

    rails s


The return URL for the Health API is
http://localhost:3000/users/auth/oyoh/callback

