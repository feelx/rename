require File.expand_path('../../../rename/common_methods', File.dirname(__FILE__))

module Rename
  module Generators
    class Error < Thor::Error
    end

    class IntoGenerator < Rails::Generators::Base
      include CommonMethods

      def into
        valid?
        new_app_module
        new_app_directory
      end
    end
  end
end
