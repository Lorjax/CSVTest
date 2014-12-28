json.array!(@computers) do |computer|
  json.extract! computer, :id, :name, :hersteller, :mainboard, :cpu, :ram, :bios, :lan, :macadresse, :grafikkarte, :os, :room_id
  json.url computer_url(computer, format: :json)
end
