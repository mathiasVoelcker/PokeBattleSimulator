class TypeAdvantage < ApplicationRecord
  belongs_to :attacking_type, foreign_key: :attacking_type_id, :class_name => "Type"
  belongs_to :defending_type, foreign_key: :defending_type_id, :class_name => "Type"
end
