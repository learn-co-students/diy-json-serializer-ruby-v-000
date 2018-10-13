require 'rails_helper'

describe 'navigate' do
  before do
    @post = Post.create(title: "My Post", description: "My post desc", author_id: "2")
  end

  it 'shows the title on the show page in a h1 tag' do
    visit post_path(@post)
    expect(page).to have_css("h1", text: "My Post")
  end
end

# describe 'form' do
#   it 'shows a new form that submits content and redirects and prints out params' do
#     visit new_post_path
#
#     fill_in 'title', with: "My post title"
#     fill_in 'description', with: "My post description"
#
#     click_on "Submit Post"
#
#     expect(page).to have_content("My post title")
#   end
#
#   it 'shows a new form that submits content and redirects and prints out params' do
#     @post = Post.create(title: "My Post", description: "My post desc")
#
#     visit edit_post_path(@post)
#
#     fill_in 'post[title]', with: "My edit"
#     fill_in 'post[description]', with: "My post description"
#
#     click_on "Update Post"
#
#     expect(page).to have_content("My edit")
#   end
# end
