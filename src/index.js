const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('¡App corriendo super chingona!');
});

app.listen(port, '0.0.0.0', () => {
  console.log(`App corriendo super chingona en el puerto ${port}`);
});