const request = require('supertest');
const express = require('express');

const app = express();
app.get('/', (req, res) => res.send('Hello, CI/CD Pipeline!'));

test('GET / - should return the welcome message', async () => {
    const res = await request(app).get('/');
    expect(res.text).toBe('Hello, CI/CD Pipeline!');
});
