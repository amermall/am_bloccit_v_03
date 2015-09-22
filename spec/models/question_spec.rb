require 'rails_helper'

RSpec.describe Question, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: "The Question Resolution")}

  describe "attributes" do

    #Test whether Question has an attribute named title.
    it "should respond to title" do
      expect(question).to respond_to(:title)
    end

    #Test whether Question has an attribute named body.
    it "should respond to body" do
      expect(question).to respond_to(:body)
    end

    #Test whether Question has an attribute named resolved.
    it "should respond to resolved" do
      expect(question).to respond_to(:resolved)
    end

  end




end
