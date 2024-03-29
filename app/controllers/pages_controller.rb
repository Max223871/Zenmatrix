class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @posts = Post.order(created_at: :desc).limit(8)
    @news_articles = Post.where(category: Category.find_by(name: 'Articles')).order(created_at: :desc).limit(5)
  end

  def about
  end

  def terms
  end

  def privacy_policy
  end

  def horoscope
  end
end
