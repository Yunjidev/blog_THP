# app/controllers/users_controller.rb

class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @articles = @user.articles
  end

  def update_article_privacy
    @article = current_user.articles.find(params[:article_id])
    @article.update(private: params[:private])

    redirect_to user_path(current_user), notice: "La confidentialité de l'article a été mise à jour avec succès."
  end
end
