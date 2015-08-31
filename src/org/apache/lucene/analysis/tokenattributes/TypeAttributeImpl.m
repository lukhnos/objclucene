//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/TypeAttributeImpl.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttributeImpl.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"

@interface OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl () {
 @public
  NSString *type_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl, type_, NSString *)

@implementation OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl

- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init(self);
  return self;
}

- (instancetype)initWithNSString:(NSString *)type {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(self, type);
  return self;
}

- (NSString *)type {
  return type_;
}

- (void)setTypeWithNSString:(NSString *)type {
  JreStrongAssign(&self->type_, type);
}

- (void)clear {
  JreStrongAssign(&type_, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_DEFAULT_TYPE_);
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl class]]) {
    OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *o = (OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *) check_class_cast(other, [OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl class]);
    return (self->type_ == nil ? ((OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *) nil_chk(o))->type_ == nil : [self->type_ isEqual:((OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *) nil_chk(o))->type_]);
  }
  return NO;
}

- (NSUInteger)hash {
  return (type_ == nil) ? 0 : ((jint) [type_ hash]);
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) check_protocol_cast(target, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(t)) setTypeWithNSString:type_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_() withNSString:@"type" withId:type_];
}

- (void)dealloc {
  RELEASE_(type_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TypeAttributeImpl", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "TypeAttributeImpl", NULL, 0x1, NULL, NULL },
    { "type", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "setTypeWithNSString:", "setType", "V", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeImpl:", "copyTo", "V", 0x1, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "type_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl = { 2, "TypeAttributeImpl", "org.apache.lucene.analysis.tokenattributes", NULL, 0x1, 9, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self) {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(self, OrgApacheLuceneAnalysisTokenattributesTypeAttribute_DEFAULT_TYPE_);
}

OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init() {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self = [OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl alloc];
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_init(self);
  return self;
}

void OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self, NSString *type) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  JreStrongAssign(&self->type_, type);
}

OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(NSString *type) {
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl *self = [OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl alloc];
  OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl_initWithNSString_(self, type);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesTypeAttributeImpl)