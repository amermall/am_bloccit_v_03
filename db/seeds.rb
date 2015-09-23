include RandomData

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

# Add a post with a unique title and body to seeds.rb.
# Before creating a unique post, check whether it already exists in the database.
# Only seed the post if it doesn't already exist.
# Use the find_or_create_by method.
Post.find_or_create_by(title: 'unique title', body: 'unique body')

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
