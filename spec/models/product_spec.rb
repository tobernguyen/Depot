require 'spec_helper'

describe Product do
  it "should not have empty attributes" do
    expect(Product.new).to_not be_valid
  end
  it "should have a positive price" do
    product = Product.new(title:       "My Book Title",
                          description: "yyy",
                          image_url:   "zzz.jpg")
    product.price = -1
    expect(product).to_not be_valid
    expect(product.errors[:price]).to eq ["must be greater than or equal to 0.01"]
  end
end