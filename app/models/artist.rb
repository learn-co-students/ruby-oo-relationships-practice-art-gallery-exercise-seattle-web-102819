class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    self.paintings.map {|painting| painting.gallery.city}.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def avg_paintings_per_year
    num_of_paintings = Painting.all.select {|painting| painting.artist == self}.length.to_f
    num_of_years = self.years_experience.to_f
    num_of_paintings / num_of_years
  end

  def self.all
    @@all
  end

  def self.total_experience
    @@all.map {|artist| artist.years_experience}.sum
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.avg_paintings_per_year}
  end

end
