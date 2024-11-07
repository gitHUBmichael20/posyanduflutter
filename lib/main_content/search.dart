import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<ServiceCategory> _categories = [
    ServiceCategory(
      icon: 'assets/icons/family.png',
      label: 'Keluarga',
    ),
    ServiceCategory(
      icon: 'assets/icons/disease.png',
      label: 'Virus',
    ),
    ServiceCategory(
      icon: 'assets/icons/ambulance-icon.png',
      label: 'Ambulance',
    ),
    ServiceCategory(
      icon: 'assets/icons/emergency.png',
      label: 'P3K',
    ),
    ServiceCategory(
      icon: 'assets/icons/home.png',
      label: 'Homes',
    ),
  ];

  final List<String> _quickFilters = ['Dokter Umum', 'Vaksinasi', 'Konsultasi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.pop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Location',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey[600],
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: Colors.red[400],
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    'Jl Merdeka Raya, Kota Bekasi',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search doctor or health issues',
                        hintStyle: GoogleFonts.poppins(
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),

                  // Quick Filters
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _quickFilters
                          .map(
                            (filter) => Container(
                              margin: const EdgeInsets.only(right: 8),
                              child: FilterChip(
                                label: Text(
                                  filter,
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    color: Colors.blue[700],
                                  ),
                                ),
                                backgroundColor: Colors.blue[50],
                                onSelected: (bool selected) {},
                                side: BorderSide.none,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),

                  // Categories Section
                  const SizedBox(height: 24),
                  Text(
                    'Kategori Layanan',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      itemBuilder: (context, index) {
                        return CategoryCard(category: _categories[index]);
                      },
                    ),
                  ),

                  // Government Services Section
                  const SizedBox(height: 24),
                  Text(
                    'Layanan Pemerintah',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GovernmentServiceCard(
                          color: index.isEven ? Colors.blue[400]! : Colors.green[400]!,
                        );
                      },
                    ),
                  ),

                  // Popular Searches Section
                  const SizedBox(height: 24),
                  Text(
                    'Pencarian Populer',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _TrendingChip(
                        label: 'Monkey Pox',
                        isRising: true,
                      ),
                      _TrendingChip(
                        label: 'Cacar Air',
                        isRising: true,
                      ),
                      _TrendingChip(
                        label: 'Vaksinasi Polio',
                        isRising: false,
                      ),
                      _TrendingChip(
                        label: 'Covid-19',
                        isRising: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCategory {
  final String icon;
  final String label;

  ServiceCategory({
    required this.icon,
    required this.label,
  });
}

class CategoryCard extends StatelessWidget {
  final ServiceCategory category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(
                category.icon,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            category.label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class GovernmentServiceCard extends StatelessWidget {
  final Color color;

  const GovernmentServiceCard({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
    );
  }
}

class _TrendingChip extends StatelessWidget {
  final String label;
  final bool isRising;

  const _TrendingChip({
    required this.label,
    required this.isRising,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isRising ? Colors.orange[100] : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isRising) ...[
            Icon(
              Icons.trending_up,
              size: 16,
              color: Colors.red[400],
            ),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: isRising ? Colors.orange[900] : Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}