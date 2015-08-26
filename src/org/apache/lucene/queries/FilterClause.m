//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/FilterClause.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queries/FilterClause.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/Filter.h"

@interface OrgApacheLuceneQueriesFilterClause () {
 @public
  OrgApacheLuceneSearchBooleanClause_OccurEnum *occur_;
  OrgApacheLuceneSearchFilter *filter_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFilterClause, occur_, OrgApacheLuceneSearchBooleanClause_OccurEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFilterClause, filter_, OrgApacheLuceneSearchFilter *)

@implementation OrgApacheLuceneQueriesFilterClause

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
   withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)occur {
  OrgApacheLuceneQueriesFilterClause_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, filter, occur);
  return self;
}

- (OrgApacheLuceneSearchFilter *)getFilter {
  return filter_;
}

- (OrgApacheLuceneSearchBooleanClause_OccurEnum *)getOccur {
  return occur_;
}

- (jboolean)isEqual:(id)o {
  if (o == self) return YES;
  if (o == nil || !([o isKindOfClass:[OrgApacheLuceneQueriesFilterClause class]])) return NO;
  OrgApacheLuceneQueriesFilterClause *other = (OrgApacheLuceneQueriesFilterClause *) check_class_cast(o, [OrgApacheLuceneQueriesFilterClause class]);
  return [((OrgApacheLuceneSearchFilter *) nil_chk(self->filter_)) isEqual:((OrgApacheLuceneQueriesFilterClause *) nil_chk(other))->filter_] && self->occur_ == other->occur_;
}

- (NSUInteger)hash {
  return ((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) hash]) ^ ((jint) [((OrgApacheLuceneSearchBooleanClause_OccurEnum *) nil_chk(occur_)) hash]);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$$", [((OrgApacheLuceneSearchBooleanClause_OccurEnum *) nil_chk(occur_)) description], [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) toStringWithNSString:field]);
}

- (NSString *)description {
  return [self toStringWithNSString:@""];
}

- (void)dealloc {
  RELEASE_(occur_);
  RELEASE_(filter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchBooleanClause_OccurEnum:", "FilterClause", NULL, 0x1, NULL, NULL },
    { "getFilter", NULL, "Lorg.apache.lucene.search.Filter;", 0x1, NULL, NULL },
    { "getOccur", NULL, "Lorg.apache.lucene.search.BooleanClause$Occur;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "occur_", NULL, 0x12, "Lorg.apache.lucene.search.BooleanClause$Occur;", NULL, NULL, .constantValue.asLong = 0 },
    { "filter_", NULL, 0x12, "Lorg.apache.lucene.search.Filter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFilterClause = { 2, "FilterClause", "org.apache.lucene.queries", NULL, 0x11, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFilterClause;
}

@end

void OrgApacheLuceneQueriesFilterClause_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(OrgApacheLuceneQueriesFilterClause *self, OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchBooleanClause_OccurEnum *occur) {
  NSObject_init(self);
  JreStrongAssign(&self->occur_, occur);
  JreStrongAssign(&self->filter_, filter);
}

OrgApacheLuceneQueriesFilterClause *new_OrgApacheLuceneQueriesFilterClause_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneSearchBooleanClause_OccurEnum *occur) {
  OrgApacheLuceneQueriesFilterClause *self = [OrgApacheLuceneQueriesFilterClause alloc];
  OrgApacheLuceneQueriesFilterClause_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, filter, occur);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFilterClause)
