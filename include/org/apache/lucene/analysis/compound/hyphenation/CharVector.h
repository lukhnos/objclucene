//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/hyphenation/CharVector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCompoundHyphenationCharVector_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCompoundHyphenationCharVector_RESTRICT
#define OrgApacheLuceneAnalysisCompoundHyphenationCharVector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCompoundHyphenationCharVector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCompoundHyphenationCharVector_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCompoundHyphenationCharVector_) && (OrgApacheLuceneAnalysisCompoundHyphenationCharVector_INCLUDE_ALL || OrgApacheLuceneAnalysisCompoundHyphenationCharVector_INCLUDE)
#define _OrgApacheLuceneAnalysisCompoundHyphenationCharVector_

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisCompoundHyphenationCharVector : NSObject < NSCopying >

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithCharArray:(IOSCharArray *)a;

- (instancetype)initWithCharArray:(IOSCharArray *)a
                          withInt:(jint)capacity;

- (instancetype)initWithInt:(jint)capacity;

- (jint)alloc__WithInt:(jint)size OBJC_METHOD_FAMILY_NONE;

- (jint)capacity;

- (void)clear;

- (OrgApacheLuceneAnalysisCompoundHyphenationCharVector *)clone;

- (jchar)getWithInt:(jint)index;

- (IOSCharArray *)getArray;

- (jint)length;

- (void)putWithInt:(jint)index
          withChar:(jchar)val;

- (void)trimToSize;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisCompoundHyphenationCharVector)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationCharVector_init(OrgApacheLuceneAnalysisCompoundHyphenationCharVector *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationCharVector *new_OrgApacheLuceneAnalysisCompoundHyphenationCharVector_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationCharVector_initWithInt_(OrgApacheLuceneAnalysisCompoundHyphenationCharVector *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationCharVector *new_OrgApacheLuceneAnalysisCompoundHyphenationCharVector_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationCharVector_initWithCharArray_(OrgApacheLuceneAnalysisCompoundHyphenationCharVector *self, IOSCharArray *a);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationCharVector *new_OrgApacheLuceneAnalysisCompoundHyphenationCharVector_initWithCharArray_(IOSCharArray *a) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCompoundHyphenationCharVector_initWithCharArray_withInt_(OrgApacheLuceneAnalysisCompoundHyphenationCharVector *self, IOSCharArray *a, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCompoundHyphenationCharVector *new_OrgApacheLuceneAnalysisCompoundHyphenationCharVector_initWithCharArray_withInt_(IOSCharArray *a, jint capacity) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCompoundHyphenationCharVector)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCompoundHyphenationCharVector_INCLUDE_ALL")
