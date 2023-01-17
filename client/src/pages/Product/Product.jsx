import React, {useState} from 'react';
import './Product.scss';
import AddShoppingCartIcon from "@mui/icons-material/AddShoppingCart";
import FavoriteBorderIcon from "@mui/icons-material/FavoriteBorder";
import BalanceIcon from "@mui/icons-material/Balance";
import {useParams} from "react-router-dom";
import useFetch from "../../hooks/useFetch";
import {useDispatch} from "react-redux";
import {addToCart} from "../../redux/cartReducer";


const Product = () => {
    const id = useParams().id;
    const [selectedImg, setSelectedImg] = useState("img");
    const [quantity, setQuantity] = useState(1);

    const dispatch = useDispatch();
    const {data, loading, error} = useFetch(`/products/${id}?populate=*`);
    console.log(data);
    return (
        <div className='product'>
            {/*<div className="left">*/}
            {/*    <div className="images">*/}
            {/*        <img src={images[0]} alt="" onClick={(e) => setSelectedImg(0)}/>*/}
            {/*        <img src={images[1]} alt="" onClick={(e) => setSelectedImg(1)}/>*/}
            {/*    </div>*/}
            {/*    <div className="mainImg">*/}
            {/*        <img src={images[selectedImg]} alt=""/>*/}
            {/*    </div>*/}
            {/*</div>*/}
            {/*<div className="right">*/}
            {/*    <h1>Váy</h1>*/}
            {/*    <span className="price">{(508388).toLocaleString('vi-VN', {*/}
            {/*        style: 'currency',*/}
            {/*        currency: 'VND'*/}
            {/*    }).replace(/[^0-9.]/g, '')}</span>*/}
            {/*    <p>Váy là một trong những mẫu quần áo phổ biến nhất trong thời trang phụ nữ và có thể được sử dụng trong*/}
            {/*        nhiều dịp khác nhau, từ các sự kiện công sở đến các buổi tiệc tùng. Váy cũng có thể được kết hợp với*/}
            {/*        nhiều loại áo khác nhau để tạo nên những trang phục khác nhau và phù hợp với nhiều dịp khác nhau.*/}
            {/*        Hãy ghé thăm VJETSTORE để khám phá những mẫu váy mới nhất và độc đáo nhất cùng chúng tôi nhé!</p>*/}
            {/*    <div className="quantity">*/}
            {/*        <button onClick={() => setQuantity(prev => (prev === 1 ? 1 : prev - 1))}>-</button>*/}
            {/*        {quantity}*/}
            {/*        <button onClick={() => setQuantity(prev => prev + 1)}>+</button>*/}
            {/*    </div>*/}
            {/*    <button className="add">*/}
            {/*        <AddShoppingCartIcon/> THÊM VÀO GIỎ HÀNG*/}
            {/*    </button>*/}
            {/*    <div className="links">*/}
            {/*        <div className="item">*/}
            {/*            <FavoriteBorderIcon/> THÊM VÀO DANH SÁCH YÊU THÍCH*/}
            {/*        </div>*/}
            {/*        <div className="item">*/}
            {/*            <BalanceIcon/> THÊM VÀO SO SÁNH*/}
            {/*        </div>*/}
            {/*    </div>*/}
            {/*    <div className="info">*/}
            {/*        <span>Nhà cung cấp: Polo</span>*/}
            {/*        <span>Kiểu sản phẩm: T-Shirt</span>*/}
            {/*        <span>Tag: T-Shirt, Women, Top</span>*/}
            {/*    </div>*/}
            {/*    <hr/>*/}
            {/*    <div className="info">*/}
            {/*        <span>Mô tả</span>*/}
            {/*        <hr/>*/}
            {/*        <span>Thông tin thêm</span>*/}
            {/*        <hr/>*/}
            {/*        <span>FAQ</span>*/}
            {/*    </div>*/}
            {/*</div>*/}
            {loading ? (
                "loading"
            ) : (
                <>
                    <div className="left">
                        <div className="images">
                            <img
                                src={
                                    process.env.REACT_APP_UPLOAD_URL +
                                    data?.attributes?.img?.data?.attributes?.url
                                }
                                alt=""
                                onClick={(e) => setSelectedImg("img")}
                            />
                            <img
                                src={
                                    process.env.REACT_APP_UPLOAD_URL +
                                    data?.attributes?.img2?.data?.attributes?.url
                                }
                                alt=""
                                onClick={(e) => setSelectedImg("img2")}
                            />
                        </div>
                        <div className="mainImg">
                            <img
                                src={
                                    process.env.REACT_APP_UPLOAD_URL +
                                    data?.attributes[selectedImg]?.data?.attributes?.url
                                }
                                alt=""
                            />
                        </div>
                    </div>
                    <div className="right">
                        <h1>{data?.attributes?.title}</h1>
                        <span className="price">{data?.attributes?.price.toLocaleString('vi-VN', {
                            style: 'currency',
                            currency: 'VND'
                        }).replace(/[^0-9.]/g, '')}</span>
                        <p>{data?.attributes?.desc}</p>
                        <div className="quantity">
                            <button
                                onClick={() =>
                                    setQuantity((prev) => (prev === 1 ? 1 : prev - 1))
                                }
                            >
                                -
                            </button>
                            {quantity}
                            <button onClick={() => setQuantity((prev) => prev + 1)}>+</button>
                        </div>
                        <button
                            className="add"
                            onClick={() =>
                                dispatch(
                                    addToCart({
                                        id: data.id,
                                        title: data.attributes.title,
                                        desc: data.attributes.desc,
                                        price: data.attributes.price,
                                        img: data.attributes.img.data.attributes.url,
                                        quantity,
                                    })
                                )
                            }
                        >
                            <AddShoppingCartIcon/> THÊM VÀO GIỎ HÀNG
                        </button>
                        <div className="links">
                            <div className="item">
                                <FavoriteBorderIcon/> THÊM VÀO DANH SÁCH YÊU THÍCH
                            </div>
                            <div className="item">
                                <BalanceIcon/> THÊM VÀO SO SÁNH
                            </div>
                        </div>
                        <hr/>
                        <div className="info">
                            <span>Mô tả</span>
                            <hr/>
                            <span>Thông tin thêm</span>
                            <hr/>
                            <span>FAQ</span>
                        </div>
                    </div>
                </>
            )}
        </div>
    );
};

export default Product;