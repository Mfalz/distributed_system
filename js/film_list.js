
var WebHDFS = require('webhdfs');

var hdfs = WebHDFS.createClient({
	user: 'webuser',
	host: 'localhost',
	port: 50070,
	path: '/webhdfs/v1'
});

// get map reduced movie titles 
var filepath='/output/movie_titles/titles.txt';

hdfs.readFile(filepath, function(err, data){
	console.log(data.toString())
});
 
