module ApplicationHelper
  def login_helper
    if current_user
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      (link_to 'Register', new_user_registration_path) + " ".html_safe +
      (link_to 'Login', new_user_session_path)
    end
  end

  def create_helper
    if current_user
      link_to "My Supplements", suplements_path(:user_id => current_user.id)
    else
      link_to "Create Your Supplement", new_suplement_path
    end
  end
end
