//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/BytesRefHash.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash")
#ifdef RESTRICT_OrgApacheLuceneUtilBytesRefHash
#define INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilBytesRefHash
#ifdef INCLUDE_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray
#define INCLUDE_OrgApacheLuceneUtilBytesRefHash_BytesStartArray 1
#endif

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilBytesRefHash_) && (INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash || defined(INCLUDE_OrgApacheLuceneUtilBytesRefHash))
#define OrgApacheLuceneUtilBytesRefHash_

@class IOSIntArray;
@class OrgApacheLuceneUtilByteBlockPool;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefHash_BytesStartArray;
@protocol JavaUtilComparator;

/*!
 @brief <code>BytesRefHash</code> is a special purpose hash-map like data-structure
  optimized for <code>BytesRef</code> instances.BytesRefHash maintains mappings of
  byte arrays to ids (Map&lt;BytesRef,int&gt;) storing the hashed bytes
  efficiently in continuous storage.
 The mapping to the id is
  encapsulated inside <code>BytesRefHash</code> and is guaranteed to be increased
  for each added <code>BytesRef</code>.
   
 <p>
  Note: The maximum capacity <code>BytesRef</code> instance passed to 
 <code>add(BytesRef)</code> must not be longer than <code>ByteBlockPool.BYTE_BLOCK_SIZE</code>-2. 
  The internal storage is limited to 2GB total byte storage. 
 </p>
 */
@interface OrgApacheLuceneUtilBytesRefHash : NSObject {
 @public
  OrgApacheLuceneUtilByteBlockPool *pool_;
  IOSIntArray *bytesStart_;
}
@property (readonly, class) jint DEFAULT_CAPACITY NS_SWIFT_NAME(DEFAULT_CAPACITY);

#pragma mark Public

/*!
 @brief Creates a new <code>BytesRefHash</code> with a <code>ByteBlockPool</code> using a 
 <code>DirectAllocator</code>.
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates a new <code>BytesRefHash</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilByteBlockPool:(OrgApacheLuceneUtilByteBlockPool *)pool;

/*!
 @brief Creates a new <code>BytesRefHash</code>
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilByteBlockPool:(OrgApacheLuceneUtilByteBlockPool *)pool
                                                           withInt:(jint)capacity
               withOrgApacheLuceneUtilBytesRefHash_BytesStartArray:(OrgApacheLuceneUtilBytesRefHash_BytesStartArray *)bytesStartArray;

/*!
 @brief Adds a new <code>BytesRef</code>
 @param bytes the bytes to hash
 @return the id the given bytes are hashed if there was no mapping for the
          given bytes, otherwise <code>(-(id)-1)</code>. This guarantees
          that the return value will always be &gt;= 0 if the given bytes
          haven't been hashed before.
 @throw MaxBytesLengthExceededException
 if the given bytes are <code>> 2 +</code>
            <code>ByteBlockPool.BYTE_BLOCK_SIZE</code>
 */
- (jint)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

/*!
 @brief Adds a "arbitrary" int offset instead of a BytesRef
   term.This is used in the indexer to hold the hash for term
   vectors, because they do not redundantly store the byte[] term
   directly and instead reference the byte[] term
   already stored by the postings BytesRefHash.
 See
   add(int textStart) in TermsHashPerField.
 */
- (jint)addByPoolOffsetWithInt:(jint)offset;

/*!
 @brief Returns the bytesStart offset into the internally used 
 <code>ByteBlockPool</code> for the given bytesID
 @param bytesID the id to look up
 @return the bytesStart offset into the internally used
          <code>ByteBlockPool</code> for the given id
 */
- (jint)byteStartWithInt:(jint)bytesID;

- (void)clear;

/*!
 @brief Clears the <code>BytesRef</code> which maps to the given <code>BytesRef</code>
 */
- (void)clearWithBoolean:(jboolean)resetPool;

/*!
 @brief Closes the BytesRefHash and releases all internally used memory
 */
- (void)close;

/*!
 @brief Returns the id of the given <code>BytesRef</code>.
 @param bytes the bytes to look for
 @return the id of the given bytes, or <code>-1</code> if there is no mapping for the
          given bytes.
 */
- (jint)findWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

/*!
 @brief Populates and returns a <code>BytesRef</code> with the bytes for the given
  bytesID.
 <p>
  Note: the given bytesID must be a positive integer less than the current
  size (<code>size()</code>)
 @param bytesID the id
 @param ref the 
 <code>BytesRef</code>  to populate
 @return the given BytesRef instance populated with the bytes for the given
          bytesID
 */
- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)bytesID
            withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)ref;

/*!
 @brief reinitializes the <code>BytesRefHash</code> after a previous <code>clear()</code>
  call.If <code>clear()</code> has not been called previously this method has no
  effect.
 */
- (void)reinit;

/*!
 @brief Returns the number of <code>BytesRef</code> values in this <code>BytesRefHash</code>.
 @return the number of <code>BytesRef</code> values in this <code>BytesRefHash</code>.
 */
- (jint)size;

/*!
 @brief Returns the values array sorted by the referenced byte values.
 <p>
  Note: This is a destructive operation. <code>clear()</code> must be called in
  order to reuse this <code>BytesRefHash</code> instance. 
 </p>
 @param comp the 
 <code>Comparator</code>  used for sorting
 */
- (IOSIntArray *)sortWithJavaUtilComparator:(id<JavaUtilComparator>)comp;

#pragma mark Package-Private

/*!
 @brief Returns the ids array in arbitrary order.Valid ids start at offset of 0
  and end at a limit of <code>size()</code> - 1 
 <p>
  Note: This is a destructive operation.
 <code>clear()</code> must be called in
  order to reuse this <code>BytesRefHash</code> instance. 
 </p>
 */
- (IOSIntArray *)compact;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefHash)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefHash, pool_, OrgApacheLuceneUtilByteBlockPool *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilBytesRefHash, bytesStart_, IOSIntArray *)

inline jint OrgApacheLuceneUtilBytesRefHash_get_DEFAULT_CAPACITY(void);
#define OrgApacheLuceneUtilBytesRefHash_DEFAULT_CAPACITY 16
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilBytesRefHash, DEFAULT_CAPACITY, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_init(OrgApacheLuceneUtilBytesRefHash *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash *new_OrgApacheLuceneUtilBytesRefHash_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash *create_OrgApacheLuceneUtilBytesRefHash_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_(OrgApacheLuceneUtilBytesRefHash *self, OrgApacheLuceneUtilByteBlockPool *pool);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash *new_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_(OrgApacheLuceneUtilByteBlockPool *pool) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash *create_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_(OrgApacheLuceneUtilByteBlockPool *pool);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(OrgApacheLuceneUtilBytesRefHash *self, OrgApacheLuceneUtilByteBlockPool *pool, jint capacity, OrgApacheLuceneUtilBytesRefHash_BytesStartArray *bytesStartArray);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash *new_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(OrgApacheLuceneUtilByteBlockPool *pool, jint capacity, OrgApacheLuceneUtilBytesRefHash_BytesStartArray *bytesStartArray) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash *create_OrgApacheLuceneUtilBytesRefHash_initWithOrgApacheLuceneUtilByteBlockPool_withInt_withOrgApacheLuceneUtilBytesRefHash_BytesStartArray_(OrgApacheLuceneUtilByteBlockPool *pool, jint capacity, OrgApacheLuceneUtilBytesRefHash_BytesStartArray *bytesStartArray);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefHash)

#endif

#if !defined (OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_) && (INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash || defined(INCLUDE_OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException))
#define OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_

#define RESTRICT_JavaLangRuntimeException 1
#define INCLUDE_JavaLangRuntimeException 1
#include "java/lang/RuntimeException.h"

@class JavaLangThrowable;

/*!
 @brief Thrown if a <code>BytesRef</code> exceeds the <code>BytesRefHash</code> limit of 
 <code>ByteBlockPool.BYTE_BLOCK_SIZE</code>-2.
 */
@interface OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException : JavaLangRuntimeException

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)message;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)arg0 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                     withJavaLangThrowable:(JavaLangThrowable *)arg1
                               withBoolean:(jboolean)arg2
                               withBoolean:(jboolean)arg3 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_initWithNSString_(OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException *self, NSString *message);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException *new_OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_initWithNSString_(NSString *message) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException *create_OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException_initWithNSString_(NSString *message);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefHash_MaxBytesLengthExceededException)

#endif

#if !defined (OrgApacheLuceneUtilBytesRefHash_BytesStartArray_) && (INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash || defined(INCLUDE_OrgApacheLuceneUtilBytesRefHash_BytesStartArray))
#define OrgApacheLuceneUtilBytesRefHash_BytesStartArray_

@class IOSIntArray;
@class OrgApacheLuceneUtilCounter;

/*!
 @brief Manages allocation of the per-term addresses.
 */
@interface OrgApacheLuceneUtilBytesRefHash_BytesStartArray : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief A <code>Counter</code> reference holding the number of bytes used by this 
 <code>BytesStartArray</code>.The <code>BytesRefHash</code> uses this reference to
  track it memory usage
 @return a <code>AtomicLong</code> reference holding the number of bytes used
          by this <code>BytesStartArray</code>.
 */
- (OrgApacheLuceneUtilCounter *)bytesUsed;

/*!
 @brief clears the <code>BytesStartArray</code> and returns the cleared instance.
 @return the cleared instance, this might be <code>null</code>
 */
- (IOSIntArray *)clear;

/*!
 @brief Grows the <code>BytesStartArray</code>
 @return the grown array
 */
- (IOSIntArray *)grow;

/*!
 @brief Initializes the BytesStartArray.This call will allocate memory
 @return the initialized bytes start array
 */
- (IOSIntArray *)init__ OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefHash_BytesStartArray)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_BytesStartArray_init(OrgApacheLuceneUtilBytesRefHash_BytesStartArray *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefHash_BytesStartArray)

#endif

#if !defined (OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_) && (INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash || defined(INCLUDE_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray))
#define OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_

@class IOSIntArray;
@class OrgApacheLuceneUtilCounter;

/*!
 @brief A simple <code>BytesStartArray</code> that tracks
   memory allocation using a private <code>Counter</code>
   instance.
 */
@interface OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray : OrgApacheLuceneUtilBytesRefHash_BytesStartArray {
 @public
  jint initSize_;
}

#pragma mark Public

- (instancetype __nonnull)initWithInt:(jint)initSize;

- (instancetype __nonnull)initWithInt:(jint)initSize
       withOrgApacheLuceneUtilCounter:(OrgApacheLuceneUtilCounter *)counter;

- (OrgApacheLuceneUtilCounter *)bytesUsed;

- (IOSIntArray *)clear;

- (IOSIntArray *)grow;

- (IOSIntArray *)init__ OBJC_METHOD_FAMILY_NONE;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_withOrgApacheLuceneUtilCounter_(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *self, jint initSize, OrgApacheLuceneUtilCounter *counter);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *new_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_withOrgApacheLuceneUtilCounter_(jint initSize, OrgApacheLuceneUtilCounter *counter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *create_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_withOrgApacheLuceneUtilCounter_(jint initSize, OrgApacheLuceneUtilCounter *counter);

FOUNDATION_EXPORT void OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *self, jint initSize);

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *new_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_(jint initSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray *create_OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray_initWithInt_(jint initSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilBytesRefHash_DirectBytesStartArray)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilBytesRefHash")
