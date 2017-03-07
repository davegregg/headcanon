class PostsController < ApplicationController

  def index
    render json {Post.all}
  end

  def create
    post = Post.new(title: request_args[:title],
                    body:  CGI.escapeHTML(request_args[:body]),
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
    #TODO strip special chars from slug
    params[:slug] ||= params[:title].truncate_words(7, separator:' ', omission:'_')
                                    .parameterize
                                    .downcase
    params[:body] = params[:body].gsub(';','--')
    params.permit(:title,
                  :body,
                  :slug)
  end

end
