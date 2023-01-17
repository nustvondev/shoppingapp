import React, {useState} from 'react';
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import SearchIcon from '@mui/icons-material/Search';
import PersonOutlineOutlinedIcon from "@mui/icons-material/PersonOutlineOutlined";
import FavoriteBorderOutlinedIcon from "@mui/icons-material/FavoriteBorderOutlined";
import ShoppingCartOutlinedIcon from "@mui/icons-material/ShoppingCartOutlined";
import {Link} from "react-router-dom";
import './Navbar.scss';
import Cart from "../Cart/Cart";
import {useSelector} from "react-redux";
const Navbar = () => {
    const [openCart,setOpenCart]=useState(false);
    const products = useSelector((state) => state.cart.products);
    return (
        <div className='navbar'>
            <div className="wrapper">


                <div className="left">
                    <div className="item">
                        <img src="/img/vi.png" alt="concurrency"/>
                        <ArrowDropDownIcon/>
                    </div>
                    <div className="item">
                        <span>VND</span>
                        <ArrowDropDownIcon/>
                    </div>
                    <div className="item">
                        <Link className='link' to='/products/1'>Thời trang nam</Link>
                    </div>
                    <div className="item">
                        <Link className='link' to='/products/2'>Thời trang nữ</Link>
                    </div>
                </div>
                <div className="center">
                    <Link className='link' to='/'>VJETSTORE</Link>
                </div>
                <div className="right">
                    <div className="item">
                        <Link className='link' to='/'>Trang chủ</Link>
                    </div>
                    <div className="item">
                        <Link className='link' to='/'>Thông tin</Link>
                    </div>
                    <div className="item">
                        <Link className='link' to='/'>Liên hệ</Link>
                    </div>
                    <div className="item">
                        <Link className='link' to='/'>Cửa hàng</Link>
                    </div>
                    <div className="icons">
                        <SearchIcon/>
                        <PersonOutlineOutlinedIcon/>
                        <FavoriteBorderOutlinedIcon/>
                        <div className="cartIcon"  onClick={()=>setOpenCart(!openCart)}>
                            <ShoppingCartOutlinedIcon/>
                            <span>{products.length}</span>
                        </div>
                    </div>
                </div>
            </div>
            {openCart && <Cart/>}
        </div>
    );
};

export default Navbar;