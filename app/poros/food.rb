class Food
  attr_reader :fdcId, :description, :dataType, :gtinUpc, :publishedDate, :brandOwner, :ingredients, :foodNutrients, :allHighlightFields, :score
  def initialize(data)
    @fdcId = data[:fdcId],
    @description = data[:description],
    @dataType = data[:dataType],
    @gtinUpc = data[:gtinUpc],
    @publishedDate = data[:publishedDate],
    @brandOwner = data[:brandOwner],
    @ingredients = data[:ingredients],
    @foodNutrients = data[:foodNutrients],
    @allHighlightFields = data[:allHighlightFields],
    @score = data[:score]
  end
end