class Empleado < ApplicationRecord
  belongs_to :sucursal
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :rfc, presence: true, length: { minimum: 12, maximum: 13},
                    uniqueness: { case_sensitive: false}
  validates :sucursal_id, presence: true
end
