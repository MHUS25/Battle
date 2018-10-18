class Player
  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= rand_points
  end

  private

  def rand_points
    [0, 10, 20, 20, 20, 50].sample
  end
end
