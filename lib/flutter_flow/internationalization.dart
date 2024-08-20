import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    'nsps9h7q': {
      'en': 'Email',
      'ar': 'البريد الالكتروني',
    },
    'mngueurg': {
      'en': 'Password',
      'ar': 'كلمة السر',
    },
    'xag4ms4u': {
      'en': 'Login',
      'ar': 'تسجيل دخول',
    },
    'dhioxpgj': {
      'en': 'Home',
      'ar': '',
    },
  },
  // HomePage
  {
    'tpajy49m': {
      'en': '00 : 00 : 00',
      'ar': '00 : 00 : 00',
    },
    'srxba1pj': {
      'en': 'Tap to',
      'ar': 'اضغط لـ',
    },
    'rm81pcu5': {
      'en': 'Clock In',
      'ar': 'تدخل',
    },
    'pqe8v9eq': {
      'en': 'Tap to',
      'ar': '',
    },
    'a3dk4bxp': {
      'en': 'Clock In',
      'ar': '',
    },
    'auz6u03z': {
      'en': '9 : 41 AM',
      'ar': '9 : 41 AM',
    },
    '4or8y847': {
      'en': 'Apply Leave',
      'ar': 'تقديم  مغادرة',
    },
    '0oi3twtc': {
      'en': 'Leave Request',
      'ar': 'طلب المغادرة',
    },
    'ol7i67li': {
      'en': 'Apply Vacation',
      'ar': 'تقديم اجازة',
    },
    '2phlxskw': {
      'en': 'Vacation Request',
      'ar': 'طلب إجازة',
    },
    '5m50xncd': {
      'en': 'My Attendance',
      'ar': 'حضوري',
    },
    'kotydpsu': {
      'en': 'Holiday List',
      'ar': 'قائمة العطلة',
    },
    '34ab8eu1': {
      'en': 'Morning ,Helen Hills',
      'ar': '',
    },
    '2mi37ohu': {
      'en': 'Home',
      'ar': 'الرئيسية',
    },
  },
  // MyProfilePage
  {
    'g3u7b8dj': {
      'en': 'My Profile',
      'ar': 'ملفي الشخصي',
    },
    'pk0ifdl6': {
      'en': 'Helen Hills',
      'ar': '',
    },
    'e490jpmc': {
      'en': 'helen@complete-chain.com',
      'ar': '',
    },
    'rgbn6asf': {
      'en': 'Setting',
      'ar': 'الاعدادات',
    },
    'ih6togq3': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة السر',
    },
    'io2ltlhi': {
      'en': 'Help & Support',
      'ar': 'المساعدة والدعم',
    },
    'vskps8sg': {
      'en': 'About Apps',
      'ar': 'عن التطبيق',
    },
    'e7hfuhsu': {
      'en': 'Logout',
      'ar': 'تسجيل الخروج',
    },
    'punxcq4n': {
      'en': 'My Profile',
      'ar': 'ملفي',
    },
  },
  // NotificationsPage
  {
    '60x9h6bx': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
    'olq5wz2a': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
      'ar': '',
    },
    'cg87w1xl': {
      'en': '2 hours',
      'ar': '',
    },
    'or458zh2': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
  },
  // ApplyLeavePage
  {
    'jfzo514y': {
      'en': 'Apply Leave',
      'ar': 'تقديم مغادرة',
    },
    '9eyu5hpd': {
      'en': 'Personal vacation Balance',
      'ar': 'رصيد الإجازة الشخصية',
    },
    'it7q86j2': {
      'en': '4 days , 6 hours , 36 minutes',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    '6hqe7xp1': {
      'en': 'Sick vacation Balanc',
      'ar': 'رصيد الإجازة المرضية',
    },
    '5dspgvvd': {
      'en': '4 days , 6 hours , 36 minutes',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    'xf0hdci7': {
      'en': 'Sick Leave',
      'ar': 'أجازة مرضية',
    },
    '0uajt45r': {
      'en': 'Leave Type',
      'ar': 'نوع الإجازة',
    },
    'ki83h8zn': {
      'en': '21 / 12 / 2020',
      'ar': 'أجازة مرضية',
    },
    'div1nif4': {
      'en': 'Date',
      'ar': 'التاريخ',
    },
    'x460iwzc': {
      'en': '00 : 00 : 00',
      'ar': 'أجازة مرضية',
    },
    'sds6hrvu': {
      'en': 'From',
      'ar': 'من',
    },
    '29jufwcm': {
      'en': '00 : 00 : 00',
      'ar': 'أجازة مرضية',
    },
    'q7n1boaf': {
      'en': 'To',
      'ar': 'الى',
    },
    '9kihf473': {
      'en': 'Button',
      'ar': '',
    },
    'ympcc49g': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
  },
  // ApplyVacationPage
  {
    'tsx1pij5': {
      'en': 'Apply Vacation',
      'ar': 'تطبيق الإجازة',
    },
    'j3ixi625': {
      'en': 'Personal vacation Balance',
      'ar': 'رصيد الإجازة الشخصية',
    },
    '1mw939ut': {
      'en': '4 days , 6 hours , 36 minutes',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    '7z0gnbar': {
      'en': 'Sick vacation Balance',
      'ar': 'رصيد الإجازة المرضية',
    },
    'k6ko353j': {
      'en': '4 days , 6 hours , 36 minutes',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    'pb9jrhlz': {
      'en': 'Sick Leave',
      'ar': 'أجازة مرضية',
    },
    '68bvkj4a': {
      'en': 'Vacation Type',
      'ar': 'نوع الإجازة',
    },
    '8anqbw05': {
      'en': '21 / 12 / 2020',
      'ar': 'أجازة مرضية',
    },
    'd7yya9db': {
      'en': 'Start Date',
      'ar': 'تاريخ البدء',
    },
    'x0xv51bp': {
      'en': '21 / 12 / 2020',
      'ar': 'أجازة مرضية',
    },
    '19aie4l3': {
      'en': 'End Date',
      'ar': 'تاريخ النهاية',
    },
    '19aidsdsde4l3': {
      'en': 'Date',
      'ar': 'التاريخ',
    },
    'wbq1rhac': {
      'en': 'Apply',
      'ar': 'تنفيذ',
    },
    'ch8zydwe': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
  },
  // LeaveRequestPage
  {
    'hfvag6cz': {
      'en': 'Leave Request',
      'ar': 'طلب مغادرة',
    },
    'hfvag6ccdcz': {
      'en': 'Holiday List',
      'ar': 'لائحة العطل',
    },
    '1uyycrn8': {
      'en': '31',
      'ar': '',
    },
    'urov6thd': {
      'en': 'June',
      'ar': '',
    },
    'l7o9szp9': {
      'en': '2024',
      'ar': '',
    },
    'f7uhzbuj': {
      'en': 'From 12 : 30 PM  To  01 : 30 PM',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    'hu0hzvt0': {
      'en': 'Sick Leave',
      'ar': 'أجازة مرضية',
    },
    '5itter2g': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
  },
  // VacationRequestPage
  {
    'zqnvwswn': {
      'en': 'Vacation Request',
      'ar': 'طلب الإجازة',
    },
    'tmby5n00': {
      'en': 'From 12 : 30 PM  To  01 : 30 PM',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    '4wi4agg4': {
      'en': 'Sick Leave',
      'ar': 'أجازة مرضية',
    },
    '9lrhoj5z': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
  },
  // MyAttendancePage
  {
    'nxo36ihz': {
      'en': 'My Attendance',
      'ar': 'حضوري',
    },
    'bh8lxssn': {
      'en': 'November',
      'ar': '',
    },
    'g92g608v': {
      'en': '31',
      'ar': '',
    },
    'jxnegqrj': {
      'en': 'June',
      'ar': '',
    },
    '6xno3nqm': {
      'en': '2024',
      'ar': '',
    },
    'i56izuww': {
      'en': 'From 12 : 30 PM  To  01 : 30 PM',
      'ar': '4 days , 6 hours , 36 minutes',
    },
    'npy6clwe': {
      'en': 'Notifications',
      'ar': 'الاشعارات',
    },
  },
  // FreeDialog
  {
    '90x2dekr': {
      'en': 'Ok',
      'ar': 'حسنا',
    },
  },
  // Miscellaneous
  {
    'quetetwp': {
      'en': 'Button',
      'ar': '',
    },
    'l1srd21v': {
      'en': '',
      'ar': '',
    },
    'sm2d0mry': {
      'en': '',
      'ar': '',
    },
    '2eluh522': {
      'en': '',
      'ar': '',
    },
    'hxk9nxg0': {
      'en': '',
      'ar': '',
    },
    'lsi4d5jl': {
      'en': '',
      'ar': '',
    },
    'fakki1on': {
      'en': '',
      'ar': '',
    },
    'zb5p2edn': {
      'en': '',
      'ar': '',
    },
    'w42ve16i': {
      'en': '',
      'ar': '',
    },
    '1qf5exd1': {
      'en': '',
      'ar': '',
    },
    'ywasc7ky': {
      'en': '',
      'ar': '',
    },
    'kyxobj9n': {
      'en': '',
      'ar': '',
    },
    'pnrcfcmg': {
      'en': '',
      'ar': '',
    },
    '8nrw08v3': {
      'en': '',
      'ar': '',
    },
    'swzs8hsw': {
      'en': '',
      'ar': '',
    },
    'wkqikk2f': {
      'en': '',
      'ar': '',
    },
    '5sjx03da': {
      'en': '',
      'ar': '',
    },
    '9d58fg0k': {
      'en': '',
      'ar': '',
    },
    '1kgctp3j': {
      'en': '',
      'ar': '',
    },
    'hi5ocq7r': {
      'en': '',
      'ar': '',
    },
    '52v3yxaj': {
      'en': '',
      'ar': '',
    },
    'b7w0je0x': {
      'en': '',
      'ar': '',
    },
    'mb0zcdmf': {
      'en': '',
      'ar': '',
    },
    'aa22q2if': {
      'en': '',
      'ar': '',
    },
    'y4gxrfz3': {
      'en': '',
      'ar': '',
    },
    'gfhb22vp': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
