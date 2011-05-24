require "sass/css"
require "rails/generators/named_base"

module Sass
  module Generators
    class ScaffoldBase < ::Rails::Generators::NamedBase
      def copy_stylesheet
        dir = ::Rails::Generators::ScaffoldGenerator.source_root
        file = File.join(dir, "scaffold.css")
        create_file "app/assets/stylesheets/scaffold.css.#{syntax}", ::Sass::CSS.new(File.read(file)).render(syntax)
      end
    end
  end
end

