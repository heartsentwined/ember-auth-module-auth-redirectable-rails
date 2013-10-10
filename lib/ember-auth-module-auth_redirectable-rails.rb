require 'rails'
require 'ember/auth/module/auth_redirectable/source'
require 'ember/auth/module/auth_redirectable/rails/version'
require 'ember/auth/module/auth_redirectable/rails/engine'

module Ember
  module Auth
    module Module
      module AuthRedirectable
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.auth-redirectable.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::AuthRedirectable::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
