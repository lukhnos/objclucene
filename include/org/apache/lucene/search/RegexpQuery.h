//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/RegexpQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchRegexpQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchRegexpQuery_RESTRICT
#define OrgApacheLuceneSearchRegexpQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchRegexpQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchRegexpQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchRegexpQuery_) && (OrgApacheLuceneSearchRegexpQuery_INCLUDE_ALL || OrgApacheLuceneSearchRegexpQuery_INCLUDE)
#define _OrgApacheLuceneSearchRegexpQuery_

#define OrgApacheLuceneSearchAutomatonQuery_RESTRICT 1
#define OrgApacheLuceneSearchAutomatonQuery_INCLUDE 1
#include "org/apache/lucene/search/AutomatonQuery.h"

@class OrgApacheLuceneIndexTerm;
@protocol OrgApacheLuceneUtilAutomatonAutomatonProvider;

@interface OrgApacheLuceneSearchRegexpQuery : OrgApacheLuceneSearchAutomatonQuery

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags
withOrgApacheLuceneUtilAutomatonAutomatonProvider:(id<OrgApacheLuceneUtilAutomatonAutomatonProvider>)provider
                                         withInt:(jint)maxDeterminizedStates;

- (instancetype)initWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                         withInt:(jint)flags
                                         withInt:(jint)maxDeterminizedStates;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchRegexpQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchRegexpQuery *self, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchRegexpQuery *new_OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneSearchRegexpQuery *self, OrgApacheLuceneIndexTerm *term, jint flags);

FOUNDATION_EXPORT OrgApacheLuceneSearchRegexpQuery *new_OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_withInt_(OrgApacheLuceneIndexTerm *term, jint flags) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneSearchRegexpQuery *self, OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneSearchRegexpQuery *new_OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_withInt_withInt_(OrgApacheLuceneIndexTerm *term, jint flags, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_withInt_withOrgApacheLuceneUtilAutomatonAutomatonProvider_withInt_(OrgApacheLuceneSearchRegexpQuery *self, OrgApacheLuceneIndexTerm *term, jint flags, id<OrgApacheLuceneUtilAutomatonAutomatonProvider> provider, jint maxDeterminizedStates);

FOUNDATION_EXPORT OrgApacheLuceneSearchRegexpQuery *new_OrgApacheLuceneSearchRegexpQuery_initWithOrgApacheLuceneIndexTerm_withInt_withOrgApacheLuceneUtilAutomatonAutomatonProvider_withInt_(OrgApacheLuceneIndexTerm *term, jint flags, id<OrgApacheLuceneUtilAutomatonAutomatonProvider> provider, jint maxDeterminizedStates) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchRegexpQuery)

#endif

#pragma pop_macro("OrgApacheLuceneSearchRegexpQuery_INCLUDE_ALL")
