//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianStemmer.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/id/IndonesianStemmer.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_KE 1
#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG 2
#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_DI 4
#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG 8
#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_TER 16
#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_BER 32
#define OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PE 64

@interface OrgApacheLuceneAnalysisIdIndonesianStemmer () {
 @public
  jint numSyllables_;
  jint flags_;
}

- (jint)stemDerivationalWithCharArray:(IOSCharArray *)text
                              withInt:(jint)length;

- (jboolean)isVowelWithChar:(jchar)ch;

- (jint)removeParticleWithCharArray:(IOSCharArray *)text
                            withInt:(jint)length;

- (jint)removePossessivePronounWithCharArray:(IOSCharArray *)text
                                     withInt:(jint)length;

- (jint)removeFirstOrderPrefixWithCharArray:(IOSCharArray *)text
                                    withInt:(jint)length;

- (jint)removeSecondOrderPrefixWithCharArray:(IOSCharArray *)text
                                     withInt:(jint)length;

- (jint)removeSuffixWithCharArray:(IOSCharArray *)text
                          withInt:(jint)length;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_KE, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_PENG, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_DI, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_MENG, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_TER, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_BER, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisIdIndonesianStemmer, REMOVED_PE, jint)

__attribute__((unused)) static jint OrgApacheLuceneAnalysisIdIndonesianStemmer_stemDerivationalWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length);

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, jchar ch);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeParticleWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removePossessivePronounWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeFirstOrderPrefixWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSecondOrderPrefixWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length);

__attribute__((unused)) static jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSuffixWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length);

@implementation OrgApacheLuceneAnalysisIdIndonesianStemmer

- (jint)stemWithCharArray:(IOSCharArray *)text
                  withInt:(jint)length
              withBoolean:(jboolean)stemDerivational {
  flags_ = 0;
  numSyllables_ = 0;
  for (jint i = 0; i < length; i++) if (OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(self, IOSCharArray_Get(nil_chk(text), i))) numSyllables_++;
  if (numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removeParticleWithCharArray_withInt_(self, text, length);
  if (numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removePossessivePronounWithCharArray_withInt_(self, text, length);
  if (stemDerivational) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_stemDerivationalWithCharArray_withInt_(self, text, length);
  return length;
}

- (jint)stemDerivationalWithCharArray:(IOSCharArray *)text
                              withInt:(jint)length {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_stemDerivationalWithCharArray_withInt_(self, text, length);
}

- (jboolean)isVowelWithChar:(jchar)ch {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(self, ch);
}

- (jint)removeParticleWithCharArray:(IOSCharArray *)text
                            withInt:(jint)length {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_removeParticleWithCharArray_withInt_(self, text, length);
}

- (jint)removePossessivePronounWithCharArray:(IOSCharArray *)text
                                     withInt:(jint)length {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_removePossessivePronounWithCharArray_withInt_(self, text, length);
}

- (jint)removeFirstOrderPrefixWithCharArray:(IOSCharArray *)text
                                    withInt:(jint)length {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_removeFirstOrderPrefixWithCharArray_withInt_(self, text, length);
}

- (jint)removeSecondOrderPrefixWithCharArray:(IOSCharArray *)text
                                     withInt:(jint)length {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSecondOrderPrefixWithCharArray_withInt_(self, text, length);
}

- (jint)removeSuffixWithCharArray:(IOSCharArray *)text
                          withInt:(jint)length {
  return OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSuffixWithCharArray_withInt_(self, text, length);
}

- (instancetype)init {
  OrgApacheLuceneAnalysisIdIndonesianStemmer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "stemWithCharArray:withInt:withBoolean:", "stem", "I", 0x1, NULL, NULL },
    { "stemDerivationalWithCharArray:withInt:", "stemDerivational", "I", 0x2, NULL, NULL },
    { "isVowelWithChar:", "isVowel", "Z", 0x2, NULL, NULL },
    { "removeParticleWithCharArray:withInt:", "removeParticle", "I", 0x2, NULL, NULL },
    { "removePossessivePronounWithCharArray:withInt:", "removePossessivePronoun", "I", 0x2, NULL, NULL },
    { "removeFirstOrderPrefixWithCharArray:withInt:", "removeFirstOrderPrefix", "I", 0x2, NULL, NULL },
    { "removeSecondOrderPrefixWithCharArray:withInt:", "removeSecondOrderPrefix", "I", 0x2, NULL, NULL },
    { "removeSuffixWithCharArray:withInt:", "removeSuffix", "I", 0x2, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "numSyllables_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "flags_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "REMOVED_KE", "REMOVED_KE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_KE },
    { "REMOVED_PENG", "REMOVED_PENG", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG },
    { "REMOVED_DI", "REMOVED_DI", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_DI },
    { "REMOVED_MENG", "REMOVED_MENG", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG },
    { "REMOVED_TER", "REMOVED_TER", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_TER },
    { "REMOVED_BER", "REMOVED_BER", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_BER },
    { "REMOVED_PE", "REMOVED_PE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PE },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisIdIndonesianStemmer = { 2, "IndonesianStemmer", "org.apache.lucene.analysis.id", NULL, 0x1, 9, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisIdIndonesianStemmer;
}

@end

jint OrgApacheLuceneAnalysisIdIndonesianStemmer_stemDerivationalWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length) {
  jint oldLength = length;
  if (self->numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removeFirstOrderPrefixWithCharArray_withInt_(self, text, length);
  if (oldLength != length) {
    oldLength = length;
    if (self->numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSuffixWithCharArray_withInt_(self, text, length);
    if (oldLength != length) if (self->numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSecondOrderPrefixWithCharArray_withInt_(self, text, length);
  }
  else {
    if (self->numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSecondOrderPrefixWithCharArray_withInt_(self, text, length);
    if (self->numSyllables_ > 2) length = OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSuffixWithCharArray_withInt_(self, text, length);
  }
  return length;
}

jboolean OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, jchar ch) {
  switch (ch) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    return YES;
    default:
    return NO;
  }
}

jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeParticleWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length) {
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"kah") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"lah") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"pun")) {
    self->numSyllables_--;
    return length - 3;
  }
  return length;
}

jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removePossessivePronounWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length) {
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"ku") || OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"mu")) {
    self->numSyllables_--;
    return length - 2;
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"nya")) {
    self->numSyllables_--;
    return length - 3;
  }
  return length;
}

jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeFirstOrderPrefixWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length) {
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"meng")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 4);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"meny") && length > 4 && OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(self, IOSCharArray_Get(nil_chk(text), 4))) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG;
    *IOSCharArray_GetRef(text, 3) = 's';
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"men")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"mem")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"me")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 2);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"peng")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 4);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"peny") && length > 4 && OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(self, IOSCharArray_Get(nil_chk(text), 4))) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG;
    *IOSCharArray_GetRef(text, 3) = 's';
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"peny")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 4);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"pen") && length > 3 && OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(self, IOSCharArray_Get(nil_chk(text), 3))) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG;
    *IOSCharArray_GetRef(text, 2) = 't';
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 2);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"pen")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"pem")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"di")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_DI;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 2);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"ter")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_TER;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"ke")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_KE;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 2);
  }
  return length;
}

jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSecondOrderPrefixWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length) {
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"ber")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_BER;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (length == 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"belajar")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_BER;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"be") && length > 4 && !OrgApacheLuceneAnalysisIdIndonesianStemmer_isVowelWithChar_(self, IOSCharArray_Get(nil_chk(text), 2)) && IOSCharArray_Get(text, 3) == 'e' && IOSCharArray_Get(text, 4) == 'r') {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_BER;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 2);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"per")) {
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (length == 7 && OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"pelajar")) {
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 3);
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_startsWithWithCharArray_withInt_withNSString_(text, length, @"pe")) {
    self->flags_ |= OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PE;
    self->numSyllables_--;
    return OrgApacheLuceneAnalysisUtilStemmerUtil_deleteNWithCharArray_withInt_withInt_withInt_(text, 0, length, 2);
  }
  return length;
}

jint OrgApacheLuceneAnalysisIdIndonesianStemmer_removeSuffixWithCharArray_withInt_(OrgApacheLuceneAnalysisIdIndonesianStemmer *self, IOSCharArray *text, jint length) {
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"kan") && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_KE) == 0 && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG) == 0 && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PE) == 0) {
    self->numSyllables_--;
    return length - 3;
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"an") && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_DI) == 0 && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_MENG) == 0 && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_TER) == 0) {
    self->numSyllables_--;
    return length - 2;
  }
  if (OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"i") && !OrgApacheLuceneAnalysisUtilStemmerUtil_endsWithWithCharArray_withInt_withNSString_(text, length, @"si") && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_BER) == 0 && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_KE) == 0 && (self->flags_ & OrgApacheLuceneAnalysisIdIndonesianStemmer_REMOVED_PENG) == 0) {
    self->numSyllables_--;
    return length - 1;
  }
  return length;
}

void OrgApacheLuceneAnalysisIdIndonesianStemmer_init(OrgApacheLuceneAnalysisIdIndonesianStemmer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisIdIndonesianStemmer *new_OrgApacheLuceneAnalysisIdIndonesianStemmer_init() {
  OrgApacheLuceneAnalysisIdIndonesianStemmer *self = [OrgApacheLuceneAnalysisIdIndonesianStemmer alloc];
  OrgApacheLuceneAnalysisIdIndonesianStemmer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisIdIndonesianStemmer)
