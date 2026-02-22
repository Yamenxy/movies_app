/*import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart'; // لونك المخصص

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  // بيانات كل صفحة
  final List<Map<String, String>> pages = [
    {
      'image': 'assets/images/Movies Posters.png',
      'title': 'Find Your Next Favorite Movie Here',
      'subtitle':
      'Get access to a huge library of movies to suit all tastes.',
    },
    {
      'image': 'assets/images/on2.png',
      'title': 'Discover Movies',
      'subtitle':
      'Explore a vast collection of movies in all qualities and genres.',
    },
    {
      'image': 'assets/images/The Godfather 1.png',
      'title': 'Explore All Genres',
      'subtitle':
      'Discover movies from every genre and find something exciting to watch.',
    },
  ];

  // عند الضغط على زرار Next أو Finish
  void _next() {
    if (_currentIndex < pages.length - 1) {
      _controller.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      // آخر صفحة → تنقل للصفحة التالية (مثلا Login)
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  // زرار Back
  void _back() {
    if (_currentIndex > 0) {
      _controller.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        onPageChanged: (index) => setState(() => _currentIndex = index),
        itemBuilder: (context, index) {
          final page = pages[index];

          return Stack(
            fit: StackFit.expand,
            children: [
              // الخلفية - الصورة
              Image.asset(
                page['image']!,
                fit: BoxFit.cover,
              ),

              // Gradient فوق الصورة (اختياري)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                      ],
                    ),
                  ),
                ),
              ),

              // Container النصوص والزرار
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppColors.lightBlackColor,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          page['title']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          page['subtitle']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 24),

                        // زرار Next / Finish
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: _next,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.yellowColor,
                              foregroundColor: AppColors.lightBlackColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            child: Text(
                              _currentIndex == pages.length - 1
                                  ? 'Finish'
                                  : 'Next',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // زرار Back (اختياري)
                        if (_currentIndex > 0)
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: OutlinedButton(
                              onPressed: _back,
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.yellowColor,
                                side: const BorderSide(
                                    color: AppColors.yellowColor, width: 2),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              child: const Text(
                                'Back',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}*/
//=====================
/*import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';

// Dummy LoginPage مؤقتة لتجربة الـ Onboarding
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Login Page (Coming Soon)',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _index = 0;

  final List<Map<String, dynamic>> pages = [
    {
      'image': 'assets/images/Movies Posters.png',
      'title': 'Find Your Next Favorite Movie Here',
      'subtitle': 'Get access to a huge library of movies to suit all tastes. You will surely like it.',
      'fullWidth': false, // الصفحة الأولى مش كاملة العرض
      'buttonText': 'Next',
    },
    {
      'image': 'assets/images/on2.png',
      'gradient': 'assets/images/g_on2.png', // لو فيه gradient
      'title': 'Discover Movies',
      'subtitle': 'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
      'fullWidth': true, // ممتدة كامل العرض
      'buttonText': 'Next',
    },
    {
      'image': 'assets/images/The Godfather 1.png',
      'gradient': 'assets/images/The Godfather 2.png',
      'title': 'Explore All Genres',
      'subtitle': 'Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
      'fullWidth': true, // ممتدة كامل العرض
      'buttonText': 'Finish',
      'showBack': true, // زر Back في التالتة
    },
  ];

  void _next() {
    if (_index < pages.length - 1) {
      _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()));
    }
  }

  void _back() {
    if (_index > 0) {
      _controller.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        onPageChanged: (i) => setState(() => _index = i),
        itemBuilder: (context, i) {
          final page = pages[i];
          return Stack(
            fit: StackFit.expand,
            children: [
              // الصورة الأساسية
              Image.asset(page['image'], fit: BoxFit.cover),
              // gradient إذا موجود
              if (page.containsKey('gradient'))
                Positioned.fill(
                  child: Image.asset(page['gradient'], fit: BoxFit.cover),
                ),
              // Bottom container
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: page['fullWidth']
                      ? double.infinity
                      : MediaQuery.of(context).size.width * 0.9, // الصفحة الأولى أقل من العرض
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
                  margin: page['fullWidth'] ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.lightBlackColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(page['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 16),
                      Text(page['subtitle'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          )),
                      const SizedBox(height: 24),
                      // زرار Next / Finish
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: _next,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.yellowColor,
                            foregroundColor: AppColors.lightBlackColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            page['buttonText'],
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      // زرار Back لو موجود
                      if (page.containsKey('showBack') && page['showBack'])
                        const SizedBox(height: 24),
                      if (page.containsKey('showBack') && page['showBack'])
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: OutlinedButton(
                            onPressed: _back,
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: AppColors.yellowColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.yellowColor),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}*/
//=====================
/*import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Login Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _index = 0;

  final List<Map<String, dynamic>> pages = [
    {
      'image': 'assets/images/Movies Posters.png',
      'title': 'Find Your Next Favorite Movie Here',
      'subtitle':
      'Get access to a huge library of movies to suit all tastes. You will surely like it.',
      'fullWidth': false,
      'buttonText': 'Explore Now',
      'fontSizeTitle': 36.0,
      'fontSizeSubtitle': 18.0,
      'overlay': false,
    },
    {
      'image': 'assets/images/on2.png',
      'title': 'Discover Movies',
      'subtitle':
      'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
      'fullWidth': true,
      'buttonText': 'Next',
      'fontSizeTitle': 24.0,
      'fontSizeSubtitle': 18.0,
      'overlay': true,
    },
    {
      'image': 'assets/images/The Godfather 1.png',
      'title': 'Explore All Genres',
      'subtitle':
      'Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
      'fullWidth': true,
      'buttonText': 'Next',
      'showBack': true,
      'fontSizeTitle': 24.0,
      'fontSizeSubtitle': 18.0,
      'overlay': true,
    },
  ];

  void _next() {
    if (_index < pages.length - 1) {
      _controller.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginPage(),
          ));
    }
  }

  void _back() {
    if (_index > 0) {
      _controller.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          onPageChanged: (i) => setState(() => _index = i),
          itemBuilder: (context, i) {
            final page = pages[i];

            return Stack(
              children: [
                // الصورة
                Positioned.fill(
                  child: Image.asset(
                    page['image'],
                    fit: BoxFit.cover,
                  ),
                ),

                // الطبقة فوق الصورة (للشاشة 2 و 3)
                if (page['overlay'])
                  Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(0.55),
                    ),
                  ),

                // المحتوى
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: page['fullWidth']
                        ? EdgeInsets.zero
                        : const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: page['fullWidth']
                          ? double.infinity
                          : MediaQuery.of(context).size.width * 0.85,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,),
                      decoration: BoxDecoration(
                        color: AppColors.lightBlackColor,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            page['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: page['fontSizeTitle'],
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            page['subtitle'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor.withOpacity(0.6),
                              fontSize: page['fontSizeSubtitle'],
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          SizedBox(
                            width: double.infinity,
                            //height: 52.0,
                            child: ElevatedButton(
                              onPressed: _next,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.yellowColor,
                                foregroundColor:
                                AppColors.lightBlackColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15.0),
                                ),
                              ),
                              child: Text(
                                page['buttonText'],
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          if (page['showBack'] == true)
                            const SizedBox(height: 24.0),
                          if (page['showBack'] == true)
                            SizedBox(
                              width: double.infinity,
                              height: 52.0,
                              child: OutlinedButton(
                                onPressed: _back,
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: AppColors.yellowColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                  ),
                                ),
                                child: const Text(
                                  'Back',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.yellowColor),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}*/
//==========================
/*import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Login Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _index = 0;

  final List<Map<String, dynamic>> pages = [
    {
      'image': 'assets/images/Movies Posters.png',
      'title': 'Find Your Next Favorite Movie Here',
      'subtitle':
      'Get access to a huge library of movies to suit all tastes. You will surely like it.',
      'fullWidth': false,
      'buttonText': 'Explore Now',
      'fontSizeTitle': 36.0,
      'fontSizeSubtitle': 18.0,
      'overlay': false,
      'overlayImage': '',
    },
    {
      'image': 'assets/images/on2.png',
      'title': 'Discover Movies',
      'subtitle':
      'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
      'fullWidth': true,
      'buttonText': 'Next',
      'fontSizeTitle': 24.0,
      'fontSizeSubtitle': 18.0,
      'overlay': true,
      'overlayImage': 'assets/images/g_on2.png',
    },
    {
      'image': 'assets/images/The Godfather 1.png',
      'title': 'Explore All Genres',
      'subtitle':
      'Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
      'fullWidth': true,
      'buttonText': 'Next',
      'showBack': true,
      'fontSizeTitle': 24.0,
      'fontSizeSubtitle': 18.0,
      'overlay': true,
      'overlayImage': 'assets/images/The Godfather 2.png',
    },
  ];

  void _next() {
    if (_index < pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        ),
      );
    }
  }

  void _back() {
    if (_index > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          onPageChanged: (i) => setState(() => _index = i),
          itemBuilder: (context, i) {
            final page = pages[i];

            return Stack(
              children: [
                // الصورة الأساسية
                Positioned.fill(
                  child: Image.asset(
                    page['image'],
                    fit: BoxFit.cover,
                  ),
                ),

                // صورة الـ Overlay (لو موجودة)
                if (page['overlay'] == true && page['overlayImage'] != '')
                  Positioned.fill(
                    child: Image.asset(
                      page['overlayImage'],
                      fit: BoxFit.cover,
                    ),
                  ),

                // المحتوى
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: page['fullWidth']
                        ? EdgeInsets.zero
                        : const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      width: page['fullWidth']
                          ? double.infinity
                          : MediaQuery.of(context).size.width * 0.85,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: AppColors.lightBlackColor,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            page['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: page['fontSizeTitle'],
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            page['subtitle'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor.withOpacity(0.6),
                              fontSize: page['fontSizeSubtitle'],
                            ),
                          ),
                          const SizedBox(height: 20.0),

                          // الزر الأساسي
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: _next,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.yellowColor,
                                foregroundColor: AppColors.lightBlackColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                              child: Text(
                                page['buttonText'],
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),

                          // زر الرجوع إذا موجود
                          if (page['showBack'] == true) const SizedBox(height: 24.0),
                          if (page['showBack'] == true)
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: _back,
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: AppColors.yellowColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                                child: const Text(
                                  'Back',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.yellowColor,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}*/
//========
import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _index = 0;

  final List<Map<String, dynamic>> pages = [
    {
      'image': 'assets/images/Movies Posters.png',
      'overlay': true,
      'overlayImage': 'assets/images/Rectangle 1.png', // ضيفي مسار الصورة اللي تحبيها
      'title': 'Find Your Next Favorite Movie Here',
      'subtitle':
      'Get access to a huge library of movies to suit all tastes. You will surely like it.',
      'buttonText': 'Explore Now',
      'showBack': false,
      'titleSize': 36.0,
      'subtitleSize': 20.0,
      'bottomOffset': 33.0,
      'containerColor': AppColors.lightBlackColor.withOpacity(0.6),
      'radius': 15.0,
    },
    {
      'image': 'assets/images/on2.png',
      'overlay': true,
      'overlayImage': 'assets/images/g_on2.png',
      'title': 'Discover Movies',
      'subtitle':
      'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
      'buttonText': 'Next',
      'showBack': false,
      'titleSize': 24.0,
      'subtitleSize': 20.0,
      'bottomOffset': 0.0,
      'containerColor': AppColors.lightBlackColor,
      'radius': 40.0,
    },
    {
      'image': 'assets/images/The Godfather 1.png',
      'overlay': true,
      'overlayImage': 'assets/images/The Godfather 2.png',
      'title': 'Explore All Genres',
      'subtitle':
      'Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
      'buttonText': 'Next',
      'showBack': true,
      'titleSize': 24.0,
      'subtitleSize': 20.0,
      'bottomOffset': 0.0,
      'containerColor': AppColors.lightBlackColor,
      'radius': 40.0,
    },
  ];

  void _next() {
    if (_index < pages.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Login Page', style: TextStyle(fontSize: 24)),
            ),
          ),
        ),
      );
    }
  }

  void _back() {
    if (_index > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  BorderRadius _getContainerRadius(int i) {
    if (i == 0) {
      return BorderRadius.circular(pages[i]['radius']);
    } else {
      return BorderRadius.only(
        topLeft: Radius.circular(pages[i]['radius']),
        topRight: Radius.circular(pages[i]['radius']),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          onPageChanged: (i) => setState(() => _index = i),
          itemBuilder: (context, i) {
            final page = pages[i];

            // تحديد ارتفاع الصورة: الشاشة 1 كلها، الشاشات 2 و3 3/4
            double imageBottom = (i == 0) ? 0 : MediaQuery.of(context).size.height * 0.25;

            return Stack(
              children: [
                // الصورة الأساسية
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: imageBottom,
                  child: Image.asset(
                    page['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                // Overlay
                if (page['overlay'] && page['overlayImage'] != '')
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: imageBottom,
                    child: Image.asset(
                      page['overlayImage'],
                      fit: BoxFit.cover,
                    ),
                  ),
                // Container أسفل الشاشة
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: page['bottomOffset']),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: page['containerColor'],
                        borderRadius: _getContainerRadius(i),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            page['title'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: page['titleSize'],
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            page['subtitle'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.whiteColor.withOpacity(0.6),
                              fontSize: page['subtitleSize'],
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: _next,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.yellowColor,
                                foregroundColor: AppColors.lightBlackColor,
                                padding:
                                const EdgeInsets.symmetric(vertical: 15),
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text(page['buttonText']),
                            ),
                          ),
                          if (page['showBack']) const SizedBox(height: 12),
                          if (page['showBack'])
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: _back,
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: AppColors.yellowColor,
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 15),
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: AppColors.yellowColor),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: const Text('Back'),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}