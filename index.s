const express = require('express');
const path    = require('path');
const server  = express();
const port    = 3000;


server.use(express.json());
server.use(express.urlencoded({extended: false})); 



server.listen(port, function(error){   
    if(error) {
        console.log('something went wrong', error) 
    } else {
        console.log('server is listening on port ' + port)
    }
});



server.get('/', (req, res) => {
    res.json({message:'Docker is fun!'})
});
