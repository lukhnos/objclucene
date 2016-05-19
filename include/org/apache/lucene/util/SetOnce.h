//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/SetOnce.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilSetOnce")
#ifdef RESTRICT_OrgApacheLuceneUtilSetOnce
#define INCLUDE_ALL_OrgApacheLuceneUtilSetOnce 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilSetOnce 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilSetOnce

#if !defined (OrgApacheLuceneUtilSetOnce_) && (INCLUDE_ALL_OrgApacheLuceneUtilSetOnce || defined(INCLUDE_OrgApacheLuceneUtilSetOnce))
#define OrgApacheLuceneUtilSetOnce_

/*!
 @brief A convenient class which offers a semi-immutable object wrapper
 implementation which allows one to set the value of an object exactly once,
 and retrieve it many times.
 If <code>set(Object)</code> is called more than once,
 <code>AlreadySetException</code> is thrown and the operation
 will fail.
 */
@interface OrgApacheLuceneUtilSetOnce : NSObject < NSCopying >

#pragma mark Public

/*!
 @brief A default constructor which does not set the internal object, and allows
 setting it by calling <code>set(Object)</code>.
 */
- (instancetype)init;

/*!
 @brief Creates a new instance with the internal object set to the given object.
 Note that any calls to <code>set(Object)</code> afterwards will result in
 <code>AlreadySetException</code>
 @throws AlreadySetException if called more than once
 - seealso: #set(Object)
 */
- (instancetype)initWithId:(id)obj;

/*!
 @brief Returns the object set by <code>set(Object)</code>.
 */
- (id)get;

/*!
 @brief Sets the given object.
 If the object has already been set, an exception is thrown. 
 */
- (void)setWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSetOnce)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSetOnce_init(OrgApacheLuceneUtilSetOnce *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce *new_OrgApacheLuceneUtilSetOnce_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce *create_OrgApacheLuceneUtilSetOnce_init();

FOUNDATION_EXPORT void OrgApacheLuceneUtilSetOnce_initWithId_(OrgApacheLuceneUtilSetOnce *self, id obj);

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce *new_OrgApacheLuceneUtilSetOnce_initWithId_(id obj) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce *create_OrgApacheLuceneUtilSetOnce_initWithId_(id obj);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSetOnce)

#endif

#if !defined (OrgApacheLuceneUtilSetOnce_AlreadySetException_) && (INCLUDE_ALL_OrgApacheLuceneUtilSetOnce || defined(INCLUDE_OrgApacheLuceneUtilSetOnce_AlreadySetException))
#define OrgApacheLuceneUtilSetOnce_AlreadySetException_

#define RESTRICT_JavaLangIllegalStateException 1
#define INCLUDE_JavaLangIllegalStateException 1
#include "java/lang/IllegalStateException.h"

/*!
 @brief Thrown when <code>SetOnce.set(Object)</code> is called more than once.
 */
@interface OrgApacheLuceneUtilSetOnce_AlreadySetException : JavaLangIllegalStateException

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilSetOnce_AlreadySetException)

FOUNDATION_EXPORT void OrgApacheLuceneUtilSetOnce_AlreadySetException_init(OrgApacheLuceneUtilSetOnce_AlreadySetException *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce_AlreadySetException *new_OrgApacheLuceneUtilSetOnce_AlreadySetException_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilSetOnce_AlreadySetException *create_OrgApacheLuceneUtilSetOnce_AlreadySetException_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilSetOnce_AlreadySetException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilSetOnce")
