require "test_helper"

class JobApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_application = job_applications(:one)
  end

  test "should get index" do
    get job_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_job_application_url
    assert_response :success
  end

  test "should create job_application" do
    assert_difference("JobApplication.count") do
      post job_applications_url, params: { job_application: { applied_on: @job_application.applied_on, company_name: @job_application.company_name, concern: @job_application.concern, final_interview_on: @job_application.final_interview_on, first_interview_on: @job_application.first_interview_on, interest_level: @job_application.interest_level, memo: @job_application.memo, offer_received_on: @job_application.offer_received_on, offer_response_deadline: @job_application.offer_response_deadline, position: @job_application.position, questions: @job_application.questions, second_interview_on: @job_application.second_interview_on, status: @job_application.status, tech_stack: @job_application.tech_stack } }
    end

    assert_redirected_to job_application_url(JobApplication.last)
  end

  test "should show job_application" do
    get job_application_url(@job_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_application_url(@job_application)
    assert_response :success
  end

  test "should update job_application" do
    patch job_application_url(@job_application), params: { job_application: { applied_on: @job_application.applied_on, company_name: @job_application.company_name, concern: @job_application.concern, final_interview_on: @job_application.final_interview_on, first_interview_on: @job_application.first_interview_on, interest_level: @job_application.interest_level, memo: @job_application.memo, offer_received_on: @job_application.offer_received_on, offer_response_deadline: @job_application.offer_response_deadline, position: @job_application.position, questions: @job_application.questions, second_interview_on: @job_application.second_interview_on, status: @job_application.status, tech_stack: @job_application.tech_stack } }
    assert_redirected_to job_application_url(@job_application)
  end

  test "should destroy job_application" do
    assert_difference("JobApplication.count", -1) do
      delete job_application_url(@job_application)
    end

    assert_redirected_to job_applications_url
  end
end
