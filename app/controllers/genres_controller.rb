class GenresController < ApplicationController

  # GET: /genres
  get "/genres" do
    @genres = Genre.all
    erb :"/genres/index.html"
  end

  # GET: /genres/new
  get "/genres/new" do
    erb :"/genres/new.html"
  end

  # POST: /genres
  post "/genres" do
    redirect "/genres"
  end

  # GET: /genres/5
  get "/genres/:slug" do
    @genre = Genre.find_by_slug(params[:slug])
    erb :"/genres/show.html"
  end

  # GET: /genres/5/edit
  get "/genres/:slug/edit" do
    @genre = Genre.find_by_slug(params[:slug])
    erb :"/genres/edit.html"
  end

  # PATCH: /genres/5
  patch "/genres/:id" do
    redirect "/genres/:id"
  end

end
