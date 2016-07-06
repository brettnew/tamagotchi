class Tamagotchi
  @@last_active = nil
  define_method(:initialize) do |my_pet_name|
    @my_pet_name=my_pet_name
    @food_level = 500
    @sleep_level = 500
    @activity_level = 500
    @origin_time = Time.new
  end

  define_method(:name) do
    @my_pet_name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:is_alive?) do
    (@food_level > 0) && (@sleep_level > 0) && (@activity_level > 0)
  end

  define_method(:feed) do
    @food_level += 20
  end

  define_method(:nap) do
    @sleep_level += 20
  end

  define_method(:excercise) do
    @activity_level += 20
  end

  define_singleton_method(:set_last_active) do
    @@last_active = Time.now.to_i
  end

  define_singleton_method(:time_interval) do
      now = Time.now.to_i
      (now - @@last_active) / 60
  end

  define_method(:time_passes) do |interval|
    @food_level -= (2 * interval).ceil()
    @sleep_level -= (1 *interval).ceil()
    @activity_level -= (1 * interval).ceil()
  end
end
