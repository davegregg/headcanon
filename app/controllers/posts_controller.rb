class PostsController < ApplicationController

  def index
    @post = Post.order(created_at: :desc)
                .first
  end

  def show
    @post = Post.friendly.find(request_args[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(summary: scrub_html(restrictively: auto_summary),
                    title: request_args[:title],
                    body:  scrub_html(permissively: request_args[:body]),
                    slug:  auto_slug,
                    user:  User.find(request_args[:user_id]))
    # post.save ? render(json: post) : render(error_up(post))
    post.save ? redirect_to("/posts/#{post.slug}") : render(error_up(post))
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
    # .require(:post)
    params.permit(:id,
                  :slug,
                  :title,
                  :body,
                  :summary,
                  :user_id)
  end

  def auto_summary
    generated_summary = -> { request_args[:body][0...255] }
    request_args[:summary].blank? ? generated_summary.call : request_args[:summary]
  end

  def auto_slug
    generated_slug = -> { request_args[:title].parameterize
                                              .downcase[0...255] }
    request_args[:slug].blank? ? generated_slug.call : request_args[:slug]
  end

end
