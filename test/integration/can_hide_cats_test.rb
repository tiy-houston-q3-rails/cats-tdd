require 'test_helper'

class CanHideCatsTest < ActionDispatch::IntegrationTest

  def test_can_hide_cats
    Capybara.current_driver = :poltergeist
    Capybara.javascript_driver = :poltergeist

    Cat.create! name: "wolf", gender: "male", color: "white", remote_photo_url: "http://placekitten.com/g/200/300"
    Cat.create! name: "lion", gender: "female", color: "gold", remote_photo_url: "http://placekitten.com/g/200/300"

    visit root_path

    click_button "Hide All Cats"


    Cat.all.each do |cat|
      assert_equal false, find("li##{cat.name}", visible: false).visible?
    end
  end
end
