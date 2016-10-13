class CharactersController < ApplicationController

def index
  @characters = Character.all
end

def new
  @character = Character.new
end

def show
@character = Character.find(params[:id])
end

def create
  @character = Character.create(character_params)
  redirect_to characters_path
end

def edit
  @character = Character.find(params[:id])
end

def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to :back
end

def destroy
  @character = Character.find(params[:id])
  if @character.user == current_user
  @character.destroy
else
  flash[:alert] = "You cannot delete what you did not create"
end
  redirect_to :back
end

private
def character_params
  params.require(:character).permit(:name, :house, :img_url)
end
end
