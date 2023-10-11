import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // App Name
          'app_name': 'Flutter App MVVM ',

          // General Strings
          'welcome_message': 'Welcome to Antivirus App!',
          'error_message': 'Oops, something went wrong.',
          'fetching_details': 'Fetching Product Details...',

          // Privacy Policy
          'privacy_policy1': 'By continuing, you agree to our ',
          'privacy_policy2': 'License and Services Agreement ',
          'privacy_policy3': 'and acknowledge our ',
          'privacy_policy4': 'Global Privacy Statement.',
          'privacy_policy5':
              'This site is protected by reCAPTCHA and the Google ',
          'privacy_policy6': 'Privacy Policy ',
          'privacy_policy7': 'and ',
          'privacy_policy8': 'Terms of Service ',
          'privacy_policy9': 'apply.',

          // SignIN Options Screen
          'free_trial': 'Start your free trial. \nYou can cancel anytime.',
          'free_trial_message':
              'Get powerful protection against cyberthreats and online scams.',
          'choose_plan_button': 'Choose Your Plan',
          'sign_in_button': 'Sign In',
          'redeem_button': 'Redeem a subscription',
          'redeem_message': 'How would you like to redeem a subsrcription?',
          'product_key_button': 'Enter a product key',
          'partner_code_button': 'Enter a partner code',

          //Product Key Screen
          'product_key_title': 'Enter Your Product Key',
          'product_key_essage':
              'Your Product Key is the 25-character code that you received with your purchase.',
          'product_key_hint': 'Product Key',
          'verify_button': 'Verify',

          //Partner Code Screen
          'partner_code_title': 'Enter Your Partner Code',
          'partner_code_message': 'Enter Your Partner Code',
          'partner_code_hint': 'Partner Code',
          'next_button': 'Next',

          // SignIn Screen
          'sign_in_title': 'Sign In',
          'password_title': 'Enter your Password',
          'username_label': 'Username / Email',
          'password_label': 'Password',
          'continue_button': 'Continue',
          'divider_text': 'or',
          'sign_in_with_google': 'Sign In with Google',
          'sign_in_text_button': 'Sign In',
          'sign_in_text': 'with your service provider',
          'forgot_username': 'Forgot username?',
          'one_time_passwordButton': 'Request one-time password',
          'new_user_text': 'New user?',
          'create_account': 'Create an account.',
          'remember_me': 'Remember me on this device',
          'different_account': 'Sign in to a different account',

          // Home Screen
          'home_screen_title': 'Antivirus Protection',
          'scan_button_label': 'Scan Now',
          'scan_in_progress': 'Scanning in Progress...',
          'no_threats_found': 'No threats found on your device.',
          'threats_found': 'Threats Found:',
          'threat_details': 'Threat Details',

          // Scan Results Screen
          'scan_results_title': 'Scan Results',
          'scan_results_subtitle': 'Scan completed successfully.',
          'scan_date_label': 'Scan Date:',
          'scan_time_label': 'Scan Time:',
          'infected_files_label': 'Infected Files:',
          'clean_files_label': 'Clean Files:',
          'total_files_label': 'Total Files Scanned:',
          'back_button_label': 'Back to Home',

          // Settings Screen
          'settings_screen_title': 'Settings',
          'enable_real_time_scan': 'Enable Real-time Scan',
          'enable_auto_update': 'Enable Auto-update Definitions',
          'enable_notifications': 'Enable Notifications',
          'done_button_label': 'Done',

          // Title of Snackbar
          'login': 'Login',
          'error': 'Error',

          // Messages of Snackbar
          'logined': 'Login successfully',

          // Exceptions
          'internet_exception':
              'Your partner code was given to you by your service provider.',
          'user_not_found': 'User not found.'
        },

        //Hindi language
        'hi_IN': {'email_hint': 'ईमेल_संकेत'},
      };
}
