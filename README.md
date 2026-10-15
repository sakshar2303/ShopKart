# 🛍️ ShopKart — Full-Stack E-Commerce Platform

<p align="center">
  <img src="https://img.shields.io/badge/ShopKart-v1.0.0-4F46E5?style=for-the-badge&logo=shopify&logoColor=white" alt="ShopKart Version" />
  <img src="https://img.shields.io/badge/React-19-61DAFB?style=for-the-badge&logo=react&logoColor=black" alt="React 19" />
  <img src="https://img.shields.io/badge/Node.js-Backend-339933?style=for-the-badge&logo=nodedotjs&logoColor=white" alt="Node.js" />
  <img src="https://img.shields.io/badge/Express.js-5.x-000000?style=for-the-badge&logo=express&logoColor=white" alt="Express.js" />
  <img src="https://img.shields.io/badge/MongoDB-Database-47A248?style=for-the-badge&logo=mongodb&logoColor=white" alt="MongoDB" />
  <img src="https://img.shields.io/badge/Razorpay-Integrated-02042B?style=for-the-badge&logo=razorpay&logoColor=white" alt="Razorpay" />
</p>

<p align="center">
  <b>A modern, high-performance, full-stack e-commerce web application engineered by Sakshar Dhawan.</b><br />
  Comprehensive implementation of Labs 01 through 06 adhering to all academic rubrics, database schemas, and enterprise business rules.
</p>

<p align="center">
  <a href="https://shopkart-frontend-mocha.vercel.app"><b>🌐 Live Demo</b></a> •
  <a href="https://github.com/sakshar2303/ShopKart"><b>📦 GitHub Repository</b></a> •
  <a href="#-laboratory-modules-coverage-lab-01--lab-06"><b>🧪 Lab Specifications</b></a> •
  <a href="#-api-endpoints--architecture"><b>⚡ API Documentation</b></a>
</p>

---

## 🌟 Overview & Key Highlights

**ShopKart** is a production-grade full-stack e-commerce platform developed with the **MERN** stack (MongoDB, Express.js, React 19, and Node.js). Designed with a clean luxury aesthetic, robust architectural separation of concerns, and defensive data persistence, ShopKart delivers an end-to-end shopping journey:

- **Bespoke UI/UX**: Premium aesthetic featuring responsive layouts, micro-animations, glassmorphism cards, zero jitter, and real-time validation states.
- **Strict Academic Compliance**: 100% adherence to all 6 Lab problem statements (Lab 01 to Lab 06).
- **Resilient Database Layer**: MongoDB Mongoose modeling with hybrid support for both MongoDB Atlas and automated local in-memory MongoDB fallback.
- **Enterprise Cart & Checkout**: Live server-calculated totals, atomic stock checks, order snapshot preservation, and Razorpay payment verification.

---

## 🧪 Laboratory Modules Coverage (Lab 01 – Lab 06)

| Lab Module | Title & Focus | Implemented Features & Technical Rubric |
| :--- | :--- | :--- |
| **Lab 01** | **Customer Authentication Service** | • RESTful Customer Auth (Register, Login, Profile `/me`, Logout)<br />• Password hashing via `bcrypt`<br />• JWT generation & `httpOnly` secure cookies<br />• Protected route middleware & password change API |
| **Lab 02** | **Client-Server Auth Flow** | • React + React Router DOM integration<br />• Cookie-based session persistence across refreshes<br />• Form validation with real-time error states<br />• Dynamic greeting and personalized navigation |
| **Lab 03** | **Product Catalog & Discovery** | • Dynamic catalog fetching with category filters<br />• Debounced instant search & price sorting (`asc`/`desc`)<br />• Dedicated Product Details view with stock badges<br />• Loading skeletons, empty states, and error handling |
| **Lab 04** | **Wishlist System** | • MongoDB user-product reference relationships<br />• Protected Wishlist API (`GET`, `POST`, `DELETE`, `PATCH` toggle)<br />• Wishlist count badge in navigation bar<br />• Instant add/remove toggle directly from cards |
| **Lab 05** | **Shopping Cart & Global State** | • Persistent cart subdocument model with stock bounds<br />• React Context API (`CartContext`) for global synchronization<br />• Quantity controls (`+` / `-`) with optimistic updates<br />• Live derived totals (subtotal, shipping, discount, taxes) |
| **Lab 06** | **Checkout, Orders & Razorpay** | • Shipping form validation (Phone, PIN, address)<br />• Server-side total recalculation (no client price tampering)<br />• Atomic stock verification and inventory deduction<br />• Razorpay Test Mode order creation & HMAC signature verification<br />• Order history (`/orders`), detailed receipt invoice, and cart auto-clear |

---

## 🏗️ Architecture & Technology Stack

```
Shop_Kart/
├── backend/
│   ├── config/             # Razorpay & database configurations
│   ├── controllers/        # Request handling (customer, product, cart, wishlist, order)
│   ├── middlewares/        # JWT auth verification middleware
│   ├── models/             # Mongoose schemas (Customer, Product, Order)
│   ├── routes/             # Express API routing endpoints
│   ├── utils/              # Token generator & seed dataset
│   ├── index.js            # Express application bootstrap & MongoDB fallback
│   └── package.json        # Backend dependencies & scripts
│
├── frontend/
│   ├── src/
│   │   ├── assets/         # High-resolution optimized brand media
│   │   ├── components/     # Navbar, Footer, ProductCard, CartItem, SearchBar
│   │   ├── context/        # CartContext & state management
│   │   ├── pages/          # Home, Products, ProductDetails, Wishlist, Cart, Checkout, Orders, Dashboard, Auth
│   │   ├── services/       # Axios API client configured with interceptors
│   │   ├── App.jsx         # App routing & protected route wrappers
│   │   └── index.css       # Design tokens, variables & typography
│   ├── index.html          # Application entry point & SEO meta
│   ├── vite.config.js      # Vite build configuration
│   └── package.json        # Frontend dependencies & scripts
│
└── README.md               # Project documentation
```

### Tech Stack Details

- **Frontend**: React 19, Vite, React Router DOM, Lucide Icons, Axios, Vanilla CSS Design System.
- **Backend**: Node.js, Express.js 5, JSON Web Token (JWT), Cookie-Parser, CORS, Bcrypt.
- **Database**: MongoDB, Mongoose 9, MongoDB In-Memory Server (offline development resilience).
- **Payment Gateway**: Razorpay Node SDK & Razorpay Standard Checkout Script.

---

## ⚡ API Endpoints & Contract

### Authentication & Customer (`/customers` & `/users`)
- `POST /customers/register` — Create new customer account
- `POST /customers/login` — Authenticate and receive `httpOnly` JWT cookie
- `GET /customers/me` — Retrieve authenticated customer profile *(Protected)*
- `POST /customers/logout` — Clear session cookies *(Protected)*
- `PATCH /customers/change-password` — Securely update customer password *(Protected)*

### Products (`/products`)
- `GET /products` — Retrieve all products (Supports `?search=`, `?category=`, `?sort=`)
- `GET /products/:id` — Retrieve detailed product by ID
- `POST /products` — Create new product item

### Wishlist (`/wishlist`)
- `GET /wishlist` — Retrieve customer's saved items *(Protected)*
- `POST /wishlist/:productId` — Add product to wishlist *(Protected)*
- `DELETE /wishlist/:productId` — Remove product from wishlist *(Protected)*
- `PATCH /wishlist/:productId/toggle` — Toggle saved status *(Protected)*

### Cart (`/cart`)
- `GET /cart` — Retrieve synchronized shopping cart *(Protected)*
- `POST /cart/:productId` — Add product to cart *(Protected)*
- `PATCH /cart/:productId` — Update item quantity *(Protected)*
- `DELETE /cart/:productId` — Remove item from cart *(Protected)*

### Checkout & Orders (`/orders`)
- `POST /orders/create-payment-order` — Verify stock, recalculate total, generate Razorpay order *(Protected)*
- `POST /orders/verify-payment` — Validate crypto signature, deduct stock, persist order, clear cart *(Protected)*
- `GET /orders` — List current user's past orders *(Protected)*
- `GET /orders/:id` — Retrieve full order receipt and tracking *(Protected)*
- `GET /orders/payment-config` — Get active gateway configuration *(Protected)*

---

## 🚀 Quickstart & Local Setup

### Prerequisites
- Node.js (v18+ or v20+)
- npm or yarn

### 1. Clone the repository
```bash
git clone https://github.com/sakshar2303/ShopKart.git
cd ShopKart
```

### 2. Configure Backend
```bash
cd backend
npm install
```
Create a `.env` file in `backend/`:
```env
PORT=5000
MONGODB_URI=mongodb+srv://<username>:<password>@cluster.mongodb.net/shopkart?retryWrites=true&w=majority
JWT_SECRET=super_secret_jwt_key_shopkart_2026
RAZORPAY_KEY_ID=rzp_test_placeholder
RAZORPAY_KEY_SECRET=rzp_secret_placeholder
NODE_ENV=development
```
> *Note: If `MONGODB_URI` is not reachable, the server automatically starts an in-memory MongoDB instance with pre-seeded products.*

Run backend:
```bash
npm start
```

### 3. Configure Frontend
```bash
cd ../frontend
npm install
```
Run development server:
```bash
npm run dev
```
Open [http://localhost:5173](http://localhost:5173) in your browser.

---

## 🔒 Security & Best Practices

- **Zero Client Trust**: Totals, taxes, and item costs are strictly computed server-side before creating invoices.
- **HttpOnly & SameSite Cookies**: Tokens are protected against XSS attacks using secure cookie storage.
- **HMAC SHA256 Signature Verification**: Tamper-proof payment confirmation using Razorpay webhooks and cryptographic digest comparison.
- **Safe Stock Concurrency**: Inventories are locked and verified at the moment of payment order generation and final settlement.

---

## 👨‍💻 Author

**Sakshar Dhawan**  
- GitHub: [@sakshar2303](https://github.com/sakshar2303)  
- Email: sakshardhawanfzk@gmail.com  
- Project: [ShopKart](https://github.com/sakshar2303/ShopKart)

---
*Crafted with precision for Lab 2029 Engineering Curriculum.*
