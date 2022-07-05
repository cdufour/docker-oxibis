const express = require('express');
const redis = require('redis'); // client redis
const app = express();
const port = 3000;

// routes (endpoints)
app.get('/', (req, res) => res.send('coucou !!!'));

app.get('/visit', (req, res) => {

  // connexion au serveur redis
  const rediscli = redis.createClient({
    host: 'redis', // résolution DNS
    port: 6379
  });

  let visits = 0;

  rediscli.get('visit', (err, counter) => {
    
    if (counter) {
      visits = parseInt(counter) + 1; // incrémentation du compteur
    } else {
      visits = 1;
    }

    // update serveur redis
    rediscli.set('visit', visits);

    // réponse au client http
    res.json({ visits });

  })

})

app.listen(port, () => console.log('Server listening on port ' + port));
