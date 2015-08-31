//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ScoreMode.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/search/join/ScoreMode.h"

__attribute__((unused)) static void OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchJoinScoreModeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneSearchJoinScoreModeEnum *new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchJoinScoreModeEnum)

OrgApacheLuceneSearchJoinScoreModeEnum *OrgApacheLuceneSearchJoinScoreModeEnum_values_[5];

@implementation OrgApacheLuceneSearchJoinScoreModeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneSearchJoinScoreModeEnum_values() {
  OrgApacheLuceneSearchJoinScoreModeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchJoinScoreModeEnum_values_ count:5 type:OrgApacheLuceneSearchJoinScoreModeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchJoinScoreModeEnum_values();
}

+ (OrgApacheLuceneSearchJoinScoreModeEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchJoinScoreModeEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneSearchJoinScoreModeEnum *OrgApacheLuceneSearchJoinScoreModeEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchJoinScoreModeEnum_initialize();
  for (int i = 0; i < 5; i++) {
    OrgApacheLuceneSearchJoinScoreModeEnum *e = OrgApacheLuceneSearchJoinScoreModeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchJoinScoreModeEnum class]) {
    OrgApacheLuceneSearchJoinScoreModeEnum_None = new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(@"None", 0);
    OrgApacheLuceneSearchJoinScoreModeEnum_Avg = new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(@"Avg", 1);
    OrgApacheLuceneSearchJoinScoreModeEnum_Max = new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(@"Max", 2);
    OrgApacheLuceneSearchJoinScoreModeEnum_Total = new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(@"Total", 3);
    OrgApacheLuceneSearchJoinScoreModeEnum_Min = new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(@"Min", 4);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchJoinScoreModeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "None", "None", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &OrgApacheLuceneSearchJoinScoreModeEnum_None, NULL, .constantValue.asLong = 0 },
    { "Avg", "Avg", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &OrgApacheLuceneSearchJoinScoreModeEnum_Avg, NULL, .constantValue.asLong = 0 },
    { "Max", "Max", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &OrgApacheLuceneSearchJoinScoreModeEnum_Max, NULL, .constantValue.asLong = 0 },
    { "Total", "Total", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &OrgApacheLuceneSearchJoinScoreModeEnum_Total, NULL, .constantValue.asLong = 0 },
    { "Min", "Min", 0x4019, "Lorg.apache.lucene.search.join.ScoreMode;", &OrgApacheLuceneSearchJoinScoreModeEnum_Min, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.join.ScoreMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinScoreModeEnum = { 2, "ScoreMode", "org.apache.lucene.search.join", NULL, 0x4011, 0, NULL, 5, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/search/join/ScoreMode;>;" };
  return &_OrgApacheLuceneSearchJoinScoreModeEnum;
}

@end

void OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchJoinScoreModeEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneSearchJoinScoreModeEnum *new_OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneSearchJoinScoreModeEnum *self = [OrgApacheLuceneSearchJoinScoreModeEnum alloc];
  OrgApacheLuceneSearchJoinScoreModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinScoreModeEnum)