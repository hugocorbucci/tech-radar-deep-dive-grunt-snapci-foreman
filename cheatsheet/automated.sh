npm init
npm install grunt grunt-contrib-jshint --save-dev
cp cheatsheet/Gruntfile.js .
grunt jshint
npm install mocha chai grunt-mocha --save-dev
grunt mocha
mkdir -p tests && cp cheatsheet/index.html tests/
grunt mocha
mkdir -p tests/app && cp cheatsheet/index_tests.js tests/app
grunt mocha
mkdir -p src/app && cp cheatsheet/index.js src/app/
grunt mocha
grunt jshint
# Add 'src/**/*.js' and 'tests/**/*.js' to jshint in Gruntfile.js
grunt jshint
# Add grunt.registerTask('default', ['jshint', 'mocha']); to Gruntfile.js
grunt
git add -A && git commit -m "First version" && git push
# Add repo on Snap-CI
npm install connect --save
cp cheatsheet/server.js src/
echo "web: node src/server.js" > Procfile
echo "PORT=8080" > .env
foreman start
curl http://127.0.0.1:8080
git add -A && git commit -m "With a server" && git push
# Add deploy to Snap-CI creating project on heroku
heroku ps:scale web=1
# Change to be hello world in time in tests and code. Push. Check heroku