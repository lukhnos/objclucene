//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CorruptIndexException.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException")
#ifdef RESTRICT_OrgApacheLuceneIndexCorruptIndexException
#define INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexCorruptIndexException

#if !defined (OrgApacheLuceneIndexCorruptIndexException_) && (INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException || defined(INCLUDE_OrgApacheLuceneIndexCorruptIndexException))
#define OrgApacheLuceneIndexCorruptIndexException_

#define RESTRICT_JavaIoIOException 1
#define INCLUDE_JavaIoIOException 1
#include "java/io/IOException.h"

@class OrgApacheLuceneStoreDataInput;
@class OrgApacheLuceneStoreDataOutput;

/*!
 @brief This exception is thrown when Lucene detects
 an inconsistency in the index.
 */
@interface OrgApacheLuceneIndexCorruptIndexException : JavaIoIOException

#pragma mark Public

/*!
 @brief Create exception with a message only
 */
- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input;

/*!
 @brief Create exception with message and root cause.
 */
- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)input
                 withNSException:(NSException *)cause;

/*!
 @brief Create exception with a message only
 */
- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output;

/*!
 @brief Create exception with message and root cause.
 */
- (instancetype)initWithNSString:(NSString *)message
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)output
                 withNSException:(NSException *)cause;

/*!
 @brief Create exception with a message only
 */
- (instancetype)initWithNSString:(NSString *)message
                    withNSString:(NSString *)resourceDescription;

/*!
 @brief Create exception with message and root cause.
 */
- (instancetype)initWithNSString:(NSString *)message
                    withNSString:(NSString *)resourceDescription
                 withNSException:(NSException *)cause;

/*!
 @brief Returns the original exception message without the corrupted file description.
 */
- (NSString *)getOriginalMessage;

/*!
 @brief Returns a description of the file that was corrupted
 */
- (NSString *)getResourceDescription;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCorruptIndexException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataInput *input);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(NSString *message, OrgApacheLuceneStoreDataInput *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(NSString *message, OrgApacheLuceneStoreDataInput *input);

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataOutput *output);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(NSString *message, OrgApacheLuceneStoreDataOutput *output) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_(NSString *message, OrgApacheLuceneStoreDataOutput *output);

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataInput *input, NSException *cause);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(NSString *message, OrgApacheLuceneStoreDataInput *input, NSException *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_withNSException_(NSString *message, OrgApacheLuceneStoreDataInput *input, NSException *cause);

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, OrgApacheLuceneStoreDataOutput *output, NSException *cause);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(NSString *message, OrgApacheLuceneStoreDataOutput *output, NSException *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataOutput_withNSException_(NSString *message, OrgApacheLuceneStoreDataOutput *output, NSException *cause);

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, NSString *resourceDescription);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(NSString *message, NSString *resourceDescription) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(NSString *message, NSString *resourceDescription);

FOUNDATION_EXPORT void OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(OrgApacheLuceneIndexCorruptIndexException *self, NSString *message, NSString *resourceDescription, NSException *cause);

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(NSString *message, NSString *resourceDescription, NSException *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexCorruptIndexException *create_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withNSException_(NSString *message, NSString *resourceDescription, NSException *cause);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCorruptIndexException)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexCorruptIndexException")
