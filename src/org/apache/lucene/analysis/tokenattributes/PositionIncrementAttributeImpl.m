//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/PositionIncrementAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"

@interface OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl () {
 @public
  jint positionIncrement_;
}

@end

@implementation OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl

- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init(self);
  return self;
}

- (void)setPositionIncrementWithInt:(jint)positionIncrement {
  if (positionIncrement < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Increment must be zero or greater: got ", positionIncrement)) autorelease];
  }
  self->positionIncrement_ = positionIncrement;
}

- (jint)getPositionIncrement {
  return positionIncrement_;
}

- (void)clear {
  self->positionIncrement_ = 1;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl class]]) {
    OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *_other = (OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *) check_class_cast(other, [OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl class]);
    return positionIncrement_ == ((OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *) nil_chk(_other))->positionIncrement_;
  }
  return NO;
}

- (NSUInteger)hash {
  return positionIncrement_;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) check_protocol_cast(target, OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(t)) setPositionIncrementWithInt:positionIncrement_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_() withNSString:@"positionIncrement" withId:JavaLangInteger_valueOfWithInt_(positionIncrement_)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PositionIncrementAttributeImpl", NULL, 0x1, NULL, NULL },
    { "setPositionIncrementWithInt:", "setPositionIncrement", "V", 0x1, NULL, NULL },
    { "getPositionIncrement", NULL, "I", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeImpl:", "copyTo", "V", 0x1, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "positionIncrement_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl = { 2, "PositionIncrementAttributeImpl", "org.apache.lucene.analysis.tokenattributes", NULL, 0x1, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->positionIncrement_ = 1;
}

OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init() {
  OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl *self = [OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl alloc];
  OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttributeImpl)
