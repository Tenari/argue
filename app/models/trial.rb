class Trial < ActiveRecord::Base
  has_one :argument, as: :parent
end
