
const StaticArray = function (length = 8) {
  this.store = new Array(length);
  this.length = length;
};

StaticArray.prototype.get = function (index) {
  if (index >= this.length || index < 0) {
    throw "index out of bounds";
  }
  return this.store[index];
};

StaticArray.prototype.set = function (index, value) {
  if (index >= this.length || index < 0 || typeof index !== 'number') {
    throw "index out of bounds";
  }
  this.store[index] = value;
  return value;
};


module.exports = StaticArray;
