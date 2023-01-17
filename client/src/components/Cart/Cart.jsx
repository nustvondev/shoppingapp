import React from 'react';
import DeleteOutlinedIcon from "@mui/icons-material/DeleteOutlined";
import './Cart.scss'
import { useSelector } from "react-redux";
import { removeItem, resetCart } from "../../redux/cartReducer";
import { useDispatch } from "react-redux";
import { makeRequest } from "../../makeRequest";
import { loadStripe } from "@stripe/stripe-js";
const Cart = () => {
    const products = useSelector((state) => state.cart.products);
    const dispatch = useDispatch();
    const totalPrice = () => {
        let total = 0;
        products.forEach((item) => {
            total += item.quantity * item.price;
        });
        return total;
    };
    const stripePromise = loadStripe(
        "pk_test_51MQwMjIcxUTlzIHnqj9g6KoS6yNtDyxquPcGjCSQMpJdlaEE2mwat8qxJW71fGcVTfh9y3DmHBRsOZwV0syERUML00LyB2aHdV"
    );
    const handlePayment = async () => {
        try {
            const stripe = await stripePromise;
            const res = await makeRequest.post("/orders", {
                products,
            });
            await stripe.redirectToCheckout({
                sessionId: res.data.stripeSession.id,
            });

        } catch (err) {
            console.log(err);
        }
    };
    // const data = [
    //     {
    //         id: 1,
    //         img: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FO4845Qf.png?s=9445564baaf1b53deb16cd7aaf437e37',
    //         img2: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2Fmc1akzZ.png?s=b602cb84622e255cfe411b3662373ad2',
    //         title: 'Woman Wearing Black Sport',
    //         isNew: true,
    //         oldPrice: 1248000,
    //         price: 500000
    //
    //     },
    //     {
    //         id: 2,
    //         img: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2Fa8oiYck.png?s=8a6841143f1f6ba45b7725b7be39b8bc',
    //         img2: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FSEgTyqt.png?s=51a03c37ac0917bb4f54a57a5f1e6be2',
    //         title: 'Coat',
    //         isNew: true,
    //         oldPrice: 248000,
    //         price: 190000
    //
    //     }
    // ]
    return (
        <div className={'cart'}>
            <h1>Giỏ Hàng</h1>
            {products?.map((item) => (
                <div className="item" key={item.id}>
                    <img src={process.env.REACT_APP_UPLOAD_URL +item.img} alt=""/>
                    <div className="details">
                        <h1>{item.title}</h1>
                        <p>{item.desc?.substring(0, 100)}</p>
                        <div className="price">
                            {item.quantity} x {item.price.toLocaleString('vi-VN', {
                            style: 'currency',
                            currency: 'VND'
                        }).replace(/[^0-9.]/g, '')}
                        </div>
                    </div>
                    <DeleteOutlinedIcon
                        className="delete"
                        onClick={() => dispatch(removeItem(item.id))}
                    />
                </div>
            ))}
            <div className="total">
                <span>Tổng cộng</span>
                <span>{(totalPrice()).toLocaleString('vi-VN', {
                    style: 'currency',
                    currency: 'VND'
                }).replace(/[^0-9.]/g, '')}</span>
            </div>
            <button onClick={handlePayment}>Tiến hành thanh toán</button>
            <span className="reset" onClick={() => dispatch(resetCart())}>
        Xóa giỏ hàng
      </span>
        </div>
    );
};

export default Cart;