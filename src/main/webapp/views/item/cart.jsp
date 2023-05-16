<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="page">

  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col">
          <p class="bread"><span><a href="../index.jsp">Home</a></span> / <span>Shopping Cart</span></p>
        </div>
      </div>
    </div>
  </div>
  <div class="colorlib-product">
    <div class="container">
      <div class="row row-pb-lg">
        <div class="col-md-10 offset-md-1">
          <div class="process-wrap">
            <div class="process text-center active">
              <p><span>01</span></p>
              <h3>Shopping Cart</h3>
            </div>
            <div class="process text-center">
              <p><span>02</span></p>
              <h3>Checkout</h3>
            </div>
            <div class="process text-center">
              <p><span>03</span></p>
              <h3>Order Complete</h3>
            </div>
          </div>
        </div>
      </div>
<%--      cart detail--%>
      <div class="row row-pb-lg">
        <div class="col-md-12">
          <div class="product-name d-flex">
            <div class="one-forth text-left px-4">
              <span>Product Details</span>
            </div>
            <div class="one-eight text-center">
              <span>Price</span>
            </div>
            <div class="one-eight text-center">
              <span>Quantity</span>
            </div>
            <div class="one-eight text-center">
              <span>Total</span>
            </div>
            <div class="one-eight text-center px-4">
              <span>Remove</span>
            </div>
          </div>
<%--          cart list--%>
          <c:forEach var="cart" items="${allcart}">
            <div class="product-cart d-flex">
              <div class="one-forth">
                <div class="product-img" style="background-image: url(/images/${cart.item_imgname});">
                </div>
                <div class="display-tc">
                  <h3>${cart.item_name}</h3>
                </div>
              </div>
              <div class="one-eight text-center">
                <div class="display-tc">
                  <span class="price"><fmt:formatNumber value="${cart.item_price}" pattern="###,###원"/></span>
                </div>
              </div>
              <div class="one-eight text-center">
                <div class="display-tc">
                  <input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="${cart.cnt}" min="1" max="100">
                </div>
              </div>
              <div class="one-eight text-center">
                <div class="display-tc">
                  <span class="price"><fmt:formatNumber value="${cart.item_price * cart.cnt}" pattern="###,###원"/></span>
                </div>
              </div>
              <div class="one-eight text-center">
                <div class="display-tc">
                  <a href="/item/delcart?id=${cart.id}" class="closed" role="button"></a>
                </div>
              </div>
            </div>

          </c:forEach>

          </div>
        </div>
      </div>
      <div class="row row-pb-lg">
        <div class="col-md-12">
          <div class="total-wrap">
            <div class="row">
              <div class="col-sm-8">
                <form action="#">
                  <div class="row form-group">
                    <div class="col-sm-9">
                      <input type="text" name="quantity" class="form-control input-number" placeholder="Your Coupon Number...">
                    </div>
                    <div class="col-sm-3">
                      <input type="submit" value="Apply Coupon" class="btn btn-primary">
                    </div>
                  </div>
                </form>
              </div>
              <div class="col-sm-4 text-center">
                <div class="total">
                  <div class="sub">
                    <p><span>Subtotal:</span> <span>$200.00</span></p>
                    <p><span>Delivery:</span> <span>$0.00</span></p>
                    <p><span>Discount:</span> <span>$45.00</span></p>
                  </div>
                  <div class="grand-total">
                    <p><span><strong>Total:</strong></span> <span>$450.00</span></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>

<div class="gototop js-top">
  <a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
</div>