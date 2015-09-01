//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/CharArrayMap.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilCharArrayMap_RESTRICT
#define OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilCharArrayMap_RESTRICT
#if OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap_INCLUDE
#define OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneAnalysisUtilCharArrayMap_) && (OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilCharArrayMap_

#define JavaUtilAbstractMap_RESTRICT 1
#define JavaUtilAbstractMap_INCLUDE 1
#include "java/util/AbstractMap.h"

@class IOSCharArray;
@class IOSObjectArray;
@class OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet;
@class OrgApacheLuceneAnalysisUtilCharArraySet;
@protocol JavaLangCharSequence;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisUtilCharArrayMap : JavaUtilAbstractMap {
 @public
  IOSObjectArray *keys_;
  IOSObjectArray *values_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)startSize
                withBoolean:(jboolean)ignoreCase;

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)c
                        withBoolean:(jboolean)ignoreCase;

- (void)clear;

- (jboolean)containsKeyWithCharArray:(IOSCharArray *)text
                             withInt:(jint)off
                             withInt:(jint)len;

- (jboolean)containsKeyWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs;

- (jboolean)containsKeyWithId:(id)o;

+ (OrgApacheLuceneAnalysisUtilCharArrayMap *)copy__WithJavaUtilMap:(id<JavaUtilMap>)map OBJC_METHOD_FAMILY_NONE;

+ (OrgApacheLuceneAnalysisUtilCharArrayMap *)emptyMap;

- (OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet *)entrySet;

- (id)getWithCharArray:(IOSCharArray *)text
               withInt:(jint)off
               withInt:(jint)len;

- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs;

- (id)getWithId:(id)o;

- (OrgApacheLuceneAnalysisUtilCharArraySet *)keySet;

- (id)putWithCharArray:(IOSCharArray *)text
                withId:(id)value;

- (id)putWithId:(id)o
         withId:(id)value;

- (id)putWithNSString:(NSString *)text
               withId:(id)value;

- (id)removeWithId:(id)key;

- (jint)size;

- (NSString *)description;

+ (OrgApacheLuceneAnalysisUtilCharArrayMap *)unmodifiableMapWithOrgApacheLuceneAnalysisUtilCharArrayMap:(OrgApacheLuceneAnalysisUtilCharArrayMap *)map;

#pragma mark Package-Private

- (OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet *)createEntrySet;

- (id<JavaUtilSet>)originalKeySet;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharArrayMap)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilCharArrayMap, keys_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilCharArrayMap, values_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharArrayMap_initWithInt_withBoolean_(OrgApacheLuceneAnalysisUtilCharArrayMap *self, jint startSize, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArrayMap *new_OrgApacheLuceneAnalysisUtilCharArrayMap_initWithInt_withBoolean_(jint startSize, jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharArrayMap_initWithJavaUtilMap_withBoolean_(OrgApacheLuceneAnalysisUtilCharArrayMap *self, id<JavaUtilMap> c, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArrayMap *new_OrgApacheLuceneAnalysisUtilCharArrayMap_initWithJavaUtilMap_withBoolean_(id<JavaUtilMap> c, jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArrayMap *OrgApacheLuceneAnalysisUtilCharArrayMap_unmodifiableMapWithOrgApacheLuceneAnalysisUtilCharArrayMap_(OrgApacheLuceneAnalysisUtilCharArrayMap *map);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArrayMap *OrgApacheLuceneAnalysisUtilCharArrayMap_copy__WithJavaUtilMap_(id<JavaUtilMap> map);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArrayMap *OrgApacheLuceneAnalysisUtilCharArrayMap_emptyMap();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharArrayMap)

#endif

#if !defined (_OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator_) && (OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator_

#define JavaUtilIterator_RESTRICT 1
#define JavaUtilIterator_INCLUDE 1
#include "java/util/Iterator.h"

@protocol JavaUtilMap_Entry;

@interface OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator : NSObject < JavaUtilIterator >

#pragma mark Public

- (jboolean)hasNext;

- (id<JavaUtilMap_Entry>)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator)

#endif

#if !defined (_OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet_) && (OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet_

#define JavaUtilAbstractSet_RESTRICT 1
#define JavaUtilAbstractSet_INCLUDE 1
#include "java/util/AbstractSet.h"

@class OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator;

@interface OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet : JavaUtilAbstractSet

#pragma mark Public

- (void)clear;

- (jboolean)containsWithId:(id)o;

- (OrgApacheLuceneAnalysisUtilCharArrayMap_EntryIterator *)iterator;

- (jboolean)removeWithId:(id)o;

- (jint)size;

#pragma mark Package-Private


@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet)

#endif

#if !defined (_OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap_) && (OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap_

@class IOSCharArray;
@class OrgApacheLuceneAnalysisUtilCharArrayMap;
@class OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet;

@interface OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap : OrgApacheLuceneAnalysisUtilCharArrayMap

#pragma mark Public

- (void)clear;

- (id)putWithCharArray:(IOSCharArray *)text
                withId:(id)val;

- (id)putWithId:(id)o
         withId:(id)val;

- (id)putWithNSString:(NSString *)text
               withId:(id)val;

- (id)removeWithId:(id)key;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArrayMap:(OrgApacheLuceneAnalysisUtilCharArrayMap *)map;

- (OrgApacheLuceneAnalysisUtilCharArrayMap_EntrySet *)createEntrySet;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap_initWithOrgApacheLuceneAnalysisUtilCharArrayMap_(OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap *self, OrgApacheLuceneAnalysisUtilCharArrayMap *map);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap *new_OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap_initWithOrgApacheLuceneAnalysisUtilCharArrayMap_(OrgApacheLuceneAnalysisUtilCharArrayMap *map) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharArrayMap_UnmodifiableCharArrayMap)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilCharArrayMap_INCLUDE_ALL")
