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
        options[:foreign_key] ||= "#{attr_name.to_s.singularize}_id"
        @model.class_eval do
          define_method(attr_name) do
           options[:class_name].constantize.where(options[:foreign_key] => self.id)
          end
        end
      end

      def has_one(attr_name, options = {})
        options[:class_name] ||= attr_name.to_s.camelize
        options[:foreign_key] ||= "#{self.class.to_s.underscore}_id"
        options[:primary_key] ||= "id"
        @model.class_eval do
          define_method(attr_name) do
           options[:class_name].constantize.where(options[:foreign_key] => self.send(options[:primary_key])).try(:first)
          end

          define_method "create_#{attr_name}" do |attr_options = {}|
            attr_options.merge!(options[:foreign_key] => self.send(options[:primary_key]))
            options[:class_name].constantize.create(attr_options)
          end

          define_method "build_#{attr_name}" do |attr_options = {}|
            attr_options.merge!(options[:foreign_key] => self.send(options[:primary_key]))
            options[:class_name].constantize.new(attr_options)
          end
        end
      end

      def belongs_to(attr_name, options={})
        options[:class_name] ||= attr_name.to_s.camelize
        options[:foreign_key] ||= "#{options[:class_name].underscore}_id"
        @model.class_eval do
          define_method(attr_name) do
           result = options[:class_name].constantize.where("id" => self.send(options[:foreign_key]))
           result.first
          end
        end
      end
    end
  end
end
