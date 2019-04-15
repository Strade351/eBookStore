<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Product List</title>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>
            <p class="lead">This is the Product Inventory Page!</p>
        </div>

        <table class = "table table-striped table=hover">
            <thread>
                <tr class ="bg-success">
                    <th>Photo Thumb</th>
                    <th>Product Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th> </th>
                </tr>
            </thread>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="#" alt="image" /></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productId}" />">
                        <span class="fas fa-info"></span></a>
                    <a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />">
                            <span class="fas fa-trash"></span></a></td>

                </tr>
            </c:forEach>
        </table>

        <a href="<spring:url value="/admin/productInventory/addProduct" />" class="btn btn-primary">Add Product</a>
<%@include file="/WEB-INF/views/template/footer.jsp" %>