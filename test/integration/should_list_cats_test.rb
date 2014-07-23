require 'test_helper'

class ShouldListCatsTest < ActionDispatch::IntegrationTest

  def test_homepage_lists_cats

    Cat.create! name: "wolf", gender: "male", color: "white", remote_photo_url: "http://placekitten.com/g/200/300"
    Cat.create! name: "lion", gender: "female", color: "gold", remote_photo_url: "http://placekitten.com/g/200/300"


    visit root_path

    within ".media-list" do
      Cat.all.each do |cat|
        assert page.has_css? "li##{cat.name}"
      end
    end

  end

end
