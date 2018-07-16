# custom_db_driver
This gem solves a common problem when you try to write basic associations across multiple ORMs.

## Installation

In Bundler

```
gem 'custom_db_driver'
```

Otherwise

```
gem install custom_db_driver
```

## Configuration

just include the association module in your model in-order to use the association



For activerecord

```
class MySqlModel < ActiveRecord::Base
  CustomDbDriver::CustomAssociation

  to_mongo_db do
    has_many :mongo_data, class_name: 'MongoModel', foreign_key: "foreign_key_id"
  end
end
```


and For mongo

```
class MongoModel
  include Mongoid::Document
  include Mongoid::Timestamps

  include CustomDbDriver::CustomAssociation

  to_my_sql do
    belongs_to :my_sql_model
    has_one :other_my_sql_model
  end
end
```


## Note
Currently it only supports with only activerecord(mysql) and mongoid, we will add support for others in near future.
