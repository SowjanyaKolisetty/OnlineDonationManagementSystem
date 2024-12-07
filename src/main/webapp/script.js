const images = [ 
    'https://image.lexica.art/full_webp/056dfb70-559c-43cb-a95a-d56b81135354',
    'https://image.lexica.art/full_webp/0e8d24f1-ce9d-49ad-8e67-40d2c26554ca',
    'images/carousel-2.jpg',
    'https://r.mobirisesite.com/693231/assets/images/photo-1532629345422-7515f3d16bb6.jpeg'
    
];

let currentImageIndex = 0;
const heroSection = document.querySelector('.hero');

// Function to change background images
function changeBackgroundImage() {
    heroSection.style.backgroundImage = `url(${images[currentImageIndex]})`;
    currentImageIndex = (currentImageIndex + 1) % images.length;
}

// Initial background image
changeBackgroundImage();

// Change image every 5 seconds
setInterval(changeBackgroundImage, 5000);




