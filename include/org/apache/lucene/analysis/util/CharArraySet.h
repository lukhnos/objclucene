//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/CharArraySet.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilCharArraySet_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilCharArraySet_RESTRICT
#define OrgApacheLuceneAnalysisUtilCharArraySet_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilCharArraySet_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilCharArraySet_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisUtilCharArraySet_) && (OrgApacheLuceneAnalysisUtilCharArraySet_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilCharArraySet_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilCharArraySet_

#define JavaUtilAbstractSet_RESTRICT 1
#define JavaUtilAbstractSet_INCLUDE 1
#include "java/util/AbstractSet.h"

@class IOSCharArray;
@class OrgApacheLuceneAnalysisUtilCharArrayMap;
@protocol JavaUtilCollection;
@protocol JavaUtilIterator;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisUtilCharArraySet : JavaUtilAbstractSet

#pragma mark Public

- (instancetype)initWithJavaUtilCollection:(id<JavaUtilCollection>)c
                               withBoolean:(jboolean)ignoreCase;

- (instancetype)initWithInt:(jint)startSize
                withBoolean:(jboolean)ignoreCase;

- (jboolean)addWithId:(id)o;

- (void)clear;

- (jboolean)containsWithCharArray:(IOSCharArray *)text
                          withInt:(jint)off
                          withInt:(jint)len;

- (jboolean)containsWithId:(id)o;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)copy__WithJavaUtilSet:(id<JavaUtilSet>)set OBJC_METHOD_FAMILY_NONE;

- (id<JavaUtilIterator>)iterator;

- (jint)size;

- (NSString *)description;

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)set;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArrayMap:(OrgApacheLuceneAnalysisUtilCharArrayMap *)map;


@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharArraySet)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilCharArraySet_EMPTY_SET_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET_, OrgApacheLuceneAnalysisUtilCharArraySet *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(OrgApacheLuceneAnalysisUtilCharArraySet *self, jint startSize, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(jint startSize, jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(OrgApacheLuceneAnalysisUtilCharArraySet *self, id<JavaUtilCollection> c, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(id<JavaUtilCollection> c, jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharArraySet_initWithOrgApacheLuceneAnalysisUtilCharArrayMap_(OrgApacheLuceneAnalysisUtilCharArraySet *self, OrgApacheLuceneAnalysisUtilCharArrayMap *map);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithOrgApacheLuceneAnalysisUtilCharArrayMap_(OrgApacheLuceneAnalysisUtilCharArrayMap *map) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet *set);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(id<JavaUtilSet> set);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharArraySet)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilCharArraySet_INCLUDE_ALL")
