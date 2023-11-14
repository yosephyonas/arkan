 GetBuilder<CourseCategoryController>(
        builder: (controller) {
          Get.find<CourseCategoryController>().fetchCourseCategories();

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: controller.courseCategories.length,
            itemBuilder: (context, index) {
              final category = controller.courseCategories[index];
              return Column(
                children: [
                  SizedBox(
                    height: 141.h,
                    width: 141.w,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 48.sp,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 141.w,
                    child: Text(
                      controller.getCategoryName(category.name),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
