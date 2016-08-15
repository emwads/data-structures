describe( "StaticArray", function() {
  let arr =  new StaticArray;
  describe( "#initialize", function() {
    it( "starts with an empty and fixed default length of 8", function() {
      expect( arr.length ).toEqual(8);
      for (let i = 0; i < 8; i++) {
        expect( arr[i] ).not.toBeDefined();
      }
  });

});
  describe( "#[] / #[]= ", function() {
    it( "sets and gets elements", function() {
      for (let i = 0; i < 8; i++) {
        arr[i] = i + 3;
      }
      for (let i = 0; i < 8; i++) {
        expect(arr[i]).toEqual( i + 3 );
      }
    });
  });
});
