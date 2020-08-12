json.extract! pokemon, :id, :name, :hp, :atk, :dfc, :sat, :sdf, :spd, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
