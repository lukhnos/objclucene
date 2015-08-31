//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/Packed64SingleBlock.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_RESTRICT
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedPacked64SingleBlock_RESTRICT
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif
#if OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1_INCLUDE
#define OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_

#define OrgApacheLuceneUtilPackedPackedInts_RESTRICT 1
#define OrgApacheLuceneUtilPackedPackedInts_MutableImpl_INCLUDE 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSLongArray;
@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneUtilPackedPackedInts_FormatEnum;

#define OrgApacheLuceneUtilPackedPacked64SingleBlock_MAX_SUPPORTED_BITS_PER_VALUE 32

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock : OrgApacheLuceneUtilPackedPackedInts_MutableImpl {
 @public
  IOSLongArray *blocks_;
}

#pragma mark Public

- (void)clear;

+ (OrgApacheLuceneUtilPackedPacked64SingleBlock *)createWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg
                                                                                  withInt:(jint)valueCount
                                                                                  withInt:(jint)bitsPerValue;

+ (OrgApacheLuceneUtilPackedPacked64SingleBlock *)createWithInt:(jint)valueCount
                                                        withInt:(jint)bitsPerValue;

- (void)fillWithInt:(jint)fromIndex
            withInt:(jint)toIndex
           withLong:(jlong)val;

- (jint)getWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len;

+ (jboolean)isSupportedWithInt:(jint)bitsPerValue;

- (jlong)ramBytesUsed;

- (jint)setWithInt:(jint)index
     withLongArray:(IOSLongArray *)arr
           withInt:(jint)off
           withInt:(jint)len;

- (NSString *)description;

#pragma mark Protected

- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum *)getFormat;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount
                    withInt:(jint)bitsPerValue;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPacked64SingleBlock, blocks_, IOSLongArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilPackedPacked64SingleBlock, MAX_SUPPORTED_BITS_PER_VALUE, jint)

FOUNDATION_EXPORT jboolean OrgApacheLuceneUtilPackedPacked64SingleBlock_isSupportedWithInt_(jint bitsPerValue);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_initWithInt_withInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock *self, jint valueCount, jint bitsPerValue);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock *OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithOrgApacheLuceneStoreDataInput_withInt_withInt_(OrgApacheLuceneStoreDataInput *inArg, jint valueCount, jint bitsPerValue);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock *OrgApacheLuceneUtilPackedPacked64SingleBlock_createWithInt_withInt_(jint valueCount, jint bitsPerValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock1)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock2)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock3)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock4)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock5)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock6)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock7)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock8)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock9)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock10)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock12)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock16)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock21)

#endif

#if !defined (_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32_) && (OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL || OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32_INCLUDE)
#define _OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32_

@interface OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32 : OrgApacheLuceneUtilPackedPacked64SingleBlock

#pragma mark Public

- (jlong)getWithInt:(jint)index;

- (void)setWithInt:(jint)index
          withLong:(jlong)value;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)valueCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32_initWithInt_(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32 *self, jint valueCount);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32 *new_OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32_initWithInt_(jint valueCount) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPacked64SingleBlock_Packed64SingleBlock32)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedPacked64SingleBlock_INCLUDE_ALL")