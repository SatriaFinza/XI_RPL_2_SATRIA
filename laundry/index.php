<!DOCTYPE html>
<html>
    <head>
        <title>Selamat Datang - Sistem Informasi Laundry</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <style>
            body {
                background: linear-gradient(135deg, #e0f2fe 0%, #f3e8ff 100%);
                min-height: 100vh;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .navbar-custom {
                background: rgba(255, 255, 255, 0.9);
                backdrop-filter: blur(10px);
                border-bottom: none;
                box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            }
            .navbar-brand {
                color: #2563eb !important;
                font-size: 22px;
                letter-spacing: 1px;
            }
            .hero-section {
                background: linear-gradient(135deg, #6366f1 0%, #a855f7 50%, #ec4899 100%);
                color: white;
                border-radius: 20px;
                padding: 50px 30px;
                box-shadow: 0 10px 25px rgba(168, 85, 247, 0.3);
                margin-top: 20px;
            }
            .hero-section h1 {
                font-weight: 700;
                margin-bottom: 15px;
                text-shadow: 0 2px 4px rgba(0,0,0,0.1);
            }
            .hero-section p {
                font-size: 18px;
                opacity: 0.95;
            }
            .btn-login-nav {
                background: linear-gradient(135deg, #2563eb, #3b82f6);
                border: none;
                color: white !important;
                border-radius: 25px;
                padding: 8px 22px !important;
                font-weight: 600;
                transition: all 0.3s ease;
            }
            .btn-login-nav:hover {
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(37, 99, 235, 0.4);
            }
            .btn-hero {
                background: #ffffff;
                color: #7c3aed !important;
                border: none;
                font-weight: 700;
                border-radius: 30px;
                padding: 12px 30px;
                margin-top: 15px;
                transition: all 0.3s ease;
                box-shadow: 0 4px 12px rgba(0,0,0,0.15);
            }
            .btn-hero:hover {
                background: #f8fafc;
                transform: scale(1.05);
                box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            }
            .card-feature {
                border: none;
                border-radius: 16px;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                background: white;
                padding: 10px;
                box-shadow: 0 8px 20px rgba(0,0,0,0.04);
            }
            .card-feature:hover {
                transform: translateY(-8px);
                box-shadow: 0 12px 25px rgba(0,0,0,0.1);
            }
            .card-1 { border-top: 5px solid #06b6d4; }
            .card-2 { border-top: 5px solid #10b981; }
            .card-3 { border-top: 5px solid #f59e0b; }
            
            .icon-box {
                font-size: 40px;
                margin-bottom: 10px;
            }
            footer {
                margin-top: 50px;
                padding: 20px 0;
                color: #64748b;
                font-weight: 500;
            }
        </style>
    </head>
    <body>

        <!-- Navbar -->
<nav class="navbar navbar-default navbar-static-top navbar-custom">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php">✨ <b>FINNWASH LAUNDRY</b></a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <!-- Arahkan ke login_page.php -->
            <li><a href="login_page.php" class="btn btn-login-nav" style="margin-top: 8px;">Login Admin</a></li>
        </ul>
    </div>
</nav>

<!-- Hero Section -->
<div class="container">
    <div class="jumbotron text-center hero-section">
        <h1>Layanan Laundry Cepat & Clean</h1>
        <p>Solusi pakaian bersih, wangi, dan rapi tanpa repot.</p>
        <p>
            <!-- Arahkan ke login_page.php -->
            <a class="btn btn-hero btn-lg" href="login_page.php" role="button">Masuk ke Halaman Login &rarr;</a>
        </p>
    </div>
</div>

        <!-- Keunggulan Services -->
        <div class="container" style="margin-top: 40px;">
            <div class="row text-center">
                <div class="col-md-4">
                    <div class="panel panel-default card-feature card-1">
                        <div class="panel-body">
                            <div class="icon-box">⚡</div>
                            <h3 style="color: #0891b2; font-weight: 600;">Proses Cepat</h3>
                            <p style="color: #64748b;">Pengerjaan tepat waktu sesuai dengan pilihan paket pengerjaan Anda.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default card-feature card-2">
                        <div class="panel-body">
                            <div class="icon-box">✨</div>
                            <h3 style="color: #059669; font-weight: 600;">Bersih & Harum</h3>
                            <p style="color: #64748b;">Menggunakan deterjen berkualitas tinggi dan pewangi tahan lama.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default card-feature card-3">
                        <div class="panel-body">
                            <div class="icon-box">💰</div>
                            <h3 style="color: #d97706; font-weight: 600;">Harga Terjangkau</h3>
                            <p style="color: #64748b;">Penawaran harga ramah kantong dengan hasil maksimal.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="text-center">
            <p>&copy; Sistem Informasi Laundry. All rights reserved.</p>
        </footer>

    </body>
</html>