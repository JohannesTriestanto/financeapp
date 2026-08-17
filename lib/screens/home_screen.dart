import 'package:flutter/material.dart';

import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel('Coffee Shop', '-Rp35.000', 'Food'),
      TransactionModel('Grab Ride', '-Rp25.000', 'Travel'),
      TransactionModel('Gym Membership', '-Rp150.000', 'Health'),
      TransactionModel('Movie Ticket', '-Rp60.000', 'Event'),
      TransactionModel('Salary', '+Rp5.000.000', 'Income'),
    ];

    return Scaffold(
      // Tidak menggunakan background putih
      backgroundColor: Colors.transparent,

      // ==========================================================
      // APP BAR
      // ==========================================================
      appBar: AppBar(
        title: const Text(
          'Finance Mate',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF172554).withValues(alpha: 0.90),
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      // ==========================================================
      // BODY
      // ==========================================================
      body: Stack(
        children: [
          // ========================================================
          // BACKGROUND FOTO
          // ========================================================
          Positioned.fill(
            child: Image.asset(
              'assets/images/finance_background.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // ========================================================
          // OVERLAY TIPIS
          // Foto tetap terlihat jelas
          // ========================================================
          Positioned.fill(
            child: Container(color: Colors.black.withValues(alpha: 0.18)),
          ),

          // ========================================================
          // CONTENT
          // ========================================================
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ====================================================
                // WELCOME SECTION
                // ====================================================

                // Tulisan di atas background → BIRU TUA
                const Text(
                  'Welcome Back! 👋',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF172554),
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 4),

                // Tulisan di atas background → BIRU TUA
                const Text(
                  'Manage Your Finance',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF172554),
                    shadows: [
                      Shadow(
                        color: Colors.white54,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                // ====================================================
                // MY CARDS
                // ====================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Tulisan di atas background → BIRU TUA
                    const Text(
                      'My Cards',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172554),
                        shadows: [
                          Shadow(
                            color: Colors.white54,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),

                    // Badge 4 Cards tetap seperti sebelumnya
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.90),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '4 Cards',
                        style: TextStyle(
                          color: Color(0xFF2563EB),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // ====================================================
                // ATM CARDS
                // ====================================================
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      // ============================
                      // BANK A
                      // ============================
                      AtmCard(
                        bankName: 'Bank A',
                        cardNumber: '**** 2345',
                        balance: 'Rp12.500.000',
                        color1: Color(0xFF172554),
                        color2: Color(0xFF2563EB),
                      ),

                      // ============================
                      // BANK B - ABU-ABU TUA
                      // ============================
                      AtmCard(
                        bankName: 'Bank B',
                        cardNumber: '**** 8765',
                        balance: 'Rp5.350.000',
                        color1: Color(0xFF4B5563),
                        color2: Color(0xFF1F2937),
                      ),

                      // ============================
                      // BANK C
                      // ============================
                      AtmCard(
                        bankName: 'Bank C',
                        cardNumber: '**** 4567',
                        balance: 'Rp8.750.000',
                        color1: Color(0xFF312E81),
                        color2: Color(0xFF6366F1),
                      ),

                      // ============================
                      // BANK D
                      // ============================
                      AtmCard(
                        bankName: 'Bank D',
                        cardNumber: '**** 9012',
                        balance: 'Rp3.250.000',
                        color1: Color(0xFF115E59),
                        color2: Color(0xFF14B8A6),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                // ====================================================
                // QUICK MENU
                // ====================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Tulisan di atas background → BIRU TUA
                    const Text(
                      'Quick Menu',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172554),
                        shadows: [
                          Shadow(
                            color: Colors.white54,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),

                    // Tulisan di atas background → BIRU TUA
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF172554),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // ====================================================
                // GRID MENU
                // Tulisan di dalam komponen TETAP seperti sebelumnya
                // ====================================================
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.5,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    GridMenuItem(
                      icon: Icons.health_and_safety,
                      label: 'Health',
                    ),
                    GridMenuItem(icon: Icons.travel_explore, label: 'Travel'),
                    GridMenuItem(icon: Icons.fastfood, label: 'Food'),
                    GridMenuItem(icon: Icons.event, label: 'Event'),
                  ],
                ),

                const SizedBox(height: 28),

                // ====================================================
                // RECENT TRANSACTIONS
                // ====================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Tulisan di atas background → BIRU TUA
                    const Text(
                      'Recent Transactions',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF172554),
                        shadows: [
                          Shadow(
                            color: Colors.white54,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                    ),

                    // Tulisan di atas background → BIRU TUA
                    Text(
                      '${transactions.length} Transactions',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF172554),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // ====================================================
                // TRANSACTION LIST
                // Tulisan di dalam komponen TETAP seperti sebelumnya
                // ====================================================
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    return TransactionItem(transaction: transactions[index]);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
