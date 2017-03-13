class PostsController < ApplicationController

  def index
    @post = Post.order(created_at: :desc)
                .first
  end

  def show
    @post = Post.friendly.find(request_args[:id])
  end

  def create
    params[:slug] ||= params[:title].parameterize
                                    .downcase[0...255]
    # TODO: sanitize 'summary', with stylistic HTML tags only
    white_list_sanitizer = Rails::Html::WhiteListSanitizer.new
    post = Post.new(summary: request_args[:title],
                    title: request_args[:title],
                    body:  white_list_sanitizer.sanitize(request_args[:body]),
                    slug:  request_args[:slug])
    post.save ? render(json: post) : render(error_up(post))
  end

  def update
    post = Post.find_by(slug: request_args[:slug])
    if post.update(title: request_args[:title],
                   body:  request_args[:body],
                   slug:  request_args[:slug])
      render(json: post)
    else
      render(error_up(post))
    end
  end

  private

  def request_args
    params.permit(:id,
                  :slug,
                  :title,
                  :body)
  end

end
