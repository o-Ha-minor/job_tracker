class JobApplication < ApplicationRecord
  STATUSES = [
    "応募中",
    "一次面接",
    "二次面接",
    "最終面接",
    "内定受領",
    "内定辞退",
    "不採用"
  ].freeze

  LEVELS = (1..5).to_a.freeze

  validates :company_name, presence: true
  validates :company_name, length: { maximum: 50 }
  validates :position, presence: true
  validates :position, lenghe: { maximum: 50 }
  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :interest_level, presence: true, inclusion: { in: LEVELS }
  validates :tech_stack, length: { maximum: 50 }
  validates :concern, :questions, :memo, length: { maximum: 1000 }
  validate :first_interview_on_after_applied_on

  private

  def first_interview_on_after_applied_on
    return if applied_on.blank? || first_interview_on.blank?
    return if first_interview_on >= applied_on

    errors.add(:first_interview_on, "は応募日移行の日付を入力してください")
  end
end
