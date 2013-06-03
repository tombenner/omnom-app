class PhotosFeed < Omnom::Feed
  sources do
    reddit__images subreddit: 'r/pics'
    xkcd
  end

  filter do |post|
    post.other.present? && post.other[:images].present?
  end

  template :images
end