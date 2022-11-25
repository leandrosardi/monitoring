get '/monitoring', :auth => true do
    erb :"/extensions/monitoring/views/users", :layout => :'/views/layouts/core'
end

get '/monitoring/users', :auth => true do
    erb :"/extensions/monitoring/views/users", :layout => :'/views/layouts/core'
end

get '/monitoring/nodes', :auth => true do
    erb :"/extensions/monitoring/views/nodes", :layout => :'/views/layouts/core'
end