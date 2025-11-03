const request = require('supertest');
const app = require('../app');

describe('Enroll Service', () => {
  test('GET /health returns 200 and message', async () => {
    const res = await request(app).get('/health');
    expect(res.statusCode).toBe(200);
    expect(res.text).toMatch(/Enroll Service OK/);
  });
});
