import 'package:ngopi_asu/Kasir/Laporan.dart';
import 'package:ngopi_asu/Kasir/edit_menu.dart';
import 'package:ngopi_asu/Kasir/kelola_menu.dart';
import 'package:ngopi_asu/Kasir/laporan_2.dart';
import 'package:ngopi_asu/Kasir/pesanan_pickup.dart';
import 'package:ngopi_asu/Kasir/pickup_lagi.dart';
import 'package:ngopi_asu/Kasir/pickup_lagi_3.dart';
import 'package:ngopi_asu/Kasir/riwayat_pesanan.dart';
import 'package:ngopi_asu/Kasir/riwayat_pesanan_2.dart';
import 'package:ngopi_asu/Kasir/riwayat_pesanan_3.dart';
import 'package:ngopi_asu/Kasir/tambah_menu.dart';
import 'package:ngopi_asu/chart/chart_pages.dart';
import 'package:ngopi_asu/pages/detail_10.dart';
import 'package:ngopi_asu/pages/detail_11.dart';
import 'package:ngopi_asu/pages/detail_12.dart';
import 'package:ngopi_asu/pages/detail_13.dart';
import 'package:ngopi_asu/pages/detail_14.dart';
import 'package:ngopi_asu/pages/detail_15.dart';
import 'package:ngopi_asu/pages/detail_16.dart';
import 'package:ngopi_asu/pages/detail_17.dart';
import 'package:ngopi_asu/pages/detail_18.dart';
import 'package:ngopi_asu/pages/detail_19.dart';
import 'package:ngopi_asu/pages/detail_2.dart';
import 'package:ngopi_asu/pages/detail_20.dart';
import 'package:ngopi_asu/pages/detail_3.dart';
import 'package:ngopi_asu/pages/detail_4.dart';
import 'package:ngopi_asu/pages/detail_5.dart';
import 'package:ngopi_asu/pages/detail_6.dart';
import 'package:ngopi_asu/pages/detail_7.dart';
import 'package:ngopi_asu/pages/detail_8.dart';
import 'package:ngopi_asu/pages/detail_9.dart';
import 'package:ngopi_asu/pages/login_pages.dart';
import 'package:ngopi_asu/pages/makanan.dart';
import 'package:ngopi_asu/pages/minuman.dart';
import 'package:ngopi_asu/pages/order_10.dart';
import 'package:ngopi_asu/pages/order_11.dart';
import 'package:ngopi_asu/pages/order_12.dart';
import 'package:ngopi_asu/pages/order_13.dart';
import 'package:ngopi_asu/pages/order_14.dart';
import 'package:ngopi_asu/pages/order_15.dart';
import 'package:ngopi_asu/pages/order_16.dart';
import 'package:ngopi_asu/pages/order_17.dart';
import 'package:ngopi_asu/pages/order_18.dart';
import 'package:ngopi_asu/pages/order_19.dart';
import 'package:ngopi_asu/pages/order_2.dart';
import 'package:ngopi_asu/pages/order_20.dart';
import 'package:ngopi_asu/pages/order_3.dart';
import 'package:ngopi_asu/pages/order_4.dart';
import 'package:ngopi_asu/pages/order_5.dart';
import 'package:ngopi_asu/pages/order_6.dart';
import 'package:ngopi_asu/pages/order_7.dart';
import 'package:ngopi_asu/pages/order_8.dart';
import 'package:ngopi_asu/pages/order_9.dart';
import 'package:ngopi_asu/pages/setelah_login.dart';
import 'package:ngopi_asu/pengiriman/button_deliver/deliver.dart';
import 'package:ngopi_asu/pengiriman/pickup.dart';
import 'package:ngopi_asu/screens/detail.dart';
import 'package:ngopi_asu/screens/home.dart';
import 'package:ngopi_asu/screens/order.dart';
import 'package:ngopi_asu/screens/riwayat_pesanan_4.dart';
import 'package:ngopi_asu/screens/riwayat_pesanan_5.dart';
import 'package:ngopi_asu/screens/sign_up.dart';
import 'package:ngopi_asu/screens/welcome.dart';
import 'package:ngopi_asu/screens/widgets/custom_line.dart';
import 'package:ngopi_asu/screens/widgets/pesanan.dart';
import 'package:flutter/material.dart';
import 'package:ngopi_asu/screens/widgets/profil.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.welcome:
        return buildRoute(
          const Welcome(),
          settings: settings,
        );
      case Routes.loginpages:
        return buildRoute(
          const LoginPages(),
          settings: settings,
        );
      case Routes.signup:
        return buildRoute(
          const SignUp(),
          settings: settings,
        );
      case Routes.home:
        return buildRoute(
          const Home(),
          settings: settings,
        );
      case Routes.setelahlogin:
        return buildRoute(
          const SetelahLogin(),
          settings: settings,
        );
      case Routes.pesanan:
        return buildRoute(
          const Pesanan(),
          settings: settings,
        );
      case Routes.makanan:
        return buildRoute(
          const Makanan(),
          settings: settings,
        );
      case Routes.minuman:
        return buildRoute(
          const Minuman(),
          settings: settings,
        );
      case Routes.detail:
        return buildRoute(
          const Detail(),
          settings: settings,
        );
      case Routes.detail_2:
        return buildRoute(
          const Detail2(),
          settings: settings,
        );
      case Routes.detail_3:
        return buildRoute(
          const Detail3(),
          settings: settings,
        );
      case Routes.detail_4:
        return buildRoute(
          const Detail4(),
          settings: settings,
        );
      case Routes.detail_5:
        return buildRoute(
          const Detail5(),
          settings: settings,
        );
      case Routes.detail_6:
        return buildRoute(
          const Detail6(),
          settings: settings,
        );
      case Routes.detail_7:
        return buildRoute(
          const Detail7(),
          settings: settings,
        );
      case Routes.detail_8:
        return buildRoute(
          const Detail8(),
          settings: settings,
        );
      case Routes.detail_9:
        return buildRoute(
          const Detail9(),
          settings: settings,
        );
      case Routes.detail_10:
        return buildRoute(
          const Detail10(),
          settings: settings,
        );
      case Routes.detail_11:
        return buildRoute(
          const Detail11(),
          settings: settings,
        );
      case Routes.detail_12:
        return buildRoute(
          const Detail12(),
          settings: settings,
        );
      case Routes.detail_13:
        return buildRoute(
          const Detail13(),
          settings: settings,
        );
      case Routes.detail_14:
        return buildRoute(
          const Detail14(),
          settings: settings,
        );
      case Routes.detail_15:
        return buildRoute(
          const Detail15(),
          settings: settings,
        );
      case Routes.detail_16:
        return buildRoute(
          const Detail16(),
          settings: settings,
        );
      case Routes.detail_17:
        return buildRoute(
          const Detail_17(),
          settings: settings,
        );
      case Routes.detail_18:
        return buildRoute(
          const Detail_18(),
          settings: settings,
        );
      case Routes.detail_19:
        return buildRoute(
          const Detail_19(),
          settings: settings,
        );
      case Routes.detail_20:
        return buildRoute(
          const Detail20(),
          settings: settings,
        );
      case Routes.order:
        return buildRoute(
          const Order(),
          settings: settings,
        );
      case Routes.order_2:
        return buildRoute(
          const Order2(),
          settings: settings,
        );
      case Routes.order_3:
        return buildRoute(
          const Order3(),
          settings: settings,
        );
      case Routes.order_4:
        return buildRoute(
          const Order4(),
          settings: settings,
        );
      case Routes.order_5:
        return buildRoute(
          const Order5(),
          settings: settings,
        );
      case Routes.order_6:
        return buildRoute(
          const Order6(),
          settings: settings,
        );
      case Routes.order_7:
        return buildRoute(
          const Order7(),
          settings: settings,
        );
      case Routes.order_8:
        return buildRoute(
          const Order8(),
          settings: settings,
        );
      case Routes.order_9:
        return buildRoute(
          const Order9(),
          settings: settings,
        );
      case Routes.order_10:
        return buildRoute(
          const Order10(),
          settings: settings,
        );
      case Routes.order_11:
        return buildRoute(
          const Order11(),
          settings: settings,
        );
      case Routes.order_12:
        return buildRoute(
          const Order12(),
          settings: settings,
        );
      case Routes.order_13:
        return buildRoute(
          const Order13(),
          settings: settings,
        );
      case Routes.order_14:
        return buildRoute(
          const Order14(),
          settings: settings,
        );
      case Routes.order_15:
        return buildRoute(
          const Order15(),
          settings: settings,
        );
      case Routes.order_16:
        return buildRoute(
          const Order16(),
          settings: settings,
        );
      case Routes.order_17:
        return buildRoute(
          const Order17(),
          settings: settings,
        );
      case Routes.order_18:
        return buildRoute(
          const Order18(),
          settings: settings,
        );
      case Routes.order_19:
        return buildRoute(
          const Order19(),
          settings: settings,
        );
      case Routes.order_20:
        return buildRoute(
          const Order20(),
          settings: settings,
        );
      case Routes.chart:
        return buildRoute(
          const Chart(),
          settings: settings,
        );
      case Routes.profil:
        return buildRoute(
          const Profil(),
          settings: settings,
        );
      case Routes.kelola_menu:
        return buildRoute(
          const KelolaMenu(),
          settings: settings,
        );
      case Routes.edit_menu:
        return buildRoute(
          const EditMenu(),
          settings: settings,
        );
      case Routes.tambah_menu:
        return buildRoute(
          const TambahMenu(),
          settings: settings,
        );
      case Routes.pesanan_pickup:
        return buildRoute(
          const PesananPickup(),
          settings: settings,
        );
      case Routes.pickup_lagi:
        return buildRoute(
          const PickupLagi(),
          settings: settings,
        );
      case Routes.pickup_lagi3:
        return buildRoute(
          const PickupLagi3(),
          settings: settings,
        );
      case Routes.laporan:
        return buildRoute(
          const Laporan(),
          settings: settings,
        );
      case Routes.laporan_2:
        return buildRoute(
          const Laporan2(),
          settings: settings,
        );
      case Routes.riwayat_pesanan:
        return buildRoute(
          const RiwayatPesanan(),
          settings: settings,
        );
      case Routes.riwayat_pesanan2:
        return buildRoute(
          const RiwayatPesanan2(),
          settings: settings,
        );
      case Routes.riwayat_pesanan3:
        return buildRoute(
          const RiwayatPesanan3(),
          settings: settings,
        );
      case Routes.riwayat_pesanan4:
        return buildRoute(
          const RiwayatPesanan4(),
          settings: settings,
        );
      case Routes.riwayat_pesanan5:
        return buildRoute(
          const RiwayatPesanan5(),
          settings: settings,
        );
      case Routes.deliver:
        return buildRoute(
          const Deliver(),
          settings: settings,
        );
      case Routes.pickup:
        return buildRoute(
          const PickUp(),
          settings: settings,
        );
      case Routes.custom_line:
        return buildRoute(
          const CustomLine(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
