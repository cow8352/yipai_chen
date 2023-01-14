#yipai

# sellerHome(賣家頁不要出現Footer,Brand,Navbar)

Brand.jsx加上↓

 if(location.pathname === '/users/SellerHome'){
    return<></>
  }
  ![image](https://user-images.githubusercontent.com/117623859/212447965-90b3fbc3-2263-4d0d-8c25-5784a58e8a35.png)

***

Footer.jsx

 if(location.pathname === '/users/SellerHome'){
    return<></>
  }
![image](https://user-images.githubusercontent.com/117623859/212447955-2ee7c5f2-eaf7-423d-8cd9-d18bb4df840b.png)

***
Navbar.jsx

import { useLocation } from 'react-router-dom';

 let location = useLocation();
  if(location.pathname === '/users/SellerHome'){
    return
      <></>
  }

![image](https://user-images.githubusercontent.com/117623859/212447984-e089f33c-21a8-4fdb-a1ab-5c49436bea56.png)
