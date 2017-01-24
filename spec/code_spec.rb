require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

 RSpec.describe "average" do
   it "returns 89 when given [100, 70, 85, 97, 93]" do
     expect(average([100, 70, 85, 97, 93])).to eq(89)
   end
 end

 RSpec.describe "rankings" do
   it "creates a list of students with their index and name" do
     expect(rankings(["Chewy", "Luke", "Darth Sidius"])).to eq ("1. Chewy\n2. Luke\n3. Darth Sidius\n")
   end
 end

RSpec.describe "greet" do
  context "Student lists the language spanish, italian, or french with their name" do
    it "greets the student in spanish" do
      expect(greet("Jorge", "spanish")).to eq("Hola Jorge!")
    end
    it "greets the student in italian" do
      expect(greet("Luigi", "italian")).to eq("Ciao Luigi!")
    end
    it "greets the student in french" do
      expect(greet("Guiles", "french")).to eq("Bonjour Guiles!")
    end
  end
  context "Student doesn't list a language, or lists a different language (like english)" do
    it "greets the student in English if another language is selected" do
      expect(greet("Duy", "vietnamese")).to eq("Hi Duy!")
    end
    it "greets the student in English if no language is provided" do
      expect(greet("Dan")).to eq("Hi Dan!")
    end
  end
end

RSpec.describe "create_puzzle" do
  context "We guess the word 'puppy'" do
    it "returns 'p _ p p _' if the guess is ['a', 'p', 'n']" do
      expect(create_puzzle("puppy", ['a', 'p', 'n'])).to eq("p _ p p _")
    end
    it "returns '_ _ _ _ _' if the guess is []" do
      expect(create_puzzle("puppy", [])).to eq("_ _ _ _ _")
    end
    it "returns 'p u p p y' if the guess is ['u', 'p', 'y']" do
      expect(create_puzzle("puppy",['u', 'p', 'y'])).to eq("p u p p y")
    end
  end
end

RSpec.describe "divisible_by_three" do
  it "returns 'false' when given '4'" do
    expect(divisible_by_three(4)).to eq(false)
  end
  it "returns 'true' when give '9'" do
    expect(divisible_by_three(9)).to eq(true)
  end
end

RSpec.describe "perfect_square?" do
  context "user inputs an invalid number that is less than 1" do
    it "gives an error when given -1" do
      expect{ perfect_square?(-1) }.to raise_error(ArgumentError)
    end
  end
  context "user inputs a valid number" do
    it "user puts '4' return 'true'" do
      expect(perfect_square?(4)).to eq(true)
    end
    it "user puts '7' return 'false'" do
      expect(perfect_square?(7)).to eq(false)
    end
  end
end
