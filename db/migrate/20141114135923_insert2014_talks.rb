class Insert2014Talks < ActiveRecord::Migration
  def change
    talks = [
      ["Aaron Quint",	"The Future of Ruby Performance Testing"],
      ["Foo",	"Foo bar"],
      ["Bazz",	"Bazz Wut"],
      ["Quux",	"Quux Bunny"],
    ]

    Talk.transaction do
      talks.each do |talk|
        puts "inserting: #{talk.inspect}"
        speaker, title = *talk
        Talk.new(speaker: speaker, title: title).save!
      end
    end
  end
end
