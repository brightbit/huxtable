require 'rails/generators'

module Huxtable
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root Huxtable.root
      desc "This generator installs Huxtable to Asset Pipeline"

      def add_assets
        # copy js manifest
        js_manifest = 'app/assets/javascripts/huxtable.js'
        copy_file "app/assets/javascripts/huxtable.js", "app/assets/javascripts/huxtable.js"

        # copy sass manifests
        css_manifests = 'app/assets/stylesheets/huxtable.sass'
        copy_file "app/assets/stylesheets/huxtable.sass", "app/assets/stylesheets/huxtable.sass"

        %w(stylesheets javascripts fonts).each do |asset|
          directory "app/assets/#{asset}/huxtable/", "app/assets/#{asset}/huxtable/"
        end
      end
    end
  end

end
