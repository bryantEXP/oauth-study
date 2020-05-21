# <---- LESSON ---->
# Step Nine:
# Set up Active record to use devise-omniauth

Rails.application.config.session_store :active_record_store, key: '_devise-omniauth_session'

# <--- LESSON --->
# Next steps are here because you haven't created the files yet.
# Step Ten:
# Create two migrations in this order:
  # rails g migration update_users
  # rails g migration create_sessions
