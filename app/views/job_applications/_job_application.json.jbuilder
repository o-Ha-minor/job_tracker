json.extract! job_application, :id, :company_name, :position, :tech_stack, :status, :interest_level, :applied_on, :first_interview_on, :second_interview_on, :final_interview_on, :offer_received_on, :offer_response_deadline, :concern, :questions, :memo, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
