# screens
get '/monitoring', :auth => true do
    erb :"/extensions/monitoring/views/production", :layout => :'/views/layouts/core'
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
get '/monitoring/production', :auth => true do
    erb :"/extensions/monitoring/views/production", :layout => :'/views/layouts/core'
end

get '/monitoring/financial', :auth => true do
    erb :"/extensions/monitoring/views/financial", :layout => :'/views/layouts/core'
end

get '/monitoring/filter_allow_premium', :auth => true do
    erb :"/extensions/monitoring/views/filter_allow_premium"
end

get '/monitoring/filter_disallow_premium', :auth => true do
    erb :"/extensions/monitoring/views/filter_disallow_premium"
end

get '/monitoring/filter_add_bonus', :auth => true do
    erb :"/extensions/monitoring/views/filter_add_bonus"
end

get '/monitoring/campaigns', :auth => true do
    erb :"/extensions/monitoring/views/campaigns", :layout => :'/views/layouts/core'
end

# TODO: move this to the agency extension
get '/monitoring/capacity', :auth => true do
    erb :"/extensions/monitoring/views/capacity", :layout => :'/views/layouts/core'
end

get '/monitoring/scrapers', :auth => true do
    erb :"/extensions/scraper/views/dashboard", :layout => :'/views/layouts/core'
end

get '/monitoring/filter_payout', :auth => true do
    erb :"/extensions/scraper/views/filter_payout"
end

get '/monitoring/addresses', :auth => true do
    erb :"/extensions/emails/views/addresses", :layout => :'/views/layouts/core'
end

get '/monitoring/unibox', :auth => true do
    erb :"/extensions/emails/views/unibox", :layout => :'/views/layouts/core'
end

# AJAX
get '/ajax/monitoring/account_report.json', :auth => true, :agent => /(.*)/ do
    erb :'/extensions/monitoring/views/ajax/account_report'
end
post '/ajax/monitoring/account_report.json', :auth => true, :agent => /(.*)/ do
    erb :'/extensions/monitoring/views/ajax/account_report'
end
