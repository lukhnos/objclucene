//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/TermFreqValueSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_RESTRICT
#define OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_) && (OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_

#define OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_RESTRICT 1
#define OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource_INCLUDE 1
#include "org/apache/lucene/queries/function/valuesource/DocFreqValueSource.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource : OrgApacheLuceneQueriesFunctionValuesourceDocFreqValueSource

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)val
                    withNSString:(NSString *)indexedField
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)indexedBytes;

- (OrgApacheLuceneQueriesFunctionFunctionValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                 withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *self, NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes);

FOUNDATION_EXPORT OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource *new_OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_initWithNSString_withNSString_withNSString_withOrgApacheLuceneUtilBytesRef_(NSString *field, NSString *val, NSString *indexedField, OrgApacheLuceneUtilBytesRef *indexedBytes) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValuesourceTermFreqValueSource_INCLUDE_ALL")
