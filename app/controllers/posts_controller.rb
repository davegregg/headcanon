class PostsController < ApplicationController

  def index
    @post = Post.order(created_at: :desc)
                .first
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def edit
    @post = Post.friendly.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(summary: scrub_html(restrictively: auto_summary),
                    title: params[:post][:title],
                    body:  scrub_html(permissively: params[:post][:body]),
                    slug:  auto_slug,
                    user:  User.find(params[:post][:user_id]))
    # post.save ? render(json: post) : render(error_up(post))
    post.save ? redirect_to("/posts/#{post.slug}") : render(error_up(post))
  end

  def update
    post = Post.find_by(slug: params[:post][:slug])
    if post.update(title: params[:post][:title],
                   body:  params[:post][:body],
                   slug:  params[:post][:slug])
      render(json: post)
    else
      render(error_up(post))
    end
  end

  private

  def sanitized_args
    params.require(:post).permit(:id,
                         :slug,
                         :title,
                         :body,
                         :summary,
                         :user_id)
  end

  def auto_summary
    generated_summary = -> { params[:post][:body][0...255] }
    params[:post][:summary].blank? ? generated_summary.call : params[:post][:summary]
  end

  def auto_slug
    generated_slug = -> { params[:post][:title].parameterize
                                              .downcase[0...255] }
    params[:post][:slug].blank? ? generated_slug.call : params[:post][:slug]
  end

end
