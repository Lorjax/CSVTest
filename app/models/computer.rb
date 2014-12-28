class Computer < ActiveRecord::Base
  belongs_to :room
  validates :name, presence: true
  validates :hersteller, presence: true
  validates :mainboard, presence: true
  validates :cpu, presence: true
  validates :ram, presence: true
  validates :bios, presence: true
  validates :lan, presence: true
  validates :macadresse, presence: true
  validates :grafikkarte, presence: true
  validates :os, presence: true
  validates :room, presence: true

def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    hash = row.to_hash
    nr = hash["name"]
    hash["room"] = Room.where("nummer = ?", nr[0,3]).first
    Computer.create(hash)
  end
end


end
