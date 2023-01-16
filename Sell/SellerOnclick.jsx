import React from "react";
import ReactDOM from "react-dom";
import { Link } from "react-router-dom";
import Button from 'react-bootstrap/Button';
import { TiArrowSortedDown } from 'react-icons/ti'
import './sellerhome.css'
import 'bootstrap/dist/css/bootstrap.min.css';


function SellerSettings(params) {
  ReactDOM.render(
    <div>
      <div
        className='_buyLogin_flex'
        style={{ flexDirection: "row", justifyContent: "space-around" }}
      >
        <div style={{ margin: "0 2em 0 2em" }}>
          <div className='_buyLogin_Titlebox'>
            <div className='_buyLogin_h4'>帳戶設定</div>
          </div>
        <div className='_buyLogin_Contentbox'>
            {/* 表單 */}
          <form method='post'>
              <div className="_buyLogin_flex" style={{flexDirection:"row", justifyContent:"space-evenly"}}>
              <label
                className='_buyLogin_h4' style={{ fontSize: 14 }}>
                  用戶姓名：
                </label>
                <input
                  className='_buyLogin_SettingInput'
                  type='text'
                  name='username'
                ></input>
              </div>
              <br />
              <button className='_buyLogin_ChangeControlBtn'>更改</button>
            </form>
          </div>
        </div>
        <div style={{ margin: "0 2em 0 2em" }}>
          <div className='_buyLogin_Titlebox'>
            <div className='_buyLogin_h4'>帳戶設定</div>
          </div>
          <div className='_buyLogin_Contentbox'>
            {/* 表單 */}
            <form method='post'>
              <label
                className='_buyLogin_h4'
                style={{ fontSize: 14 }}
            >
                用戶姓名：
              </label>
              <input
                className='_buyLogin_SettingInput'
                type='text'
                name='username'
              ></input>
              <br />
              <button className='_buyLogin_ChangeControlBtn'>更改</button>
            </form>
          </div>
        </div>
      </div>
    </div>,
    document.getElementById("userDown")
    );
}


function SellerFrontPage(params) {
  ReactDOM.render(
    <div>
      <div className="SellerFrontPage__main__section__news">
        <h2>最新消息</h2>
        <p>這是第一則重要消息！！看的到代表一切正常不用擔心，看不到代表要去客服反應！</p>
      </div>
      <div className="SellerFrontPage__main__section__todolist">
        <h2>待辦事項</h2>
        <div>
          <ul className="list-unstyled">
            <li>
              {/* <Link to={`/about`} ></Link> */}
              <h1>0</h1>
              {/* <br /> */}
              <h3>未出貨</h3>
            </li>
            <li>
              {/* <Link><h1>0</h1></Link> */}
              <h3>待處理</h3>
            </li>
            <li>
              {/* <Link><h1>0</h1></Link> */}
              <h3>已處理</h3>
            </li>
            <li>
              {/* <Link><h1>0</h1></Link> */}
              <h3>待取消</h3>
            </li>
            <li>
              {/* <Link><h1>0</h1></Link> */}
              <h3>待退貨</h3>
            </li>
            <li>
              {/* <Link><h1>0</h1></Link> */}
              <h3>已售完</h3>
            </li>
          </ul>
        </div>
      </div>
      <div></div>
    </div>,
    document.getElementById("sellerhome__main"));
}
function SellerPage(params) {
  ReactDOM.render(
    <div className="sellerpage">
      <div className="sellerpage__title">
        藝術家資訊
      </div>
      <div className="sellerpage__main">
        <div className="sellerpage__main__left">
          <div className= "sellerpage__main__left__name">
            <p>用戶姓名</p>
            <input type="text" value="" style={{ border: "none" }}/>
          </div>
          <div className="sellerpage__main__right__name">
            <p>帳號</p>
            <input type="text" value="" style={{ border: "none" }}/>
          </div>
          <Button variant="dark">更改</Button>
        </div>
        <div className="sellerpage__main__right">
          <p>畫廊介紹</p>
          <textarea value="" style={{ width:"250px", height:"400px", backgroundColor:"#F9F7F2", border:"none"}} />
          <Button variant="dark">更改</Button>
        </div>
      </div>
    </div>,
    document.getElementById("sellerhome__main"));
}
function SellerUpload(params) {
  ReactDOM.render(
    <div>SellerUpload
      <div>
        <div>Upload</div>
      </div>
      <div>
        <div>
          <div>基本資料</div>
          <div>
            <p>商品名稱</p>
            <input type="text" value="" style={{ border: "none" }}/>
            <p>商品介紹</p>
            <input type="text" value="" style={{ border: "none" }}/>
          </div>
        </div>
        <div>銷售資訊</div>
      </div>
      <div>
        <div>商品規格</div>
        <div>商品屬性</div>
      </div>
      <Button variant="dark">取消</Button>
      <Button variant="dark">儲存並送出</Button>
    </div>,
    document.getElementById("sellerhome__main"));
}
function SellerProduct(params) {
  ReactDOM.render(
    <div>SellerProduct</div>,
    document.getElementById("sellerhome__main"));
}
function SellerOrder(params) {
  ReactDOM.render(<div>
      SellerOrder
      <div className="sellerorder__main__text ">
        <div>
          <h1>共有幾筆訂單</h1>
        </div>
        <div className="sellerorder__main__text__input">
          <input type="text" placeholder="輸入文字搜尋" />
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
              <th>
                <Button className="" variant="--color-bg" style={{ border: "none" }}> 
                  出貨狀況
                  <TiArrowSortedDown/>
                </Button>
              </th>
              <th>
                <Button className="" variant="--color-bg" style={{ border: "none" }}> 
                  金額
                  <TiArrowSortedDown/>
                </Button></th>
              <th>
                <Button className="" variant="--color-bg" style={{ border: "none" }}> 
                  售出時間
                  <TiArrowSortedDown/>
                </Button>
              </th>
              <th>
                <Button className="" variant="--color-bg" style={{ border: "none" }}> 
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
              <td>未出貨</td>
              <td>2000</td>
              <td>2023/01/14</td>
              <td>1</td>
              <td>
                <Button variant="dark">詳細資料</Button>
              </td>
            </tr>            <tr>
              <td>0000000000000000000000</td>
              <td>未出貨</td>
              <td>2000</td>
              <td>2023/01/14</td>
              <td>1</td>
              <td>
                <Button variant="dark">詳細資料</Button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>,
    document.getElementById("sellerhome__main"));
}

export { SellerFrontPage, SellerPage, SellerUpload, SellerProduct, SellerOrder};