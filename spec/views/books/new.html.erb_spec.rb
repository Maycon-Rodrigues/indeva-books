require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :code => "MyString",
      :title => "MyString",
      :author => "MyString",
      :publisher => "MyString",
      :lend => false
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[code]"

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "input[name=?]", "book[publisher]"

      assert_select "input[name=?]", "book[lend]"
    end
  end
end
