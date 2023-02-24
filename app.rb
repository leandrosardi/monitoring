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


# TODO: move this to the agency extension
get '/monitoring/agency/accounts', :auth => true do
    erb :"/extensions/monitoring/views/accounts", :layout => :'/views/layouts/core'
end

get '/monitoring/agency/filter_allow_premium', :auth => true do
    erb :"/extensions/monitoring/views/filter_allow_premium"
end

get '/monitoring/agency/filter_disallow_premium', :auth => true do
    erb :"/extensions/monitoring/views/filter_disallow_premium"
end

get '/monitoring/agency/filter_add_bonus', :auth => true do
    erb :"/extensions/monitoring/views/filter_add_bonus"
end

get '/monitoring/agency/campaigns', :auth => true do
    erb :"/extensions/monitoring/views/campaigns", :layout => :'/views/layouts/core'
end

get '/monitoring/agency/capacity', :auth => true do
    erb :"/extensions/monitoring/views/capacity", :layout => :'/views/layouts/core'
end


# TODO: move this to the agency extension
get '/monitoring/agency/scrapers', :auth => true do
    erb :"/extensions/scraper/views/dashboard", :layout => :'/views/layouts/core'
end

get '/monitoring/agency/filter_register_payout', :auth => true do
    erb :"/extensions/monitoring/views/filter_register_payout"
end