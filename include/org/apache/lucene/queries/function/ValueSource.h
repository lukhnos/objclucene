//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/ValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValueSource_RESTRICT
#define OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValueSource_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValueSource_) && (OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValueSource_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValueSource_

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSortField;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValueSource : NSObject

#pragma mark Public

- (instancetype)init;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchSortField *)getSortFieldWithBoolean:(jboolean)reverse;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

+ (id<JavaUtilMap>)newContextWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher OBJC_METHOD_FAMILY_NONE;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValueSource)

FOUNDATION_EXPORT id<JavaUtilMap> OrgApacheLuceneQueriesFunctionValueSource_newContextWithOrgApacheLuceneSearchIndexSearcher_(OrgApacheLuceneSearchIndexSearcher *searcher);

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValueSource_init(OrgApacheLuceneQueriesFunctionValueSource *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValueSource)

#endif

#if !defined (_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_) && (OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_

#define OrgApacheLuceneSearchSortField_RESTRICT 1
#define OrgApacheLuceneSearchSortField_INCLUDE 1
#include "org/apache/lucene/search/SortField.h"

@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchIndexSearcher;

@interface OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField : OrgApacheLuceneSearchSortField

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)outer$
                                                      withBoolean:(jboolean)reverse;

- (OrgApacheLuceneSearchSortField *)rewriteWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField *self, OrgApacheLuceneQueriesFunctionValueSource *outer$, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField *new_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField_initWithOrgApacheLuceneQueriesFunctionValueSource_withBoolean_(OrgApacheLuceneQueriesFunctionValueSource *outer$, jboolean reverse) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceSortField)

#endif

#if !defined (_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_) && (OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_

#define OrgApacheLuceneSearchFieldComparatorSource_RESTRICT 1
#define OrgApacheLuceneSearchFieldComparatorSource_INCLUDE 1
#include "org/apache/lucene/search/FieldComparatorSource.h"

@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchFieldComparator;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource : OrgApacheLuceneSearchFieldComparatorSource

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)outer$
                                                  withJavaUtilMap:(id<JavaUtilMap>)context;

- (OrgApacheLuceneSearchFieldComparator *)newComparatorWithNSString:(NSString *)fieldname
                                                            withInt:(jint)numHits
                                                            withInt:(jint)sortPos
                                                        withBoolean:(jboolean)reversed OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource *self, OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> context);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource *new_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_(OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> context) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparatorSource)

#endif

#if !defined (_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_) && (OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_

#define OrgApacheLuceneSearchSimpleFieldComparator_RESTRICT 1
#define OrgApacheLuceneSearchSimpleFieldComparator_INCLUDE 1
#include "org/apache/lucene/search/SimpleFieldComparator.h"

@class JavaLangDouble;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionValueSource;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator : OrgApacheLuceneSearchSimpleFieldComparator

#pragma mark Public

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setBottomWithInt:(jint)bottom;

- (void)setTopValueWithId:(JavaLangDouble *)value;

- (JavaLangDouble *)valueWithInt:(jint)slot;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)outer$
                                                  withJavaUtilMap:(id<JavaUtilMap>)fcontext
                                                          withInt:(jint)numHits;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator *self, OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> fcontext, jint numHits);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator *new_OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator_initWithOrgApacheLuceneQueriesFunctionValueSource_withJavaUtilMap_withInt_(OrgApacheLuceneQueriesFunctionValueSource *outer$, id<JavaUtilMap> fcontext, jint numHits) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValueSource_ValueSourceComparator)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValueSource_INCLUDE_ALL")
