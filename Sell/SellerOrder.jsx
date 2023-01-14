import React from "react";
import "./sellerorder.css";
import { Link } from "react-router-dom";
import logo1 from '../../../logo1.svg';
import { FaHome } from 'react-icons/fa'
import { FaRegUserCircle } from 'react-icons/fa'
import { RiFileUploadLine } from 'react-icons/ri'
import { TbListDetails } from 'react-icons/tb'
import { HiOutlineClipboardList } from 'react-icons/hi'
import { TiArrowSortedDown } from 'react-icons/ti'
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from 'react-bootstrap/Button';


function SellerOrder() {
  return (
    <>
      <div className="sellerorder__main">
        <p>main</p>
        <div className="sellerorder__main__text ">
          <div>
            <h1>共有幾筆訂單</h1>
          </div>
          <div className="sellerorder__main__text__input">
            <input type="text">搜尋</input>
            <Button variant="dark">排序</Button>
          </div>
        </div>
        <div className="sellerorder__main__table">
          <table>
            <thead>
              <tr>
                <th>
                  <Button className="" variant="--color-bg" style={{ border: "none" }}> 
                    訂單編號
                    <TiArrowSortedDown/>
                  </Button>
                </th>
                <th><Button className="" variant="--color-bg" style={{ border: "none" }}> 
                    出貨狀況
                    <TiArrowSortedDown/>
                  </Button>
                </th>
                <th><Button className="" variant="--color-bg" style={{ border: "none" }}> 
                    金額
                    <TiArrowSortedDown/>
                  </Button></th>
                <th><Button className="" variant="--color-bg" style={{ border: "none" }}> 
                    售出時間
                    <TiArrowSortedDown/>
                  </Button>
                </th>
                <th><Button className="" variant="--color-bg" style={{ border: "none" }}> 
                    售出數量
                    <TiArrowSortedDown/>
                  </Button>
                </th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>0000000000000000000000</td>
                <td>未出貨</td>
                <td>2000</td>
                <td>2023/01/14</td>
                <td>1</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
              <tr>
                <td>0000000000000000000000</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>
                  <Button variant="dark">詳細資料</Button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div className="sellerorder__sidebar">
        <div className="sellerorder__sidebar__center">
          <Link to="/">
            <img src={logo1} />
          </Link>
          <img alt="/" className="" />
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
              <Link to="#" className="">
                <HiOutlineClipboardList className="mx-2 mb-1" />
                訂單資訊
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </>
  );
}

export default SellerOrder;