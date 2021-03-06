class Response < ActiveRecord::Base
  has_many :talks, through: :talk_responses
  has_many :talk_responses

  accepts_nested_attributes_for :talk_responses

  def address
    [city, state].select(&:present?).compact.join(", ")
  end
end
