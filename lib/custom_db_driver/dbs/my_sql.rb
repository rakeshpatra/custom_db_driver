module CustomDbDriver
  class MySql < CustomDbDriver::Base
    class << self
      # attr_accessor :model
      # def create_asscociation(model, block)
      #   @model = model
      #   class_eval(&block)
      # end


      # def belongs_to(attr_name)
      #   # serialize attr_name
      #   @model.class_eval do
      #     define_method(attr_name) do
      #       # if attributes.keys.include?(attr_name.to_s) && send("#{attr_name}").nil?
              
      #       # end
      #       puts 'Custom Associtaion'
      #     end
      #   end
      # end
    end
  end
end

