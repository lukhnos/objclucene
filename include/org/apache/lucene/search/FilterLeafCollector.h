//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilterLeafCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchFilterLeafCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchFilterLeafCollector_RESTRICT
#define OrgApacheLuceneSearchFilterLeafCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchFilterLeafCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchFilterLeafCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchFilterLeafCollector_) && (OrgApacheLuceneSearchFilterLeafCollector_INCLUDE_ALL || OrgApacheLuceneSearchFilterLeafCollector_INCLUDE)
#define _OrgApacheLuceneSearchFilterLeafCollector_

#define OrgApacheLuceneSearchLeafCollector_RESTRICT 1
#define OrgApacheLuceneSearchLeafCollector_INCLUDE 1
#include "org/apache/lucene/search/LeafCollector.h"

@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchFilterLeafCollector : NSObject < OrgApacheLuceneSearchLeafCollector > {
 @public
  id<OrgApacheLuceneSearchLeafCollector> in_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchLeafCollector:(id<OrgApacheLuceneSearchLeafCollector>)inArg;

- (void)collectWithInt:(jint)doc;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilterLeafCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilterLeafCollector, in_, id<OrgApacheLuceneSearchLeafCollector>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(OrgApacheLuceneSearchFilterLeafCollector *self, id<OrgApacheLuceneSearchLeafCollector> inArg);

FOUNDATION_EXPORT OrgApacheLuceneSearchFilterLeafCollector *new_OrgApacheLuceneSearchFilterLeafCollector_initWithOrgApacheLuceneSearchLeafCollector_(id<OrgApacheLuceneSearchLeafCollector> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilterLeafCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchFilterLeafCollector_INCLUDE_ALL")
