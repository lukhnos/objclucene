//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/Lookup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestLookup_RESTRICT
#define OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestLookup_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestLookup_) && (OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL || OrgApacheLuceneSearchSuggestLookup_INCLUDE)
#define _OrgApacheLuceneSearchSuggestLookup_

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class JavaIoInputStream;
@class JavaIoOutputStream;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@protocol JavaLangCharSequence;
@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneSearchSpellDictionary;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

@interface OrgApacheLuceneSearchSuggestLookup : NSObject < OrgApacheLuceneUtilAccountable >

#pragma mark Public

- (instancetype)init;

- (void)buildWithOrgApacheLuceneSearchSpellDictionary:(id<OrgApacheLuceneSearchSpellDictionary>)dict;

- (void)buildWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)inputIterator;

- (id<JavaUtilCollection>)getChildResources;

- (jlong)getCount;

- (jboolean)load__WithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input;

- (jboolean)load__WithJavaIoInputStream:(JavaIoInputStream *)input;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num;

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output;

- (jboolean)storeWithJavaIoOutputStream:(JavaIoOutputStream *)output;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSuggestLookup)

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneSearchSuggestLookup_CHARSEQUENCE_COMPARATOR_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestLookup, CHARSEQUENCE_COMPARATOR_, id<JavaUtilComparator>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_init(OrgApacheLuceneSearchSuggestLookup *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestLookup)

#endif

#if !defined (_OrgApacheLuceneSearchSuggestLookup_LookupResult_) && (OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL || OrgApacheLuceneSearchSuggestLookup_LookupResult_INCLUDE)
#define _OrgApacheLuceneSearchSuggestLookup_LookupResult_

#define JavaLangComparable_RESTRICT 1
#define JavaLangComparable_INCLUDE 1
#include "java/lang/Comparable.h"

@class OrgApacheLuceneUtilBytesRef;
@protocol JavaLangCharSequence;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSuggestLookup_LookupResult : NSObject < JavaLangComparable > {
 @public
  id<JavaLangCharSequence> key_;
  id highlightKey_;
  jlong value_;
  OrgApacheLuceneUtilBytesRef *payload_;
  id<JavaUtilSet> contexts_;
}

#pragma mark Public

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                    withLong:(jlong)value;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                    withLong:(jlong)value
             withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                    withLong:(jlong)value
             withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload
                             withJavaUtilSet:(id<JavaUtilSet>)contexts;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                    withLong:(jlong)value
                             withJavaUtilSet:(id<JavaUtilSet>)contexts;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                      withId:(id)highlightKey
                                    withLong:(jlong)value
             withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload;

- (instancetype)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                      withId:(id)highlightKey
                                    withLong:(jlong)value
             withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload
                             withJavaUtilSet:(id<JavaUtilSet>)contexts;

- (jint)compareToWithId:(OrgApacheLuceneSearchSuggestLookup_LookupResult *)o;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestLookup_LookupResult)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestLookup_LookupResult, key_, id<JavaLangCharSequence>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestLookup_LookupResult, highlightKey_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestLookup_LookupResult, payload_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestLookup_LookupResult, contexts_, id<JavaUtilSet>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_(OrgApacheLuceneSearchSuggestLookup_LookupResult *self, id<JavaLangCharSequence> key, jlong value);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupResult *new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_(id<JavaLangCharSequence> key, jlong value) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneSearchSuggestLookup_LookupResult *self, id<JavaLangCharSequence> key, jlong value, OrgApacheLuceneUtilBytesRef *payload);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupResult *new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_withOrgApacheLuceneUtilBytesRef_(id<JavaLangCharSequence> key, jlong value, OrgApacheLuceneUtilBytesRef *payload) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withId_withLong_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneSearchSuggestLookup_LookupResult *self, id<JavaLangCharSequence> key, id highlightKey, jlong value, OrgApacheLuceneUtilBytesRef *payload);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupResult *new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withId_withLong_withOrgApacheLuceneUtilBytesRef_(id<JavaLangCharSequence> key, id highlightKey, jlong value, OrgApacheLuceneUtilBytesRef *payload) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_withOrgApacheLuceneUtilBytesRef_withJavaUtilSet_(OrgApacheLuceneSearchSuggestLookup_LookupResult *self, id<JavaLangCharSequence> key, jlong value, OrgApacheLuceneUtilBytesRef *payload, id<JavaUtilSet> contexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupResult *new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_withOrgApacheLuceneUtilBytesRef_withJavaUtilSet_(id<JavaLangCharSequence> key, jlong value, OrgApacheLuceneUtilBytesRef *payload, id<JavaUtilSet> contexts) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_withJavaUtilSet_(OrgApacheLuceneSearchSuggestLookup_LookupResult *self, id<JavaLangCharSequence> key, jlong value, id<JavaUtilSet> contexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupResult *new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withLong_withJavaUtilSet_(id<JavaLangCharSequence> key, jlong value, id<JavaUtilSet> contexts) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withId_withLong_withOrgApacheLuceneUtilBytesRef_withJavaUtilSet_(OrgApacheLuceneSearchSuggestLookup_LookupResult *self, id<JavaLangCharSequence> key, id highlightKey, jlong value, OrgApacheLuceneUtilBytesRef *payload, id<JavaUtilSet> contexts);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupResult *new_OrgApacheLuceneSearchSuggestLookup_LookupResult_initWithJavaLangCharSequence_withId_withLong_withOrgApacheLuceneUtilBytesRef_withJavaUtilSet_(id<JavaLangCharSequence> key, id highlightKey, jlong value, OrgApacheLuceneUtilBytesRef *payload, id<JavaUtilSet> contexts) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestLookup_LookupResult)

#endif

#if !defined (_OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_) && (OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL || OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_INCLUDE)
#define _OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_

#define OrgApacheLuceneUtilPriorityQueue_RESTRICT 1
#define OrgApacheLuceneUtilPriorityQueue_INCLUDE 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchSuggestLookup_LookupResult;

@interface OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (IOSObjectArray *)getResults;

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchSuggestLookup_LookupResult *)a
                    withId:(OrgApacheLuceneSearchSuggestLookup_LookupResult *)b;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_initWithInt_(OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue *new_OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestLookup_LookupPriorityQueue)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestLookup_INCLUDE_ALL")
