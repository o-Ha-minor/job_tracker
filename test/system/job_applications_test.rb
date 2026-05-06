require "application_system_test_case"

class JobApplicationsTest < ApplicationSystemTestCase
  setup do
    @job_application = job_applications(:one)
  end

  test "visiting the index" do
    visit job_applications_url
    assert_selector "h1", text: "応募状況"
  end

  test "should create job application" do
    visit job_applications_url
    click_on "新しい求人応募を作成"

    fill_in "応募日", with: @job_application.applied_on
    fill_in "会社名", with: @job_application.company_name
    fill_in "懸念事項", with: @job_application.concern
    fill_in "最終面接日", with: @job_application.final_interview_on
    fill_in "一次面接日", with: @job_application.first_interview_on
    select @job_application.interest_level.to_s, from: "興味レベル"
    fill_in "メモ", with: @job_application.memo
    fill_in "オファー受領日", with: @job_application.offer_received_on
    fill_in "オファー回答期限", with: @job_application.offer_response_deadline
    fill_in "ポジション", with: @job_application.position
    fill_in "質問", with: @job_application.questions
    fill_in "二次面接日", with: @job_application.second_interview_on
    select @job_application.status, from: "ステータス"
    fill_in "技術スタック", with: @job_application.tech_stack
    click_on "送信"

    assert_text "応募を作成しました。"
    click_on "一覧に戻る"
  end

  test "should update job application" do
    visit job_application_url(@job_application)
    click_on "編集", match: :first

    fill_in "応募日", with: @job_application.applied_on
    fill_in "会社名", with: @job_application.company_name
    fill_in "懸念事項", with: @job_application.concern
    fill_in "最終面接日", with: @job_application.final_interview_on
    fill_in "一次面接日", with: @job_application.first_interview_on
    select @job_application.interest_level.to_s, from: "興味レベル"
    fill_in "メモ", with: @job_application.memo
    fill_in "オファー受領日", with: @job_application.offer_received_on
    fill_in "オファー回答期限", with: @job_application.offer_response_deadline
    fill_in "ポジション", with: @job_application.position
    fill_in "質問", with: @job_application.questions
    fill_in "二次面接日", with: @job_application.second_interview_on
    select @job_application.status, from: "ステータス"
    fill_in "技術スタック", with: @job_application.tech_stack
    click_on "送信"

    assert_text "応募を更新しました。"
    click_on "一覧に戻る"
  end

  test "should destroy job application" do
    visit job_application_url(@job_application)
    click_on "削除", match: :first

    assert_text "応募を削除しました。"
  end
end
