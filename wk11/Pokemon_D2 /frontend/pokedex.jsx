import React from 'react';
import ReactDOM from 'react-dom'
import {fetchAllPokemon} from './util/api_util'
import { receiveAllPokemon, RECEIVE_ALL_POKEMON, requestAllPokemon} from './actions/pokemon_actions'
import configureStore from './store/store'
import selectAllPokemon from './reducers/selectors'

document.addEventListener('DOMContentLoaded', () => {
    const root = document.getElementById('root')
    const store = configureStore()

    window.receiveAllPokemon = receiveAllPokemon;
    window.fetchAllPokemon = fetchAllPokemon;
    window.getState = store.getState
    window.dispatch = store.dispatch
    window.requestAllPokemon = requestAllPokemon
    window.selectAllPokemon = selectAllPokemon

    ReactDOM.render(<h1>React is Working</h1>, root)
})



// const getSuccess = pokemon => console.log(receiveAllPokemon(pokemon));
// fetchAllPokemon().then(getSuccess);

// getSuccess(fetchAllPokemon())