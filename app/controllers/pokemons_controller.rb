class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer = current_trainer
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health-=10
    if pokemon.health<=0
      pokemon.destroy
    else
      pokemon.save
    end
    redirect_to pokemon.trainer
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = current_trainer.pokemons.build(pokemon_params)
    @pokemon.health=100
    @pokemon.level=1
    if @pokemon.save
      flash[:success] = "Pokemon created!"
      redirect_to current_trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render 'pokemons/new'
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
