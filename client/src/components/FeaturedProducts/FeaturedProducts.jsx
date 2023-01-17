import React from 'react';
import './FeaturedProducts.scss';
import Card from "../Card/Card";
import * as constants from "../../constants/constants";
import useFetch from "../../hooks/useFetch";

const FeaturedProducts = ({type}) => {
    // const dataFeatureProducts = [
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
    //     },
    //     {
    //         id: 3,
    //         img: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FKi62TwO.png?s=dc3d553f2cb34a6210ebe25e276fb84f',
    //         img2: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FtnBI35T.png?s=cb408ab0b1ad37543428ee50c8d3f912',
    //         title: 'Skirt',
    //         oldPrice: 248000,
    //         price: 220000
    //
    //     },
    //     {
    //         id: 4,
    //         img: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FkNbQiLy.png?s=687cc2d872b28c955f8ce1a5bdbcc4db',
    //         img2: 'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FUrjKQDh.png?s=3262c30f2a162553ddd35ab37ba0374d',
    //         title: 'Hat',
    //         oldPrice: 248000,
    //         price: 210000
    //
    //     }
    // ]
    // const [data, setData] = useState([]);

    // useEffect(() => {
    //     const fetchData = async () => {
    //         try {
    //             console.log(process.env.REACT_APP_API_TOKEN);
    //             console.log(process.env.REACT_APP_API_URL);
    //             const res = await axios.get(process.env.REACT_APP_API_URL+`/products?populate=*&[filters][type][$eq]=${type}`, {
    //                 headers: {
    //                     Authorization:
    //                         `Bearer ${process.env.REACT_APP_API_TOKEN}`,
    //                 },
    //             });
    //             setData(res.data.data);
    //             console.log(res.data.data);
    //         } catch (err) {
    //             console.log(err)
    //         }
    //     };
    //     fetchData();
    // }, [type])
    const {data,loading,error}= useFetch(`/products?populate=*&[filters][type][$eq]=${type}`)
    // console.log(`data ${data}`);

    return (
        <div className='featuredProducts'>
            <div className="top"><h1>sản phẩm {constants.typeProduct.hasOwnProperty(type)?constants.typeProduct[`${type}`]:'Không xác định'} </h1>
                <p>
                    VJETSTORE luôn nỗ lực để cung cấp những sản phẩm đặc sắc và ưu việt nhất cho khách hàng. Trong tháng
                    này, chúng tôi đang giới thiệu những sản phẩm nổi bật.Hãy ghé thăm VJETSTORE ngay hôm nay để khám
                    phá những sản phẩm đặc sắc và ưu việt khác nhé!
                </p>
            </div>
            <div className="bottom">
                {error
                    ? "Một số lỗi đang diễn ra...!"
                    : loading
                        ? "Đang tải dữ liệu..."
                        : data?.map((item) => <Card item={item} key={item.id} />)}
            </div>
        </div>
    );
};

export default FeaturedProducts;