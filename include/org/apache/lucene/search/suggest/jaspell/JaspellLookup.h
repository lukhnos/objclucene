//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/jaspell/JaspellLookup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellLookup")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestJaspellJaspellLookup
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellLookup 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellLookup 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestJaspellJaspellLookup

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestJaspellJaspellLookup_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellLookup || defined(INCLUDE_OrgApacheLuceneSearchSuggestJaspellJaspellLookup))
#define OrgApacheLuceneSearchSuggestJaspellJaspellLookup_

#define RESTRICT_OrgApacheLuceneSearchSuggestLookup 1
#define INCLUDE_OrgApacheLuceneSearchSuggestLookup 1
#include "org/apache/lucene/search/suggest/Lookup.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;
@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

/*!
 @brief Suggest implementation based on  
 <a href="http://jaspell.sourceforge.net/">JaSpell</a>.
 - seealso: JaspellTernarySearchTrie
 */
@interface OrgApacheLuceneSearchSuggestJaspellJaspellLookup : OrgApacheLuceneSearchSuggestLookup < OrgApacheLuceneUtilAccountable > {
 @public
  OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *trie_;
}

#pragma mark Public

/*!
 @brief Creates a new empty trie
 - seealso: #build(InputIterator)
 */
- (instancetype __nonnull)init;

/*!
 @brief Adds a new node if <code>key</code> already exists,
  otherwise replaces its value.
 <p>
  This method always returns false.
 */
- (jboolean)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                 withId:(id)value;

- (void)buildWithOrgApacheLuceneSearchSuggestInputIterator:(id<OrgApacheLuceneSearchSuggestInputIterator>)iterator;

/*!
 @brief Returns the value for the specified key, or null
  if the key does not exist.
 */
- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)key;

- (jlong)getCount;

- (jboolean)load__WithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input;

- (id<JavaUtilList>)lookupWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                   withJavaUtilSet:(id<JavaUtilSet>)contexts
                                       withBoolean:(jboolean)onlyMorePopular
                                           withInt:(jint)num;

- (jlong)ramBytesUsed;

- (jboolean)storeWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestJaspellJaspellLookup)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestJaspellJaspellLookup, trie_, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init(OrgApacheLuceneSearchSuggestJaspellJaspellLookup *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellLookup *new_OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellLookup *create_OrgApacheLuceneSearchSuggestJaspellJaspellLookup_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestJaspellJaspellLookup)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellLookup")
