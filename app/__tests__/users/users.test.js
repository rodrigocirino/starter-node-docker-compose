/*
 *  If a mock is defined, the fake will be used
 *    otherwise the real implementation will be used.
 *  Follow the same route of folders and names to define mocks.
 */

jest.mock('../../users/operations')
// if exists a mock use it instead use a real file
const Operations = require('../../users/operations')

describe('Users API', () => {
  test('Should create and return one user.', () => {
    const newUser = Operations.createUser() // mock do nothing
    expect(newUser.name).toBe('Rodrigo')
    expect(newUser.age).toBe(30)
  })
})
