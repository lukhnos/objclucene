//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortField.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Enum.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/FieldComparatorSource.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/StringHelper.h"

@interface OrgApacheLuceneSearchSortField () {
 @public
  NSString *field_;
  OrgApacheLuceneSearchSortField_TypeEnum *type_;
  OrgApacheLuceneSearchFieldComparatorSource *comparatorSource_;
  id<JavaUtilComparator> bytesComparator_;
}

- (void)initFieldTypeWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_TypeEnum:(OrgApacheLuceneSearchSortField_TypeEnum *)type OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, type_, OrgApacheLuceneSearchSortField_TypeEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, comparatorSource_, OrgApacheLuceneSearchFieldComparatorSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, bytesComparator_, id<JavaUtilComparator>)

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type);

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchSortField_TypeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneSearchSortField_TypeEnum *new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneSearchSortField_$1 : NSObject

- (NSString *)description;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortField_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_$1_init(OrgApacheLuceneSearchSortField_$1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSortField_$1 *new_OrgApacheLuceneSearchSortField_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortField_$1)

@interface OrgApacheLuceneSearchSortField_$2 : NSObject

- (NSString *)description;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSortField_$2)

__attribute__((unused)) static void OrgApacheLuceneSearchSortField_$2_init(OrgApacheLuceneSearchSortField_$2 *self);

__attribute__((unused)) static OrgApacheLuceneSearchSortField_$2 *new_OrgApacheLuceneSearchSortField_$2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortField_$2)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSortField)

OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_SCORE_;
OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_DOC_;
id OrgApacheLuceneSearchSortField_STRING_FIRST_;
id OrgApacheLuceneSearchSortField_STRING_LAST_;

@implementation OrgApacheLuceneSearchSortField

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_TypeEnum:(OrgApacheLuceneSearchSortField_TypeEnum *)type {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, type);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_TypeEnum:(OrgApacheLuceneSearchSortField_TypeEnum *)type
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(self, field, type, reverse);
  return self;
}

- (void)setMissingValueWithId:(id)missingValue {
  if (type_ == JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, STRING) || type_ == JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, STRING_VAL)) {
    if (missingValue != OrgApacheLuceneSearchSortField_STRING_FIRST_ && missingValue != OrgApacheLuceneSearchSortField_STRING_LAST_) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"For STRING type, missing value must be either STRING_FIRST or STRING_LAST") autorelease];
    }
  }
  else if (type_ != JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, INT) && type_ != JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, FLOAT) && type_ != JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, LONG) && type_ != JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, DOUBLE)) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Missing value only works for numeric or STRING types") autorelease];
  }
  JreStrongAssign(&self->missingValue_, missingValue);
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldComparatorSource:(OrgApacheLuceneSearchFieldComparatorSource *)comparator {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(self, field, comparator);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchFieldComparatorSource:(OrgApacheLuceneSearchFieldComparatorSource *)comparator
                     withBoolean:(jboolean)reverse {
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(self, field, comparator, reverse);
  return self;
}

- (void)initFieldTypeWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_TypeEnum:(OrgApacheLuceneSearchSortField_TypeEnum *)type {
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, type);
}

- (NSString *)getField {
  return field_;
}

- (OrgApacheLuceneSearchSortField_TypeEnum *)getType {
  return type_;
}

- (jboolean)getReverse {
  return reverse_;
}

- (OrgApacheLuceneSearchFieldComparatorSource *)getComparatorSource {
  return comparatorSource_;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  switch ([type_ ordinal]) {
    case OrgApacheLuceneSearchSortField_Type_SCORE:
    [buffer appendWithNSString:@"<score>"];
    break;
    case OrgApacheLuceneSearchSortField_Type_DOC:
    [buffer appendWithNSString:@"<doc>"];
    break;
    case OrgApacheLuceneSearchSortField_Type_STRING:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<string: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_STRING_VAL:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<string_val: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_INT:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<int: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_LONG:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<long: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_FLOAT:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<float: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_DOUBLE:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<double: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    case OrgApacheLuceneSearchSortField_Type_CUSTOM:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<custom:\""])) appendWithNSString:field_])) appendWithNSString:@"\": "])) appendWithId:comparatorSource_])) appendWithChar:'>'];
    break;
    case OrgApacheLuceneSearchSortField_Type_REWRITEABLE:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<rewriteable: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
    default:
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([buffer appendWithNSString:@"<???: \""])) appendWithNSString:field_])) appendWithNSString:@"\">"];
    break;
  }
  if (reverse_) [buffer appendWithChar:'!'];
  if (missingValue_ != nil) {
    [buffer appendWithNSString:@" missingValue="];
    [buffer appendWithId:missingValue_];
  }
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchSortField class]])) return NO;
  OrgApacheLuceneSearchSortField *other = (OrgApacheLuceneSearchSortField *) check_class_cast(o, [OrgApacheLuceneSearchSortField class]);
  return (OrgApacheLuceneUtilStringHelper_equalsWithNSString_withNSString_(((OrgApacheLuceneSearchSortField *) nil_chk(other))->field_, self->field_) && other->type_ == self->type_ && other->reverse_ == self->reverse_ && (other->comparatorSource_ == nil ? self->comparatorSource_ == nil : [other->comparatorSource_ isEqual:self->comparatorSource_]));
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [((OrgApacheLuceneSearchSortField_TypeEnum *) nil_chk(type_)) hash]) ^ (jint) 0x346565dd + ((jint) [JavaLangBoolean_valueOfWithBoolean_(reverse_) hash]) ^ (jint) 0xaf5998bb;
  if (field_ != nil) hash_ += ((jint) [field_ hash]) ^ (jint) 0xff5685dd;
  if (comparatorSource_ != nil) hash_ += ((jint) [comparatorSource_ hash]);
  return hash_;
}

- (void)setBytesComparatorWithJavaUtilComparator:(id<JavaUtilComparator>)b {
  JreStrongAssign(&bytesComparator_, b);
}

- (id<JavaUtilComparator>)getBytesComparator {
  return bytesComparator_;
}

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos {
  switch ([type_ ordinal]) {
    case OrgApacheLuceneSearchSortField_Type_SCORE:
    return [new_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(numHits) autorelease];
    case OrgApacheLuceneSearchSortField_Type_DOC:
    return [new_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(numHits) autorelease];
    case OrgApacheLuceneSearchSortField_Type_INT:
    return [new_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(numHits, field_, (JavaLangInteger *) check_class_cast(missingValue_, [JavaLangInteger class])) autorelease];
    case OrgApacheLuceneSearchSortField_Type_FLOAT:
    return [new_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(numHits, field_, (JavaLangFloat *) check_class_cast(missingValue_, [JavaLangFloat class])) autorelease];
    case OrgApacheLuceneSearchSortField_Type_LONG:
    return [new_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(numHits, field_, (JavaLangLong *) check_class_cast(missingValue_, [JavaLangLong class])) autorelease];
    case OrgApacheLuceneSearchSortField_Type_DOUBLE:
    return [new_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(numHits, field_, (JavaLangDouble *) check_class_cast(missingValue_, [JavaLangDouble class])) autorelease];
    case OrgApacheLuceneSearchSortField_Type_CUSTOM:
    JreAssert((comparatorSource_ != nil), (@"org/apache/lucene/search/SortField.java:347 condition failed: assert comparatorSource != null;"));
    return [((OrgApacheLuceneSearchFieldComparatorSource *) nil_chk(comparatorSource_)) newComparatorWithNSString:field_ withInt:numHits withInt:sortPos withBoolean:reverse_];
    case OrgApacheLuceneSearchSortField_Type_STRING:
    return [new_OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(numHits, field_, missingValue_ == OrgApacheLuceneSearchSortField_STRING_LAST_) autorelease];
    case OrgApacheLuceneSearchSortField_Type_STRING_VAL:
    return [new_OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(numHits, field_, missingValue_ == OrgApacheLuceneSearchSortField_STRING_LAST_) autorelease];
    case OrgApacheLuceneSearchSortField_Type_REWRITEABLE:
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"SortField needs to be rewritten through Sort.rewrite(..) and SortField.rewrite(..)") autorelease];
    default:
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@", @"Illegal sort type: ", type_)) autorelease];
  }
}

- (OrgApacheLuceneSearchSortField *)rewriteWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  return self;
}

- (jboolean)needsScores {
  return type_ == JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, SCORE);
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(type_);
  RELEASE_(comparatorSource_);
  RELEASE_(missingValue_);
  RELEASE_(bytesComparator_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSortField class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_SCORE_, new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(nil, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, SCORE)));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_FIELD_DOC_, new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(nil, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, DOC)));
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_FIRST_, new_OrgApacheLuceneSearchSortField_$1_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSortField_STRING_LAST_, new_OrgApacheLuceneSearchSortField_$2_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSortField)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneSearchSortField_TypeEnum:", "SortField", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneSearchSortField_TypeEnum:withBoolean:", "SortField", NULL, 0x1, NULL, NULL },
    { "setMissingValueWithId:", "setMissingValue", "V", 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneSearchFieldComparatorSource:", "SortField", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withOrgApacheLuceneSearchFieldComparatorSource:withBoolean:", "SortField", NULL, 0x1, NULL, NULL },
    { "initFieldTypeWithNSString:withOrgApacheLuceneSearchSortField_TypeEnum:", "initFieldType", "V", 0x2, NULL, NULL },
    { "getField", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getType", NULL, "Lorg.apache.lucene.search.SortField$Type;", 0x1, NULL, NULL },
    { "getReverse", NULL, "Z", 0x1, NULL, NULL },
    { "getComparatorSource", NULL, "Lorg.apache.lucene.search.FieldComparatorSource;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "setBytesComparatorWithJavaUtilComparator:", "setBytesComparator", "V", 0x1, NULL, NULL },
    { "getBytesComparator", NULL, "Ljava.util.Comparator;", 0x1, NULL, NULL },
    { "getComparatorWithInt:withInt:", "getComparator", "Lorg.apache.lucene.search.FieldComparator;", 0x1, "Ljava.io.IOException;", NULL },
    { "rewriteWithOrgApacheLuceneSearchIndexSearcher:", "rewrite", "Lorg.apache.lucene.search.SortField;", 0x1, "Ljava.io.IOException;", NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "FIELD_SCORE_", NULL, 0x19, "Lorg.apache.lucene.search.SortField;", &OrgApacheLuceneSearchSortField_FIELD_SCORE_, NULL, .constantValue.asLong = 0 },
    { "FIELD_DOC_", NULL, 0x19, "Lorg.apache.lucene.search.SortField;", &OrgApacheLuceneSearchSortField_FIELD_DOC_, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x2, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "type_", NULL, 0x2, "Lorg.apache.lucene.search.SortField$Type;", NULL, NULL, .constantValue.asLong = 0 },
    { "reverse_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "comparatorSource_", NULL, 0x2, "Lorg.apache.lucene.search.FieldComparatorSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "missingValue_", NULL, 0x1, "Ljava.lang.Object;", NULL, NULL, .constantValue.asLong = 0 },
    { "STRING_FIRST_", NULL, 0x19, "Ljava.lang.Object;", &OrgApacheLuceneSearchSortField_STRING_FIRST_, NULL, .constantValue.asLong = 0 },
    { "STRING_LAST_", NULL, 0x19, "Ljava.lang.Object;", &OrgApacheLuceneSearchSortField_STRING_LAST_, NULL, .constantValue.asLong = 0 },
    { "bytesComparator_", NULL, 0x2, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.SortField$Type;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField = { 2, "SortField", "org.apache.lucene.search", NULL, 0x1, 18, methods, 10, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchSortField;
}

@end

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type) {
  NSObject_init(self);
  self->reverse_ = NO;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, type);
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type) {
  OrgApacheLuceneSearchSortField *self = [OrgApacheLuceneSearchSortField alloc];
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, type);
  return self;
}

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type, jboolean reverse) {
  NSObject_init(self);
  self->reverse_ = NO;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, type);
  self->reverse_ = reverse;
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type, jboolean reverse) {
  OrgApacheLuceneSearchSortField *self = [OrgApacheLuceneSearchSortField alloc];
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(self, field, type, reverse);
  return self;
}

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator) {
  NSObject_init(self);
  self->reverse_ = NO;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, CUSTOM));
  JreStrongAssign(&self->comparatorSource_, comparator);
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator) {
  OrgApacheLuceneSearchSortField *self = [OrgApacheLuceneSearchSortField alloc];
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_(self, field, comparator);
  return self;
}

void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse) {
  NSObject_init(self);
  self->reverse_ = NO;
  JreStrongAssign(&self->missingValue_, nil);
  JreStrongAssign(&self->bytesComparator_, OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator());
  OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, CUSTOM));
  self->reverse_ = reverse;
  JreStrongAssign(&self->comparatorSource_, comparator);
}

OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(NSString *field, OrgApacheLuceneSearchFieldComparatorSource *comparator, jboolean reverse) {
  OrgApacheLuceneSearchSortField *self = [OrgApacheLuceneSearchSortField alloc];
  OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchFieldComparatorSource_withBoolean_(self, field, comparator, reverse);
  return self;
}

void OrgApacheLuceneSearchSortField_initFieldTypeWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type) {
  JreStrongAssign(&self->type_, type);
  if (field == nil) {
    if (type != JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, SCORE) && type != JreLoadStatic(OrgApacheLuceneSearchSortField_TypeEnum, DOC)) {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"field can only be null when type is SCORE or DOC") autorelease];
    }
  }
  else {
    JreStrongAssign(&self->field_, field);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortField)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSortField_TypeEnum)

OrgApacheLuceneSearchSortField_TypeEnum *OrgApacheLuceneSearchSortField_TypeEnum_values_[11];

@implementation OrgApacheLuceneSearchSortField_TypeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneSearchSortField_TypeEnum_values() {
  OrgApacheLuceneSearchSortField_TypeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneSearchSortField_TypeEnum_values_ count:11 type:OrgApacheLuceneSearchSortField_TypeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneSearchSortField_TypeEnum_values();
}

+ (OrgApacheLuceneSearchSortField_TypeEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneSearchSortField_TypeEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneSearchSortField_TypeEnum *OrgApacheLuceneSearchSortField_TypeEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneSearchSortField_TypeEnum_initialize();
  for (int i = 0; i < 11; i++) {
    OrgApacheLuceneSearchSortField_TypeEnum *e = OrgApacheLuceneSearchSortField_TypeEnum_values_[i];
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
  if (self == [OrgApacheLuceneSearchSortField_TypeEnum class]) {
    OrgApacheLuceneSearchSortField_TypeEnum_SCORE = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"SCORE", 0);
    OrgApacheLuceneSearchSortField_TypeEnum_DOC = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"DOC", 1);
    OrgApacheLuceneSearchSortField_TypeEnum_STRING = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"STRING", 2);
    OrgApacheLuceneSearchSortField_TypeEnum_INT = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"INT", 3);
    OrgApacheLuceneSearchSortField_TypeEnum_FLOAT = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"FLOAT", 4);
    OrgApacheLuceneSearchSortField_TypeEnum_LONG = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"LONG", 5);
    OrgApacheLuceneSearchSortField_TypeEnum_DOUBLE = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"DOUBLE", 6);
    OrgApacheLuceneSearchSortField_TypeEnum_CUSTOM = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"CUSTOM", 7);
    OrgApacheLuceneSearchSortField_TypeEnum_STRING_VAL = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"STRING_VAL", 8);
    OrgApacheLuceneSearchSortField_TypeEnum_BYTES = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"BYTES", 9);
    OrgApacheLuceneSearchSortField_TypeEnum_REWRITEABLE = new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(@"REWRITEABLE", 10);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSortField_TypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "SCORE", "SCORE", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_SCORE, NULL, .constantValue.asLong = 0 },
    { "DOC", "DOC", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_DOC, NULL, .constantValue.asLong = 0 },
    { "STRING", "STRING", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_STRING, NULL, .constantValue.asLong = 0 },
    { "INT", "INT", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_INT, NULL, .constantValue.asLong = 0 },
    { "FLOAT", "FLOAT", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_FLOAT, NULL, .constantValue.asLong = 0 },
    { "LONG", "LONG", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_LONG, NULL, .constantValue.asLong = 0 },
    { "DOUBLE", "DOUBLE", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_DOUBLE, NULL, .constantValue.asLong = 0 },
    { "CUSTOM", "CUSTOM", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_CUSTOM, NULL, .constantValue.asLong = 0 },
    { "STRING_VAL", "STRING_VAL", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_STRING_VAL, NULL, .constantValue.asLong = 0 },
    { "BYTES", "BYTES", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_BYTES, NULL, .constantValue.asLong = 0 },
    { "REWRITEABLE", "REWRITEABLE", 0x4019, "Lorg.apache.lucene.search.SortField$Type;", &OrgApacheLuceneSearchSortField_TypeEnum_REWRITEABLE, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.SortField$Type;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField_TypeEnum = { 2, "Type", "org.apache.lucene.search", "SortField", 0x4019, 0, NULL, 11, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/search/SortField$Type;>;" };
  return &_OrgApacheLuceneSearchSortField_TypeEnum;
}

@end

void OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(OrgApacheLuceneSearchSortField_TypeEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneSearchSortField_TypeEnum *new_OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneSearchSortField_TypeEnum *self = [OrgApacheLuceneSearchSortField_TypeEnum alloc];
  OrgApacheLuceneSearchSortField_TypeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortField_TypeEnum)

@implementation OrgApacheLuceneSearchSortField_$1

- (NSString *)description {
  return @"SortField.STRING_FIRST";
}

- (instancetype)init {
  OrgApacheLuceneSearchSortField_$1_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField_$1 = { 2, "", "org.apache.lucene.search", "SortField", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSortField_$1;
}

@end

void OrgApacheLuceneSearchSortField_$1_init(OrgApacheLuceneSearchSortField_$1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSortField_$1 *new_OrgApacheLuceneSearchSortField_$1_init() {
  OrgApacheLuceneSearchSortField_$1 *self = [OrgApacheLuceneSearchSortField_$1 alloc];
  OrgApacheLuceneSearchSortField_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortField_$1)

@implementation OrgApacheLuceneSearchSortField_$2

- (NSString *)description {
  return @"SortField.STRING_LAST";
}

- (instancetype)init {
  OrgApacheLuceneSearchSortField_$2_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSortField_$2 = { 2, "", "org.apache.lucene.search", "SortField", 0x8008, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSortField_$2;
}

@end

void OrgApacheLuceneSearchSortField_$2_init(OrgApacheLuceneSearchSortField_$2 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchSortField_$2 *new_OrgApacheLuceneSearchSortField_$2_init() {
  OrgApacheLuceneSearchSortField_$2 *self = [OrgApacheLuceneSearchSortField_$2 alloc];
  OrgApacheLuceneSearchSortField_$2_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSortField_$2)
