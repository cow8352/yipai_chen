const express = require('express');
const router = express.Router();
const pool = require("../utils/db");
const { checkLogin } = require('../middlewares/authMiddleware');
// 圖片上傳的套件 https://www.npmjs.com/package/multer
const multer = require('multer');

const path = require('path');
// 設定註冊上傳圖片存哪裡: 位置跟名稱
// const storage = multer.diskStorage({
//   // 設定儲存的目的地 -> 檔案夾
//   // 先手動建立好檔案夾 public/uploads
//   destination: function (req, file, cb) {
//     // path.join: 避免不同的作業系統之間 / 或 \
//     // __dirname 目前檔案所在的目錄路徑
//     cb(null, path.join(__dirname, '..', 'public', 'uploads'));
//   },
//   // 圖片名稱
//   filename: function (req, file, cb) {
//     console.log('multer storage', file);
    // {
    //   fieldname: 'photo',
    //   originalname: 'AI-replace.jpg',
    //   encoding: '7bit',
    //   mimetype: 'image/jpeg'
    // }
//     const ext = file.originalname.split('.').pop();
//     //使用圖片的名稱套件 uuid
//     cb(null, `${Date.now()}.${ext}`);
//   },
// });
// 真正在處理上傳
// const uploader = multer({
//   storage: storage,
//   // 圖片格式的 validation
//   fileFilter: function (req, file, cb) {
//     if (file.mimetype !== 'image/jpeg' && file.mimetype !== 'image/jpg' && file.mimetype !== 'image/png') {
//       cb(new Error('上傳圖片格式不合規定'), false);
//     } else {
//       cb(null, true);
//     }
//   },
//   // 限制檔案的大小
//   // limits: {
//   //   // 1k = 1024 => 200k 200x1024
//   //   fileSize: 200 * 1024, // 204800
//   // },
// });

// GET /api/members
router.get('/', checkLogin, (req, res, next) => {
  // 能夠通過 checkLogin 中間件，表示一定一定有 req.session.member -> 一定是登入後
  res.json(req.session.member);
});
// GET /api/members/orders 使用者的訂單
router.get('/orders', checkLogin, async(req, res, next) => {
  // 能夠通過 checkLogin 中間件，表示一定一定有 req.session.member -> 一定是登入後
  // 安心地使用 req.session.member.id 去資料庫拿這個 id 的訂單
  let [data] = await pool.query("SELECT * FROM user_order WHERE user_id=?",[req.session.member.users_id]);
  res.json(data);
});
// GET  /api/members/userData
router.get("/userData",checkLogin, async (req, res, next) => {
  let [data] = await pool.query("SELECT user_imageHead,user_imagePage,users_name,users_account,users_main_product,users_aside_picture,users_phone,users_email,users_slogan,users_introduce,users_city,users_township,users_street FROM users WHERE users_id=? ", [
    req.session.member.users_id,
  ]);
  res.json(data);
});
// GET  賣家商品 /api/members/sellerProduct
router.get("/sellerProduct",checkLogin, async (req, res, next) => {
  let [data] = await pool.query("SELECT * FROM product WHERE artist=? ", [
    req.session.member.users_name,
  ]);
  res.json(data);
});
// GET  賣家訂單 /api/members/sellerOrder
router.get("/sellerOrder",checkLogin, async (req, res, next) => {
  let [data] = await pool.query("SELECT * FROM user_order ");
  res.json(data);
});

// POST /api/members/orders 送出訂單
router.post("/orders",async(req,res,next)=>{
  let [data] =await pool.query("INSERT INTO user_order (product_id, user_id, amount,payment,send_address,total) VALUES (?,?,?,?,?,?) ",[
    req.body.product_id,
    req.session.member.users_id,
    req.body.amount,
    req.body.payment,
    req.body.send_address,
    req.body.total,
  ]);
  console.log(req.data);
  res.json(data);

});






//================================================================

// const multer = require('multer');
// 設定註冊上傳圖片存哪裡: 位置跟名稱
const storage = multer.diskStorage({
  // 設定儲存的目的地 -> 檔案夾
  // 先手動建立好檔案夾 public/uploads
  destination: function (req, file, cb) {
    // path.join: 避免不同的作業系統之間 / 或 \
    // dirname 目前檔案所在的目錄路徑
    cb(null, path.join(__dirname, '..', 'public', 'uploads'));
  },
  // 圖片名稱
  filename: function (req, file, cb) {
    console.log('multer storage', req.file);
    const ext = file.originalname.split('.').pop();
    //使用圖片的名稱套件 uuid
    cb(null, `${Date.now()}.${ext}`);
  },
});
// 真正在處理上傳
const uploader = multer({
  storage: storage,
  // 圖片格式的 validation
  fileFilter: function (req, file, cb) {
    if (file.mimetype !== 'image/jpeg' && file.mimetype !== 'image/jpg' && file.mimetype !== 'image/png') {
      cb(new Error('上傳圖片格式不合規定'), false);
    } else {
      cb(null, true);
    }
  },
  // 限制檔案的大小
  // limits: {
  //   // 1k = 1024 => 200k 200x1024
  //   fileSize: 200 * 1024, // 204800
  // },
});
//================================================================

// PUT /api/members/userData
router.put("/userData",uploader.single('photo'), async (req, res, next) => {
  
  let data = await pool.query(
      "UPDATE users SET users_name = ? , users_account = ? , users_email = ? ,users_phone = ?,user_imageHead=? WHERE users_id = ?",
      [
          req.body.username,
          req.body.account,
          req.body.email,
          req.body.phone,
          req.body.photo,//上傳檔案名稱
          req.body.usersId,
      ]
  );
  console.log(data);
  console.log("/users/:usersId TO upload ", req);

  // res.json(data);
});
module.exports = router;
