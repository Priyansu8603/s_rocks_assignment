import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Utils/utils.dart';
import '../../../Utils/AppColors.dart';
import '../Model/ServiceModel.dart';
import '../ViewModel/HomeViewModel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:
          (_) =>
              HomeViewModel(Provider.of(context, listen: false))
                ..fetchListData(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.blackshade,
        body: SafeArea(
          child: Consumer<HomeViewModel>(
            builder: (context, viewModel, _) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    _buildHeader(context),
                    viewModel.isLoading
                        ? const Padding(
                          padding: EdgeInsets.all(30.0),
                          child: CircularProgressIndicator(color: Colors.white),
                        )
                        : _buildServiceList(viewModel.services),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.maroon, AppColors.maroondark],
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search "Punjabi Lyrics"',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 24,
                        width: 1,
                        color: Colors.white38,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                      ),
                      GestureDetector(
                        onTap: () {
                          Utils.showSnackBar(
                            context,
                            'Mic Tapped !!',
                            AppColors.maroon,
                          );
                        },
                        child: const Icon(Icons.mic, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () {
                  Utils.showSnackBar(
                    context,
                    'Profile Tapped !!',
                    AppColors.maroon,
                  );
                },
                child: const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            children: [
              const Text(
                'Claim your',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Text(
                'Free Demo',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'for custom Music Production',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 18),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.maroon,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Utils.showSnackBar(
                    context,
                    'Book Now Tapped !!',
                    AppColors.maroon,
                  );
                },
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildServiceList(List<ServiceModel> services) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:
            services
                .map(
                  (service) => Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(service.background_image),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Image.network(
                        service.icon,
                        height: 25,
                        width: 25,
                      ),
                      title: Text(
                        service.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      subtitle: Text(
                        service.subtitle,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
