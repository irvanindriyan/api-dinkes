# Installation

- Dwonload repository
- Run composer install
- Create Database db_api_dinkes
- Copy file .env.example and rename to .env
- Configuration database connection in file .env

# Run REST API
```http
GET /api
```

## Responses
```javascript
{
    "code": 200,
    "status": "success",
    "message": "API Version 1 Laravel 7.30.6 (PHP 7.2.34)"
}
```