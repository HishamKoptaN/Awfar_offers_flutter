// import '../models/sub_category.dart'; // تأكد من استيراد النموذج الصحيح

// class SubCategoriesSingleton {
//   List<SubCategory> _subCategories =
//       []; // استخدم List<SubCategory> بدلاً من List<Category>
//   static final SubCategoriesSingleton _instance =
//       SubCategoriesSingleton._internal();

//   SubCategoriesSingleton._internal();

//   static SubCategoriesSingleton get instance => _instance;

//   List<SubCategory> get subCategories =>
//       _subCategories; // يجب أن يكون من نوع List<SubCategory>

//   set subCategories(List<SubCategory> subCategoriesList) {
//     // تحديد النوع الصحيح في الـ setter
//     _subCategories = subCategoriesList;
//   }

//   void clear() {
//     _subCategories = [];
//   }
// }
