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
    post = Post.new(summary: scrub_html(restrictively: request_args[:summary]),
                    title: request_args[:title],
                    body:  scrub_html(permissively: request_args[:body]),
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
