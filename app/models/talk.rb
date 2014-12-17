class Talk < ActiveRecord::Base
  has_many :responses, through: :talk_responses
  has_many :talk_responses

  def scores
    @scores ||= talk_responses.collect(&:score).select(&:present?).collect(&:to_i)
  end

  def min
    scores.min
  end

  def avg
    scores.inject(0) { |sum, score| sum += score }.to_f / scores.length
  end

  def max
    scores.max
  end

  def comments
    talk_responses.collect(&:comment).select(&:present?)
  end
end
