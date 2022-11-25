# screens
get '/monitoring', :auth => true do
    erb :"/extensions/monitoring/views/users", :layout => :'/views/layouts/core'
end

get '/monitoring/users', :auth => true do
    erb :"/extensions/monitoring/views/users", :layout => :'/views/layouts/core'
end

get '/monitoring/nodes', :auth => true do
    erb :"/extensions/monitoring/views/nodes", :layout => :'/views/layouts/core'
end

# filters
get '/monitoring/filter_secret_login' do
    erb :"/extensions/monitoring/views/filter_secret_login"
end

get '/monitoring/filter_restore_users', :auth => true do
    erb :"/extensions/monitoring/views/filter_restore_users"
end

get '/monitoring/filter_delete_users', :auth => true do
    erb :"/extensions/monitoring/views/filter_delete_users"
end

get '/monitoring/filter_disallow_trials', :auth => true do
    erb :"/extensions/monitoring/views/filter_disallow_trials"
end

get '/monitoring/filter_allow_trials', :auth => true do
    erb :"/extensions/monitoring/views/filter_allow_trials"
end

