class Talk < ActiveRecord::Base
  has_many :responses, through: :talk_responses
  has_many :talk_responses

  def scores
    @scores ||= talk_responses.collect(&:score).select(&:present?).collect(&:to_i)
  end

  def min
    scores.min
  end

  def sum
    scores.inject(0) { |accum, score| accum += score }
  end
  private :sum

  def mean
    sum.to_f / scores.length
  end

  def stddev
    m = mean
    sum = scores.inject(0) {|accum, score| accum +(score-m)**2 }
    sum/(scores.length - 1).to_f
  end

  def max
    scores.max
  end

  def comments
    talk_responses.collect(&:comment).select(&:present?)
  end
end
