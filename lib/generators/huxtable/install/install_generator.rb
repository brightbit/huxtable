require 'rails/generators'

module Huxtable
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs Huxtable UI to Asset Pipeline"

      def add_assets
        # copy js manifest
        js_manifest = 'app/assets/javascripts/huxtable.js'
        copy_file "huxtable.js", "app/assets/javascripts/huxtable.js"

        # copy less manifests
        css_manifests = 'app/assets/stylesheets/huxtable.css.sass'
        copy_file "huxtable.css.sass", "app/assets/stylesheets/huxtable.css.sass"
      end
    end
  end

end
