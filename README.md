#yipai

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
