#yipai

#20230210  
server.js需加入以下  
  
// const path = require('path');
// 設定註冊上傳圖片存哪裡: 位置跟名稱
const storage = multer.diskStorage({
  // 設定儲存的目的地 -> 檔案夾
  // 先手動建立好檔案夾 public/uploads
  destination: function (req, file, cb) {
    // path.join: 避免不同的作業系統之間 / 或 \
    // __dirname 目前檔案所在的目錄路徑
    cb(null, path.join(__dirname, '.', 'public', 'uploads'));
  },
  // 圖片名稱
  filename: function (req, file, cb) {
    console.log('multer storage', req.file);
    const ext = file.originalname.split('.').pop();
    cb(null, `${Date.now()}.${ext}`);
  },
});
// 真正在處理上傳
const uploader = multer({
  storage: storage,
  fileFilter: function (req, file, cb) {
    if (file.mimetype !== 'image/jpeg' && file.mimetype !== 'image/jpg' && file.mimetype !== 'image/png') {
      cb(new Error('上傳圖片格式不合規定'), false);
    } else {
      cb(null, true);
    }
  },
  // 限制檔案的大小
  limits: {
    // 1k = 1024 => 200k 200x1024
    fileSize: 200 * 1024, // 204800
  },
});

app.post("/product",uploader.single('photo'), async (req, res, next) => {
    console.log("product post", req.body, req.file);
    let [data] = await pool.query(
        `INSERT INTO product (img_file, name, width , height, material, product_style, artist, creation_year, work_hue, price, detail_text) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?); `,
        [
            req.file.filename,
            req.body.name,
            req.body.width,
            req.body.height,
            req.body.material,
            req.body.style,
            req.body.artist,
            req.body.creation_year,
            req.body.work_hue,
            req.body.price,
            req.body.detail_text,
        ]
    );
    console.log(req.body);
      res.json(data);
    });

------------------------20230210END-------------------------

#20230208
space.sql

#20230128分頁更新  
<Route path="/space" element={<Space />} />  
<Route path="/space:currentPage" element={<Space />} />  
<Route path='space/:spaceId' element={<SpaceDetail />} />

20230116
sell資料夾增加了
SellerButton.jsx
SellerOnclick.jsx

修改
SellerHome.jsx及css檔
SellerLogin.jsx增加三元判斷式

Brand.jsx和Footer.jsx加上↓  
讓Brand.jsx和Footer.jsx不出現在sellerhome  
if(location.pathname === '/users/SellLogin'){
    return<></>
  }
