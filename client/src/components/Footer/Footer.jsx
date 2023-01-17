import React from 'react';
import './Footer.scss';
const Footer = () => {
    return (
        <div className='footer'>
            <div className="top">
                <div className="item">
                    <h1>Loại</h1>
                    <span>Thời trang nữ</span>
                    <span>Thời trang nam</span>
                    <span>Giày dép</span>
                    <span>Phụ kiện</span>
                    <span>Hàng mới  </span>
                </div>

                <div className="item">
                    <h1>Liên kết</h1>
                    <span>FAQ</span>
                    <span>Cửa hàng</span>
                    <span>Cookies</span>
                </div>
                <div className="item">
                    <h1>Thông tin</h1>
                    <span>VJETSTORE là một cửa hàng thời trang hàng đầu tại Việt
                        Nam, với nhiều năm kinh nghiệm trong lĩnh vực thời trang.
                        Chúng tôi cung cấp những mẫu thời trang mới nhất và độc đáo
                        nhất từ các thương hiệu hàng đầu trên toàn thế giới cho cả nam và nữ.
                    </span>
                </div>
                <div className="item">
                    <h1>Liên hệ</h1>
                    <span>
                        Cảm ơn quý khách đã quan tâm đến VJETSTORE. Nếu quý khách
                        có bất kỳ câu hỏi hay nhu cầu gì về cửa hàng của chúng tôi,
                        vui lòng liên hệ với chúng tôi theo các thông tin sau:
                    </span>
                    <span>Địa chỉ: 123 Đường ABC, Quận DEF, Thành phố GHI</span>
                    <span>Điện thoại: 0987654321</span>
                    <span>Email: info@vjetstore.com</span>
                    <span>Website: www.vjetstore.com</span>
                </div>
            </div>
            <div className="bottom">
                <div className="left">
                    <span className="logo">Vjet Store</span>
                    <span className="copyright">
                        © 2023 Bản quyền thuộc về Vjet Store
                    </span>
                </div>
                <div className="right">
                    <img src="/img/payment.png" alt="logo payment" />
                </div>
            </div>
        </div>
    );
};

export default Footer;