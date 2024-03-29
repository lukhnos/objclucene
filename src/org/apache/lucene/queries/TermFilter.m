//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/TermFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queries/TermFilter.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/QueryWrapperFilter.h"
#include "org/apache/lucene/search/TermQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queries/TermFilter must not be compiled with ARC (-fobjc-arc)"
#endif

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneQueriesTermFilter__Annotations$0(void);

@implementation OrgApacheLuceneQueriesTermFilter

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(self, term);
  return self;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return [((OrgApacheLuceneSearchQuery *) nil_chk([self getQuery])) description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexTerm:);
  methods[1].selector = @selector(toStringWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexTerm;", "toString", "LNSString;", (void *)&OrgApacheLuceneQueriesTermFilter__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesTermFilter = { "TermFilter", "org.apache.lucene.queries", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, 3 };
  return &_OrgApacheLuceneQueriesTermFilter;
}

@end

void OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneQueriesTermFilter *self, OrgApacheLuceneIndexTerm *term) {
  OrgApacheLuceneSearchQueryWrapperFilter_initWithOrgApacheLuceneSearchQuery_(self, create_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term));
}

OrgApacheLuceneQueriesTermFilter *new_OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesTermFilter, initWithOrgApacheLuceneIndexTerm_, term)
}

OrgApacheLuceneQueriesTermFilter *create_OrgApacheLuceneQueriesTermFilter_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesTermFilter, initWithOrgApacheLuceneIndexTerm_, term)
}

IOSObjectArray *OrgApacheLuceneQueriesTermFilter__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesTermFilter)
