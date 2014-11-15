class Insert2014Talks < ActiveRecord::Migration
  def change
    talks = [
      ["Aaron Quint",	"The Future of Ruby Performance Testing"],
      ["Lisa Larson-Kelly",	"Rail-time Communication with WebRTC"],
      ["Mike Bernstein",	"Know Your Types .."],
      ["Andrew Turley",	"What We Can Learn From COBOL"],
      ["Andrew Troutt",	"Teaching Kids to Code on Raspberry Pi"],
      ["Solomon Kahn",	"BI Tooling With Rails"],
      ["Chris Hunt",	"Secrets of a World Memory Champion"],
      ["Luke Melia",	"Growing a Tech Community"],
      ["Nathan Artz",	"Developing and Testing Third Party Javascript Widgets"],
      ["S. John & J. Brennan",	"Designin a Better Programmer Community"],
      ["Michael May",	"Edge Caching for Dynamic Rails Apps"],
      ["James Golick",	"How to Debug Anything"],
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
