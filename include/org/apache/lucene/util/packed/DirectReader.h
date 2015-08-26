//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/DirectReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedDirectReader_RESTRICT
#define OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedDirectReader_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_

@class OrgApacheLuceneUtilLongValues;
@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader : NSObject

#pragma mark Public

- (instancetype)init;

+ (OrgApacheLuceneUtilLongValues *)getInstanceWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)slice
                                                                                withInt:(jint)bitsPerValue;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader)

FOUNDATION_EXPORT OrgApacheLuceneUtilLongValues *OrgApacheLuceneUtilPackedDirectReader_getInstanceWithOrgApacheLuceneStoreRandomAccessInput_withInt_(id<OrgApacheLuceneStoreRandomAccessInput> slice, jint bitsPerValue);

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_init(OrgApacheLuceneUtilPackedDirectReader *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader *new_OrgApacheLuceneUtilPackedDirectReader_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader1)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader2)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader4)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader8)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader12)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader16)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader20)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader24)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader28)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader32)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader40)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader48)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader56)

#endif

#if !defined (_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_) && (OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_INCLUDE)
#define _OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

@protocol OrgApacheLuceneStoreRandomAccessInput;

@interface OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 : OrgApacheLuceneUtilLongValues {
 @public
  id<OrgApacheLuceneStoreRandomAccessInput> in_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreRandomAccessInput:(id<OrgApacheLuceneStoreRandomAccessInput>)inArg;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64, in_, id<OrgApacheLuceneStoreRandomAccessInput>)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 *self, id<OrgApacheLuceneStoreRandomAccessInput> inArg);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64 *new_OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64_initWithOrgApacheLuceneStoreRandomAccessInput_(id<OrgApacheLuceneStoreRandomAccessInput> inArg) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedDirectReader_DirectPackedReader64)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedDirectReader_INCLUDE_ALL")
