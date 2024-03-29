//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/fst/WFSTCompletionLookup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup || defined(INCLUDE_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup))
#define OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_

#define RESTRICT_OrgApacheLuceneSearchSuggestLookup 1
#define INCLUDE_OrgApacheLuceneSearchSuggestLookup 1
#include "org/apache/lucene/search/suggest/Lookup.h"

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@protocol JavaLangCharSequence;
@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

/*!
 @brief Suggester based on a weighted FST: it first traverses the prefix, 
  then walks the <i>n</i> shortest paths to retrieve top-ranked
  suggestions.
 <p>
  <b>NOTE</b>:
  Input weights must be between 0 and <code>Integer.MAX_VALUE</code>, any
  other values will be rejected.
 */
@interface OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup : OrgApacheLuceneSearchSuggestLookup
@property (readonly, class, strong) id<JavaUtilComparator> weightComparator NS_SWIFT_NAME(weightComparator);

#pragma mark Public

/*!
 @brief Calls <code>WFSTCompletionLookup(true)</code>
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates a new suggester.
 @param exactFirst <code> true </code>  if suggestions that match the 
          prefix exactly should always be returned first, regardless         of score. This has no performance impact, but could result
          in low-quality suggestions.
 */
- (instancetype __nonnull)initWithBoolean:(jboolean)exactFirst;

- (void)buildWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)iterator;

/*!
 @brief Returns the weight associated with an input string,
  or null if it does not exist.
 */
- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)key;

- (id<JavaUtilCollection>)getChildResources;

- (jlong)getCount;

- (jboolean)load__WithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num;

/*!
 @brief Returns byte size of the underlying FST.
 */
- (jlong)ramBytesUsed;

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup)

inline id<JavaUtilComparator> OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_get_weightComparator(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT id<JavaUtilComparator> OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_weightComparator;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup, weightComparator, id<JavaUtilComparator>)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_init(OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup *new_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup *create_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_initWithBoolean_(OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup *self, jboolean exactFirst);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup *new_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_initWithBoolean_(jboolean exactFirst) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup *create_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup_initWithBoolean_(jboolean exactFirst);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestFstWFSTCompletionLookup")
