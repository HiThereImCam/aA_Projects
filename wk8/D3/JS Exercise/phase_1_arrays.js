//PHASE ONE

// Array#uniq - returns a new array containing each individual element of the original array only once (creating all unique elements)
// the elements should be in the order in which they first appear in the original array
// should not mutate the original array
// ([1,2,2,3,3,3].uniq() => [1,2,3])

Array.prototype.uniq = function(){
    let uniqArr = []
    for(let i = 0; i<this.length; i++){
        if(uniqArr.indexOf(this[i])=== -1){
            uniqArr.push(this[i]);
        }
    } 
    return uniqArr
}


//Array#twoSum - returns an array of position pairs where the elements sum to zero

Array.prototype.twoSum = function(){
    let positions = []

    for(let i = 0; i < this.length; i++){
        for(let j = i + 1; j < this.length; j++){
            if(this[i] + this[j] === 0) positions.push([i,j])
        }
    }

    return positions
}

console.log([3,3,-4,5, -5].twoSum())
// Array#transpose - where we have a two-dimensional array representing a matrix. returns the transpose
// should not mutate the original array

Array.prototype.transpose = function(){

    // let transposeArr = [column.length][rows.length]
    //let transposeArr = []
    let transposeArr =  new Array(this[0].length).fill(0).map(()=> new Array(this.length))

    //alternative
    // let grid = []
    // for(let i = 0; i < this[0].length; i++){
    //     grid.push([])
    // }

    for(let i = 0; i < this.length; i++){
        for(let j = 0; j < this[i].length; j++){
            // transposeArr[j][i].push(this[i][j])
            transposeArr[j][i] = this[i][j]
            console.log(transposeArr[i][j])
        }
    }

    return transposeArr
}


console.log([[1,2,5],[2,3,4]].transpose())



// Array#bubbleSort - receives an array, returns a sorted array by implementing bubble sort sorting algorithm

// String#substrings - receives a string, returns an array of all substrings

