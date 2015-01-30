describe('app', function() {
  describe('index', function() {
    it('should return hello world', function() {
      chai.assert.equal('hello world', app.index());
    });
  });
});
