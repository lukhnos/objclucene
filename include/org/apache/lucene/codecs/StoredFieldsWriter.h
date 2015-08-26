//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/StoredFieldsWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsStoredFieldsWriter_RESTRICT
#define OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsStoredFieldsWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsStoredFieldsWriter_) && (OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE)
#define _OrgApacheLuceneCodecsStoredFieldsWriter_

#define JavaIoCloseable_RESTRICT 1
#define JavaIoCloseable_INCLUDE 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexMergeState;
@protocol OrgApacheLuceneIndexIndexableField;

@interface OrgApacheLuceneCodecsStoredFieldsWriter : NSObject < JavaIoCloseable >

#pragma mark Public

- (void)close;

- (void)finishWithOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)fis
                                         withInt:(jint)numDocs;

- (void)finishDocument;

- (jint)mergeWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState;

- (void)startDocument;

- (void)writeFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)info
             withOrgApacheLuceneIndexIndexableField:(id<OrgApacheLuceneIndexIndexableField>)field;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsStoredFieldsWriter)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsStoredFieldsWriter_init(OrgApacheLuceneCodecsStoredFieldsWriter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsStoredFieldsWriter)

#endif

#if !defined (_OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_) && (OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE_ALL || OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_INCLUDE)
#define _OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_

#define OrgApacheLuceneIndexStoredFieldVisitor_RESTRICT 1
#define OrgApacheLuceneIndexStoredFieldVisitor_INCLUDE 1
#include "org/apache/lucene/index/StoredFieldVisitor.h"

#define OrgApacheLuceneIndexIndexableField_RESTRICT 1
#define OrgApacheLuceneIndexIndexableField_INCLUDE 1
#include "org/apache/lucene/index/IndexableField.h"

@class IOSByteArray;
@class JavaIoReader;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneCodecsStoredFieldsWriter;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexMergeState;
@class OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum;
@class OrgApacheLuceneUtilBytesRef;
@protocol OrgApacheLuceneIndexIndexableFieldType;

@interface OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor : OrgApacheLuceneIndexStoredFieldVisitor < OrgApacheLuceneIndexIndexableField > {
 @public
  OrgApacheLuceneUtilBytesRef *binaryValue_;
  NSString *stringValue_;
  NSNumber *numericValue_;
  OrgApacheLuceneIndexFieldInfo *currentField_;
  OrgApacheLuceneIndexFieldInfos *remapper_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneCodecsStoredFieldsWriter:(OrgApacheLuceneCodecsStoredFieldsWriter *)outer$
                             withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                                                        withInt:(jint)readerIndex;

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                       withByteArray:(IOSByteArray *)value;

- (OrgApacheLuceneUtilBytesRef *)binaryValue;

- (jfloat)boost;

- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withDouble:(jdouble)value;

- (id<OrgApacheLuceneIndexIndexableFieldType>)fieldType;

- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withFloat:(jfloat)value;

- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withInt:(jint)value;

- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withLong:(jlong)value;

- (NSString *)name;

- (OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum *)needsFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

- (NSNumber *)numericValue;

- (JavaIoReader *)readerValue;

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                       withByteArray:(IOSByteArray *)value;

- (NSString *)stringValue;

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)reuse;

#pragma mark Package-Private

- (void)resetWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field;

- (void)write;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor, binaryValue_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor, stringValue_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor, numericValue_, NSNumber *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor, currentField_, OrgApacheLuceneIndexFieldInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor, remapper_, OrgApacheLuceneIndexFieldInfos *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *self, OrgApacheLuceneCodecsStoredFieldsWriter *outer$, OrgApacheLuceneIndexMergeState *mergeState, jint readerIndex);

FOUNDATION_EXPORT OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor *new_OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor_initWithOrgApacheLuceneCodecsStoredFieldsWriter_withOrgApacheLuceneIndexMergeState_withInt_(OrgApacheLuceneCodecsStoredFieldsWriter *outer$, OrgApacheLuceneIndexMergeState *mergeState, jint readerIndex) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsStoredFieldsWriter_MergeVisitor)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsStoredFieldsWriter_INCLUDE_ALL")
