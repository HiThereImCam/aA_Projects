import React from 'react';
import ReactDOM from 'react-dom'
import {fetchAllPokemon} from './util/api_util'
import { receiveAllPokemon, RECEIVE_ALL_POKEMON } from './actions/pokemon_actions'

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root')

    window.receiveAllPokemon = receiveAllPokemon;
    window.fetchAllPokemon = fetchAllPokemon;


    ReactDOM.render(<h1>React is Broken</h1>, root)
})



// const getSuccess = pokemon => console.log(receiveAllPokemon(pokemon));
// fetchAllPokemon().then(getSuccess);

// getSuccess(fetchAllPokemon())