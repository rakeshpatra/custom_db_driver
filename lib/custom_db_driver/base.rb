module CustomDbDriver
  class Base
    class << self
      attr_accessor :model
      
      def create_asscociation(model, block)
        @model = model
        class_eval(&block)
      end

      def has_many(attr_name, options = {})
        options[:class_name] ||= attr_name.to_s.singularize.camelize
        @model.class_eval do
          define_method(attr_name) do
           options[:class_name].constantize.where("#{self.class.to_s.underscore}_id" => self.id)
          end
        end
      end

      def belongs_to(attr_name, options={})
        options[:class_name] ||= attr_name.to_s.camelize
        @model.class_eval do
          define_method(attr_name) do
           result = options[:class_name].constantize.where("id" => self.send("#{options[:class_name].underscore}_id"))
           result.first
          end
        end
      end
    end
  end
end