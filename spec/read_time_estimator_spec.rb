require "read_time_estimator"
require 'rspec'

describe "ReadTimeEstimator" do
  describe "minutes_to_read" do
    it "should output an amount of time given the length of a word" do
      text = "word " * 250
      expect(text.minutes_to_read).to eql 1.0
    end
  end

  describe "read_time" do
    it "returns the reading time in phrase form when there is an even number of minutes" do
      text = "word " * 500
      expect(text.read_time).to eql "2 minutes to read"
    end

    it "returns the reading time in phrase form when there are seconds" do
      text = "word" * 625
      expect(text.read_time).to eql "2 minutes and 30 seconds"
    end
  end
end
