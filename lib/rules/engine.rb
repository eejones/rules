module Rules
  class Engine < ::Rails::Engine
    isolate_namespace Rules

    initializer :active_admin do
      if defined? ActiveAdmin
        require 'rules/extensions/active_admin/dsl'
      end
    end
  end
end
