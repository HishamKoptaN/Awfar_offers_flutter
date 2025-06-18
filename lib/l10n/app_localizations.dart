import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @aquan.
  ///
  /// In en, this message translates to:
  /// **'AQUAN'**
  String get aquan;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome ,'**
  String get welcome;

  /// No description provided for @level.
  ///
  /// In en, this message translates to:
  /// **'level'**
  String get level;

  /// No description provided for @pleaseLogin.
  ///
  /// In en, this message translates to:
  /// **'Please Login To Your Account'**
  String get pleaseLogin;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password?'**
  String get forgetPassword;

  /// No description provided for @e_mail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get e_mail;

  /// No description provided for @invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalid_email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Passowrd'**
  String get password;

  /// No description provided for @password_mis_match.
  ///
  /// In en, this message translates to:
  /// **'Password mis match'**
  String get password_mis_match;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get user_name;

  /// No description provided for @add_email.
  ///
  /// In en, this message translates to:
  /// **'Add your email to link it to your account to receive a code'**
  String get add_email;

  /// No description provided for @password_too_short.
  ///
  /// In en, this message translates to:
  /// **'Password too short'**
  String get password_too_short;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @wait.
  ///
  /// In en, this message translates to:
  /// **'Wait'**
  String get wait;

  /// No description provided for @the_account_you_will_receive_the_money_from.
  ///
  /// In en, this message translates to:
  /// **'The account you will receive the money from'**
  String get the_account_you_will_receive_the_money_from;

  /// No description provided for @enter_your_email.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enter_your_email;

  /// No description provided for @amount_to_be_transferred.
  ///
  /// In en, this message translates to:
  /// **'Amount to be transferred'**
  String get amount_to_be_transferred;

  /// No description provided for @select_deposit_method.
  ///
  /// In en, this message translates to:
  /// **'Select deposit method'**
  String get select_deposit_method;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @commission.
  ///
  /// In en, this message translates to:
  /// **'Commission'**
  String get commission;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get sign_in;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @code_sent.
  ///
  /// In en, this message translates to:
  /// **'The code has been sent'**
  String get code_sent;

  /// No description provided for @passw_reset_link_has_been_sent.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has been sent'**
  String get passw_reset_link_has_been_sent;

  /// No description provided for @send_code_after.
  ///
  /// In en, this message translates to:
  /// **'send code again after'**
  String get send_code_after;

  /// No description provided for @send_code_again.
  ///
  /// In en, this message translates to:
  /// **'send code again'**
  String get send_code_again;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'Seconds'**
  String get seconds;

  /// No description provided for @open_account.
  ///
  /// In en, this message translates to:
  /// **'New Account'**
  String get open_account;

  /// No description provided for @subscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// No description provided for @deposit_sended.
  ///
  /// In en, this message translates to:
  /// **'Deposit request has been sent successfully.'**
  String get deposit_sended;

  /// No description provided for @withdrawal_sended.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal request sent successfully'**
  String get withdrawal_sended;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @monthly_limit_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'You have reached your monthly withdrawal limit.'**
  String get monthly_limit_withdrawal;

  /// No description provided for @daily_transfer_limit.
  ///
  /// In en, this message translates to:
  /// **'You have reached your daily transfer limit.'**
  String get daily_transfer_limit;

  /// No description provided for @monthly_transfer_limit.
  ///
  /// In en, this message translates to:
  /// **'You have reached the maximum monthly transfer limit.'**
  String get monthly_transfer_limit;

  /// No description provided for @payment_account_information.
  ///
  /// In en, this message translates to:
  /// **'Payment account information'**
  String get payment_account_information;

  /// No description provided for @qr_code.
  ///
  /// In en, this message translates to:
  /// **'َQR Code'**
  String get qr_code;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @not_verified.
  ///
  /// In en, this message translates to:
  /// **'Not verify'**
  String get not_verified;

  /// No description provided for @email_not_verify.
  ///
  /// In en, this message translates to:
  /// **'The email is not confirmed . A confirmation code will be sent'**
  String get email_not_verify;

  /// No description provided for @dont_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dont_have_account;

  /// No description provided for @start_date.
  ///
  /// In en, this message translates to:
  /// **'َStart Date'**
  String get start_date;

  /// No description provided for @send_code_verification.
  ///
  /// In en, this message translates to:
  /// **'Send Code Verification'**
  String get send_code_verification;

  /// No description provided for @end_date.
  ///
  /// In en, this message translates to:
  /// **'َEnd Date'**
  String get end_date;

  /// No description provided for @coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get coming_soon;

  /// No description provided for @verification_feature_will_be_added.
  ///
  /// In en, this message translates to:
  /// **'Price check feature will be added in other levels.'**
  String get verification_feature_will_be_added;

  /// No description provided for @send_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Send Verification Code'**
  String get send_verification_code;

  /// No description provided for @subscription_details.
  ///
  /// In en, this message translates to:
  /// **'Subscribtion Detils'**
  String get subscription_details;

  /// No description provided for @please_auth.
  ///
  /// In en, this message translates to:
  /// **'Please authenticate to show access account'**
  String get please_auth;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create a new account'**
  String get createAccount;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @first_name.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get first_name;

  /// No description provided for @last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get last_name;

  /// No description provided for @select_account.
  ///
  /// In en, this message translates to:
  /// **'Select Account'**
  String get select_account;

  /// No description provided for @passwordConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Password Confirmation'**
  String get passwordConfirmation;

  /// No description provided for @scan_qr.
  ///
  /// In en, this message translates to:
  /// **'Scan Qr Code'**
  String get scan_qr;

  /// No description provided for @invitationCode.
  ///
  /// In en, this message translates to:
  /// **'Invitation Code'**
  String get invitationCode;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @languageChanged.
  ///
  /// In en, this message translates to:
  /// **'Language has been changed'**
  String get languageChanged;

  /// No description provided for @transfer_successfully.
  ///
  /// In en, this message translates to:
  /// **'Transfer Successfully'**
  String get transfer_successfully;

  /// No description provided for @reward_value.
  ///
  /// In en, this message translates to:
  /// **'Reward value'**
  String get reward_value;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @min_transfer.
  ///
  /// In en, this message translates to:
  /// **'Minimum transfer'**
  String get min_transfer;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @passwordChanged.
  ///
  /// In en, this message translates to:
  /// **'Password updated with success'**
  String get passwordChanged;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @newPasswordConfirmation.
  ///
  /// In en, this message translates to:
  /// **'New password confirmation'**
  String get newPasswordConfirmation;

  /// No description provided for @changePlan.
  ///
  /// In en, this message translates to:
  /// **'Change Plan'**
  String get changePlan;

  /// No description provided for @uploadPaymentProof.
  ///
  /// In en, this message translates to:
  /// **'Upload payment document'**
  String get uploadPaymentProof;

  /// No description provided for @chooseImage.
  ///
  /// In en, this message translates to:
  /// **'choose image'**
  String get chooseImage;

  /// No description provided for @changeProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get changeProfile;

  /// No description provided for @profileChangedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Profile updated with success'**
  String get profileChangedSuccess;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @transferMoney.
  ///
  /// In en, this message translates to:
  /// **'Transfer Your Money'**
  String get transferMoney;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @chooseWallet.
  ///
  /// In en, this message translates to:
  /// **'Choose source wallet'**
  String get chooseWallet;

  /// No description provided for @chooseReceiverWallet.
  ///
  /// In en, this message translates to:
  /// **'Choose receiver wallet'**
  String get chooseReceiverWallet;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get rate;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get delete;

  /// No description provided for @charge.
  ///
  /// In en, this message translates to:
  /// **'Charge'**
  String get charge;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @calculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get calculate;

  /// No description provided for @ourServices.
  ///
  /// In en, this message translates to:
  /// **'Our Services'**
  String get ourServices;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @depositMoney.
  ///
  /// In en, this message translates to:
  /// **'Deposit Money'**
  String get depositMoney;

  /// No description provided for @choose.
  ///
  /// In en, this message translates to:
  /// **'Choose'**
  String get choose;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @depositAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount (min 10\$)'**
  String get depositAmount;

  /// No description provided for @withdrawAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount (min 10\$)'**
  String get withdrawAmount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @deposit_method.
  ///
  /// In en, this message translates to:
  /// **'طريقة الايداع'**
  String get deposit_method;

  /// No description provided for @withdraw_method.
  ///
  /// In en, this message translates to:
  /// **'طريقة السحب'**
  String get withdraw_method;

  /// No description provided for @deposits.
  ///
  /// In en, this message translates to:
  /// **'My Deposits'**
  String get deposits;

  /// No description provided for @plans.
  ///
  /// In en, this message translates to:
  /// **'Plans'**
  String get plans;

  /// No description provided for @pricePerReferal.
  ///
  /// In en, this message translates to:
  /// **'Price Per Referal'**
  String get pricePerReferal;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @dailyTransfers.
  ///
  /// In en, this message translates to:
  /// **'Daily Transfer'**
  String get dailyTransfers;

  /// No description provided for @monthlyTransfers.
  ///
  /// In en, this message translates to:
  /// **'Monthly Transfer'**
  String get monthlyTransfers;

  /// No description provided for @buyNow.
  ///
  /// In en, this message translates to:
  /// **'Buy Now'**
  String get buyNow;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// No description provided for @yourPlan.
  ///
  /// In en, this message translates to:
  /// **'Your Plan'**
  String get yourPlan;

  /// No description provided for @referals.
  ///
  /// In en, this message translates to:
  /// **'Referals'**
  String get referals;

  /// No description provided for @referalCode.
  ///
  /// In en, this message translates to:
  /// **'Referal code'**
  String get referalCode;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @appSettings.
  ///
  /// In en, this message translates to:
  /// **'Application Settings'**
  String get appSettings;

  /// No description provided for @wallets.
  ///
  /// In en, this message translates to:
  /// **'My Wallet'**
  String get wallets;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions History'**
  String get transactions;

  /// No description provided for @withdraws.
  ///
  /// In en, this message translates to:
  /// **'My Withdraws'**
  String get withdraws;

  /// No description provided for @task.
  ///
  /// In en, this message translates to:
  /// **'Task'**
  String get task;

  /// No description provided for @tasks.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasks;

  /// No description provided for @taskCompleted.
  ///
  /// In en, this message translates to:
  /// **'You completed this task'**
  String get taskCompleted;

  /// No description provided for @uploadProof.
  ///
  /// In en, this message translates to:
  /// **'Add your proof'**
  String get uploadProof;

  /// No description provided for @receiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get receiver;

  /// No description provided for @fromCurrency.
  ///
  /// In en, this message translates to:
  /// **'From Currency'**
  String get fromCurrency;

  /// No description provided for @toCurrency.
  ///
  /// In en, this message translates to:
  /// **'To Currency'**
  String get toCurrency;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'type'**
  String get type;

  /// No description provided for @withdrawMoney.
  ///
  /// In en, this message translates to:
  /// **'Withdraw Money'**
  String get withdrawMoney;

  /// No description provided for @yourWallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get yourWallet;

  /// No description provided for @verify_email.
  ///
  /// In en, this message translates to:
  /// **'Please verify your email first'**
  String get verify_email;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @account_verified_done.
  ///
  /// In en, this message translates to:
  /// **'Account has been confirmed'**
  String get account_verified_done;

  /// No description provided for @subscription_now.
  ///
  /// In en, this message translates to:
  /// **'Subscribe now to get the best rates and the fastest money transfer service with ease and security!'**
  String get subscription_now;

  /// No description provided for @wantToResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset My Password'**
  String get wantToResetPassword;

  /// No description provided for @sendMoney.
  ///
  /// In en, this message translates to:
  /// **'Send Money'**
  String get sendMoney;

  /// No description provided for @choose_subscription.
  ///
  /// In en, this message translates to:
  /// **'Choose your subscription plan'**
  String get choose_subscription;

  /// No description provided for @last2Transactions.
  ///
  /// In en, this message translates to:
  /// **'Last 2 Transactions'**
  String get last2Transactions;

  /// No description provided for @showAll.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get showAll;

  /// No description provided for @transfer_commission.
  ///
  /// In en, this message translates to:
  /// **'Transfer commission'**
  String get transfer_commission;

  /// No description provided for @levelOne.
  ///
  /// In en, this message translates to:
  /// **'First Level'**
  String get levelOne;

  /// No description provided for @levelTwo.
  ///
  /// In en, this message translates to:
  /// **'Second Level'**
  String get levelTwo;

  /// No description provided for @levelThree.
  ///
  /// In en, this message translates to:
  /// **'Third Level'**
  String get levelThree;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @transformation.
  ///
  /// In en, this message translates to:
  /// **'Transformation'**
  String get transformation;

  /// No description provided for @noTransactions.
  ///
  /// In en, this message translates to:
  /// **'No Transactions'**
  String get noTransactions;

  /// No description provided for @transferFromBankToBank.
  ///
  /// In en, this message translates to:
  /// **'Transfer from account to other'**
  String get transferFromBankToBank;

  /// No description provided for @upgradeAccount.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Account'**
  String get upgradeAccount;

  /// No description provided for @changeColor.
  ///
  /// In en, this message translates to:
  /// **'Change Color'**
  String get changeColor;

  /// No description provided for @enableNotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// No description provided for @enableNotificationsText.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications for your application'**
  String get enableNotificationsText;

  /// No description provided for @sendMessage.
  ///
  /// In en, this message translates to:
  /// **'Send Message'**
  String get sendMessage;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @messageSent.
  ///
  /// In en, this message translates to:
  /// **'Messahe has been sent'**
  String get messageSent;

  /// No description provided for @biometricsButton.
  ///
  /// In en, this message translates to:
  /// **'Use Biometrics Fingerprint'**
  String get biometricsButton;

  /// No description provided for @biometricsButtonText.
  ///
  /// In en, this message translates to:
  /// **'Use Biometrics Fingerprint in your application'**
  String get biometricsButtonText;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share the app'**
  String get shareApp;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About AQUAN'**
  String get aboutUs;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get logout;

  /// No description provided for @changePasswordText.
  ///
  /// In en, this message translates to:
  /// **'Change Your Password'**
  String get changePasswordText;

  /// No description provided for @verifyEmailText.
  ///
  /// In en, this message translates to:
  /// **'Enter the code that sent to your email'**
  String get verifyEmailText;

  /// No description provided for @enter_6_digits.
  ///
  /// In en, this message translates to:
  /// **'Please enter the 6 digit code sent to Your Email'**
  String get enter_6_digits;

  /// No description provided for @withdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get withdraw;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resend_code;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @changeRate.
  ///
  /// In en, this message translates to:
  /// **'Change Rate'**
  String get changeRate;

  /// No description provided for @noCurrencies.
  ///
  /// In en, this message translates to:
  /// **'No Currencies'**
  String get noCurrencies;

  /// No description provided for @lastUpdate.
  ///
  /// In en, this message translates to:
  /// **'Last Update'**
  String get lastUpdate;

  /// No description provided for @noTasks.
  ///
  /// In en, this message translates to:
  /// **'No Tasks Found'**
  String get noTasks;

  /// No description provided for @buyandsell.
  ///
  /// In en, this message translates to:
  /// **'Buy & Sell'**
  String get buyandsell;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @accountInfo.
  ///
  /// In en, this message translates to:
  /// **'Account Info'**
  String get accountInfo;

  /// No description provided for @sendToAnOtherAccount.
  ///
  /// In en, this message translates to:
  /// **'Send to another account'**
  String get sendToAnOtherAccount;

  /// No description provided for @accountId.
  ///
  /// In en, this message translates to:
  /// **'Account ID'**
  String get accountId;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @amountSent.
  ///
  /// In en, this message translates to:
  /// **'Amount has been sent'**
  String get amountSent;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @receivedAmount.
  ///
  /// In en, this message translates to:
  /// **'Received Amount'**
  String get receivedAmount;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @sell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get sell;

  /// No description provided for @paymentInfo.
  ///
  /// In en, this message translates to:
  /// **'Account of receiving'**
  String get paymentInfo;

  /// No description provided for @withdrawMethod.
  ///
  /// In en, this message translates to:
  /// **'Withdraw Method'**
  String get withdrawMethod;

  /// No description provided for @withdrawsAndDeposits.
  ///
  /// In en, this message translates to:
  /// **'WIthdraws & Deposits'**
  String get withdrawsAndDeposits;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @thePrice.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get thePrice;

  /// No description provided for @operation.
  ///
  /// In en, this message translates to:
  /// **'Operation'**
  String get operation;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// No description provided for @required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get required;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @pleaseCheckInfo.
  ///
  /// In en, this message translates to:
  /// **'Please check all info are corrects'**
  String get pleaseCheckInfo;

  /// No description provided for @transferAmount.
  ///
  /// In en, this message translates to:
  /// **'Transfer Amount'**
  String get transferAmount;

  /// No description provided for @toThisAccount.
  ///
  /// In en, this message translates to:
  /// **'Tothis account'**
  String get toThisAccount;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account number'**
  String get accountNumber;

  /// No description provided for @payIn.
  ///
  /// In en, this message translates to:
  /// **'Please Pay in'**
  String get payIn;

  /// No description provided for @timerEnd.
  ///
  /// In en, this message translates to:
  /// **'Time is off'**
  String get timerEnd;

  /// No description provided for @requiredNumber.
  ///
  /// In en, this message translates to:
  /// **'Required Number'**
  String get requiredNumber;

  /// No description provided for @mustBe10OrHigher.
  ///
  /// In en, this message translates to:
  /// **'Must be greater or equal to 10'**
  String get mustBe10OrHigher;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'No Notifications'**
  String get noNotifications;

  /// No description provided for @noReferals.
  ///
  /// In en, this message translates to:
  /// **'No Referals'**
  String get noReferals;

  /// No description provided for @planName.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get planName;

  /// No description provided for @priceOfSelling.
  ///
  /// In en, this message translates to:
  /// **'Selling Price'**
  String get priceOfSelling;

  /// No description provided for @priceOfBuying.
  ///
  /// In en, this message translates to:
  /// **'Buying Price'**
  String get priceOfBuying;

  /// No description provided for @logedOut.
  ///
  /// In en, this message translates to:
  /// **'You have been logedout'**
  String get logedOut;

  /// No description provided for @myAccounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get myAccounts;

  /// No description provided for @accountsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Accounts has been updated with success'**
  String get accountsUpdated;

  /// No description provided for @createAccountGoogle.
  ///
  /// In en, this message translates to:
  /// **'Complete your account'**
  String get createAccountGoogle;

  /// No description provided for @annuler.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get annuler;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// No description provided for @link.
  ///
  /// In en, this message translates to:
  /// **'Task Link'**
  String get link;

  /// No description provided for @copyrights.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved'**
  String get copyrights;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @max_transfer.
  ///
  /// In en, this message translates to:
  /// **'Max Transfer'**
  String get max_transfer;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @received_account.
  ///
  /// In en, this message translates to:
  /// **'The account number you want to receive the amount on'**
  String get received_account;

  /// No description provided for @cantMakeTransfer.
  ///
  /// In en, this message translates to:
  /// **'Not currently available'**
  String get cantMakeTransfer;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
