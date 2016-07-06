require('rspec')
require('tamagotchi')


describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(500))
      expect(my_pet.sleep_level()).to(eq(500))
      expect(my_pet.activity_level()).to(eq(500))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive?()).to(eq(true))
    end
  end

  describe("#feed") do
    it("adds 1 to food level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.feed()).to(eq(520))
    end
  end

  describe("#nap") do
    it("adds 1 to sleep level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.nap()).to(eq(520))
    end
  end

  describe("#exercise") do
    it("adds 1 to activity level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.excercise()).to(eq(520))
    end
  end

  # it("is dead if the food level is 0") do
  #     my_pet = Tamagotchi.new("lil dragon")
  #     my_pet.set_food_level()
  #     expect(my_pet.is_alive?()).to(eq(false))
  #   end


    describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes(1)  #decide what trigger you will use to make time pass
      expect(my_pet.food_level()).to(eq(498))
    end
  end
end
