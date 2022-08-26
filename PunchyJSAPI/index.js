const express = require('express');
const app = express();

const router = app.Router();
const swaggerUi = require('swagger-ui-express');
const swaggerDocument = require('./swagger.json');

router.use('/api-docs', swaggerUi.serve);
router.get('/api-docs', swaggerUi.setup(swaggerDocument));


app.get('/', (req, res) => {
    res.send('Ima change this up!');
});

app.get('/api/games', (req, res) => {
    res.send(['Mario', 'Zelda', 'Donkey Kong']);
});

app.listen(3000, () => console.log('Listening on port 3000')); 
