class GenresController < ApplicationController
    def show
        @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_param)
        redirect_to genre_path(@genre)
    end

    def edit
        show
    end

    def update
        edit
        @genre.update(genre_param)
        redirect_to genre_path(@genre)
    end

    private

    def genre_param
        params.require(:genre).permit(:name)
    end
end
