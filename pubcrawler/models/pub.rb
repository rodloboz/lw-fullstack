# create_table "pubs", force: :cascade do |t|
#     t.string "name"
#     t.string "address"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.float "latitude"
#     t.float "longitude"
#     t.text "description"
#     t.string "photo"
#     t.string "district"
# end

class Pub < ApplicationRecord
  DISTRICTS = [
    "Alcântara",
    "Alfama",
    "Avenida da Liberdade",
    "Avenidas Novas",
    "Bairro Alto",
    "Baixa",
    "Belém",
    "Cais do Sodré",
    "Campo de Ourique",
    "Castelo",
    "Chiado",
    "Mouraria",
    "Parque das Nações",
    "Príncipe Real",
    "Santos"
  ]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
end
