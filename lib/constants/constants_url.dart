class ConstantsURL{

  static const String baseURL = 'https://lamatiapp.com/api/';
  static const String registerCustomersURL = '/api/v1/auth/delivery-man/verify-token';
  static const String verifyUserURLTail = 'VerifyUser';
  static const String loginURl = '/api/v1/auth/delivery-man/login';
  static const String registerReservationURL = '/api/v1/delivery-man/update-fcm-token';
  static const String getPaymentURL = '/api/v1/delivery-man/current-orders?token=';
  static const String cancelReservationURL = '/api/v1/delivery-man/all-orders/';
  static const String getCustomerReservationsURL = '/api/v1/delivery-man/latest-orders/';
  static const String reSendVarificationCodeURL = '/api/v1/delivery-man/record-location-data';
  static const String requestForgotPasswordURL = '/api/v1/delivery-man/record-location-data';
  static const String verifyUserForgotPasswordURL = '/api/v1/delivery-man/record-location-data';
  static const String profileURL = '/api/v1/delivery-man/profile/';
  static const String updateProfileURL= '/api/v1/delivery-man/update-order-status';
  static const String getProfileByIDURL = '/api/v1/delivery-man/update-payment-status';
  static const String getCustomerWallettsURL = '/api/v1/delivery-man/order-details/';
  static const String changePasswordURL = '/api/v1/delivery-man/accept-order';
  static const String registerVechileURL = '/api/v1/delivery-man/update-active-status';
  static const String deleteVechileURL = '/api/v1/delivery-man/update-profile';
  static const String getCustomerVechilesURL = '/api/v1/delivery-man/notifications/';
  static const String getServicesURLTail = 'GetServices';
  static const String getAdditionalServicesURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getAppConfigURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getColorURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getGenderURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getVechileModelURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getMapZoneURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getVechileTypeURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getVechileCompanyURL = '/api/v1/delivery-man/order-delivery-history/';
  static const String getReservationTimesURL = '/api/v1/delivery-man/order-delivery-history/';
 }