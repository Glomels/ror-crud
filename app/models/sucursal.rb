class Sucursal < ApplicationRecord
  has_many :empleados
  validates :nombre, presence: true
  validates :numero_interior, numericality: { only_integer: true }, :allow_nil => true
  validates :numero_exterior, numericality: { only_integer: true }, :allow_nil => true
  validates :codigo_postal, numericality: { only_integer: true }, :allow_nil => true
end
