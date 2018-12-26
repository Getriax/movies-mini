const { createServer } = require('http');

const server = createServer((req, res) => {
  console.log('ITITITI');
  res.end('hello');
});

server.listen(3000, () => console.log('LISTENINT'));
