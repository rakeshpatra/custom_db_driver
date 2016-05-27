module CustomDbDriver
  class MongoDb < CustomDbDriver::Base
    class << self
      # attr_accessor :model
      # def add_associations(assciation_type, assciation_model, model)
      #   @model = model
      #   send(assciation_type, assciation_model)
      # end

      # def has_many(attr_name)
      #   @model.class_eval do
      #     define_method(attr_name) do
      #       puts 'Custom Associtaion'
      #     end
      #   end
      # end
    end
  end
end

