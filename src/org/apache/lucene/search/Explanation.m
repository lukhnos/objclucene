//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Explanation.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/Explanation.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneSearchExplanation () {
 @public
  jboolean match_;
  jfloat value_;
  NSString *description__;
  id<JavaUtilList> details_;
}

/*!
 @brief Create a new explanation
 */
- (instancetype)initWithBoolean:(jboolean)match
                      withFloat:(jfloat)value
                   withNSString:(NSString *)description_
         withJavaUtilCollection:(id<JavaUtilCollection>)details;

- (NSString *)getSummary;

- (NSString *)toStringWithInt:(jint)depth;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExplanation, description__, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchExplanation, details_, id<JavaUtilList>)

__attribute__((unused)) static void OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(OrgApacheLuceneSearchExplanation *self, jboolean match, jfloat value, NSString *description_, id<JavaUtilCollection> details);

__attribute__((unused)) static OrgApacheLuceneSearchExplanation *new_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(jboolean match, jfloat value, NSString *description_, id<JavaUtilCollection> details) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchExplanation *create_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(jboolean match, jfloat value, NSString *description_, id<JavaUtilCollection> details);

__attribute__((unused)) static NSString *OrgApacheLuceneSearchExplanation_getSummary(OrgApacheLuceneSearchExplanation *self);

__attribute__((unused)) static NSString *OrgApacheLuceneSearchExplanation_toStringWithInt_(OrgApacheLuceneSearchExplanation *self, jint depth);

@implementation OrgApacheLuceneSearchExplanation

+ (OrgApacheLuceneSearchExplanation *)matchWithFloat:(jfloat)value
                                        withNSString:(NSString *)description_
                              withJavaUtilCollection:(id<JavaUtilCollection>)details {
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(value, description_, details);
}

+ (OrgApacheLuceneSearchExplanation *)matchWithFloat:(jfloat)value
                                        withNSString:(NSString *)description_
           withOrgApacheLuceneSearchExplanationArray:(IOSObjectArray *)details {
  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(value, description_, details);
}

+ (OrgApacheLuceneSearchExplanation *)noMatchWithNSString:(NSString *)description_
                                   withJavaUtilCollection:(id<JavaUtilCollection>)details {
  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(description_, details);
}

+ (OrgApacheLuceneSearchExplanation *)noMatchWithNSString:(NSString *)description_
                withOrgApacheLuceneSearchExplanationArray:(IOSObjectArray *)details {
  return OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(description_, details);
}

- (instancetype)initWithBoolean:(jboolean)match
                      withFloat:(jfloat)value
                   withNSString:(NSString *)description_
         withJavaUtilCollection:(id<JavaUtilCollection>)details {
  OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(self, match, value, description_, details);
  return self;
}

- (jboolean)isMatch {
  return match_;
}

- (jfloat)getValue {
  return value_;
}

- (NSString *)getDescription {
  return description__;
}

- (NSString *)getSummary {
  return OrgApacheLuceneSearchExplanation_getSummary(self);
}

- (IOSObjectArray *)getDetails {
  return [((id<JavaUtilList>) nil_chk(details_)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchExplanation_class_()]];
}

- (NSString *)description {
  return OrgApacheLuceneSearchExplanation_toStringWithInt_(self, 0);
}

- (NSString *)toStringWithInt:(jint)depth {
  return OrgApacheLuceneSearchExplanation_toStringWithInt_(self, depth);
}

- (NSString *)toHtml {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  [buffer appendWithNSString:@"<ul>\n"];
  [buffer appendWithNSString:@"<li>"];
  [buffer appendWithNSString:OrgApacheLuceneSearchExplanation_getSummary(self)];
  [buffer appendWithNSString:@"<br />\n"];
  IOSObjectArray *details = [self getDetails];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(details))->size_; i++) {
    [buffer appendWithNSString:[((OrgApacheLuceneSearchExplanation *) nil_chk(IOSObjectArray_Get(details, i))) toHtml]];
  }
  [buffer appendWithNSString:@"</li>\n"];
  [buffer appendWithNSString:@"</ul>\n"];
  return [buffer description];
}

- (void)dealloc {
  RELEASE_(description__);
  RELEASE_(details_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matchWithFloat:withNSString:withJavaUtilCollection:", "match", "Lorg.apache.lucene.search.Explanation;", 0x9, NULL, "(FLjava/lang/String;Ljava/util/Collection<Lorg/apache/lucene/search/Explanation;>;)Lorg/apache/lucene/search/Explanation;" },
    { "matchWithFloat:withNSString:withOrgApacheLuceneSearchExplanationArray:", "match", "Lorg.apache.lucene.search.Explanation;", 0x89, NULL, NULL },
    { "noMatchWithNSString:withJavaUtilCollection:", "noMatch", "Lorg.apache.lucene.search.Explanation;", 0x9, NULL, "(Ljava/lang/String;Ljava/util/Collection<Lorg/apache/lucene/search/Explanation;>;)Lorg/apache/lucene/search/Explanation;" },
    { "noMatchWithNSString:withOrgApacheLuceneSearchExplanationArray:", "noMatch", "Lorg.apache.lucene.search.Explanation;", 0x89, NULL, NULL },
    { "initWithBoolean:withFloat:withNSString:withJavaUtilCollection:", "Explanation", NULL, 0x2, NULL, "(ZFLjava/lang/String;Ljava/util/Collection<Lorg/apache/lucene/search/Explanation;>;)V" },
    { "isMatch", NULL, "Z", 0x1, NULL, NULL },
    { "getValue", NULL, "F", 0x1, NULL, NULL },
    { "getDescription", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getSummary", NULL, "Ljava.lang.String;", 0x2, NULL, NULL },
    { "getDetails", NULL, "[Lorg.apache.lucene.search.Explanation;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "toStringWithInt:", "toString", "Ljava.lang.String;", 0x2, NULL, NULL },
    { "toHtml", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "match_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "value_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "description__", "description", 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "details_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/search/Explanation;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchExplanation = { 2, "Explanation", "org.apache.lucene.search", NULL, 0x11, 13, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchExplanation;
}

@end

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(jfloat value, NSString *description_, id<JavaUtilCollection> details) {
  OrgApacheLuceneSearchExplanation_initialize();
  return create_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(true, value, description_, details);
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withOrgApacheLuceneSearchExplanationArray_(jfloat value, NSString *description_, IOSObjectArray *details) {
  OrgApacheLuceneSearchExplanation_initialize();
  return create_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(true, value, description_, JavaUtilArrays_asListWithNSObjectArray_(details));
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_noMatchWithNSString_withJavaUtilCollection_(NSString *description_, id<JavaUtilCollection> details) {
  OrgApacheLuceneSearchExplanation_initialize();
  return create_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(false, 0.0f, description_, details);
}

OrgApacheLuceneSearchExplanation *OrgApacheLuceneSearchExplanation_noMatchWithNSString_withOrgApacheLuceneSearchExplanationArray_(NSString *description_, IOSObjectArray *details) {
  OrgApacheLuceneSearchExplanation_initialize();
  return create_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(false, 0.0f, description_, JavaUtilArrays_asListWithNSObjectArray_(details));
}

void OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(OrgApacheLuceneSearchExplanation *self, jboolean match, jfloat value, NSString *description_, id<JavaUtilCollection> details) {
  NSObject_init(self);
  self->match_ = match;
  self->value_ = value;
  JreStrongAssign(&self->description__, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(description_));
  JreStrongAssign(&self->details_, JavaUtilCollections_unmodifiableListWithJavaUtilList_(create_JavaUtilArrayList_initWithJavaUtilCollection_(details)));
  for (OrgApacheLuceneSearchExplanation * __strong detail in nil_chk(details)) {
    OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(detail);
  }
}

OrgApacheLuceneSearchExplanation *new_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(jboolean match, jfloat value, NSString *description_, id<JavaUtilCollection> details) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchExplanation, initWithBoolean_withFloat_withNSString_withJavaUtilCollection_, match, value, description_, details)
}

OrgApacheLuceneSearchExplanation *create_OrgApacheLuceneSearchExplanation_initWithBoolean_withFloat_withNSString_withJavaUtilCollection_(jboolean match, jfloat value, NSString *description_, id<JavaUtilCollection> details) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchExplanation, initWithBoolean_withFloat_withNSString_withJavaUtilCollection_, match, value, description_, details)
}

NSString *OrgApacheLuceneSearchExplanation_getSummary(OrgApacheLuceneSearchExplanation *self) {
  return JreStrcat("F$$", [self getValue], @" = ", [self getDescription]);
}

NSString *OrgApacheLuceneSearchExplanation_toStringWithInt_(OrgApacheLuceneSearchExplanation *self, jint depth) {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < depth; i++) {
    [buffer appendWithNSString:@"  "];
  }
  [buffer appendWithNSString:OrgApacheLuceneSearchExplanation_getSummary(self)];
  [buffer appendWithNSString:@"\n"];
  IOSObjectArray *details = [self getDetails];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(details))->size_; i++) {
    [buffer appendWithNSString:OrgApacheLuceneSearchExplanation_toStringWithInt_(nil_chk(IOSObjectArray_Get(details, i)), depth + 1)];
  }
  return [buffer description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchExplanation)
