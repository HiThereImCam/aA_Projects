import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions'

const pokemonReducer = (oldState = {}, action ) => {
    Object.freeze(oldState);
    const newState = Object.assign({}, oldState);
    // debugger
    switch(action.type){
        case RECEIVE_ALL_POKEMON:
             return Object.assign({}, oldState, action.pokemon)
            // return [...oldState, action.pokemon]
        default:
            return oldState

    }
}

export default pokemonReducer;