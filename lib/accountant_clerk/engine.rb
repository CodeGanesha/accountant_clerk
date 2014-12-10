module AccountantClerk
  class Engine < Rails::Engine
    engine_name 'accountant_clerk'

    #indicate that we have stylesheet/js stuff to be added to office, with the given name
    # files (css + js) must exist in asset path
    def office_assets
      "accountant_office"
    end

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/helpers**/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end
    initializer "accountant.precompile", :group => :all do |app|
      app.config.assets.precompile += ["accountant_office.css" , "accountant_office.js"]
    end

    config.to_prepare &method(:activate).to_proc
  end
end
