//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/StrictStringTokenizer.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalStateException.h"
#include "org/apache/lucene/util/StrictStringTokenizer.h"

@interface OrgApacheLuceneUtilStrictStringTokenizer () {
 @public
  NSString *s_;
  jchar delimiter_;
  jint pos_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilStrictStringTokenizer, s_, NSString *)

@implementation OrgApacheLuceneUtilStrictStringTokenizer

- (instancetype)initWithNSString:(NSString *)s
                        withChar:(jchar)delimiter {
  OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(self, s, delimiter);
  return self;
}

- (NSString *)nextToken {
  if (pos_ < 0) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"no more tokens");
  }
  jint pos1 = [((NSString *) nil_chk(s_)) indexOf:delimiter_ fromIndex:pos_];
  NSString *s1;
  if (pos1 >= 0) {
    s1 = [s_ substring:pos_ endIndex:pos1];
    pos_ = pos1 + 1;
  }
  else {
    s1 = [s_ substring:pos_];
    pos_ = -1;
  }
  return s1;
}

- (jboolean)hasMoreTokens {
  return pos_ >= 0;
}

- (void)dealloc {
  RELEASE_(s_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withChar:", "StrictStringTokenizer", NULL, 0x1, NULL, NULL },
    { "nextToken", NULL, "Ljava.lang.String;", 0x11, NULL, NULL },
    { "hasMoreTokens", NULL, "Z", 0x11, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "s_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "delimiter_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "pos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilStrictStringTokenizer = { 2, "StrictStringTokenizer", "org.apache.lucene.util", NULL, 0x10, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilStrictStringTokenizer;
}

@end

void OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(OrgApacheLuceneUtilStrictStringTokenizer *self, NSString *s, jchar delimiter) {
  NSObject_init(self);
  JreStrongAssign(&self->s_, s);
  self->delimiter_ = delimiter;
}

OrgApacheLuceneUtilStrictStringTokenizer *new_OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(NSString *s, jchar delimiter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilStrictStringTokenizer, initWithNSString_withChar_, s, delimiter)
}

OrgApacheLuceneUtilStrictStringTokenizer *create_OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(NSString *s, jchar delimiter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilStrictStringTokenizer, initWithNSString_withChar_, s, delimiter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilStrictStringTokenizer)
