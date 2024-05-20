# Installation

- Dwonload repository
- Run composer install
- Create Database db_api_dinkes
- Copy .env.example file and rename to .env
- Configuration database connection in .env file
- Run php artisan migrate or import sql file, location file in directory database

# Information API
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

# Hospital Data
```http
GET /api/hospitals
```

## Responses
```javascript
{
    "code": 200,
    "status": "success",
    "data": [
        {
            "nama": "RS Khusus Daerah Duren Sawit",
            "email": "rsjiwadurensawit.developer@dto.kemkes.go.id",
            "organisasi_id": 1000266408,
            "kode_rs": 3172746,
            "kelas_rs": "A",
            "kota_kab": "Jakarta Timur"
        },
        ...
    ]
}
```