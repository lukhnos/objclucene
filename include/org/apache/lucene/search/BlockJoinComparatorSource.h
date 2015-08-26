//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/search/BlockJoinComparatorSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchBlockJoinComparatorSource_INCLUDE_ALL")
#if OrgApacheLuceneSearchBlockJoinComparatorSource_RESTRICT
#define OrgApacheLuceneSearchBlockJoinComparatorSource_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchBlockJoinComparatorSource_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchBlockJoinComparatorSource_RESTRICT

#if !defined (_OrgApacheLuceneSearchBlockJoinComparatorSource_) && (OrgApacheLuceneSearchBlockJoinComparatorSource_INCLUDE_ALL || OrgApacheLuceneSearchBlockJoinComparatorSource_INCLUDE)
#define _OrgApacheLuceneSearchBlockJoinComparatorSource_

#define OrgApacheLuceneSearchFieldComparatorSource_RESTRICT 1
#define OrgApacheLuceneSearchFieldComparatorSource_INCLUDE 1
#include "org/apache/lucene/search/FieldComparatorSource.h"

@class OrgApacheLuceneSearchFieldComparator;
@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchSort;

@interface OrgApacheLuceneSearchBlockJoinComparatorSource : OrgApacheLuceneSearchFieldComparatorSource {
 @public
  OrgApacheLuceneSearchFilter *parentsFilter_;
  OrgApacheLuceneSearchSort *parentSort_;
  OrgApacheLuceneSearchSort *childSort_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)parentsFilter
                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)parentSort;

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)parentsFilter
                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)parentSort
                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)childSort;

- (OrgApacheLuceneSearchFieldComparator *)newComparatorWithNSString:(NSString *)fieldname
                                                            withInt:(jint)numHits
                                                            withInt:(jint)sortPos
                                                        withBoolean:(jboolean)reversed OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchBlockJoinComparatorSource)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource, parentsFilter_, OrgApacheLuceneSearchFilter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource, parentSort_, OrgApacheLuceneSearchSort *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBlockJoinComparatorSource, childSort_, OrgApacheLuceneSearchSort *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchBlockJoinComparatorSource *self, OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort);

FOUNDATION_EXPORT OrgApacheLuceneSearchBlockJoinComparatorSource *new_OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchBlockJoinComparatorSource *self, OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort, OrgApacheLuceneSearchSort *childSort);

FOUNDATION_EXPORT OrgApacheLuceneSearchBlockJoinComparatorSource *new_OrgApacheLuceneSearchBlockJoinComparatorSource_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchSort_withOrgApacheLuceneSearchSort_(OrgApacheLuceneSearchFilter *parentsFilter, OrgApacheLuceneSearchSort *parentSort, OrgApacheLuceneSearchSort *childSort) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchBlockJoinComparatorSource)

#endif

#pragma pop_macro("OrgApacheLuceneSearchBlockJoinComparatorSource_INCLUDE_ALL")
