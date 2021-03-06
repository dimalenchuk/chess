var Piece = require('./Piece');
var board = require('./Board');
var _ = require('lodash');

function Queen(board, color, position) {
  Piece.apply(this, [board, color, position,
    [{i:1,j:1},{i:-1,j:1},{i:1,j:-1},{i:-1,j:-1},
     {i:1,j:0},{i:-1,j:0},{i:0,j:1},{i:0,j:-1}],false]);
     this.name = "Queen";
}

Queen.prototype = _.extend(Object.create(Piece.prototype), {
  constructor: Queen
});

module.exports = Queen;
