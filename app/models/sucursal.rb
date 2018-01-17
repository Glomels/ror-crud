class Sucursal < ApplicationRecord
  has_many :empleados
  validates :nombre, presence: true
end
