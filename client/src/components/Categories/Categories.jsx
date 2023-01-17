import React from 'react';
import './Categories.scss';
import {Link} from "react-router-dom";

const Categories = () => {
    return (
        <div className="categories">
            <div className="col">
                <div className="row">
                    <img
                        src="https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FLC61rt1.png?s=e10958fabbf9404e24d0fb61ff64ceb8"
                        alt=""
                    />
                    <button>
                        <Link className="link" to="/products/1">
                            Đang giảm giá
                        </Link>
                    </button>
                </div>
                <div className="row">
                    <img
                        src="https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FKv3W4Oy.png?s=f33d6c8722fee1272a4472aa1c646bf1"
                        alt=""
                    />
                    <button>
                        <Link to="/products/1" className="link">
                            Nữ
                        </Link>
                    </button>
                </div>
            </div>
            <div className="col">
                <div className="row">
                    {" "}
                    <img
                        src="https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FRoZhUaB.png?s=894b9c02e6552c4795dcf104a81bdf94"
                        alt=""
                    />
                    <button>
                        <Link to="/products/1" className="link">
                            Mùa
                        </Link>
                    </button>
                </div>
            </div>
            <div className="col col-l">
                <div className="row">
                    <div className="col">
                        <div className="row">
                            <img
                                src="https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FUoXj0l8.png?s=7e9f8ba75351676970079ba33efc5261"
                                alt=""
                            />
                            <button>
                                <Link to="/products/1" className="link">
                                    Nam
                                </Link>
                            </button>
                        </div>
                    </div>
                    <div className="col">
                        <div className="row">
                            {" "}
                            <img
                                src="https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FS68S2Hi.png?s=015438c8b6b5be8e1380a292e5332ac1"
                                alt=""
                            />
                            <button>
                                <Link to="/products/1" className="link">
                                    Đồ phối
                                </Link>
                            </button>
                        </div>
                    </div>
                </div>
                <div className="row">
                    <img
                        src="https://nustvondev.imgix.net/https%3A%2F%2Fnustvondev.imgix.net%2Fhttps%253A%252F%252Fi.imgur.com%252FLxU0jsB.png%3Fs%3Dd4c8d9e4b7c0417e1186dd675c7b5190?s=f01bc0d2b03088d5be222b88c44de4ff"
                        alt=""
                    />
                    <button>
                        <Link to="/products/1" className="link">
                            Xu hướng
                        </Link>
                    </button>
                </div>
            </div>
        </div>
    );
};
export default Categories;