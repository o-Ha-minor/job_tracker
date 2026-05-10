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
  validates :position, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :interest_level, presence: true, inclusion: { in: LEVELS }
end
