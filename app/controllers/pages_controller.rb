class PagesController < ApplicationController
  def home
@lawyers = Lawyer.order(last_name: :asc)
@posts = Post.all
  end

  def competence
  end

  def lawyers

  end

  def news
  end

  def contact
  end

end
