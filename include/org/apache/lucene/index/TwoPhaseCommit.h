//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TwoPhaseCommit.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexTwoPhaseCommit_INCLUDE_ALL")
#if OrgApacheLuceneIndexTwoPhaseCommit_RESTRICT
#define OrgApacheLuceneIndexTwoPhaseCommit_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexTwoPhaseCommit_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexTwoPhaseCommit_RESTRICT

#if !defined (_OrgApacheLuceneIndexTwoPhaseCommit_) && (OrgApacheLuceneIndexTwoPhaseCommit_INCLUDE_ALL || OrgApacheLuceneIndexTwoPhaseCommit_INCLUDE)
#define _OrgApacheLuceneIndexTwoPhaseCommit_

@protocol OrgApacheLuceneIndexTwoPhaseCommit < NSObject, JavaObject >

- (void)prepareCommit;

- (void)commit;

- (void)rollback;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTwoPhaseCommit)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTwoPhaseCommit)

#endif

#pragma pop_macro("OrgApacheLuceneIndexTwoPhaseCommit_INCLUDE_ALL")
