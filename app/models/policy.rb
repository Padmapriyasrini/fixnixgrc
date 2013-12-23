class Policy < ActiveRecord::Base
  attr_accessible :Policy_name, :Policy_objective, :Policy_reference, :Policy_scope, :attach
  has_attached_file :attach
end
