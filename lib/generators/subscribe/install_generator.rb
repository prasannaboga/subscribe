module Subscribe
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      desc "Create models and migrations for subscription model"

      def self.source_root
        @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.new.utc.strftime("%Y%m%d%H%M%S")
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end

      def create_migration_file
        migration_template 'subscriptions.rb', 'db/migrate/create_subscriptions.rb'
      end
    end
  end
end