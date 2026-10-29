import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// ============================================================================
// MODELS
// ============================================================================

class Product {
  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.storage,
    required this.rating,
    required this.reviews,
    required this.categories,
    required this.description,
    required this.accent,
    required this.category,
    required this.image,
  });

  final String id;
  final String title;
  final String price;
  final String storage;
  final double rating;
  final int reviews;
  final List<String> categories;
  final String description;
  final Color accent;

  /// Short category label shown as the tag (Flagship, Foldable, ...).
  final String category;

  /// Photo: an asset path ('assets/images/x.jpg') or a full http(s) URL.
  final String image;
}

/// Folder + extension of the product photos (see pubspec.yaml: assets).
/// If your files are .png, change _ext to '.png' - that is the only place.
const String _dir = 'assets/images/';
const String _ext = '.jpg';

/// Initial seed data (also used by "Reset Catalog").
const List<Product> products = [
  Product(
    id: 'p1',
    title: 'Apple iPhone 18 Pro Max',
    price: '\$1,299',
    storage: '256 GB',
    rating: 4.8,
    reviews: 2150,
    categories: ['Smartphones', 'Apple', '5G', 'A20 Pro', '48MP Camera'],
    category: 'Flagship',
    image: '${_dir}iphone_18_pro_max$_ext',
    description:
        'Apple\'s largest Pro iPhone with a 6.9-inch Super Retina XDR display '
        'and a smaller Dynamic Island, powered by the A20 Pro chip. Triple '
        '48MP rear cameras with variable aperture and an 18MP front camera.',
    accent: Color(0xFFA23A4E),
  ),
  Product(
    id: 'p2',
    title: 'Apple iPhone 18 Pro',
    price: '\$1,099',
    storage: '256 GB',
    rating: 4.7,
    reviews: 1840,
    categories: ['Smartphones', 'Apple', '5G', 'A20 Pro'],
    category: 'Flagship',
    image: '${_dir}iphone_18_pro$_ext',
    description:
        'The compact Pro model with a 6.3-inch Super Retina XDR display, '
        'the A20 Pro chip and a triple 48MP camera system. Great battery '
        'life in a size that fits comfortably in one hand.',
    accent: Color(0xFF3A7CA2),
  ),
  Product(
    id: 'p3',
    title: 'Apple iPhone 18',
    price: '\$799',
    storage: '128 GB',
    rating: 4.6,
    reviews: 3020,
    categories: ['Smartphones', 'Apple', '5G', 'A20'],
    category: 'Everyday',
    image: '${_dir}iphone_18$_ext',
    description:
        'The everyday iPhone with a bright 6.1-inch display, the A20 chip '
        'and a dual 48MP camera. Available in several colors and with '
        'all-day battery life.',
    accent: Color(0xFF3AA27A),
  ),
  Product(
    id: 'p4',
    title: 'Apple iPhone Air 2',
    price: '\$999',
    storage: '256 GB',
    rating: 4.5,
    reviews: 960,
    categories: ['Smartphones', 'Apple', '5G', 'Ultra-thin'],
    category: 'Ultra-thin',
    image: '${_dir}iphone_air_2$_ext',
    description:
        'The thinnest iPhone ever made, with a 6.5-inch display and a '
        'titanium frame. Light, elegant and powerful enough for everyday '
        'tasks and photography.',
    accent: Color(0xFF4A4A55),
  ),
  Product(
    id: 'p5',
    title: 'Samsung Galaxy S26 Ultra',
    price: '\$1,299',
    storage: '512 GB',
    rating: 4.8,
    reviews: 1760,
    categories: ['Smartphones', 'Samsung', '5G', 'S Pen', 'Zoom Camera'],
    category: 'Flagship',
    image: '${_dir}galaxy_s26_ultra$_ext',
    description:
        'Samsung\'s top Galaxy with a large AMOLED display, a built-in S Pen '
        'and a high-resolution multi-camera system with long optical zoom.',
    accent: Color(0xFF2E5C8A),
  ),
  Product(
    id: 'p6',
    title: 'Samsung Galaxy S26',
    price: '\$899',
    storage: '256 GB',
    rating: 4.6,
    reviews: 2480,
    categories: ['Smartphones', 'Samsung', '5G', 'AI Features'],
    category: 'Everyday',
    image: '${_dir}galaxy_s26$_ext',
    description:
        'A compact and bright Galaxy for everyday use: smooth display, fast '
        'chip and a versatile triple camera in a pocket-friendly size.',
    accent: Color(0xFF6A4FB3),
  ),
  Product(
    id: 'p7',
    title: 'Google Pixel 10 Pro',
    price: '\$999',
    storage: '256 GB',
    rating: 4.7,
    reviews: 1320,
    categories: ['Smartphones', 'Google', '5G', 'Tensor G5'],
    category: 'Flagship',
    image: '${_dir}pixel_10_pro$_ext',
    description:
        'Google\'s Pro phone with the Tensor G5 chip, a triple rear camera '
        'and the smartest on-device AI photo and voice features.',
    accent: Color(0xFF3F8F7A),
  ),
  Product(
    id: 'p8',
    title: 'Google Pixel 10',
    price: '\$799',
    storage: '128 GB',
    rating: 4.5,
    reviews: 1980,
    categories: ['Smartphones', 'Google', '5G', 'Tensor G5'],
    category: 'Everyday',
    image: '${_dir}pixel_10$_ext',
    description:
        'The standard Pixel with a clean Android experience, great '
        'point-and-shoot camera and long software support.',
    accent: Color(0xFFB5683A),
  ),
  Product(
    id: 'p9',
    title: 'OnePlus 15',
    price: '\$899',
    storage: '256 GB',
    rating: 4.6,
    reviews: 840,
    categories: ['Smartphones', 'OnePlus', '5G', 'Fast Charging'],
    category: 'Performance',
    image: '${_dir}oneplus_15$_ext',
    description:
        'A performance-first flagship with a big battery, very fast '
        'charging and a smooth high-refresh display.',
    accent: Color(0xFFC0392B),
  ),
  Product(
    id: 'p10',
    title: 'Xiaomi 17 Pro Max',
    price: '\$1,099',
    storage: '512 GB',
    rating: 4.5,
    reviews: 610,
    categories: ['Smartphones', 'Xiaomi', '5G', 'Leica Camera'],
    category: 'Flagship',
    image: '${_dir}xiaomi_17_pro_max$_ext',
    description:
        'Xiaomi\'s flagship with a Leica-tuned camera system, a premium '
        'metal-and-glass body and a secondary display on the back.',
    accent: Color(0xFF8A6E2E),
  ),
  Product(
    id: 'p11',
    title: 'Nothing Phone (3)',
    price: '\$799',
    storage: '256 GB',
    rating: 4.3,
    reviews: 520,
    categories: ['Smartphones', 'Nothing', '5G', 'Glyph Matrix'],
    category: 'Design',
    image: '${_dir}nothing_phone_3$_ext',
    description:
        'A design-led phone with a distinctive look, a Glyph Matrix on the '
        'back and a clean, fast Nothing OS.',
    accent: Color(0xFF55555C),
  ),
  Product(
    id: 'p12',
    title: 'Samsung Galaxy Z Fold7',
    price: '\$1,999',
    storage: '512 GB',
    rating: 4.6,
    reviews: 730,
    categories: ['Smartphones', 'Samsung', 'Foldable', '5G'],
    category: 'Foldable',
    image: '${_dir}galaxy_z_fold7$_ext',
    description:
        'A book-style foldable that opens into a large tablet-sized '
        'display while still folding down to a slim pocketable phone.',
    accent: Color(0xFF2F4F7F),
  ),
];

/// Lookup of every product that ever appeared (seed + generated by refresh),
/// so the Favorites tab can still find items that are not in the seed list.
final Map<String, Product> productIndex = {
  for (final p in products) p.id: p,
};

// ---- Generator for Pull-to-Refresh -----------------------------------------

int _genCounter = 0;

const List<Color> _newAccents = [
  Color(0xFF7B4AA2),
  Color(0xFFA27A3A),
  Color(0xFF3A5AA2),
  Color(0xFFA2503A),
  Color(0xFF3AA2A0),
];

/// Creates a new "Limited" edition of a catalog model each time it is called
/// (same model photo, new id, so the photo always matches the title).
Product generateProduct() {
  final n = ++_genCounter;
  final base = products[n % products.length];
  final rating = double.parse((4.0 + ((n * 7) % 10) / 10).toStringAsFixed(1));
  return Product(
    id: 'new_$n',
    title: '${base.title} · Limited',
    price: '\$${699 + (n * 37) % 600}',
    storage: n.isEven ? '256 GB' : '512 GB',
    rating: rating,
    reviews: 100 + (n * 53) % 2000,
    categories: [...base.categories.take(3), 'New arrival'],
    category: 'Limited',
    image: base.image,
    description:
        '${base.title} in a limited edition finish. Same hardware as the '
        'standard model, with an exclusive color and a collector\'s box.',
    accent: _newAccents[n % _newAccents.length],
  );
}

// ============================================================================
// GLOBAL STATE (favorites + theme)
// ============================================================================

final ValueNotifier<Set<String>> favoriteIds = ValueNotifier<Set<String>>({});
final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);

void toggleFavorite(String id) {
  final next = {...favoriteIds.value};
  if (!next.remove(id)) next.add(id);
  favoriteIds.value = next;
}

/// Navigator.push with the COMPLETE Product object passed as route arguments.
void openDetail(BuildContext context, Product product) {
  Navigator.push(
    context,
    MaterialPageRoute(
      settings: RouteSettings(name: '/detail', arguments: product),
      builder: (_) => const DetailScreen(),
    ),
  );
}

// ============================================================================
// THEME & DESIGN HELPERS
// ============================================================================

const Color _seed = Color(0xFF5B3DF5);

ThemeData _buildTheme(Brightness brightness) {
  final scheme = ColorScheme.fromSeed(
    seedColor: _seed,
    brightness: brightness,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: brightness == Brightness.light
        ? const Color(0xFFF4F2FB)
        : const Color(0xFF111015),
  );
}

/// Surface color for cards / rows (white in light, elevated in dark).
Color cardColor(BuildContext context) {
  final t = Theme.of(context);
  return t.brightness == Brightness.light
      ? Colors.white
      : t.colorScheme.surfaceContainerHighest;
}

/// Soft tinted background built from a product accent color.
Color tintOf(BuildContext context, Color accent) =>
    Color.alphaBlend(accent.withOpacity(0.16), cardColor(context));

PreferredSizeWidget buildAppBar(
  BuildContext context, {
  required Widget title,
  List<Widget>? actions,
  double? toolbarHeight,
}) {
  return AppBar(
    title: title,
    actions: actions,
    toolbarHeight: toolbarHeight,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    scrolledUnderElevation: 0,
  );
}

const TextStyle _screenTitle =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w800);

// ============================================================================
// APP / ROOT
// ============================================================================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeMode,
      builder: (context, mode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Smart Catalog',
          themeMode: mode,
          theme: _buildTheme(Brightness.light),
          darkTheme: _buildTheme(Brightness.dark),
          home: const RootScreen(),
        );
      },
    );
  }
}

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _index = 0;

  // Created once -> tabs keep their state when switching
  static const List<Widget> _tabs = [
    FeedTab(),
    FavoritesTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // IndexedStack keeps all tabs alive (scroll position, state)
      body: IndexedStack(index: _index, children: _tabs),
      bottomNavigationBar: ValueListenableBuilder<Set<String>>(
        valueListenable: favoriteIds,
        builder: (context, favs, _) {
          return NavigationBar(
            selectedIndex: _index,
            onDestinationSelected: (i) => setState(() => _index = i),
            destinations: [
              const NavigationDestination(
                icon: Icon(Icons.storefront_outlined),
                selectedIcon: Icon(Icons.storefront),
                label: 'Catalog',
              ),
              NavigationDestination(
                icon: Badge(
                  isLabelVisible: favs.isNotEmpty,
                  label: Text('${favs.length}'),
                  child: const Icon(Icons.favorite_border),
                ),
                selectedIcon: Badge(
                  isLabelVisible: favs.isNotEmpty,
                  label: Text('${favs.length}'),
                  child: const Icon(Icons.favorite),
                ),
                label: 'Favorites',
              ),
              const NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}

// ============================================================================
// FEED TAB  (LW8: List/Grid toggle, Pull-to-Refresh, Swipe-to-Delete, Undo)
// ============================================================================

class FeedTab extends StatefulWidget {
  const FeedTab({super.key});

  @override
  State<FeedTab> createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  // Mutable data source for the whole screen.
  List<Product> _items = List<Product>.of(products);
  bool _isGrid = false;

  /// Pull-to-Refresh: simulate network (1.5 s), then prepend a new item.
  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    if (!mounted) return;
    final fresh = generateProduct();
    productIndex[fresh.id] = fresh;
    setState(() => _items.insert(0, fresh));
  }

  /// Swipe-to-Delete: remove from data list, show SnackBar with UNDO.
  void _onDismissed(Product product) {
    final index = _items.indexWhere((e) => e.id == product.id);
    if (index == -1) return;

    setState(() => _items.removeAt(index));

    final messenger = ScaffoldMessenger.of(context);
    messenger
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          duration: const Duration(seconds: 4),
          content: Text('"${product.title}" removed'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () {
              // Restore at the ORIGINAL index (clamped if the list changed).
              final at = index > _items.length ? _items.length : index;
              setState(() => _items.insert(at, product));
            },
          ),
        ),
      );
  }

  void _resetCatalog() {
    ScaffoldMessenger.of(context).clearSnackBars();
    setState(() => _items = List<Product>.of(products));
  }

  /// Wraps any item with Dismissible (right-to-left, red delete background).
  Widget _dismissible({
    required Product product,
    required Widget child,
    BorderRadius borderRadius = BorderRadius.zero,
  }) {
    return Dismissible(
      key: ValueKey(product.id),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => _onDismissed(product),
      background: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: borderRadius,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 8),
            Icon(Icons.delete, color: Colors.white, size: 28),
          ],
        ),
      ),
      child: child,
    );
  }

  Widget _buildList() {
    return ListView.separated(
      key: const PageStorageKey('feed-list'),
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: _items.length,
      separatorBuilder: (_, __) => Divider(
        height: 1,
        thickness: 0.5,
        indent: 84,
        color: Theme.of(context).colorScheme.outlineVariant,
      ),
      itemBuilder: (context, i) {
        final p = _items[i];
        return _dismissible(
          product: p,
          child: ProductListRow(
            product: p,
            onTap: () => openDetail(context, p),
          ),
        );
      },
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      key: const PageStorageKey('feed-grid'),
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
      itemCount: _items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, i) {
        final p = _items[i];
        return _dismissible(
          product: p,
          borderRadius: BorderRadius.circular(24),
          child: ProductGridCard(
            product: p,
            onTap: () => openDetail(context, p),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: buildAppBar(
        context,
        toolbarHeight: 72,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Smart Catalog', style: _screenTitle),
            const SizedBox(height: 2),
            Text(
              '${_items.length} products · pull down to refresh',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: scheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        actions: [
          ViewToggle(
            isGrid: _isGrid,
            onChanged: (grid) => setState(() => _isGrid = grid),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: _items.isEmpty
          ? EmptyCatalog(onReset: _resetCatalog)
          : RefreshIndicator(
              onRefresh: _onRefresh,
              child: _isGrid ? _buildGrid() : _buildList(),
            ),
    );
  }
}

// ============================================================================
// FAVORITES TAB
// ============================================================================

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: buildAppBar(context, title: const Text('Favorites', style: _screenTitle)),
      body: ValueListenableBuilder<Set<String>>(
        valueListenable: favoriteIds,
        builder: (context, favs, _) {
          final saved = favs
              .map((id) => productIndex[id])
              .whereType<Product>()
              .toList();

          if (saved.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 104,
                      height: 104,
                      decoration: BoxDecoration(
                        color: scheme.primaryContainer,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.favorite_border,
                          size: 48, color: scheme.onPrimaryContainer),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'No saved items yet',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'Tap the heart on any product in the catalog.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: scheme.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
            itemCount: saved.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, i) {
              final p = saved[i];
              return ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: ProductListRow(
                  product: p,
                  onTap: () => openDetail(context, p),
                  action: IconButton(
                    tooltip: 'Remove',
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () => toggleFavorite(p.id),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// ============================================================================
// PROFILE TAB
// ============================================================================

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: buildAppBar(context, title: const Text('Profile', style: _screenTitle)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
        children: [
          // Gradient header card
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [scheme.primary, scheme.tertiary],
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.person, size: 38, color: Colors.white),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Your Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'student@example.com',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: cardColor(context),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                ValueListenableBuilder<Set<String>>(
                  valueListenable: favoriteIds,
                  builder: (context, favs, _) => ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text('Saved items'),
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: scheme.primaryContainer,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '${favs.length}',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: scheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(height: 1),
                ValueListenableBuilder<ThemeMode>(
                  valueListenable: themeMode,
                  builder: (context, mode, _) => SwitchListTile(
                    secondary: const Icon(Icons.dark_mode_outlined),
                    title: const Text('Dark mode'),
                    value: mode == ThemeMode.dark,
                    onChanged: (v) =>
                        themeMode.value = v ? ThemeMode.dark : ThemeMode.light,
                  ),
                ),
                const Divider(height: 1),
                SwitchListTile(
                  secondary: const Icon(Icons.notifications_outlined),
                  title: const Text('Notifications'),
                  value: _notifications,
                  onChanged: (v) => setState(() => _notifications = v),
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.delete_sweep_outlined),
                  title: const Text('Clear favorites'),
                  onTap: () {
                    favoriteIds.value = {};
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        content: const Text('Favorites cleared'),
                      ),
                    );
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

// ============================================================================
// WIDGETS
// ============================================================================

/// Pill toggle: List <-> Grid (lives in the AppBar actions).
class ViewToggle extends StatelessWidget {
  const ViewToggle({super.key, required this.isGrid, required this.onChanged});

  final bool isGrid;
  final ValueChanged<bool> onChanged;

  Widget _segment(
    BuildContext context, {
    required IconData icon,
    required bool selected,
    required String tooltip,
    required VoidCallback onTap,
  }) {
    final scheme = Theme.of(context).colorScheme;
    return Tooltip(
      message: tooltip,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: selected ? scheme.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            size: 20,
            color: selected ? scheme.onPrimary : scheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer.withOpacity(0.7),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _segment(
            context,
            icon: Icons.view_list_rounded,
            selected: !isGrid,
            tooltip: 'List view',
            onTap: () => onChanged(false),
          ),
          _segment(
            context,
            icon: Icons.grid_view_rounded,
            selected: isGrid,
            tooltip: 'Grid view',
            onTap: () => onChanged(true),
          ),
        ],
      ),
    );
  }
}

/// Empty state: shown when all items were dismissed.
class EmptyCatalog extends StatelessWidget {
  const EmptyCatalog({super.key, required this.onReset});

  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: scheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.inventory_2_outlined,
                  size: 56, color: scheme.onPrimaryContainer),
            ),
            const SizedBox(height: 20),
            Text(
              'Catalog is Empty',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 8),
            Text(
              'You removed every product.\nRestore the initial catalog to continue.',
              textAlign: TextAlign.center,
              style: TextStyle(color: scheme.onSurfaceVariant, height: 1.4),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              style: FilledButton.styleFrom(
                minimumSize: const Size(200, 52),
                shape: const StadiumBorder(),
              ),
              onPressed: onReset,
              icon: const Icon(Icons.restart_alt),
              label: const Text('Reset Catalog'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Small category tag (chip-like label).
class CategoryTag extends StatelessWidget {
  const CategoryTag(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        color: scheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: scheme.onSecondaryContainer,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

/// List view mode row: avatar icon, title, category tag, rating, price.
class ProductListRow extends StatelessWidget {
  const ProductListRow({
    super.key,
    required this.product,
    required this.onTap,
    this.action,
  });

  final Product product;
  final VoidCallback onTap;

  /// Trailing action (defaults to the favorite heart).
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    // Opaque Material so the red Dismissible background is hidden at rest.
    return Material(
      color: cardColor(context),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 8, 12),
          child: Row(
            children: [
              // Avatar icon
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      product.accent,
                      Color.alphaBlend(
                          Colors.black.withOpacity(0.25), product.accent),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(Icons.smartphone,
                    color: Colors.white, size: 28),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        CategoryTag(product.category),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star_rounded,
                                color: Colors.amber, size: 18),
                            const SizedBox(width: 2),
                            Text(
                              '${product.rating}',
                              style: textTheme.bodySmall
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                product.price,
                style: textTheme.titleMedium?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.w800,
                ),
              ),
              action ?? FavoriteButton(productId: product.id),
            ],
          ),
        ),
      ),
    );
  }
}

/// Grid view mode card (fits childAspectRatio 0.72 without overflow).
class ProductGridCard extends StatelessWidget {
  const ProductGridCard({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Material(
      color: cardColor(context),
      borderRadius: BorderRadius.circular(24),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ProductPhoto(
                    product: product,
                    padding: const EdgeInsets.fromLTRB(14, 14, 14, 36),
                    cacheWidth: 600,
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Material(
                      color: cardColor(context).withOpacity(0.9),
                      shape: const CircleBorder(),
                      child: FavoriteButton(
                        productId: product.id,
                        compact: true,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: CategoryTag(product.category),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleSmall
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          product.price,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.titleMedium?.copyWith(
                            color: scheme.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star_rounded,
                              color: Colors.amber, size: 16),
                          const SizedBox(width: 2),
                          Text(
                            '${product.rating}',
                            style: textTheme.bodySmall
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Real product photo (asset or network). White studio background, high
/// quality scaling, falls back to the painted phone if the file is missing.
class ProductPhoto extends StatelessWidget {
  const ProductPhoto({
    super.key,
    required this.product,
    this.padding = EdgeInsets.zero,
    this.fit = BoxFit.contain,
    this.cacheWidth,
  });

  final Product product;
  final EdgeInsets padding;
  final BoxFit fit;

  /// Decode width in px (saves memory in lists, keep high for detail).
  final int? cacheWidth;

  @override
  Widget build(BuildContext context) {
    Widget fallback(BuildContext c, Object e, StackTrace? st) =>
        IphoneIllustration(
          both: false,
          accent: product.accent,
          background: Colors.white,
        );

    final bool isUrl = product.image.startsWith('http');

    final Widget image = isUrl
        ? Image.network(
            product.image,
            width: double.infinity,
            height: double.infinity,
            fit: fit,
            cacheWidth: cacheWidth,
            filterQuality: FilterQuality.high,
            errorBuilder: fallback,
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return const Center(
                child: SizedBox(
                  width: 28,
                  height: 28,
                  child: CircularProgressIndicator(strokeWidth: 2.5),
                ),
              );
            },
          )
        : Image.asset(
            product.image,
            width: double.infinity,
            height: double.infinity,
            fit: fit,
            cacheWidth: cacheWidth,
            filterQuality: FilterQuality.high,
            errorBuilder: fallback,
          );

    return Container(
      color: Colors.white,
      padding: padding,
      child: image,
    );
  }
}

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.productId,
    this.compact = false,
  });

  final String productId;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Set<String>>(
      valueListenable: favoriteIds,
      builder: (context, favs, _) {
        final isFav = favs.contains(productId);
        return IconButton(
          visualDensity: compact ? VisualDensity.compact : null,
          tooltip: isFav ? 'Remove from favorites' : 'Add to favorites',
          icon: Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav ? Colors.red : null,
          ),
          onPressed: () => toggleFavorite(productId),
        );
      },
    );
  }
}

// ============================================================================
// DETAIL SCREEN
// ============================================================================

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  Widget _buildCover(BuildContext context, Product p) {
    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ProductPhoto(
              product: p,
              padding: const EdgeInsets.all(20),
              cacheWidth: 1200,
            ),
            Positioned(
              top: 14,
              right: 14,
              child: ValueListenableBuilder<Set<String>>(
                valueListenable: favoriteIds,
                builder: (context, favs, _) {
                  final isFav = favs.contains(p.id);
                  return Material(
                    color: cardColor(context),
                    elevation: 2,
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () => toggleFavorite(p.id),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          isFav ? Icons.favorite : Icons.favorite_border,
                          color: isFav ? Colors.red : null,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: 14,
              bottom: 14,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'NEW',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRating(BuildContext context, Product p) {
    return Row(
      children: [
        ...List.generate(5, (i) {
          IconData icon;
          if (p.rating >= i + 1) {
            icon = Icons.star_rounded;
          } else if (p.rating > i) {
            icon = Icons.star_half_rounded;
          } else {
            icon = Icons.star_border_rounded;
          }
          return Icon(icon, color: Colors.amber, size: 22);
        }),
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            '${p.rating} (${p.reviews} reviews)',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }

  Widget _statTile(
    BuildContext context, {
    required IconData icon,
    required String value,
    required String label,
  }) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color: cardColor(context),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Icon(icon, color: scheme.primary),
          const SizedBox(height: 6),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 11, color: scheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(BuildContext context, Product p) {
    final textTheme = Theme.of(context).textTheme;
    final scheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: p.categories.map((c) => CategoryTag(c)).toList(),
        ),
        const SizedBox(height: 14),
        Text(
          p.title,
          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 8),
        _buildRating(context, p),
        const SizedBox(height: 18),
        Row(
          children: [
            Expanded(
              child: _statTile(context,
                  icon: Icons.sd_storage_outlined,
                  value: p.storage,
                  label: 'Storage'),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _statTile(context,
                  icon: Icons.star_outline_rounded,
                  value: '${p.rating}',
                  label: 'Rating'),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _statTile(context,
                  icon: Icons.reviews_outlined,
                  value: '${p.reviews}',
                  label: 'Reviews'),
            ),
          ],
        ),
        const SizedBox(height: 22),
        Text('About', style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800)),
        const SizedBox(height: 6),
        Text(
          p.description,
          style: textTheme.bodyMedium
              ?.copyWith(height: 1.5, color: scheme.onSurfaceVariant),
        ),
        const SizedBox(height: 16),
        TextButton.icon(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          label: const Text('Back to catalog'),
        ),
      ],
    );
  }

  Widget _buildBottomBar(BuildContext context, Product p) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: cardColor(context),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 16, offset: Offset(0, -4)),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
          child: Center(
            heightFactor: 1,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 12, color: scheme.onSurfaceVariant),
                      ),
                      Text(
                        p.price,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: scheme.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: FilledButton.icon(
                      style: FilledButton.styleFrom(
                        minimumSize: const Size(0, 54),
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            content: const Text('Added to cart'),
                          ),
                        );
                      },
                      icon: const Icon(Icons.shopping_bag_outlined),
                      label: const Text('Add to Cart'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Receive the complete Product object passed via Navigator.push
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      // AppBar automatically shows a back arrow (calls Navigator.pop)
      appBar: buildAppBar(
        context,
        title: Text(
          product.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool isWide = constraints.maxWidth >= 720;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: isWide
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 5, child: _buildCover(context, product)),
                            const SizedBox(width: 24),
                            Expanded(
                              flex: 4,
                              child: _buildDetails(context, product),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildCover(context, product),
                            const SizedBox(height: 18),
                            _buildDetails(context, product),
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: _buildBottomBar(context, product),
    );
  }
}

// ============================================================================
// ILLUSTRATION (CustomPainter)
// ============================================================================

class IphoneIllustration extends StatelessWidget {
  const IphoneIllustration({
    super.key,
    this.both = true,
    this.accent = const Color(0xFFA23A4E),
    this.background,
  });

  final bool both;
  final Color accent;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: background ?? const Color(0xFFF2F2F7),
      child: FittedBox(
        fit: BoxFit.contain,
        child: SizedBox(
          width: both ? 400 : 220,
          height: 300,
          child: CustomPaint(painter: _IphonePainter(both: both, accent: accent)),
        ),
      ),
    );
  }
}

class _IphonePainter extends CustomPainter {
  const _IphonePainter({required this.both, required this.accent});

  final bool both;
  final Color accent;

  static const double _w = 119;
  static const double _h = 250;

  Color _lightness(Color c, double l) =>
      HSLColor.fromColor(c).withLightness(l).toColor();

  @override
  void paint(Canvas canvas, Size size) {
    if (both) {
      _drawBack(canvas, const Offset(90, 25));
      _drawFront(canvas, const Offset(190, 35));
    } else {
      _drawFront(canvas, const Offset(50.5, 25));
    }
  }

  Paint _stroke(double width, Color color) => Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = width
    ..color = color;

  void _drawBack(Canvas canvas, Offset o) {
    final rect = Rect.fromLTWH(o.dx, o.dy, _w, _h);
    final body = RRect.fromRectAndRadius(rect, const Radius.circular(22));

    canvas.drawShadow(Path()..addRRect(body), Colors.black54, 8, false);
    canvas.drawRRect(
      body,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [accent, _lightness(accent, 0.2)],
        ).createShader(rect),
    );
    canvas.drawRRect(body, _stroke(2, _lightness(accent, 0.75)));

    final base = Offset(o.dx + 10, o.dy + 10);
    final plateau = RRect.fromRectAndRadius(
      Rect.fromLTWH(base.dx, base.dy, 58, 58),
      const Radius.circular(14),
    );
    canvas.drawRRect(plateau, Paint()..color = const Color(0x33FFFFFF));
    canvas.drawRRect(plateau, _stroke(1, const Color(0x55FFFFFF)));
    for (final p in const [Offset(17, 17), Offset(17, 41), Offset(41, 29)]) {
      _drawLens(canvas, base + p);
    }
    canvas.drawCircle(
      base + const Offset(43, 11),
      3,
      Paint()..color = const Color(0xFFFFF3C4),
    );

    canvas.drawCircle(
      Offset(o.dx + _w / 2, o.dy + _h * 0.55),
      9,
      _stroke(2, const Color(0x33FFFFFF)),
    );
  }

  void _drawLens(Canvas canvas, Offset c) {
    canvas.drawCircle(c, 11, Paint()..color = const Color(0xFF2B2B2E));
    canvas.drawCircle(c, 11, _stroke(1.5, const Color(0xFF8E8E93)));
    canvas.drawCircle(c, 7, Paint()..color = const Color(0xFF0B0B0D));
    canvas.drawCircle(c, 3.5, Paint()..color = const Color(0xFF1E2A5A));
    canvas.drawCircle(
      c + const Offset(-1.5, -1.5),
      1,
      Paint()..color = Colors.white70,
    );
  }

  void _drawFront(Canvas canvas, Offset o) {
    const frame = Color(0xFFB0B0B5);
    final body = RRect.fromRectAndRadius(
      Rect.fromLTWH(o.dx, o.dy, _w, _h),
      const Radius.circular(24),
    );

    final buttonPaint = Paint()..color = frame;
    for (final r in [
      Rect.fromLTWH(o.dx + _w - 1, o.dy + 80, 3, 34),
      Rect.fromLTWH(o.dx - 2, o.dy + 60, 3, 16),
      Rect.fromLTWH(o.dx - 2, o.dy + 90, 3, 26),
      Rect.fromLTWH(o.dx - 2, o.dy + 122, 3, 26),
    ]) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(r, const Radius.circular(1.5)),
        buttonPaint,
      );
    }

    canvas.drawShadow(Path()..addRRect(body), Colors.black54, 10, false);
    canvas.drawRRect(body, Paint()..color = const Color(0xFF1C1C1E));
    canvas.drawRRect(body, _stroke(2.5, frame));

    final screenRect = Rect.fromLTWH(o.dx + 5, o.dy + 5, _w - 10, _h - 10);
    canvas.drawRRect(
      RRect.fromRectAndRadius(screenRect, const Radius.circular(19)),
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xFF283593), accent, const Color(0xFFFF8A65)],
        ).createShader(screenRect),
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(o.dx + _w / 2, o.dy + 19),
          width: 34,
          height: 10,
        ),
        const Radius.circular(5),
      ),
      Paint()..color = Colors.black,
    );

    final tp = TextPainter(
      text: const TextSpan(
        text: '9:41',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(
      canvas,
      Offset(o.dx + _w / 2 - tp.width / 2, o.dy + 62 - tp.height / 2),
    );

    const colors = [
      Color(0xFF34C759),
      Color(0xFF0A84FF),
      Color(0xFFFF9F0A),
      Color(0xFFFF453A),
      Color(0xFFBF5AF2),
      Color(0xFF64D2FF),
      Color(0xFFFFD60A),
      Color(0xFF30D158),
    ];
    const icon = 20.0;
    const gap = 7.0;
    final startX = o.dx + (_w - (4 * icon + 3 * gap)) / 2;
    final startY = o.dy + _h - 96;
    for (var i = 0; i < colors.length; i++) {
      final col = i % 4;
      final row = i ~/ 4;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(
            startX + col * (icon + gap),
            startY + row * (icon + gap),
            icon,
            icon,
          ),
          const Radius.circular(6),
        ),
        Paint()..color = colors[i],
      );
    }

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(o.dx + _w / 2, o.dy + _h - 12),
          width: 38,
          height: 4,
        ),
        const Radius.circular(2),
      ),
      Paint()..color = Colors.white70,
    );
  }

  @override
  bool shouldRepaint(covariant _IphonePainter oldDelegate) =>
      oldDelegate.both != both || oldDelegate.accent != accent;
}
