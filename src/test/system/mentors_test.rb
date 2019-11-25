require "application_system_test_case"

class MentorsTest < ApplicationSystemTestCase
  setup do
    @mentor = mentors(:one)
  end

  test "visiting the index" do
    visit mentors_url
    assert_selector "h1", text: "Mentors"
  end

  test "creating a Mentor" do
    visit mentors_url
    click_on "New Mentor"

    fill_in "Bio", with: @mentor.bio
    fill_in "Collegename", with: @mentor.collegeName
    fill_in "Collegeyear", with: @mentor.collegeYear
    fill_in "Firstname", with: @mentor.firstName
    fill_in "Hourlywage", with: @mentor.hourlyWage
    fill_in "Lastname", with: @mentor.lastName
    fill_in "Major", with: @mentor.major
    fill_in "Resume", with: @mentor.resume
    click_on "Create Mentor"

    assert_text "Mentor was successfully created"
    click_on "Back"
  end

  test "updating a Mentor" do
    visit mentors_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @mentor.bio
    fill_in "Collegename", with: @mentor.collegeName
    fill_in "Collegeyear", with: @mentor.collegeYear
    fill_in "Firstname", with: @mentor.firstName
    fill_in "Hourlywage", with: @mentor.hourlyWage
    fill_in "Lastname", with: @mentor.lastName
    fill_in "Major", with: @mentor.major
    fill_in "Resume", with: @mentor.resume
    click_on "Update Mentor"

    assert_text "Mentor was successfully updated"
    click_on "Back"
  end

  test "destroying a Mentor" do
    visit mentors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mentor was successfully destroyed"
  end
end
