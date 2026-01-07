class RayModel {
  final String title;
  final String description;
  final String imagePath;

  RayModel({required this.title,required this.description,required this.imagePath});
  static final List<RayModel>rayList=[
    RayModel(title: "Chest X-ray with Cardiac Device", description: "Anteroposterior chest radiograph showing an implanted cardiac pacemaker with visible leads, along with monitoring electrodes over the chest.", imagePath: "assets/images/Chest.jpg"),
    RayModel(title: "Brain MRI with Focal Lesion", description: " Axial brain MRI demonstrating a focal hyperintense lesion in the frontal region, indicated by an arrow, suggestive of localized pathology.", imagePath: "assets/images/Brain.jpg"),
    RayModel(title: "Echocardiography Showing Endocardial Lesion", description: "Transthoracic echocardiogram illustrating cardiac chambers with a labeled endocardial lesion involving the heart, alongside the aorta and ventricles.", imagePath: "assets/images/Echocardiography.jpg")
    
    
  ];
  

}