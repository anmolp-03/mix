const request = require('supertest');
const app = require('../app');

describe('Course Service', () => {
  test('GET /health returns 200 and status ok', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
    expect(res.text).toMatch(/Course Service OK/);
  });
});
