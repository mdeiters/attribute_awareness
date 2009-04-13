module ActiveRecord
  module AttributeAppreciation
    module Descriptions
      module ClassMethods
        def describe_attributes(options ={})
          attribute_descriptions.merge! options
        end

        def description_for(attribute)
          attribute_descriptions[attribute]
        end

        private
        def attribute_descriptions
          @attribute_descriptions ||= {}
        end  
      end

      def self.included(klass)
        klass.extend ClassMethods
      end

      def description_for(attribute)
        self.class.description_for(attribute)
      end
    end
  end
end