const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('¡Hola Mundo!');
});

const port = 3000;
app.listen(port, () => {
  console.log(`Aplicación corriendo en http://localhost:${port}`);
});
