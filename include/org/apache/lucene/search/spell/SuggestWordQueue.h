//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/SuggestWordQueue.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpellSuggestWordQueue_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpellSuggestWordQueue_RESTRICT
#define OrgApacheLuceneSearchSpellSuggestWordQueue_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpellSuggestWordQueue_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpellSuggestWordQueue_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpellSuggestWordQueue_) && (OrgApacheLuceneSearchSpellSuggestWordQueue_INCLUDE_ALL || OrgApacheLuceneSearchSpellSuggestWordQueue_INCLUDE)
#define _OrgApacheLuceneSearchSpellSuggestWordQueue_

#define OrgApacheLuceneUtilPriorityQueue_RESTRICT 1
#define OrgApacheLuceneUtilPriorityQueue_INCLUDE 1
#include "org/apache/lucene/util/PriorityQueue.h"

@class OrgApacheLuceneSearchSpellSuggestWord;
@protocol JavaUtilComparator;

@interface OrgApacheLuceneSearchSpellSuggestWordQueue : OrgApacheLuceneUtilPriorityQueue

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (instancetype)initWithInt:(jint)size
     withJavaUtilComparator:(id<JavaUtilComparator>)comparator;

#pragma mark Protected

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchSpellSuggestWord *)wa
                    withId:(OrgApacheLuceneSearchSpellSuggestWord *)wb;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSpellSuggestWordQueue)

FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneSearchSpellSuggestWordQueue_DEFAULT_COMPARATOR_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSpellSuggestWordQueue, DEFAULT_COMPARATOR_, id<JavaUtilComparator>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_(OrgApacheLuceneSearchSpellSuggestWordQueue *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordQueue *new_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_withJavaUtilComparator_(OrgApacheLuceneSearchSpellSuggestWordQueue *self, jint size, id<JavaUtilComparator> comparator);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellSuggestWordQueue *new_OrgApacheLuceneSearchSpellSuggestWordQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellSuggestWordQueue)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpellSuggestWordQueue_INCLUDE_ALL")
