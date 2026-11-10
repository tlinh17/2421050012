
var danhSachVid = [
    {
        id: 1,
        ten: "Kung Fu Panda 4",
        anh: "../img/1.jpg",
        linkytb: "https://www.youtube.com/embed/_inKs4eeHiI?si=IMZCtwdWYopyqc_G"
    },

    {
        id: 2,
        ten: "Zootopia",
        anh: "../img/2.jpg",
        linkytb: "https://www.youtube.com/embed/BjkIOU5PhyQ?si=8OmjpNILIaYX-Vsb",
    },

    {
        id: 3,
        ten: "Turning Red",
        anh: "../img/3.jpg",
        linkytb: "https://www.youtube.com/embed/XdKzUbAiswE?si=D7YOUpZKjBuOFXEz", 
    },
    {
        id: 4,
        ten: "Na Tra",
        anh: "../img/4.jpg",
        linkytb: "https://www.youtube.com/embed/yCJy9roIv8Q?si=QlqfF8IO-qQmh665",
    },

    {
        id: 5,
        ten: "Pororo",
        anh: "../img/5.jpg",
        linkytb: "https://www.youtube.com/embed/8GVHJHsLxmc?si=7UbpYxTi3G6K_xjk", 
    },

]

function chonBai(id) {
    for (let i = 0; i < danhSachVid.length; i++) {
        if(danhSachVid[i].id == id) {
            document.getElementsByClassName("banner-img")[0].src=danhSachVid[i].anh;
        }
        
    }
}
