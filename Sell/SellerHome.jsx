import React from "react";
import "./sellerhome.css";
import { Link } from "react-router-dom";
import logo1 from '../../../logo1.svg';
import { FaHome } from 'react-icons/fa'
import { FaRegUserCircle } from 'react-icons/fa'
import { RiFileUploadLine } from 'react-icons/ri'
import { TbListDetails } from 'react-icons/tb'
import { HiOutlineClipboardList } from 'react-icons/hi'
import 'bootstrap/dist/css/bootstrap.min.css';
import SellerOrder from "./SellerOrder";



function SellerHome() {
  return (
    <>
      <div className="sellerhome__main">
        <div className="sellerhome__main__section__news">
          <h2>最新消息</h2>
          <p>這是第一則重要消息！！看的到代表一切正常不用擔心，看不到代表要去客服反應！</p>
        </div>
        <div className="sellerhome__main__section__todolist">
          <h2>待辦事項</h2>
          <div>
            <ul className="list-unstyled">
              <li>
                <Link><h1>0</h1></Link>
                <h3>未出貨</h3>
              </li>
              <li>
                <Link><h1>0</h1></Link>
                <h3>待處理</h3>
              </li>
              <li>
                <Link><h1>0</h1></Link>
                <h3>已處理</h3>
              </li>
              <li>
                <Link><h1>0</h1></Link>
                <h3>待取消</h3>
              </li>
              <li>
                <Link><h1>0</h1></Link>
                <h3>待退貨</h3>
              </li>
              <li>
                <Link><h1>0</h1></Link>
                <h3>已售完</h3>
              </li>
          
            </ul>
          </div>
        </div>
        <div></div>
      </div>
      <div className="sellerhome__sidebar">
        <div className="sellerhome__sidebar__center">
          <Link to="/">
            <img src={logo1} />
          </Link>
          <label className='_buyLogin_headIcon'>
            {/* 增加檔案 */}
            <input type="file" style={{ display: "none" }}></input>
          </label>
          <ul className="list-unstyled">
            <li>
              <Link to="#" className="">
                <FaHome className="mx-2 mb-1" />
                首頁
              </Link>
            </li>
            <li>
              <Link to="#" className="">
                <FaRegUserCircle className="mx-2 mb-1" />
                個人頁面
              </Link>
            </li>
            <li>
              <Link to="#" className="">
                <RiFileUploadLine className="mx-2 mb-1"/>
                上架商品
              </Link>
            </li>
            <li>
              <Link to="#" className="">
                <TbListDetails className="mx-2 mb-1"/>
                商品管理
              </Link>
            </li>
            <li>
              <Link to="" className="">
                <HiOutlineClipboardList className="mx-2 mb-1" />
                訂單資訊
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </>

    // <>
    // <div className="sellerhome__main">
    //     <div className="sellerhome__main__text ">
    //       <div>共有幾筆訂單</div>
    //       <div>
    //         <button>排列</button>
    //       </div>
    //     </div>
    //     <div className="sellerhome__main__table">
    //         <table>
    //         <tr className="sellerhome__main__tr">
    //           <th>訂單編號</th>
    //           <th>出貨狀況</th>
    //           <th>金額</th>
    //           <th>售出時間</th>
    //           <th>售出數量</th>
    //           <th></th>
    //         </tr>
    //         <tr>
    //           <td>2</td>
    //           <td>2</td>
    //           <td>2</td>
    //           <td>2</td>
    //           <td>2</td>
    //           <td>
    //             <Button variant="dark">詳細資料</Button>
    //           </td>
    //         </tr>
    //       </table>
    //     </div>

    // </div>
    //   <aside className="sellerhome__right-aside position-fixed border-end">
    //     <nav className="sellerhome__aside-menu">
    //       <div className="">
    //         <Link to="/">
    //           <img src={logo1} />
    //         </Link>
    //             <img alt="/" className="" />
    //             <label className='_buyLogin_headIcon'>
    //                 {/* 增加檔案 */}
    //                 <input type="file" style={{ display: "none" }}></input>
    //             </label>
    //     </div>
    //         {/* <h3>您好你現在是藝拍小夥伴啦</h3> */}
    //       <ul className="list-unstyled">
    //         <li>
    //           <Link to="#" className="m-3"><FaHome className="" />
    //             首頁
    //           </Link>
    //         </li>
    //         <li>
    //           <Link to="#" className="m-3">
    //             <FaRegUserCircle className=""/>
    //             個人頁面
    //           </Link>
    //         </li>
    //         <li>
    //           <Link to="#" className="m-3"><RiFileUploadLine/>上架商品</Link>
    //         </li>
    //         <li>
    //           <Link to="#" className="m-3"><TbListDetails/>商品管理</Link>
    //         </li>
    //         <li>
    //           <Link to="#" className="m-3"><HiOutlineClipboardList/>訂單資訊</Link>
    //         </li>
    //       </ul>
    //     </nav>
    //   </aside>
    // </>
  );
}

export default SellerHome;