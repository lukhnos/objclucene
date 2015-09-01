//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TermVectorLeafReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchHighlightTermVectorLeafReader_INCLUDE_ALL")
#if OrgApacheLuceneSearchHighlightTermVectorLeafReader_RESTRICT
#define OrgApacheLuceneSearchHighlightTermVectorLeafReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchHighlightTermVectorLeafReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchHighlightTermVectorLeafReader_RESTRICT

#if !defined (_OrgApacheLuceneSearchHighlightTermVectorLeafReader_) && (OrgApacheLuceneSearchHighlightTermVectorLeafReader_INCLUDE_ALL || OrgApacheLuceneSearchHighlightTermVectorLeafReader_INCLUDE)
#define _OrgApacheLuceneSearchHighlightTermVectorLeafReader_

#define OrgApacheLuceneIndexLeafReader_RESTRICT 1
#define OrgApacheLuceneIndexLeafReader_INCLUDE 1
#include "org/apache/lucene/index/LeafReader.h"

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexFieldInfos;
@class OrgApacheLuceneIndexFields;
@class OrgApacheLuceneIndexNumericDocValues;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneIndexSortedNumericDocValues;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneIndexTerms;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchHighlightTermVectorLeafReader : OrgApacheLuceneIndexLeafReader

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
   withOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)terms;

- (void)checkIntegrity;

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor;

- (OrgApacheLuceneIndexFields *)fields;

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos;

- (id<OrgApacheLuceneUtilBits>)getLiveDocs;

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field;

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID;

- (jint)maxDoc;

- (jint)numDocs;

#pragma mark Protected

- (void)doClose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightTermVectorLeafReader)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightTermVectorLeafReader_initWithNSString_withOrgApacheLuceneIndexTerms_(OrgApacheLuceneSearchHighlightTermVectorLeafReader *self, NSString *field, OrgApacheLuceneIndexTerms *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightTermVectorLeafReader *new_OrgApacheLuceneSearchHighlightTermVectorLeafReader_initWithNSString_withOrgApacheLuceneIndexTerms_(NSString *field, OrgApacheLuceneIndexTerms *terms) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightTermVectorLeafReader)

#endif

#pragma pop_macro("OrgApacheLuceneSearchHighlightTermVectorLeafReader_INCLUDE_ALL")
