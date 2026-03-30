DROP TABLE IF EXISTS user_id;
CREATE TABLE user_id (
    user_id VARCHAR(36) PRIMARY KEY,
    citizen_id VARCHAR(13) UNIQUE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    birth_date DATE,
    gender ENUM('ชาย','หญิง') COMMENT '1=ชาย, 2=หญิง',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
