import React from 'react'
import { Link } from 'react-router-dom'
import './space.css'
import Dropdown from 'react-bootstrap/Dropdown'
import Pagination from 'react-bootstrap/Pagination';
import 'bootstrap/dist/css/bootstrap.min.css';
import Button from 'react-bootstrap/Button';
import { TbArrowsSort } from 'react-icons/tb'
import axios from 'axios';
import { useEffect, useState } from 'react';


function Space() {
 
  // 為了處理網址
  // let navigate = useNavigate();
  // const { currentPage } = useParams();
  // const [page, setPage] = useState(parseInt(currentPage, 10) || 1); // 目前在哪一頁
  // const [totalPage, setTotalPage] = useState(); // 總共有幾頁

  const [space, setSpace] = useState([]);
  const [space_area, setSpace_area] = useState([]);


  useEffect(() => {
    console.log('空陣列的 useEffect');
  }, []);

  // const [space_area, setSpaceArea] = useState("");
  // const handleSubmit = (event) => {
  //   setSpaceArea(event.target.innerText);
  //   console.log(event.target.innerText);
  //   // ...
  // };

  // async function handleSelect(e) {
  //   console.log('handleSelect');
  //   let response = await axios.get('http://localhost:3001/space', {
  //     space_area,
  //   //   space_name,
  //   }
  //   );
  //   console.log(space_area);
  // }



  useEffect(() => {
    // console.log('第二個參數是空陣列');
    // 在 component 初始化的時候跑一次
    // 通常會把去跟後端要資料的動作放在這裡
    async function getSpace() {
      let response = await axios.get(`http://localhost:3001/space`);
      setSpace(response.data);
      console.log(response.data);
      // setTotalPage(response.data.pagination.totalPage);
    }
    getSpace();
  }, []);

  function handleClick(e) {
    // e.preventDefault();
    const space_area = e.target.innerText;
    console.log(space_area);

    let filtered;
    if (space_area === "北") {
        filtered = space.filter(space => space.space_area === "北");
    } else if (space_area === "中") {

        filtered = space.filter(space => space.space_area === "中");
    } else if (space_area === "南") {
        filtered = space.filter(space => space.space_area === "南");
    }
    // const filtered = space.filter(space => {
    //     return space.space_area == "北";
      
    // });
    console.log(filtered);
    setSpace(filtered);
  }


  // const getPages = () => {
  //   let pages = [];
  //   for (let i = 1; i <= totalPage; i++) {
  //     pages.push(
  //       <li
  //         style={{
  //           display: 'inline-block',
  //           margin: '2px',
  //           backgroundColor: 'black',
  //           borderColor: page === i ? '#00d1b2' : '#dbdbdb',
  //           color: page === i ? '#fff' : '#363636',
  //           borderWidth: '1px',
  //           width: '28px',
  //           height: '28px',
  //           borderRadius: '3px',
  //           textAlign: 'center',
  //         }}
  //         key={i}
  //         onClick={(e) => {
  //           setPage(i);
  //           // 處理網址
  //           navigate(`/space?page=${i}`);
  //         }}   
  //       >
  //         {i}
  //       </li>
  //     );
  //   }
  //   return pages;
  // };

  return (
    <>
      <header>
        <div class="space__banner">
          <div class="space__bannerImg"></div>
        </div>
      </header>
      <div class="space__container font-family">
        <div class="space__main-content">
          <nav class="space__aside-menu">
            <h3>空間分類</h3>
            <hr />
            
            <Dropdown>
              <Dropdown.Toggle variant="--color-bg" style={{ border: "none" }}>
                依地點
              </Dropdown.Toggle>
              <Dropdown.Menu>
                <Dropdown.Item value="北" onClick={handleClick}>北</Dropdown.Item>
                <Dropdown.Item value="中" onClick={handleClick}>中</Dropdown.Item>
                <Dropdown.Item value="南" onClick={handleClick}>南</Dropdown.Item>
              </Dropdown.Menu>
            </Dropdown>
            <br />
            <Dropdown>
              <Dropdown.Toggle variant="--color-bg" style={{ border: "none" }} id="dropdown-basic">
                依營業時間
              </Dropdown.Toggle>
              <Dropdown.Menu>
                <Dropdown.Item href="#/action-1">假日</Dropdown.Item>
                <Dropdown.Item href="#/action-2">平日</Dropdown.Item>
              </Dropdown.Menu>
            </Dropdown>
          </nav>
          <main>
            <div className="d-md-flex justify-content-between m-2 space__main__header">
              <div className="space__none550 col1 text-nowrap d-inline-flex">
                <Link to="/" className="text-nowrap">
                  <p>首頁</p>
                </Link>
                <p> ▶ </p>
                <Link to="#" className="text-nowrap">
                  <p>展覽空間</p>
                </Link>
              </div>
              <div className="col-2">
                <Button
                  className="space__button col-4 text-nowrap"
                  variant="dark"
                >
                  由新至舊
                  <TbArrowsSort />
                </Button>
              </div>
            </div>
          
            {/* 目前在第 {page} 頁
            
            <ul>{getPages()}</ul> */}

            <div className="container space__main-card mt-5">
              <div className="row align-items-start">

                {space.map((space_data, index) => {
                  return(
                    <div
                      key={space_data.space_id}
                      className="col space__main-card-item"
                    >
                      <Link to={`/space/${space_data.space_id}`}>
                        <div className="position-relative">
                          <div className="Space__FaHeart_icon">
                            <Link to="#">
                            </Link>
                          </div>
                          <img src={space_data.space_img_file} />
                        </div>
                        <h4>{space_data.space_name}</h4>
                        <h6>{space_data.space_address}</h6>
                      </Link>
                    </div>
                  );
                })}
              </div>
            </div>

            <div>

              <Pagination className="space__page-item justify-content-center mt-4">
                <Pagination.First />
                <Pagination.Prev />
                <Pagination.Item>{1}</Pagination.Item>
                <Pagination.Item>{2}</Pagination.Item>
                <Pagination.Item>{3}</Pagination.Item>
                <Pagination.Next />
                <Pagination.Last />
              </Pagination>
            </div>
          </main>
        </div>
      </div>
    </>
  )
}

export default Space