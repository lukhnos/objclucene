//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/document/DocumentStoredFieldVisitor.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneDocumentDocumentStoredFieldVisitor_INCLUDE_ALL")
#if OrgApacheLuceneDocumentDocumentStoredFieldVisitor_RESTRICT
#define OrgApacheLuceneDocumentDocumentStoredFieldVisitor_INCLUDE_ALL 0
#else
#define OrgApacheLuceneDocumentDocumentStoredFieldVisitor_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneDocumentDocumentStoredFieldVisitor_RESTRICT

#if !defined (_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_) && (OrgApacheLuceneDocumentDocumentStoredFieldVisitor_INCLUDE_ALL || OrgApacheLuceneDocumentDocumentStoredFieldVisitor_INCLUDE)
#define _OrgApacheLuceneDocumentDocumentStoredFieldVisitor_

#define OrgApacheLuceneIndexStoredFieldVisitor_RESTRICT 1
#define OrgApacheLuceneIndexStoredFieldVisitor_INCLUDE 1
#include "org/apache/lucene/index/StoredFieldVisitor.h"

@class IOSByteArray;
@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum;
@protocol JavaUtilSet;

@interface OrgApacheLuceneDocumentDocumentStoredFieldVisitor : OrgApacheLuceneIndexStoredFieldVisitor

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilSet:(id<JavaUtilSet>)fieldsToAdd;

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                       withByteArray:(IOSByteArray *)value;

- (void)doubleFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withDouble:(jdouble)value;

- (void)floatFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withFloat:(jfloat)value;

- (OrgApacheLuceneDocumentDocument *)getDocument;

- (void)intFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withInt:(jint)value;

- (void)longFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                          withLong:(jlong)value;

- (OrgApacheLuceneIndexStoredFieldVisitor_StatusEnum *)needsFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo;

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                       withByteArray:(IOSByteArray *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneDocumentDocumentStoredFieldVisitor)

FOUNDATION_EXPORT void OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(OrgApacheLuceneDocumentDocumentStoredFieldVisitor *self, id<JavaUtilSet> fieldsToAdd);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(id<JavaUtilSet> fieldsToAdd) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init(OrgApacheLuceneDocumentDocumentStoredFieldVisitor *self);

FOUNDATION_EXPORT OrgApacheLuceneDocumentDocumentStoredFieldVisitor *new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneDocumentDocumentStoredFieldVisitor)

#endif

#pragma pop_macro("OrgApacheLuceneDocumentDocumentStoredFieldVisitor_INCLUDE_ALL")
