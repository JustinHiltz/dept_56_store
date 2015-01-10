require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:item_number].any?
    assert product.errors[:name].any?
    assert product.errors[:price].any?
  end

  test "product price must be positive" do
    product = Product.new(item_number: "My Book Title",
                          name:        "yyy",
                          collection:  1)
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], 
      product.errors[:price]

    product.price = 1
    assert product.valid?
  end
end
