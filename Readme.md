# Task Management API

A RESTful API for managing tasks with user authentication and CRUD operations.

## Features

- User authentication using JWT
- Task management (CRUD operations)
- TypeScript implementation
- MongoDB database
- Express.js framework

## Prerequisites

- Node.js (v14 or higher)
- MongoDB
- npm or yarn

## Environment Variables

Create a `.env` file in the root directory with the following variables:

```
MONGODB_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret_key
PORT=3000
```

## Installation

1. Clone the repository:

```bash
git clone https://github.com/manankhndlwl/task-management-api.git
cd task-management-api
```

2. Install dependencies:

```bash
npm install
```

3. Start the development server:

```bash
npm run dev
```

## API Endpoints

### Authentication

#### Register User

- **POST** `/api/auth/register`
- Body:

```json
{
  "email": "user@example.com",
  "password": "password123"
}
```

#### Login

- **POST** `/api/auth/login`
- Body:

```json
{
  "email": "user@example.com",
  "password": "password123"
}
```

### Tasks

All task endpoints require authentication. Include the JWT token in the Authorization header:
`Authorization: Bearer your_jwt_token`

#### Get All Tasks

- **GET** `/api/tasks`

#### Create Task

- **POST** `/api/tasks`
- Body:

```json
{
  "title": "Complete project",
  "description": "Finish the task management API",
  "status": "pending"
}
```

#### Update Task

- **PUT** `/api/tasks/:id`
- Body:

```json
{
  "title": "Updated title",
  "description": "Updated description",
  "status": "in-progress"
}
```

#### Delete Task

- **DELETE** `/api/tasks/:id`

## Error Handling

The API implements proper error handling with appropriate HTTP status codes:

- 200: Success
- 201: Resource created
- 400: Bad request
- 401: Unauthorized
- 403: Forbidden
- 404: Not found
- 500: Internal server error

## Security

- Passwords are hashed using bcrypt
- JWT tokens are used for authentication
- Environment variables protect sensitive data
- CORS is enabled for secure cross-origin requests

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request
