require 'rails_helper'

describe 'the add a question path', js: true  do
  it 'creates a question' do
    visit questions_path
    click_on 'Add a question'
    fill_in 'Name', :with => 'Matt'
    fill_in "Content", :with => "what is the difference?"
    click_on 'Create Question'
    expect(page).to have_content "what is the difference?"
  end
  it 'does not create a new question if the form is blank' do
    visit questions_path
    click_on 'Add a question'
    fill_in 'Name', :with => ''
    fill_in "Content", :with => ""
    click_on 'Create Question'
    expect(page).to have_content "Name"
  end
end
