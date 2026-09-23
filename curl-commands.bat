REM Create a new task
curl -X POST http://localhost:8080/tasks ^
-H "Content-Type: application/json" ^
-d "{\"title\": \"New Task\", \"description\": \"Task description\", \"status\": \"PENDING\", \"dueDate\": \"2025-10-15\"}"

REM Get all tasks
curl -X GET http://localhost:8080/tasks

REM Get task with ID 1
curl -X GET http://localhost:8080/tasks/1

REM Update task with ID 1
curl -X PUT http://localhost:8080/tasks/1 ^
-H "Content-Type: application/json" ^
-d "{\"title\": \"Updated Task\", \"description\": \"Updated description\", \"status\": \"COMPLETED\", \"dueDate\": \"2024-10-01\"}"

REM Delete task with ID 1
curl -X DELETE http://localhost:8080/tasks/1

REM Create a new user
curl -X POST http://localhost:8080/users ^
-H "Content-Type: application/json" ^
-d "{\"username\": \"alice\", \"password\": \"password123\"}"

REM Get all users (returns DTOs, no password field)
curl -X GET http://localhost:8080/users

REM Get a specific user by ID (replace 1 with actual ID if different)
curl -X GET http://localhost:8080/users/1

REM Update a user (returns DTO, still no password field)
curl -X PUT http://localhost:8080/users/1 ^
-H "Content-Type: application/json" ^
-d "{\"username\": \"alice_updated\", \"password\": \"newpass456\"}"

REM Delete a user
curl -X DELETE http://localhost:8080/users/1

REM Get all priorities (should return LOW, MEDIUM, HIGH from data.sql)
curl -X GET http://localhost:8080/priorities

REM Get priority with ID 1 (LOW)
curl -X GET http://localhost:8080/priorities/1

REM Get priority with ID 2 (MEDIUM)
curl -X GET http://localhost:8080/priorities/2

REM Get priority with ID 3 (HIGH)
curl -X GET http://localhost:8080/priorities/3

REM Create a new task with Priority HIGH (id = 3)
curl -X POST http://localhost:8080/tasks ^
-H "Content-Type: application/json" ^
-d "{ \"title\": \"Finish project\", \"description\": \"Complete milestone 1\", \"status\": \"PENDING\", \"dueDate\": \"2024-09-30\", \"priority\": { \"id\": 3 } }"

REM Create a new subtask for Task with ID 1 (status defaults to PENDING)
curl -X POST http://localhost:8080/subtasks ^
-H "Content-Type: application/json" ^
-d "{ \"title\": \"Write unit tests\", \"status\": \"PENDING\", \"task\": { \"id\": 1 } }"

REM Get all subtasks
curl -X GET http://localhost:8080/subtasks

REM Get subtask with ID 1
curl -X GET http://localhost:8080/subtasks/1

REM Update subtask with ID 1 (set status to COMPLETED)
curl -X PUT http://localhost:8080/subtasks/1 ^
-H "Content-Type: application/json" ^
-d "{ \"title\": \"Write unit tests\", \"status\": \"COMPLETED\", \"task\": { \"id\": 1 } }"

REM Delete subtask with ID 1
curl -X DELETE http://localhost:8080/subtasks/1