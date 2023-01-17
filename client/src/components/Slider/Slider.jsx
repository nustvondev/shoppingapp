import React, {useState} from 'react';
// import EastOutlinedIcon from "@mui/icons-material/EastOutlined";
// import WestOutlinedIcon from "@mui/icons-material/WestOutlined";
import ArrowCircleLeftIcon from '@mui/icons-material/ArrowCircleLeft';
import ArrowCircleRightIcon from '@mui/icons-material/ArrowCircleRight';
import './Slider.scss';
const Slider = () => {
    const [currentSlide, setCurrentSlide] = useState(0);
    const slideImage = [
        'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2F0moCJOf.png?s=fa3785465c1a74d131f6704690822b0a',
        'https://nustvondev.imgix.net/https%3A%2F%2Fi.imgur.com%2FHT43sSW.png?s=0f76b907503fdbee29db72c2b3b2086a',
        'https://nustvondev.imgix.net/https%3A%2F%2Fimgur.com%2FrCXdKs2.png?s=3d333f038ab6acc8f07fe9d32ee220b1'
    ];

    const prevSlide = () => {
        setCurrentSlide(currentSlide === 0 ? 2 : (prev) => prev - 1);
    };
    const nextSlide = () => {
        setCurrentSlide(currentSlide === 2 ? 0 : (prev) => prev + 1);
    };
    return (
        <div className="slider">
            <div className="container" style={{transform:`translateX(-${currentSlide * 100}vw)`}}>
                <img src={slideImage[0]} alt="" />
                <img src={slideImage[1]} alt="" />
                <img src={slideImage[2]} alt="" />
            </div>
            <div className="icons">
                <div className="icon" onClick={prevSlide}>
                    <ArrowCircleLeftIcon />
                </div>
                <div className="icon" onClick={nextSlide}>
                    <ArrowCircleRightIcon />
                </div>
            </div>
        </div>
    );
};

export default Slider;