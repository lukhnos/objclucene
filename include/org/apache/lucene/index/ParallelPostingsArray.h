//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ParallelPostingsArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexParallelPostingsArray")
#ifdef RESTRICT_OrgApacheLuceneIndexParallelPostingsArray
#define INCLUDE_ALL_OrgApacheLuceneIndexParallelPostingsArray 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexParallelPostingsArray 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexParallelPostingsArray

#if !defined (OrgApacheLuceneIndexParallelPostingsArray_) && (INCLUDE_ALL_OrgApacheLuceneIndexParallelPostingsArray || defined(INCLUDE_OrgApacheLuceneIndexParallelPostingsArray))
#define OrgApacheLuceneIndexParallelPostingsArray_

@class IOSIntArray;

@interface OrgApacheLuceneIndexParallelPostingsArray : NSObject {
 @public
  jint size_;
  IOSIntArray *textStarts_;
  IOSIntArray *intStarts_;
  IOSIntArray *byteStarts_;
}

+ (jint)BYTES_PER_POSTING;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)size;

- (jint)bytesPerPosting;

- (void)copyToWithOrgApacheLuceneIndexParallelPostingsArray:(OrgApacheLuceneIndexParallelPostingsArray *)toArray
                                                    withInt:(jint)numToCopy OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneIndexParallelPostingsArray *)grow;

- (OrgApacheLuceneIndexParallelPostingsArray *)newInstanceWithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexParallelPostingsArray)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelPostingsArray, textStarts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelPostingsArray, intStarts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexParallelPostingsArray, byteStarts_, IOSIntArray *)

inline jint OrgApacheLuceneIndexParallelPostingsArray_get_BYTES_PER_POSTING();
#define OrgApacheLuceneIndexParallelPostingsArray_BYTES_PER_POSTING 12
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexParallelPostingsArray, BYTES_PER_POSTING, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(OrgApacheLuceneIndexParallelPostingsArray *self, jint size);

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelPostingsArray *new_OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(jint size) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelPostingsArray *create_OrgApacheLuceneIndexParallelPostingsArray_initWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexParallelPostingsArray)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexParallelPostingsArray")
