defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

    def to_milliliter(volume_pair) when :cup == elem(volume_pair, 0) do
      {:milliliter, get_volume(volume_pair)*240}
    end

    def to_milliliter(volume_pair) when :fluid_ounce == elem(volume_pair, 0) do
      {:milliliter, get_volume(volume_pair)*30}
    end

    def to_milliliter(volume_pair) when :teaspoon == elem(volume_pair, 0) do
      {:milliliter, get_volume(volume_pair)*5}
    end

    def to_milliliter(volume_pair) when :tablespoon == elem(volume_pair, 0) do
      {:milliliter, get_volume(volume_pair)*15}
    end
    
    def to_milliliter(volume_pair) when :milliliter == elem(volume_pair, 0) do
      {:milliliter, get_volume(volume_pair)}
    end


    def from_milliliter(volume_pair, :cup) do
      {:cup, get_volume(volume_pair)/240}
    end

    def from_milliliter(volume_pair, :fluid_ounce) do
      {:fluid_ounce, get_volume(volume_pair)/30}
    end

    def from_milliliter(volume_pair, :teaspoon) do
      {:teaspoon, get_volume(volume_pair)/5}
    end

    def from_milliliter(volume_pair, :tablespoon) do
      {:tablespoon, get_volume(volume_pair)/15}
    end

    def from_milliliter(volume_pair, :milliliter) do
      {:milliliter, get_volume(volume_pair)}
    end


  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
