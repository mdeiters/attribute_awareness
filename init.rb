require File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'descriptions')
require File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'validations')

ActiveRecord::Base.send :include, ActiveRecord::AttributeAppreciation::Descriptions
ActiveRecord::Base.send :include, ActiveRecord::AttributeAppreciation::Validations

require File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'active_record_validation_extension')