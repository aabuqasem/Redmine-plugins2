match '404', to: 'us_errors#error_404', via: [:get]
match '500', to: 'us_errors#error_500', via: [:get]

get 'easy_perplex', controller: :easy_perplex, action: :easy_perplex
get 'easy_perplex_actions(/:user_id)', controller: :easy_perplex, action: :easy_perplex_actions, user_id: /\d+/

get 'attachments/download/all/:id', controller: :attachments, action: :download_all

post '/projects/:project_id/change_project_memberships_us', controller: :members, action: :change_project_memberships_us
get 'get_active_users', controller: :users, action: :get_active_users
get 'projects/:id/not_member_principal', controller: :projects, action: :not_member_principal