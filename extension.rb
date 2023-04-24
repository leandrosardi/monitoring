BlackStack::Extensions::add ({
    # descriptive name and descriptor
    :name => 'monitoring',
    :large_name => 'Infrastructure & Users Monitoring',

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
        { :label => 'nodes', :icon => :desktop, :screen => :nodes, },

        # TODO: Move this to the AGENCY extension
        { :label => 'accounts', :icon => :group, :screen => :'agency/accounts', },
        { :label => 'campaigns', :icon => :beaker, :screen => :'agency/campaigns', },
        { :label => 'capacity', :icon => :dashboard, :screen => :'agency/capacity', },
        { :label => 'scrapers', :icon => :group, :screen => :'agency/scrapers', },
        { :label => 'addresses', :icon => :envelope, :screen => :'agency/addresses', },
        { :label => 'unibox', :icon => :inbox, :screen => :'agency/unibox', },
    ],
})

module BlackStack
    module Monitoring
        TYPE_BOOL = 'bool'
        TYPE_INT = 'int'
        TYPE_FLOAT = 'float'

        COMPARSION_FALSE = 'false'
        COMPARSION_TRUE = 'true'
        COMPARSION_EQUAL = 'equal'
        COMPARSION_NOT_EQUAL = 'not_equal'
        COMPARSION_GREATER = 'greater'
        COMPARSION_GREATER_EQUAL = 'greater_equal'
        COMPARSION_LESS = 'less'
        COMPARSION_LESS_EQUAL = 'less_equal'

        class Monitor
            attr_accessor :name, :description, :type, :value_function, :threshold_function, :threshold, :comparsion, :unit_name
            attr_accessor :last_value
            #attr_accessor :poll_frequency_number, :poll_frequency_unit
            #attr_accessor :timeline # historical values

            def initialize(h)
                # TODO: validate h
                @name = h[:name]
                @description = h[:description]
                @type = h[:type]
                @value_function = h[:value_function]
                @threshold_function = h[:threshold_function]
                @threshold = h[:threshold]
                @comparsion = h[:comparsion]
                @unit_name = h[:unit_name]
            end
            
            def get_threshold
                self.threshold_function.nil? ? self.threshold : self.threshold_function.call()
            end 

            # return true if the monitor is condition is passed.
            # return false if the monitor is condition is not passed.
            def pass?
                x = self.value_function.call()
                y = self.get_threshold()
                self.last_value = x
                case self.type
                when TYPE_BOOL
                    case self.comparsion
                    when COMPARSION_FALSE
                        return x == !y
                    when COMPARSION_TRUE
                        return x == y
                    end
                when TYPE_INT
                    case self.comparsion
                    when COMPARSION_EQUAL
                        return x.to_i == y.to_i
                    when COMPARSION_NOT_EQUAL
                        return x.to_i != y.to_i
                    when COMPARSION_GREATER
                        return x.to_i > y.to_i
                    when COMPARSION_GREATER_EQUAL
                        return x.to_i >= y.to_i
                    when COMPARSION_LESS
                        return x.to_i < y.to_i
                    when COMPARSION_LESS_EQUAL
                        return x.to_i <= y.to_i
                    end
                when TYPE_FLOAT
                    case self.comparsion
                    when COMPARSION_EQUAL
                        return x.to_f == y.to_f
                    when COMPARSION_NOT_EQUAL
                        return x.to_f != y.to_f
                    when COMPARSION_GREATER
                        return x.to_f > y.to_f
                    when COMPARSION_GREATER_EQUAL
                        return x.to_f >= y.to_f
                    when COMPARSION_LESS
                        return x.to_f < y.to_f
                    when COMPARSION_LESS_EQUAL
                        return x.to_f <= y.to_f
                    end
                end
            end
        end # class Monitor

        @@monitors = []

        def self.add(h)
            @@monitors << BlackStack::Monitoring::Monitor.new(h)
        end # def self.add (h)

        def self.set(a)
            a.each { |h| 
                @@monitors << BlackStack::Monitoring::Monitor.new(h)
            }
        end # def self.add (h)

        def self.monitors
            @@monitors
        end

        # return markdown code with documentation of each one of the monitors.
        def self.doc
            # TODO: Code Me!    
        end

    end # module Monitoring
end # module BlackStack

