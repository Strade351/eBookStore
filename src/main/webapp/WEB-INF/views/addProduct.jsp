<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<title>Product Details</title>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>
            <p class="lead">Fill the information to add a product!</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control" />
        </div>

        <div class="form-group">
        <label for="name">Author</label>
        <form:input path="productAuthor" id="author" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="category">Category: </label>
            <label class="check-box"><form:radiobutton path="productCategory" id="category" value="book" />Book</label>
            <label class="check-box"><form:radiobutton path="productCategory" id="category" value="vinyl-record" />Vinyl Record</label>
            <label class="check-box"><form:radiobutton path="productCategory" id="category" value="tape-record" />Tape Record</label>
            <label class="check-box"><form:radiobutton path="productCategory" id="category" value="accessory" />Accessory</label>
        </div>

        <div class="form-group">
            <label for="description">Description: </label>
            <form:textarea path="productDescription" id="description" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="price">Price: </label>
            <form:input path="productPrice" id="price" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="condition">Condition: </label>
            <label class="check-box"><form:radiobutton path="productCondition" id="condition" value="new" />New</label>
            <label class="check-box"><form:radiobutton path="productCondition" id="condition" value="used" />Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status: </label>
            <label class="check-box"><form:radiobutton path="productStatus" id="status" value="active" />Active</label>
            <label class="check-box"><form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
        </div>

        <div class="form-group">
            <label for="language">Language: </label>
            <label class="check-box"><form:radiobutton path="productLanguage" id="language" value="english" />English</label>
            <label class="check-box"><form:radiobutton path="productLanguage" id="language" value="russian" />Russian</label>
            <label class="check-box"><form:radiobutton path="productLanguage" id="language" value="other" />Other</label>
        </div>

        <div class="form-group">
            <label for="unitInStock">Unit in Stock: </label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="productImage">Upload Image: </label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-success">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-secondary">Cancel</a>
    </form:form>
<%@include file="/WEB-INF/views/template/footer.jsp" %>