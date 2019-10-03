# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cluster_names = [
  "Aeronáutica",
  "Agronegocios",
  "Automotriz",
  "Biotecnología",
  "Electrodomésticos",
  "Energía",
  "Herramental",
  "Multimedia e industrias creativas",
  "Nanotecnología",
  "Servicios médicos",
  "TI y Software",
  "Turismo",
  "Vivienda sustentable"]

industry_names = [
  "Aeronáutica y Aeroespacial",
  "Farmacéutica",
  "Equipo de Cómputo, Administración y Oficina",
  "Equipos de Radio, TV y Comunicaciones",
  "Instrumentos Médicos, de precisión y Ópticos",
  "Aparatos y Maquinaria Eléctrica",
  "Automotriz",
  "Química excluyendo farmacéutica",
  "Equipo Ferroviario y de transportación",
  "Maquinaria y Equipo",
  "Construcción y reparación de buques y barcos",
  "Manufactura y reciclaje",
  "Productos de caucho y plástico",
  "Madera, pasta, papel, productos de papel, imprentas y editoriales",
  "Coque, productos de la refinación del petróleo y combustible nuclear",
  "Alimentos, bebidas y tabaco",
  "Otros productos minerales y no metálicos",
  "Textiles, productos textiles, cuero y calzado",
  "Metales básicos y productos metálicos"]

cluster_names.each do |name|
  Cluster.create(name: name)
end

industry_names.each do |name|
  Industry.create(name: name)
end
