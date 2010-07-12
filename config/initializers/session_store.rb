# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_browser_cms_demo_session',
  :secret      => '79f6005f1a0531f6e6693089d11953574399daffc99ec11fea37e4f1d9dfacf25be810f7f30c96f61d307664daf78a989c897fd9e1e9c0d9cb7aba2e17269bcd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
