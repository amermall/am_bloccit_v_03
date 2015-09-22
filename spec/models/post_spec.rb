require 'rails_helper'

RSpec.describe Post, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
#1
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }

  describe "attributes" do

#2 we test whether post has an attribute named title.
    it "should respond to title" do
      expect(post).to respond_to(:title)
    end
#3 we test whether post has an attribute named body.
    it "should respond to body" do
      expect(post).to respond_to(:body)
    end

  end

end