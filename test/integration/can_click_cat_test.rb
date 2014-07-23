require 'test_helper'

class CanClickCatTest < ActionDispatch::IntegrationTest

  def test_can_click_cat
    wolf = Cat.create! name: "wolf", gender: "male", color: "white", remote_photo_url: "http://placekitten.com/g/200/300"
    Cat.create! name: "lion", gender: "female", color: "gold", remote_photo_url: "http://placekitten.com/g/200/300"

    visit root_path
    click_on "wolf"

    within ".list-group" do
      assert page.has_content? "white"
      assert page.has_content? "male"
      assert page.has_content? "$150.00"
    end
  end
end
