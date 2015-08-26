//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/valuesource/SimpleBoolFunction.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_INCLUDE_ALL")
#if OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_RESTRICT
#define OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_RESTRICT

#if !defined (_OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_) && (OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_INCLUDE_ALL || OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_INCLUDE)
#define _OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_

#define OrgApacheLuceneQueriesFunctionValuesourceBoolFunction_RESTRICT 1
#define OrgApacheLuceneQueriesFunctionValuesourceBoolFunction_INCLUDE 1
#include "org/apache/lucene/queries/function/valuesource/BoolFunction.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues;
@class OrgApacheLuceneQueriesFunctionFunctionValues;
@class OrgApacheLuceneQueriesFunctionValueSource;
@class OrgApacheLuceneSearchIndexSearcher;
@protocol JavaUtilMap;

@interface OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction : OrgApacheLuceneQueriesFunctionValuesourceBoolFunction {
 @public
  OrgApacheLuceneQueriesFunctionValueSource *source_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)source;

- (void)createWeightWithJavaUtilMap:(id<JavaUtilMap>)context
withOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

- (NSString *)description__;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneQueriesFunctionDocvaluesBoolDocValues *)getValuesWithJavaUtilMap:(id<JavaUtilMap>)context
                                         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

- (NSUInteger)hash;

#pragma mark Protected

- (jboolean)funcWithInt:(jint)doc
withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)vals;

- (NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction, source_, OrgApacheLuceneQueriesFunctionValueSource *)

FOUNDATION_EXPORT void OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_initWithOrgApacheLuceneQueriesFunctionValueSource_(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction *self, OrgApacheLuceneQueriesFunctionValueSource *source);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction)

#endif

#pragma pop_macro("OrgApacheLuceneQueriesFunctionValuesourceSimpleBoolFunction_INCLUDE_ALL")
