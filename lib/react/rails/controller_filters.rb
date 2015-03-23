module React
  module Rails
    module ControllerFilters
      extend ::ActiveSupport::Concern

      included do
        append_after_filter :reset_react_javascript_context
      end

      def reset_react_javascript_context
        ::React::JavascriptContext.reset!
      end

    end
  end
end