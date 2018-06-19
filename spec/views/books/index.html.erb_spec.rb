require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :code => "Code",
        :title => "Title",
        :author => "Author",
        :publisher => "Publisher",
        :lend => false
      ),
      Book.create!(
        :code => "Code",
        :title => "Title",
        :author => "Author",
        :publisher => "Publisher",
        :lend => false
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
