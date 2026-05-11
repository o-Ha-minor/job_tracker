require "test_helper"

class JobApplicationTest < ActiveSupport::TestCase
  test "valid fixture" do
    assert job_applications(:one).valid?
  end
  test "company_name is required" do
    job_application = job_applications(:one)

    assert_not job_application.valid?
  end

  test "interest_level must be included in levels" do
    job_application = job_applications(:one)

    job_application.interest_level = 6

    assert_not job_application.valid?
  end

  test "first_interview_on must be after applied_on" do
    job_application = job_applications(:one)

    job_application.applied_on = Date.new(2026, 5, 10)

    job_application.first_interview_on = Date.new(2026, 5, 1)

    assert_not job_application.valid?
  end
end
