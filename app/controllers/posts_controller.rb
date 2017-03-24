class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :show, :share]

  def index
    @posts = Post.all
  end

  def show; end

  def edit; end

  def share
    if params[share][:email].blank?
      flash[:warning] = 'Yo dog, give me an email address so I know where to send this post.'
      render :share
    else
      UserMailer.share(@post, params[share][:email]).deliver
      flash[:success] = 'You did great!'
      redirect_to @post
    end
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(summary: scrub_html(restrictively: auto_summary),
                    title:   params[:post][:title],
                    body:    scrub_html(permissively: params[:post][:body]),
                    slug:    auto_slug,
                    user:    User.find(params[:post][:user_id]),
                    featured_image: params[:post][:featured_image],
                    remote_featured_image_url: params[:post][:remote_featured_image_url])
    post.save ? redirect_to("/posts/#{post.slug}") : render(error_up(post))
  end

  def update
    post = Post.find_by(slug: params[:post][:slug]) # TODO: Replace find_post
    if post.update(title: params[:post][:title],
                   body:  params[:post][:body],
                   slug:  params[:post][:slug])
      render(json: post)
    else
      render(error_up(post))
    end
  end

  private

  def find_post
    @post = Post.friendly.find(params[:id])
  end

  def sanitized_args
    params.require(:post).permit(:id,
                                 :slug,
                                 :title,
                                 :body,
                                 :summary,
                                 :user_id,
                                 :featured_image)
  end

  def auto_summary
    generated_summary = -> { params[:post][:body][0...255] }
    params[:post][:summary].blank? ? generated_summary.call : params[:post][:summary]
  end

  def auto_slug
    generated_slug = lambda do
      params[:post][:title].parameterize
                           .downcase[0...255]
    end
    params[:post][:slug].blank? ? generated_slug.call : params[:post][:slug]
  end

  # def adopt_image
  #   image = params[:post][:featured_image]
  #   prefix = 'http://res.cloudinary.com/dux9qimrr/image/fetch/'
  #   # String === image ? prefix + image : image
  #   if String === image
  #     image = FeaturedImageUploader.new.store!(prefix + image)
  #   else
  #     image
  #   end
  # end
end
