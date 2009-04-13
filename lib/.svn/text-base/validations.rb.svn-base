module ActiveRecord
  module AttributeAppreciation
    module Validations      
      module ClassMethods
        def is_required?(attribute)
          presence_required.flatten.include?(attribute)
        end
      end
      
      def self.included(base)
        base.extend ClassMethods
      end
      
      def is_required?(attribute)
        self.class.is_required?(attribute)
      end
    end
  end
end

