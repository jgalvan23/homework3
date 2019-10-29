require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "creating a Appointment" do
    visit appointments_url
    click_on "New Appointment"

    fill_in "Day", with: @appointment.day
    fill_in "Hour", with: @appointment.hour
    fill_in "Minute", with: @appointment.minute
    fill_in "Month", with: @appointment.month
    fill_in "Patient", with: @appointment.patient_id
    fill_in "Physician", with: @appointment.physician_id
    fill_in "Year", with: @appointment.year
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "updating a Appointment" do
    visit appointments_url
    click_on "Edit", match: :first

    fill_in "Day", with: @appointment.day
    fill_in "Hour", with: @appointment.hour
    fill_in "Minute", with: @appointment.minute
    fill_in "Month", with: @appointment.month
    fill_in "Patient", with: @appointment.patient_id
    fill_in "Physician", with: @appointment.physician_id
    fill_in "Year", with: @appointment.year
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointment" do
    visit appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointment was successfully destroyed"
  end
end
