// app.test.js
const somar = require('./app');

test('deve somar 2 + 3 e retornar 5', () => {
  expect(somar(2, 3)).toBe(5);
});