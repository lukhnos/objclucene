//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilterLeafCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilterLeafCollector")
#ifdef RESTRICT_OrgApacheLuceneSearchFilterLeafCollector
#define INCLUDE_ALL_OrgApacheLuceneSearchFilterLeafCollector 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilterLeafCollector 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilterLeafCollector

#if !defined (OrgApacheLuceneSearchFilterLeafCollector_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilterLeafCollector || defined(INCLUDE_OrgApacheLuceneSearchFilterLeafCollector))
#define OrgApacheLuceneSearchFilterLeafCollector_

#define RESTRICT_OrgApacheLuceneSearchLeafCollector 1
#define INCLUDE_OrgApacheLuceneSearchLeafCollector 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneSearchScorer;

/*!
 @brief <code>LeafCollector</code> delegator.
 */
@interface OrgApacheLuceneSearchFilterLeafCollector : NSObject < OrgApacheLuceneSearchLeafCollector > {
 @public
  id<OrgApacheLuceneSearchLeafCollector> in_;
}

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype)initWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)inArg;

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilterLeafCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilterLeafCollector, in_, id<OrgApacheLuceneSearchLeafCollector>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchFilterLeafCollector *self, id<OrgApacheLuceneSearchLeafCollector> inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchFilterLeafCollector *new_OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchFilterLeafCollector *create_OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilterLeafCollector)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilterLeafCollector")
