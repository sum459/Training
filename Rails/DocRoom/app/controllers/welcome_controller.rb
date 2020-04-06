# class WelcomeController < ApplicationController
#   def index
#   end
# end

# <header class="header_inner">
#       <%= link_to "DocRoom", root_path, class: "logo" %>
#       <nav>
#         <% if user_signed_in? %>
#         <%= link_to "Create Doc", new_doc_path, class: "logo" %>
#         <%= link_to "Edit Profile", edit_user_registration_path, class: "logo" %>
#         <%= link_to avatar_for(current_user, size: 40), current_user, class: "logo" %>
#         <%= link_to "Sign Out", destroy_user_session_path, method: :delete, class: "logo" %>
#         <% else %>
#         <%= link_to "Log In", new_user_session_path, class: "logo" %>
#         <% end %>
#       </nav>
#     </header>

#       <p class="notice"><%= notice %></p>
#       <p class="alert"><%= alert %></p>