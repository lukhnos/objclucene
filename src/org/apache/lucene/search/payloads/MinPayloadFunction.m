//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/MinPayloadFunction.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/search/payloads/MinPayloadFunction.h"
#include "org/apache/lucene/search/payloads/PayloadFunction.h"

@implementation OrgApacheLuceneSearchPayloadsMinPayloadFunction

- (jfloat)currentScoreWithInt:(jint)docId
                 withNSString:(NSString *)field
                      withInt:(jint)start
                      withInt:(jint)end
                      withInt:(jint)numPayloadsSeen
                    withFloat:(jfloat)currentScore
                    withFloat:(jfloat)currentPayloadScore {
  if (numPayloadsSeen == 0) {
    return currentPayloadScore;
  }
  else {
    return JavaLangMath_minWithFloat_withFloat_(currentPayloadScore, currentScore);
  }
}

- (jfloat)docScoreWithInt:(jint)docId
             withNSString:(NSString *)field
                  withInt:(jint)numPayloadsSeen
                withFloat:(jfloat)payloadScore {
  return numPayloadsSeen > 0 ? payloadScore : 1;
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = 1;
  result = prime * result + ((jint) [[self getClass] hash]);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (obj == nil) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  return YES;
}

- (instancetype)init {
  OrgApacheLuceneSearchPayloadsMinPayloadFunction_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "currentScoreWithInt:withNSString:withInt:withInt:withInt:withFloat:withFloat:", "currentScore", "F", 0x1, NULL, NULL },
    { "docScoreWithInt:withNSString:withInt:withFloat:", "docScore", "F", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsMinPayloadFunction = { 2, "MinPayloadFunction", "org.apache.lucene.search.payloads", NULL, 0x1, 5, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsMinPayloadFunction;
}

@end

void OrgApacheLuceneSearchPayloadsMinPayloadFunction_init(OrgApacheLuceneSearchPayloadsMinPayloadFunction *self) {
  OrgApacheLuceneSearchPayloadsPayloadFunction_init(self);
}

OrgApacheLuceneSearchPayloadsMinPayloadFunction *new_OrgApacheLuceneSearchPayloadsMinPayloadFunction_init() {
  OrgApacheLuceneSearchPayloadsMinPayloadFunction *self = [OrgApacheLuceneSearchPayloadsMinPayloadFunction alloc];
  OrgApacheLuceneSearchPayloadsMinPayloadFunction_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsMinPayloadFunction)