<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Cards</title>
<style>
  .product-card {
    border: 1px solid #ddd;
    border-radius: 5px;
    margin: 10px;
    padding: 10px;
    width: 300px;
    background-color: #f9f9f9;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  }

  .product-image {
    width: 100%;
    height: auto;
    border-radius: 5px;
  }

  .product-details {
    margin-top: 10px;
  }

  .product-name {
    font-size: 18px;
    font-weight: bold;
    color: #333;
  }

  .product-price {
    font-size: 16px;
    color: #007bff;
  }

  .product-discount {
    font-size: 14px;
    color: #28a745;
  }

  .btn {
    display: block;
    width: 100%;
    padding: 10px 0;
    margin-top: 10px;
    text-align: center;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .btn:hover {
    background-color: #0056b3;
  }
</style>
</head>
<body>

<div class="product-card">
  <img src="product_image.jpg" alt="Product Image" class="product-image">
  <div class="product-details">
    <div class="product-name">Pharmeasy Women's Diabetic & Orthopedic Slippers</div>
    <div class="product-price">₹545.48</div>
    <div class="product-discount">48% OFF</div>
    <button class="btn">Order Now</button>
    <button class="btn">Add to Cart</button>
  </div>
</div>

<!-- Repeat the above product card for each product -->

</body>
</html>