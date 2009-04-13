require 'test_helper'

class Dog < ActiveRecord::Base
  validates_presence_of :name
end
class Cat < ActiveRecord::Base
  validates_presence_of :calling, :cranky
end
class Bird < ActiveRecord::Base; end

class ValidationsTest < ActiveSupport::TestCase
  
  def setup
    ActiveRecord::Base.establish_connection :adapter => :nulldb, :schema  => 'test_schema.rb'
  end
    
  test 'can see if attribute is required on instance' do
    assert Dog.new.is_required?(:name)
    assert_equal false, Dog.new.is_required?(:age)
  end
  
  test 'can see if attribute is required on class' do
    assert Dog.is_required?(:name)
    assert_equal false, Dog.is_required?(:age)
  end
  
  test 'can handle multiple declartions of validates_presence_of' do
    assert Cat.is_required?(:calling)
    assert Cat.is_required?(:cranky)
  end
  
  test 'gets false when validates_presence_of not defined on class' do
    assert_equal false, Bird.is_required?(:cranky)
  end
  
end