class TalkResponse < ActiveRecord::Base
  belongs_to :response
  belongs_to :talk

  delegate :speaker, :title, to: :talk
end
