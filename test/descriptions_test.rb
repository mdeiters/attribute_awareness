require 'test_helper'

class Dog < ActiveRecord::Base
  validates_presence_of :name
  describe_attributes :name => 'The dogs name, usually Fido'
end
class Cat < ActiveRecord::Base; end

class DescriptionsTest < ActiveSupport::TestCase
  
  def setup
    ActiveRecord::Base.establish_connection :adapter => :nulldb, :schema  => 'test_schema.rb'
  end
  
  test "the can get description of column on class" do
    assert_equal 'The dogs name, usually Fido', Dog.description_for(:name)
  end
  
  test "the can get description of column on instance" do
    assert_equal 'The dogs name, usually Fido', Dog.new.description_for(:name)
  end
  
  test 'no descriptions are returned when not defined on class' do
    assert_nil Cat.description_for(:name)
  end
  
end