import React from "react";
import "./List.scss";
import Card from "../Card/Card";
import useFetch from "../../hooks/useFetch";

const List = ({subCats, maxPrice, sort, catId}) => {
    const sortQuery = sort ? `&sort=price:${sort}` : "";
    const {data, loading, error} = useFetch(
        `/products?populate=*&[filters][categories][id]=${catId}${subCats.map(
            (item) => `&[filters][sub_categories][id][$eq]=${item}`
        )}&[filters][price][$lte]=${maxPrice}${sortQuery}`
    );

    return (
        <div className="list">
            {loading
                ? "Đang tải dữ liệu..."
                : data?.length > 0
                    ? data.map((item) => <Card item={item} key={item.id} />)
                    : "Không có kết quả"}
        </div>
    );
};

export default List;