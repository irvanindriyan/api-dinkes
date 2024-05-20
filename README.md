# Installation

- Dwonload repository
- Run composer install
- Create Database db_api_dinkes
- Copy .env.example file and rename to .env
- Configuration database connection in .env file
- Run php artisan migrate or import sql file, location file in directory database
- Import Postman Collection -> https://api.postman.com/collections/5894539-7189d0ca-e0c5-4628-bc39-cca629e01bd3?access_key=PMAT-01HYA3K9CXX045KM1R5N5TVYZZ

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

# Hospital Data API
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

# Connected Hospital Data API
```http
GET /api/connected_hospitals
```

## Responses
```javascript
{
    "code": 200,
    "status": "success",
    "data": [
        {
            "lokasi": "Kab. Adm. Kep. Seribu, DKI Jakarta",
            "organisasi_id": "1000265715",
            "nama": "RS UMUM DAERAH KEPULAUAN SERIBU",
            "alamat": "Pulau Pramuka Rt.001 RW.004",
            "status": "terkoneksi"
        },
        ...
    ]
}
```

# Hospital Transaction Data API
```http
GET /api/hospital_transactions
```

## Responses
```javascript
{
    "code": 200,
    "status": "success",
    "data": [
        {
            "organisasi_id": "1000265715",
            "nama": "RS UMUM DAERAH KEPULAUAN SERIBU",
            "jumlah_pengiriman_data": 14,
            "transaction_date": "01-05-2024"
        },
        ...
    ]
}
```

# Connected Hospital Detail Data API
```http
GET /api/connected_hospital_details
```

## Responses
```javascript
{
    "code": 200,
    "status": "success",
    "data": [
        {
            "nama": "RS UMUM DAERAH KEPULAUAN SERIBU",
            "organisasi_id": 1000265715,
            "kelas_rs": "D",
            "status": "terkoneksi",
            "alamat": "Pulau Pramuka Rt.001 RW.004",
            "kota_kab": "Kepulauan Seribu",
            "email": "rsudkepulauanseribu.developer@dto.kemkes.go.id"
        },
        ...
    ]
}
```

# Connected Hospital Detail Data API
```http
GET /api/hospital_transaction_details?kelas_rs=D&kota_kab=Barat
```

| Parameter | Type | Description |
| :--- | :--- | :--- |
| `kelas_rs` | `string` | Hospital Class |
| `kota_kab` | `string` | Hospital Kabupaten/Kota Filter Like |

## Responses
```javascript
{
    "code": 200,
    "status": "success",
    "data": [
        {
            "nama": "RS UMUM DAERAH KEPULAUAN SERIBU",
            "organisasi_id": 1000265715,
            "kelas_rs": "D",
            "status": "terkoneksi",
            "jumlah_pengiriman_data": 14,
            "alamat": "Pulau Pramuka Rt.001 RW.004",
            "kota_kab": "Kepulauan Seribu",
            "email": "rsudkepulauanseribu.developer@dto.kemkes.go.id"
        },
        ...
    ]
}
```

## Status Codes

Gophish returns the following status codes in its API:

| Status Code | Description |
| :--- | :--- |
| 200 | `OK` |
| 404 | `NOT FOUND` |
| 4XX | `BAD REQUEST` |
| 500 | `INTERNAL SERVER ERROR` |
