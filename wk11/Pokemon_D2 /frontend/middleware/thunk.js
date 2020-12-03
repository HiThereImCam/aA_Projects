

const thunk = ( {getState, dispatch }) => next => action => {
    debugger
    if(typeof(action) === "function"){
        // debugger
        return action(dispatch)
    }else{
        // debugger
        return next(action)
    }
}

export default thunk; 