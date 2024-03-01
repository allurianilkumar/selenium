# spec/models/book_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  # Test validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:published_year) }

  # Test the actual model behavior
  describe "create a book" do
    it "creates a book with valid attributes" do
      book = Book.new(
        title: "Sample Book",
        author: "John Doe",
        published_year: 2022
      )
      expect(book).to be_valid
    end

    it "requires a title to be valid" do
      book = Book.new(author: "John Doe", published_year: 2022)
      expect(book).to_not be_valid
    end

    it "requires an author to be valid" do
      book = Book.new(title: "Sample Book", published_year: 2022)
      expect(book).to_not be_valid
    end

    it "requires a published year to be valid" do
      book = Book.new(title: "Sample Book", author: "John Doe")
      expect(book).to_not be_valid
    end
  end
end
