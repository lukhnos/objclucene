//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/OrdTermState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexOrdTermState_INCLUDE_ALL")
#if OrgApacheLuceneIndexOrdTermState_RESTRICT
#define OrgApacheLuceneIndexOrdTermState_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexOrdTermState_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexOrdTermState_RESTRICT

#if !defined (_OrgApacheLuceneIndexOrdTermState_) && (OrgApacheLuceneIndexOrdTermState_INCLUDE_ALL || OrgApacheLuceneIndexOrdTermState_INCLUDE)
#define _OrgApacheLuceneIndexOrdTermState_

#define OrgApacheLuceneIndexTermState_RESTRICT 1
#define OrgApacheLuceneIndexTermState_INCLUDE 1
#include "org/apache/lucene/index/TermState.h"

@interface OrgApacheLuceneIndexOrdTermState : OrgApacheLuceneIndexTermState {
 @public
  jlong ord_;
}

#pragma mark Public

- (instancetype)init;

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)other OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexOrdTermState)

FOUNDATION_EXPORT void OrgApacheLuceneIndexOrdTermState_init(OrgApacheLuceneIndexOrdTermState *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexOrdTermState *new_OrgApacheLuceneIndexOrdTermState_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexOrdTermState)

#endif

#pragma pop_macro("OrgApacheLuceneIndexOrdTermState_INCLUDE_ALL")
