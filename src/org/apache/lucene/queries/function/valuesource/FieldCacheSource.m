//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/FieldCacheSource.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/valuesource/FieldCacheSource.h"

@implementation OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_initWithNSString_(self, field);
  return self;
}

- (NSString *)getField {
  return field_;
}

- (NSString *)description__ {
  return field_;
}

- (jboolean)isEqual:(id)o {
  if (!([o isKindOfClass:[OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource class]])) return NO;
  OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource *other = (OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource *) check_class_cast(o, [OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource class]);
  return [((NSString *) nil_chk(self->field_)) isEqual:((OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource *) nil_chk(other))->field_];
}

- (NSUInteger)hash {
  return ((jint) [((NSString *) nil_chk(field_)) hash]);
}

- (void)dealloc {
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "FieldCacheSource", NULL, 0x1, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description__", "description", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x14, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource = { 2, "FieldCacheSource", "org.apache.lucene.queries.function.valuesource", NULL, 0x401, 5, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource;
}

@end

void OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource_initWithNSString_(OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource *self, NSString *field) {
  OrgApacheLuceneQueriesFunctionValueSource_init(self);
  JreStrongAssign(&self->field_, field);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValuesourceFieldCacheSource)
