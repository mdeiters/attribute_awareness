ActiveRecord::Validations::ClassMethods.class_eval do
  def validates_presence_of_with_awareness(*attrs)
    options = attrs.extract_options!
    presence_required << attrs
    validates_presence_of_without_awareness(attrs, options)
  end  
  def presence_required
    @presence_required ||= []
  end
  alias_method_chain :validates_presence_of, :awareness
end