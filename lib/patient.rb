class Patient
  @@all = []
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def self.all
    @@all
  end
end
