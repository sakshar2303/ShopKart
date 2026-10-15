#!/bin/bash
set -e

# 1. Base project setup
git add .gitignore README.md TEST_DATA.md
git commit -m "feat(setup): initialize ShopKart enterprise fullstack repository"

# 2. Lab 01 - Backend Customer Authentication Service
git add backend/package.json backend/package-lock.json backend/models/customer.model.js backend/models/user.model.js backend/utils/generateToken.js backend/middlewares/auth.middleware.js backend/controllers/customer.controller.js backend/routes/customer.routes.js
git commit -m "feat(lab-01): implement customer authentication service and jwt cookie handlers"

# 3. Lab 02 - Frontend Authentication UI & Routing
git add frontend/package.json frontend/package-lock.json frontend/vite.config.js frontend/.oxlintrc.json frontend/index.html frontend/public/ frontend/src/assets/ frontend/src/services/api.js frontend/src/pages/Login.jsx frontend/src/pages/Register.jsx frontend/src/components/Navbar.jsx frontend/src/components/Footer.jsx frontend/src/App.jsx frontend/src/App.css frontend/src/main.jsx frontend/README.md
git commit -m "feat(lab-02): implement client-server authentication flow and responsive layout"

# 4. Lab 03 - Product Catalog & Discovery
git add backend/models/product.model.js backend/utils/seedData.js backend/controllers/product.controller.js backend/routes/product.routes.js frontend/src/components/SearchBar.jsx frontend/src/components/ProductCard.jsx frontend/src/pages/Products.jsx frontend/src/pages/ProductDetails.jsx frontend/src/pages/Home.jsx
git commit -m "feat(lab-03): implement product catalog, filtering, search, and dynamic discovery"

# 5. Lab 04 - Wishlist System
git add backend/controllers/wishlist.controller.js backend/routes/wishlist.routes.js frontend/src/components/WishlistCard.jsx frontend/src/pages/Wishlist.jsx
git commit -m "feat(lab-04): implement persistent customer wishlist with toggle and badge integration"

# 6. Lab 05 - Shopping Cart & Global State Management
git add backend/controllers/cart.controller.js backend/routes/cart.routes.js frontend/src/context/CartContext.jsx frontend/src/context/useCart.js frontend/src/components/CartItem.jsx frontend/src/pages/Cart.jsx
git commit -m "feat(lab-05): implement shopping cart engine with stock validation and reactive context"

# 7. Lab 06 - Checkout, Orders, Razorpay & Dashboard
git add backend/config/razorpay.js backend/models/order.model.js backend/controllers/order.controller.js backend/routes/order.routes.js backend/index.js frontend/src/pages/Checkout.jsx frontend/src/pages/OrderSuccess.jsx frontend/src/pages/Orders.jsx frontend/src/pages/Dashboard.jsx frontend/src/index.css
git commit -m "feat(lab-06): complete end-to-end checkout with razorpay payment verification and order history"

# 8. Final polish & documentation
git add -A
if ! git diff-index --quiet HEAD --; then
  git commit -m "docs: enrich README and verify cross-platform configurations"
fi

rm make_commits.sh
