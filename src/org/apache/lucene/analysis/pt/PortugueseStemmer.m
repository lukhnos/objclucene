//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/pt/PortugueseStemmer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/pt/PortugueseStemmer.h"
#include "org/apache/lucene/analysis/pt/RSLPStemmerBase.h"

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_plural();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_plural;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, plural, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_feminine();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_feminine;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, feminine, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_adverb();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_adverb;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, adverb, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_augmentative();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_augmentative;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, augmentative, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_noun();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_noun;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, noun, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_verb();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_verb;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, verb, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

inline OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_get_vowel();
static OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *OrgApacheLuceneAnalysisPtPortugueseStemmer_vowel;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisPtPortugueseStemmer, vowel, OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisPtPortugueseStemmer)

@implementation OrgApacheLuceneAnalysisPtPortugueseStemmer

- (jint)stemWithCharArray:(IOSCharArray *)s
                  withInt:(jint)len {
  JreAssert((((IOSCharArray *) nil_chk(s))->size_ >= len + 1), (@"this stemmer requires an oversized array of at least 1"));
  len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_plural)) applyWithCharArray:s withInt:len];
  len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_adverb)) applyWithCharArray:s withInt:len];
  len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_feminine)) applyWithCharArray:s withInt:len];
  len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_augmentative)) applyWithCharArray:s withInt:len];
  jint oldlen = len;
  len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_noun)) applyWithCharArray:s withInt:len];
  if (len == oldlen) {
    oldlen = len;
    len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_verb)) applyWithCharArray:s withInt:len];
    if (len == oldlen) {
      len = [((OrgApacheLuceneAnalysisPtRSLPStemmerBase_Step *) nil_chk(OrgApacheLuceneAnalysisPtPortugueseStemmer_vowel)) applyWithCharArray:s withInt:len];
    }
  }
  for (jint i = 0; i < len; i++) {
    switch (IOSCharArray_Get(s, i)) {
      case 0x00e0:
      case 0x00e1:
      case 0x00e2:
      case 0x00e3:
      case 0x00e4:
      case 0x00e5:
      *IOSCharArray_GetRef(s, i) = 'a';
      break;
      case 0x00e7:
      *IOSCharArray_GetRef(s, i) = 'c';
      break;
      case 0x00e8:
      case 0x00e9:
      case 0x00ea:
      case 0x00eb:
      *IOSCharArray_GetRef(s, i) = 'e';
      break;
      case 0x00ec:
      case 0x00ed:
      case 0x00ee:
      case 0x00ef:
      *IOSCharArray_GetRef(s, i) = 'i';
      break;
      case 0x00f1:
      *IOSCharArray_GetRef(s, i) = 'n';
      break;
      case 0x00f2:
      case 0x00f3:
      case 0x00f4:
      case 0x00f5:
      case 0x00f6:
      *IOSCharArray_GetRef(s, i) = 'o';
      break;
      case 0x00f9:
      case 0x00fa:
      case 0x00fb:
      case 0x00fc:
      *IOSCharArray_GetRef(s, i) = 'u';
      break;
      case 0x00fd:
      case 0x00ff:
      *IOSCharArray_GetRef(s, i) = 'y';
      break;
    }
  }
  return len;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPtPortugueseStemmer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisPtPortugueseStemmer class]) {
    {
      id<JavaUtilMap> steps = OrgApacheLuceneAnalysisPtRSLPStemmerBase_parseWithIOSClass_withNSString_(OrgApacheLuceneAnalysisPtPortugueseStemmer_class_(), @"portuguese.rslp");
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_plural, [((id<JavaUtilMap>) nil_chk(steps)) getWithId:@"Plural"]);
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_feminine, [steps getWithId:@"Feminine"]);
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_adverb, [steps getWithId:@"Adverb"]);
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_augmentative, [steps getWithId:@"Augmentative"]);
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_noun, [steps getWithId:@"Noun"]);
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_verb, [steps getWithId:@"Verb"]);
      JreStrongAssign(&OrgApacheLuceneAnalysisPtPortugueseStemmer_vowel, [steps getWithId:@"Vowel"]);
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisPtPortugueseStemmer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:", "stem", "I", 0x1, NULL, NULL },
    { "init", "PortugueseStemmer", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "plural", "plural", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_plural, NULL, .constantValue.asLong = 0 },
    { "feminine", "feminine", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_feminine, NULL, .constantValue.asLong = 0 },
    { "adverb", "adverb", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_adverb, NULL, .constantValue.asLong = 0 },
    { "augmentative", "augmentative", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_augmentative, NULL, .constantValue.asLong = 0 },
    { "noun", "noun", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_noun, NULL, .constantValue.asLong = 0 },
    { "verb", "verb", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_verb, NULL, .constantValue.asLong = 0 },
    { "vowel", "vowel", 0x1a, "Lorg.apache.lucene.analysis.pt.RSLPStemmerBase$Step;", &OrgApacheLuceneAnalysisPtPortugueseStemmer_vowel, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPtPortugueseStemmer = { 2, "PortugueseStemmer", "org.apache.lucene.analysis.pt", NULL, 0x1, 2, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPtPortugueseStemmer;
}

@end

void OrgApacheLuceneAnalysisPtPortugueseStemmer_init(OrgApacheLuceneAnalysisPtPortugueseStemmer *self) {
  OrgApacheLuceneAnalysisPtRSLPStemmerBase_init(self);
}

OrgApacheLuceneAnalysisPtPortugueseStemmer *new_OrgApacheLuceneAnalysisPtPortugueseStemmer_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPtPortugueseStemmer, init)
}

OrgApacheLuceneAnalysisPtPortugueseStemmer *create_OrgApacheLuceneAnalysisPtPortugueseStemmer_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPtPortugueseStemmer, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPtPortugueseStemmer)
