require "application_system_test_case"

class JobApplicationsTest < ApplicationSystemTestCase
  setup do
    @job_application = job_applications(:one)
  end

  test "visiting the index" do
    visit job_applications_url
    assert_selector "h1", text: "Job applications"
  end

  test "should create job application" do
    visit job_applications_url
    click_on "New job application"

    fill_in "Applied on", with: @job_application.applied_on
    fill_in "Company name", with: @job_application.company_name
    fill_in "Concern", with: @job_application.concern
    fill_in "Final interview on", with: @job_application.final_interview_on
    fill_in "First interview on", with: @job_application.first_interview_on
    fill_in "Interest level", with: @job_application.interest_level
    fill_in "Memo", with: @job_application.memo
    fill_in "Offer received on", with: @job_application.offer_received_on
    fill_in "Offer response deadline", with: @job_application.offer_response_deadline
    fill_in "Position", with: @job_application.position
    fill_in "Questions", with: @job_application.questions
    fill_in "Second interview on", with: @job_application.second_interview_on
    fill_in "Status", with: @job_application.status
    fill_in "Tech stack", with: @job_application.tech_stack
    click_on "Create Job application"

    assert_text "Job application was successfully created"
    click_on "Back"
  end

  test "should update Job application" do
    visit job_application_url(@job_application)
    click_on "Edit this job application", match: :first

    fill_in "Applied on", with: @job_application.applied_on
    fill_in "Company name", with: @job_application.company_name
    fill_in "Concern", with: @job_application.concern
    fill_in "Final interview on", with: @job_application.final_interview_on
    fill_in "First interview on", with: @job_application.first_interview_on
    fill_in "Interest level", with: @job_application.interest_level
    fill_in "Memo", with: @job_application.memo
    fill_in "Offer received on", with: @job_application.offer_received_on
    fill_in "Offer response deadline", with: @job_application.offer_response_deadline
    fill_in "Position", with: @job_application.position
    fill_in "Questions", with: @job_application.questions
    fill_in "Second interview on", with: @job_application.second_interview_on
    fill_in "Status", with: @job_application.status
    fill_in "Tech stack", with: @job_application.tech_stack
    click_on "Update Job application"

    assert_text "Job application was successfully updated"
    click_on "Back"
  end

  test "should destroy Job application" do
    visit job_application_url(@job_application)
    click_on "Destroy this job application", match: :first

    assert_text "Job application was successfully destroyed"
  end
end
