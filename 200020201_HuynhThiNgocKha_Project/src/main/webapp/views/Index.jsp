<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
<style type="text/css">
	body {
	    font-family: Arial, sans-serif;
	    background-color: #e6e6d8;
	    margin: 0;
	    color: #333;
	}

	.header {
	    background-color: #5A571B;
	    padding: 20px;
	    text-align: center;
	}
	
	.header input[type="text"] {
	    padding: 10px;
	    width: 50%;
	    border: none;
	    border-radius: 4px;
	}
	
	.header p {
		padding: 10px;
	    border: none;
	    cursor: pointer;
	    margin-top: -40px;
	    margin-left: 700px;
	}
	.header .nav {
	    margin-top: 10px;
	}
	
	.header .nav a {
	    margin: 0 10px;
	    text-decoration: none;
	    color: white;
	    font-weight: bold;
	}
		
	.product-container {
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: space-around;
	    background-color: #e6e6d8;
	    
	}
	
	.banner{
		background-color: #e6e6d8;
	}
	
	.banner img{
		
		width: 1000px;
        max-width: 800px;
        height: 160px;
        border-radius: 10px;
       	resize-mode: contain;
		margin-left: 350px;
		margin-top: 10px;
	}
	
	.product {
	    background-color: white;
	    width: 200px;
	    margin: 40px;   
	    border-radius: 8px;
	    text-align: center;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    
	}
	
	.product img {
	    max-width: 100%;
	    height: auto;
	    border-radius: 8px;
	    
	}
	
	.description {
	    background-color: #a09b68;
	    
	    color: white;
	    display: flex;
	    justify-content: space-around;
	    align-items: center;
	}
	
	.description .image, .description .text {
	    width: 45%;
	}
	
	.footer {
	    background-color: #5A571B;
	    text-align: center;
	    padding: 10px;
	    color: white;
	    margin-top: 300px;
	}
	
</style>
</head>
<body>
  <div class="header">
       <input type="text" placeholder="Bạn muốn tìm gì ?">
       <p>🔍</p>
       <div class="nav">
           <a href="Index.jsp">Home</a>
           <a href="SanPham.jsp">Sản Phẩm</a>
           <a href="ThemSanPham.jsp">Thêm Sản Phẩm</a>
           <a href="GioHang.jsp" class="cart">🛒</a>
           <a href="Register.jsp" class="dangky">Đăng ký</a>
           <a href="Login.jsp" class="dangnhap">Đăng nhập</a>
       </div>
    </div>
    <div class="banner">
    	<img alt="Banner" src="../images/banner2.webp">
    </div> 
    <div class="product-container">
        <div class="product">
            <img src="${product.image}" alt="Product Image 1">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
 
        <div class="product">
            <img src="${product.image}" alt="Product Image 2">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
        
        <div class="product">
            <img src="${product.image}" alt="Product Image 3">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>

        <div class="product">
            <img src="${product.image}" alt="Product Image 4">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>

        <div class="product">
            <img src="${product.image}" alt="Product Image 5">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
     
        <div class="product">
            <img src="${product.image}" alt="Product Image 6">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
        
        <div class="product">
            <img src="${product.image}" alt="Product Image 7">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
        
        <div class="product">
            <img src="${product.image}" alt="Product Image 8">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
        
          <div class="product">
            <img src="${product.image}" alt="Product Image 9">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
     
        <div class="product">
            <img src="${product.image}" alt="Product Image 10">
            <p>Tên sản phẩm: ${product.name}</p>
            <p>Giá: Liên hệ</p>
        </div>
        
       
        
        
        
       
    </div>
    <div class="footer">
        <p>20020201 - Huỳnh Thị Ngọc Khá</p>
    </div>
</body>
</html>