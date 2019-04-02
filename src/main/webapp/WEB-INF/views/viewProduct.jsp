<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Product Details</title>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>
            <p class="lead">Here is the detail information of the product!</p>
        </div>

        <div class = "container">
            <div class="row">
                <div class="col-md-5">
                    <img src="#" alt="image" style="width:100%; height: 300px;" />
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><strong>Author </strong>${product.productAuthor}</p>
                    <p><strong>Category </strong>${product.productCategory}</p>
                    <p><strong>Condition </strong>${product.productCondition}</p>
                    <p><h4>${product.productPrice}$</h4></p>
            </div>
        </div>
<%@include file="/WEB-INF/views/template/footer.jsp" %>