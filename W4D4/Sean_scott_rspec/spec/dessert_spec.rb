require 'rspec'
require 'dessert'
require 'chef'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Mason") }
  let(:cookie) {Dessert.new('cookie', 50, chef)}

  describe "#initialize" do
    it "sets a type"
      expect(cookie.type('cookie'))

    it "sets a quantity"
    expect(cookie.quantity).to eq(50)

    it "starts ingredients as an empty array"
    expect(cookie.ingredients).to be_empty

    it "raises an argument error when given a non-integer quantity"
    expect { Dessert.new("pizza", "tons", chef) }.to raise_error(ArguementError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      ingredient = desserts.ingredients[0]
      expect(ingredient).to be_a()
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
    expect(ingredients).to eq(ingredients.shuffle)
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
    expect(quantity).to eq(quantity - amount)

    it "raises an error if the amount is greater than the quantity"
      expect {quantity(amount > quantity)}.to raise_error(ArguementError)
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      chef = Chef.new("Mason")
    expect(chef.name).to eq("Hilbert's Grand Hotel")
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
