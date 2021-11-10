List<Map<String, String>> bloodData = [
  {
    "groupe": "o+".toUpperCase(),
    "donne": "o+,a+,b+,ab+",
    "recoit": "o-,o+",
  },
  {
    "groupe": "o-".toUpperCase(),
    "donne": "o-,o+,a+,a-,b+,b-,ab+,ab-",
    "recoit": "o-",
  },
  {
    "groupe": "a+".toUpperCase(),
    "donne": "a+,ab+",
    "recoit": "a+,a-,o-,o+",
  },
  {
    "groupe": "a-".toUpperCase(),
    "donne": "a-,a+,ab+,ab-",
    "recoit": "o-,a-",
  },
  {
    "groupe": "b+".toUpperCase(),
    "donne": "b+,ab+",
    "recoit": "o-,o+,b+,b-",
  },
  {
    "groupe": "b-".toUpperCase(),
    "donne": "b-,b+,ab+,ab-",
    "recoit": "b-,o-",
  },
  {
    "groupe": "ab+".toUpperCase(),
    "donne": "ab+",
    "recoit": "ab+,ab-,o+,o-,a+,a-,b+,b-",
  },
  {
    "groupe": "ab-".toUpperCase(),
    "donne": "ab-,ab+",
    "recoit": "ab-,o-,a-,b-",
  }
];
