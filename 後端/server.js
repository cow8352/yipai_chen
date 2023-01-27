const express = require('express');

const app = express();

require('dotenv').config();
const mysql2 = require('mysql2/promise');

let pool = mysql2.createPool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PWD,
    database: process.env.DB_NAME,
    // 限制 pool 連線數的上限
    connectionLimit: 10,
  });
  
  // 允許跨源存取
  // 預設是全部開放
  // 也可以做部分限制，參考 npm cors 的文件
  const cors = require('cors');
  app.use(cors());

app.get('/', (req, res, next) => {
    console.log('這裡是首頁 2', req.mfee31, req.dt);
    res.send('Hello Express 9');
  });

  app.get('/space', async (req, res, next) => {
    console.log('這裡是 /space');
    const page = req.query.page || 1;

    // 總筆數？
   let [results] = await pool.execute('SELECT COUNT(*) AS total FROM space');
  //  console.log('GET /space -> count:', results[0].total);
    const total = results[0].total;

    // 總共有幾頁
    const perPage = 6; // 一頁有六筆
    const totalPage = Math.ceil(total / perPage);

    // 計算 offset, limit (一頁有幾筆)
    const limit = perPage;
    const offset = perPage * (page - 1);

    // 根據 offset, limit 去取得資料

    let [data] = await pool.execute('SELECT * FROM space ORDER BY space_id LIMIT ? OFFSET ?', [limit, offset]);
    // let [data] = await pool.query('SELECT * FROM space');

    res.json({
      pagination: {
        total,
        perPage,
        totalPage,
        page,
      },
      data,
    });
  });
  
  app.get('/space/:spaceId', async (req, res, next) => {
    console.log('/space/:spaceId => ', req.params.spaceId);
    
    
    let [data] = await pool.query('SELECT * FROM space WHERE space_id=? ', [req.params.spaceId]);
      res.json(data);
    });
  

app.listen(3001, () => {
    console.log('Server running at port 3001');
  });