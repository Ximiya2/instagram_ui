import 'models/notifications_models.dart';
import 'models/post_model.dart';
import 'models/story_model.dart';

List<StoryModel> storiesList = [
  StoryModel('assets/images/carrent/1395906-middle.png', 'Jasmin', isSeen: true),
  StoryModel('assets/images/carrent/dd.png', 'Abror',),
  StoryModel('assets/images/carrent/ph11.jpg', 'Baxrom', ),
  StoryModel('assets/images/carrent/ph10.jpg', 'Muhammad', ),
  StoryModel('assets/images/carrent/ph13.jpg', 'Faxriddin', isSeen: true),
  StoryModel('assets/images/carrent/ph14.jpg', 'G\`olib',),

];

final List<PostModel> postsList = [
  PostModel(
      userName: "Brianne",
      userImage: 'assets/images/carrent/ph18.jpg',
      postImage: 'assets/images/carrent/ph19.jpg',
      caption: 'Consequatur nihil aliquid omnis consequtur', time: '', isLiked: '', isLiked2: ''
  ),
  PostModel(
      userName: "Henri",
      userImage: 'assets/images/carrent/ph1.jpg',
      postImage: 'assets/images/carrent/ph1.jpg',
      caption: 'Consequatur nihil aliquid omnis consequtur',time: '', isLiked: '', isLiked2: ''
  ),
  PostModel(
      userName: "Mariano",
      userImage: 'assets/images/carrent/ph3.jpg',
      postImage: 'assets/images/carrent/ph3.jpg',
      caption: 'Consequatur nihil aliquid omnis consequtur',time: '', isLiked: '', isLiked2: ''
  ),
  PostModel(
      userName: "Brianne",
      userImage: 'assets/images/carrent/ph18.jpg',
      postImage: 'assets/images/carrent/ph19.jpg',
      caption: 'Consequatur nihil aliquid omnis consequtur',time: '', isLiked: '', isLiked2: ''
  ),
  PostModel(
      userName: "Henri",
      userImage: 'assets/images/carrent/ph1.jpg',
      postImage: 'assets/images/carrent/ph1.jpg',
      caption: 'Consequatur nihil aliquid omnis consequtur',time: '', isLiked: '', isLiked2: ''
  ),
  PostModel(
      userName: "Mariano",
      userImage: 'assets/images/carrent/ph3.jpg',
      postImage: 'assets/images/carrent/ph3.jpg',
      caption: 'Consequatur nihil aliquid omnis consequtur',time: '', isLiked: '', isLiked2: ''
  ),
];

List<NotificationsModel> notificationsList = [

  NotificationsModel(
      'assets/images/carrent/1395906-middle.png',
      'shahzodjuraakulov ',
      'started folowing you. ',
      '1d',
      isLiked: false,
      isFollow: true,
  ),
  NotificationsModel(
    'assets/images/carrent/ph19.jpg',
    'web._,coderr ',
    'started folowing you. ',
    '5d',
    isFollow: false,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/ph18.jpg',
    'nod1rber_bahtiyorovich',
    'started folowing you. ',
    '7d',
    isFollow: false,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/ph17.jpg',
    'asadbek_urazaliev',
    'started folowing you. ',
    '1w',
    isFollow: true,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/ph16.jpg',
    'sh_karshiyev',
    'started folowing you. ',
    '2w',
    isFollow: true,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/ph15.jpg',
    'a_ibragimovv.02, bobojon200075 and 127 others ',
    'liked your post. ',
    '3w',
    isFollow: false,
    isLiked: true,
    likeImage: 'assets/images/carrent/ph14.jpg'
  ),////////////////
  NotificationsModel(
      'assets/images/carrent/ph11.jpg',
      'a_ibragimovv.02, bobojon200075 and 199 others ',
      'liked your post. ',
      '3w',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/images/carrent/ph1.jpg'
  ),
  NotificationsModel(
    'assets/images/carrent/ph10.jpg',
    'a_ibragimovv.02, abror.abdulboriev and sedatalb34  ',
    'liked your post. ',
    '3w',
    isFollow: false,
    isLiked: true,
    likeImage: 'assets/images/carrent/ph1.jpg'
  ),
  NotificationsModel(
      'assets/images/carrent/ph9.jpg',
      'a_ibragimovv.02, abror.abdulboriev and sedatalb34  ',
      'liked your post. ',
      '3w',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/images/carrent/ph1.jpg'
  ),
  NotificationsModel(
    'assets/images/carrent/ph8.jpg',
    'shahzodjuraakulov ',
    'started folowing you. ',
    '1d',
    isLiked: false,
    isFollow: true,
  ),
  NotificationsModel(
    'assets/images/carrent/ph7.jpg',
    'web._,coderr ',
    'started folowing you. ',
    '5d',
    isFollow: false,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/1395906-middle.png',
    'nod1rber_bahtiyorovich',
    'started folowing you. ',
    '7d',
    isFollow: false,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/1395906-middle.png',
    'asadbek_urazaliev',
    'started folowing you. ',
    '1w',
    isFollow: true,
    isLiked: false,
  ),
  NotificationsModel(
    'assets/images/carrent/1395906-middle.png',
    'sh_karshiyev',
    'started folowing you. ',
    '2w',
    isFollow: true,
    isLiked: false,
  ),
  NotificationsModel(
      'assets/images/carrent/1395906-middle.png',
      'a_ibragimovv.02, bobojon200075 and 127 others ',
      'liked your post. ',
      '3w',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/images/carrent/ph1.jpg'
  ),////////////////
  NotificationsModel(
      'assets/images/carrent/1395906-middle.png',
      'a_ibragimovv.02, bobojon200075 and 199 others ',
      'liked your post. ',
      '3w',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/images/carrent/ph1.jpg'
  ),
  NotificationsModel(
      'assets/images/carrent/1395906-middle.png',
      'a_ibragimovv.02, abror.abdulboriev and sedatalb34  ',
      'liked your post. ',
      '3w',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/images/carrent/ph1.jpg'
  ),
  NotificationsModel(
      'assets/images/carrent/1395906-middle.png',
      'a_ibragimovv.02, abror.abdulboriev and sedatalb34  ',
      'liked your post. ',
      '3w',
      isFollow: false,
      isLiked: true,
      likeImage: 'assets/images/carrent/ph1.jpg'
  ),

];