//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BoostAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/search/BoostAttribute.h"
#include "org/apache/lucene/search/BoostAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"

@interface OrgApacheLuceneSearchBoostAttributeImpl () {
 @public
  jfloat boost_;
}

@end

@implementation OrgApacheLuceneSearchBoostAttributeImpl

- (void)setBoostWithFloat:(jfloat)boost {
  self->boost_ = boost;
}

- (jfloat)getBoost {
  return boost_;
}

- (void)clear {
  boost_ = 1.0f;
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  [((id<OrgApacheLuceneSearchBoostAttribute>) nil_chk(((id<OrgApacheLuceneSearchBoostAttribute>) check_protocol_cast(target, OrgApacheLuceneSearchBoostAttribute_class_())))) setBoostWithFloat:boost_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneSearchBoostAttribute_class_() withNSString:@"boost" withId:JavaLangFloat_valueOfWithFloat_(boost_)];
}

- (instancetype)init {
  OrgApacheLuceneSearchBoostAttributeImpl_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setBoostWithFloat:", "setBoost", "V", 0x1, NULL, NULL },
    { "getBoost", NULL, "F", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeImpl:", "copyTo", "V", 0x1, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "boost_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBoostAttributeImpl = { 2, "BoostAttributeImpl", "org.apache.lucene.search", NULL, 0x11, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchBoostAttributeImpl;
}

@end

void OrgApacheLuceneSearchBoostAttributeImpl_init(OrgApacheLuceneSearchBoostAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  self->boost_ = 1.0f;
}

OrgApacheLuceneSearchBoostAttributeImpl *new_OrgApacheLuceneSearchBoostAttributeImpl_init() {
  OrgApacheLuceneSearchBoostAttributeImpl *self = [OrgApacheLuceneSearchBoostAttributeImpl alloc];
  OrgApacheLuceneSearchBoostAttributeImpl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBoostAttributeImpl)
