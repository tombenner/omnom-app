class TechFeed < Omnom::Feed
  sources do
    feed url: 'http://daringfireball.net/index.xml'
    hacker_news(filter: Proc.new { |post| post.comments_count.present? && post.comments_count >= 10 })
    reddit(
      subreddit: 'r/programming',
      filter: Proc.new { |post| post.other.present? && post.other[:likes_count] >= 40 }
    )
    slashdot
    techcrunch
  end
end