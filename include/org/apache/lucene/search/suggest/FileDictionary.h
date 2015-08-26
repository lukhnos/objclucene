//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/FileDictionary.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE_ALL")
#if OrgApacheLuceneSearchSuggestFileDictionary_RESTRICT
#define OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSuggestFileDictionary_RESTRICT

#if !defined (_OrgApacheLuceneSearchSuggestFileDictionary_) && (OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE_ALL || OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE)
#define _OrgApacheLuceneSearchSuggestFileDictionary_

#define OrgApacheLuceneSearchSpellDictionary_RESTRICT 1
#define OrgApacheLuceneSearchSpellDictionary_INCLUDE 1
#include "org/apache/lucene/search/spell/Dictionary.h"

@class JavaIoInputStream;
@class JavaIoReader;
@protocol OrgApacheLuceneSearchSuggestInputIterator;

@interface OrgApacheLuceneSearchSuggestFileDictionary : NSObject < OrgApacheLuceneSearchSpellDictionary >

#pragma mark Public

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)dictFile;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)dictFile
                             withNSString:(NSString *)fieldDelimiter;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader;

- (instancetype)initWithJavaIoReader:(JavaIoReader *)reader
                        withNSString:(NSString *)fieldDelimiter;

- (id<OrgApacheLuceneSearchSuggestInputIterator>)getEntryIterator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestFileDictionary)

FOUNDATION_EXPORT NSString *OrgApacheLuceneSearchSuggestFileDictionary_DEFAULT_FIELD_DELIMITER_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSuggestFileDictionary, DEFAULT_FIELD_DELIMITER_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoInputStream *dictFile);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_(JavaIoInputStream *dictFile) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoReader *reader);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_(JavaIoReader *reader) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoReader *reader, NSString *fieldDelimiter);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoReader_withNSString_(JavaIoReader *reader, NSString *fieldDelimiter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(OrgApacheLuceneSearchSuggestFileDictionary *self, JavaIoInputStream *dictFile, NSString *fieldDelimiter);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestFileDictionary *new_OrgApacheLuceneSearchSuggestFileDictionary_initWithJavaIoInputStream_withNSString_(JavaIoInputStream *dictFile, NSString *fieldDelimiter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestFileDictionary)

#endif

#if !defined (_OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_) && (OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE_ALL || OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_INCLUDE)
#define _OrgApacheLuceneSearchSuggestFileDictionary_FileIterator_

#define OrgApacheLuceneSearchSuggestInputIterator_RESTRICT 1
#define OrgApacheLuceneSearchSuggestInputIterator_INCLUDE 1
#include "org/apache/lucene/search/suggest/InputIterator.h"

@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchSuggestFileDictionary_FileIterator : NSObject < OrgApacheLuceneSearchSuggestInputIterator >

#pragma mark Public

- (id<JavaUtilSet>)contexts;

- (jboolean)hasContexts;

- (jboolean)hasPayloads;

- (OrgApacheLuceneUtilBytesRef *)next;

- (OrgApacheLuceneUtilBytesRef *)payload;

- (jlong)weight;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestFileDictionary_FileIterator)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSuggestFileDictionary_INCLUDE_ALL")
