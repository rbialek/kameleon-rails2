# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kameleon-rails2_session',
  :secret      => 'eb736ab2afa8e10944965e87a5e4f5904e00ee6ce8024a0a8664711bfec0e75c3129a9535a89eff1275d9f47aece7e364edf8a75a36372970efac2bb47bf58e2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
