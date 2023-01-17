import React from 'react';
import './Card.scss';
import {Link} from "react-router-dom";

const Card = ({item}) => {
    return (
        <Link className='link' to={`/product/${item.id}`}>
        <div className='card'>
            <div className="image">
                {item?.attributes.isNew && <span>Sản phẩm mới!</span>}
                <img src={process.env.REACT_APP_UPLOAD_URL+item?.attributes.img.data.attributes.url} alt="" className="mainImg"/>
                <img src={process.env.REACT_APP_UPLOAD_URL+item?.attributes.img2.data.attributes.url} alt="" className="secondImg"/>
            </div>
            <h2>{item?.attributes.title}</h2>
            <div className="prices">
                <h3>{((item?.attributes.oldPrice+20000).toLocaleString('vi-VN', {style: 'currency', currency: 'VND'}).replace(/[^0-9.]/g, ''))}</h3>
                <h3>{(item?.attributes.price.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'}).replace(/[^0-9.]/g, ''))}</h3>
            </div>
        </div></Link>
    );
};

export default Card;