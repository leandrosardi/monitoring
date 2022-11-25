BlackStack::Extensions::add ({
    # descriptive name and descriptor
    :name => 'monitoring',
    
    # Write a description here. It will be shown in the main dashboard of your MySaaS project.
    :description => 'MySaaS extension for manage users and infrastructure. ',

    # setup the url of the repository for installation and updates
    :repo_url => 'https://github.com/leandrosardi/monitoring',
    :repo_branch => 'main',

    # define version with format <mayor>.<minor>.<revision>
    :version => '0.0.1',

    # define the name of the author
    :author => 'Leandro D. Sardi',

    # what is the section to add this extension in either the top-bar, the footer, the dashboard.
    :services_section => 'Services',
    # show this extension as a service in the top bar?
    :show_in_top_bar => true,
    # show this extension as a service in the footer?
    :show_in_footer => true,
    # show this extension as a service in the dashboard?
    :show_in_dashboard => true,

    :dependencies => [
        { :extension => :content, :version => '0.0.1' },
    ],

    # what are the screens to add in the leftbar
    :leftbar_icons => [
        { :label => 'users', :icon => :user, :screen => :users, },
        { :label => 'nodes', :icon => :'dot', :screen => :nodes, },
    ],
})