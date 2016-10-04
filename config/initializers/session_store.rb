# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cart_session',
  :secret      => '2e4a046cd80504a66b1bdb5bdd88fe719a5bf94acbd5947cddd36ff1814d43d8ee351ed71c2f7e76b5d8387ff8321d0a33da51417a850b6c9838142bc3c85fd5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
