//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ScoreMode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/search/join/ScoreMode.h"

__attribute__((unused)) static void OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(OrgApacheLuceneSearchJoinScoreMode *self, NSString *__name, jint __ordinal);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchJoinScoreMode)

OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_values_[5];

@implementation OrgApacheLuceneSearchJoinScoreMode

+ (OrgApacheLuceneSearchJoinScoreMode *)None {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, None);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Avg {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Avg);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Max {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Max);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Total {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Total);
}

+ (OrgApacheLuceneSearchJoinScoreMode *)Min {
  return JreEnum(OrgApacheLuceneSearchJoinScoreMode, Min);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchJoinScoreMode_values();
}

+ (OrgApacheLuceneSearchJoinScoreMode *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchJoinScoreMode_valueOfWithNSString_(name);
}

- (OrgApacheLuceneSearchJoinScoreMode_Enum)toNSEnum {
  return (OrgApacheLuceneSearchJoinScoreMode_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchJoinScoreMode class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 5 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneSearchJoinScoreMode, None) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(e, @"None", 0);
    (JreEnum(OrgApacheLuceneSearchJoinScoreMode, Avg) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(e, @"Avg", 1);
    (JreEnum(OrgApacheLuceneSearchJoinScoreMode, Max) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(e, @"Max", 2);
    (JreEnum(OrgApacheLuceneSearchJoinScoreMode, Total) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(e, @"Total", 3);
    (JreEnum(OrgApacheLuceneSearchJoinScoreMode, Min) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(e, @"Min", 4);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchJoinScoreMode)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "None", "None", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &JreEnum(OrgApacheLuceneSearchJoinScoreMode, None), NULL, .constantValue.asLong = 0 },
    { "Avg", "Avg", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Avg), NULL, .constantValue.asLong = 0 },
    { "Max", "Max", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Max), NULL, .constantValue.asLong = 0 },
    { "Total", "Total", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Total), NULL, .constantValue.asLong = 0 },
    { "Min", "Min", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &JreEnum(OrgApacheLuceneSearchJoinScoreMode, Min), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.join.ScoreMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinScoreMode = { 2, "ScoreMode", "org.apache.lucene.search.join", NULL, 0x4011, 0, NULL, 5, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/search/join/ScoreMode;>;" };
  return &_OrgApacheLuceneSearchJoinScoreMode;
}

@end

void OrgApacheLuceneSearchJoinScoreMode_initWithNSString_withInt_(OrgApacheLuceneSearchJoinScoreMode *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneSearchJoinScoreMode_values() {
  OrgApacheLuceneSearchJoinScoreMode_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchJoinScoreMode_values_ count:5 type:OrgApacheLuceneSearchJoinScoreMode_class_()];
}

OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchJoinScoreMode_initialize();
  for (int i = 0; i < 5; i++) {
    OrgApacheLuceneSearchJoinScoreMode *e = OrgApacheLuceneSearchJoinScoreMode_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneSearchJoinScoreMode *OrgApacheLuceneSearchJoinScoreMode_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneSearchJoinScoreMode_initialize();
  if (ordinal >= 5) {
    return nil;
  }
  return OrgApacheLuceneSearchJoinScoreMode_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinScoreMode)
