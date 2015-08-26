//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./grouping/src/java/org/apache/lucene/search/grouping/term/TermAllGroupsCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_RESTRICT
#define OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_) && (OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_INCLUDE_ALL || OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_INCLUDE)
#define _OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_

#define OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector_RESTRICT 1
#define OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector_INCLUDE 1
#include "org/apache/lucene/search/grouping/AbstractAllGroupsCollector.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector : OrgApacheLuceneSearchGroupingAbstractAllGroupsCollector

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)groupField;

- (instancetype)initWithNSString:(NSString *)groupField
                         withInt:(jint)initialSize;

- (void)collectWithInt:(jint)doc;

- (id<JavaUtilCollection>)getGroups;

- (jboolean)needsScores;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector)

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_initWithNSString_withInt_(OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector *self, NSString *groupField, jint initialSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector *new_OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_initWithNSString_withInt_(NSString *groupField, jint initialSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_initWithNSString_(OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector *self, NSString *groupField);

FOUNDATION_EXPORT OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector *new_OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_initWithNSString_(NSString *groupField) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchGroupingTermTermAllGroupsCollector_INCLUDE_ALL")
