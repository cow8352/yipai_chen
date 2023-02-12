const express = require('express');
const path = require("path");
const router = express.Router();
const pool = require("../utils/db");
const { checkLogin } = require('../middlewares/authMiddleware');
// ================================================================
// GET /uploadsPhoto
router.get('/', checkLogin, (req, res, next) => {
    // 能夠通過 checkLogin 中間件，表示一定一定有 req.session.member -> 一定是登入後
    res.json(req.session.member);

  });

const multer = require('multer');
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
  limits: {
  //   // 1k = 1024 => 200k 200x1024
    fileSize: 200 * 1024, // 204800
  },
});
// /uploadsPhoto/product
router.post("/product",checkLogin,uploader.single('photo'), async (req, res, next) => {
    console.log("product post", req.file.filename,req.session.member.users_id);
    let [data] = await pool.query("UPDATE users SET user_imageHead=? WHERE users_id=?", [req.file.filename,req.session.member.users_id]);
    res.json(data);
});
//================================================================

module.exports = router;
