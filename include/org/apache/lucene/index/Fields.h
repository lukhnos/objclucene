//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/Fields.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFields")
#ifdef RESTRICT_OrgApacheLuceneIndexFields
#define INCLUDE_ALL_OrgApacheLuceneIndexFields 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFields 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFields

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexFields_) && (INCLUDE_ALL_OrgApacheLuceneIndexFields || defined(INCLUDE_OrgApacheLuceneIndexFields))
#define OrgApacheLuceneIndexFields_

#define RESTRICT_JavaLangIterable 1
#define INCLUDE_JavaLangIterable 1
#include "java/lang/Iterable.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexTerms;
@protocol JavaUtilFunctionConsumer;
@protocol JavaUtilIterator;
@protocol JavaUtilSpliterator;

/*!
 @brief Flex API for access to fields and terms
 */
@interface OrgApacheLuceneIndexFields : NSObject < JavaLangIterable >
@property (readonly, class, strong) IOSObjectArray *EMPTY_ARRAY NS_SWIFT_NAME(EMPTY_ARRAY);

#pragma mark Public

/*!
 @brief Returns an iterator that will step through all fields
   names.This will not return null.
 */
- (id<JavaUtilIterator>)iterator;

/*!
 @brief Returns the number of fields or -1 if the number of
  distinct field names is unknown.If &gt;= 0, 
 <code>iterator</code> will return as many field names.
 */
- (jint)size;

/*!
 @brief Get the <code>Terms</code> for this field.This will return
   null if the field does not exist.
 */
- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
   constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

#pragma mark Package-Private

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexFields)

/*!
 @brief Zero-length <code>Fields</code> array.
 */
inline IOSObjectArray *OrgApacheLuceneIndexFields_get_EMPTY_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexFields_EMPTY_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneIndexFields, EMPTY_ARRAY, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFields_init(OrgApacheLuceneIndexFields *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFields)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFields")
