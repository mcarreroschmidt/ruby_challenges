class Blog
    @@post_count = 0
    @@blog_title = ""
    @@author = ""
    @@blog_posts = []
    
    def initialize
        if(@@blog_title == "")
            puts "Give this blog a title:"
            @@blog_title = gets.to_s.chomp
        end
        if(@@author == "")
            puts "Who to credit for this blog:"
            @@author = gets.to_s.chomp
        end
    end

    def self.add_post(this_post)
        @@blog_posts << this_post
        @@post_count += 1
    end

    def self.publish
        puts "\n\n======================\n#{@@blog_title.upcase} by #{@@author}\n======================\n"
        @@blog_posts.each do |post|
            puts "\n#{post.title}\n#{post.publish_date}\n#{post.content}\n------------------\n"
        end
    end
    
    def self.all
        @@blog_posts
    end
    
end

class BlogPost < Blog
    
    
    
    # Setters and getters
    def title=(title); @title = title; end
    def title; @title; end

    def content=(content); @content = content; end
    def content; @content; end
    
    def publish_date=(publish_date); @publish_date = publish_date; end
    def publish_date; @publish_date; end

   	def self.create
		post = new
        puts "Title your post:"
        post.title = gets.to_s.chomp
        puts "Enter your post content:"
        post.content = gets.to_s.chomp
        post.publish_date = Time.new.strftime("%m/%d/%Y %I:%M%p")

 		post.save
		puts "Another post? [Y/N]"
		create if gets.chomp.downcase == 'y'
	end
    
    def save
        BlogPost.add_post(self)
    end
end

BlogPost.create
all_blog_posts = BlogPost.all
#puts all_blog_posts.inspect
BlogPost.publish