import React, {useState} from 'react';
import './Products.scss';
import List from "../../components/List/List";
import {useParams} from "react-router-dom";
import useFetch from "../../hooks/useFetch";

const Products = () => {
    const catId = parseInt(useParams().id);
    const [maxPrice, setMaxPrice] = useState(1000000);
    const [sort, setSort] = useState(null);
    const [selectedSubCats, setSelectedSubCats] = useState([]);

    const {data, loading, error} = useFetch(
        `/sub-categories?[filters][categories][id][$eq]=${catId}`
    );

    const handleChange = (e) => {
        const value = e.target.value;
        const isChecked = e.target.checked;

        setSelectedSubCats(
            isChecked
                ? [...selectedSubCats, value]
                : selectedSubCats.filter((item) => item !== value)
        );
    };
    return (
        <div className='products'>
            <div className="left">
                <div className="filterItem">
                    <h2>Danh Mục</h2>
                    {data?.map((item) => (
                        <div className="inputItem" key={item.id}>
                            <input
                                type="checkbox"
                                id={item.id}
                                value={item.id}
                                onChange={handleChange}
                            />
                            <label
                                htmlFor={item.id}>{item.attributes.title.charAt(0).toUpperCase() + item.attributes.title.slice(1)}</label>
                        </div>
                    ))}
                </div>
                <div className="filterItem"><h2>Lọc Theo Giá</h2>
                    <div className="inputItem">
                        <span>0</span>
                        <input
                            type="range"
                            min={0}
                            max={1000000}
                            onChange={(e) => {
                                setMaxPrice(e.target.value);

                            }}
                        />
                        <span>{maxPrice.toLocaleString('vi-VN', {
                            style: 'currency',
                            currency: 'VND'
                        }).replace(/[^0-9.]/g, '')}</span>
                    </div>
                </div>
                <div className="filterItem"><h2>Sắp Xếp Theo</h2>
                    <div className="inputItem">
                        <input
                            type="radio"
                            id="asc"
                            value="asc"
                            name="price"
                            onChange={(e) => setSort("asc")}
                        />
                        <label htmlFor="asc">Giá tăng dần</label>
                    </div>
                    <div className="inputItem">
                        <input
                            type="radio"
                            id="desc"
                            value="desc"
                            name="price"
                            onChange={(e) => setSort("desc")}
                        />
                        <label htmlFor="desc">Giá giảm dần</label>
                    </div>
                </div>
            </div>
            <div className="right">
                <img
                    className="catImg"
                    src="https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FM09CH2g.png?s=4a802f8755e33f8bc42e54433846486b"
                    alt=""
                />
                <List catId={catId} maxPrice={maxPrice} sort={sort} subCats={selectedSubCats}/>
            </div>
        </div>
    );
};

export default Products;