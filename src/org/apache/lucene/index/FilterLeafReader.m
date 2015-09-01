//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FilterLeafReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/NullPointerException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Iterator.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/FilterLeafReader.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper : NSObject < OrgApacheLuceneIndexLeafReader_CoreClosedListener >

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)

__attribute__((unused)) static void OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper_init(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *self);

__attribute__((unused)) static OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *new_OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)

@implementation OrgApacheLuceneIndexFilterLeafReader

+ (OrgApacheLuceneIndexLeafReader *)unwrapWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  return OrgApacheLuceneIndexFilterLeafReader_unwrapWithOrgApacheLuceneIndexLeafReader_(reader);
}

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)inArg {
  OrgApacheLuceneIndexFilterLeafReader_initWithOrgApacheLuceneIndexLeafReader_(self, inArg);
  return self;
}

- (id<OrgApacheLuceneUtilBits>)getLiveDocs {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getLiveDocs];
}

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getFieldInfos];
}

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getTermVectorsWithInt:docID];
}

- (jint)numDocs {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) numDocs];
}

- (jint)maxDoc {
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) maxDoc];
}

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  [self ensureOpen];
  [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) documentWithInt:docID withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
}

- (void)doClose {
  [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) close];
}

- (OrgApacheLuceneIndexFields *)fields {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) fields];
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_initWithNSString_(@"FilterLeafReader(") autorelease];
  [buffer appendWithId:in_];
  [buffer appendWithChar:')'];
  return [buffer description];
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getNumericDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getBinaryDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getSortedDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getSortedNumericDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getSortedSetDocValuesWithNSString:field];
}

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getNormValuesWithNSString:field];
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field {
  [self ensureOpen];
  return [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) getDocsWithFieldWithNSString:field];
}

- (void)checkIntegrity {
  [self ensureOpen];
  [((OrgApacheLuceneIndexLeafReader *) nil_chk(in_)) checkIntegrity];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "unwrapWithOrgApacheLuceneIndexLeafReader:", "unwrap", "Lorg.apache.lucene.index.LeafReader;", 0x9, NULL, NULL },
    { "initWithOrgApacheLuceneIndexLeafReader:", "FilterLeafReader", NULL, 0x1, NULL, NULL },
    { "getLiveDocs", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, NULL, NULL },
    { "getFieldInfos", NULL, "Lorg.apache.lucene.index.FieldInfos;", 0x1, NULL, NULL },
    { "getTermVectorsWithInt:", "getTermVectors", "Lorg.apache.lucene.index.Fields;", 0x1, "Ljava.io.IOException;", NULL },
    { "numDocs", NULL, "I", 0x1, NULL, NULL },
    { "maxDoc", NULL, "I", 0x1, NULL, NULL },
    { "documentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:", "document", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "doClose", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "fields", NULL, "Lorg.apache.lucene.index.Fields;", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "getNumericDocValuesWithNSString:", "getNumericDocValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getBinaryDocValuesWithNSString:", "getBinaryDocValues", "Lorg.apache.lucene.index.BinaryDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getSortedDocValuesWithNSString:", "getSortedDocValues", "Lorg.apache.lucene.index.SortedDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getSortedNumericDocValuesWithNSString:", "getSortedNumericDocValues", "Lorg.apache.lucene.index.SortedNumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getSortedSetDocValuesWithNSString:", "getSortedSetDocValues", "Lorg.apache.lucene.index.SortedSetDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getNormValuesWithNSString:", "getNormValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x1, "Ljava.io.IOException;", NULL },
    { "getDocsWithFieldWithNSString:", "getDocsWithField", "Lorg.apache.lucene.util.Bits;", 0x1, "Ljava.io.IOException;", NULL },
    { "checkIntegrity", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.LeafReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.FilterLeafReader$FilterFields;", "Lorg.apache.lucene.index.FilterLeafReader$FilterTerms;", "Lorg.apache.lucene.index.FilterLeafReader$FilterTermsEnum;", "Lorg.apache.lucene.index.FilterLeafReader$FilterPostingsEnum;", "Lorg.apache.lucene.index.FilterLeafReader$CoreClosedListenerWrapper;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterLeafReader = { 2, "FilterLeafReader", "org.apache.lucene.index", NULL, 0x1, 19, methods, 1, fields, 0, NULL, 5, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterLeafReader;
}

@end

OrgApacheLuceneIndexLeafReader *OrgApacheLuceneIndexFilterLeafReader_unwrapWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *reader) {
  OrgApacheLuceneIndexFilterLeafReader_initialize();
  while ([reader isKindOfClass:[OrgApacheLuceneIndexFilterLeafReader class]]) {
    reader = ((OrgApacheLuceneIndexFilterLeafReader *) nil_chk(((OrgApacheLuceneIndexFilterLeafReader *) check_class_cast(reader, [OrgApacheLuceneIndexFilterLeafReader class]))))->in_;
  }
  return reader;
}

void OrgApacheLuceneIndexFilterLeafReader_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexFilterLeafReader *self, OrgApacheLuceneIndexLeafReader *inArg) {
  OrgApacheLuceneIndexLeafReader_init(self);
  if (inArg == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"incoming LeafReader cannot be null") autorelease];
  }
  JreStrongAssign(&self->in_, inArg);
  [((OrgApacheLuceneIndexLeafReader *) nil_chk(inArg)) registerParentReaderWithOrgApacheLuceneIndexIndexReader:self];
}

OrgApacheLuceneIndexFilterLeafReader *new_OrgApacheLuceneIndexFilterLeafReader_initWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *inArg) {
  OrgApacheLuceneIndexFilterLeafReader *self = [OrgApacheLuceneIndexFilterLeafReader alloc];
  OrgApacheLuceneIndexFilterLeafReader_initWithOrgApacheLuceneIndexLeafReader_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterLeafReader)

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterFields

- (instancetype)initWithOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)inArg {
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(self, inArg);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return [((OrgApacheLuceneIndexFields *) nil_chk(in_)) iterator];
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  return [((OrgApacheLuceneIndexFields *) nil_chk(in_)) termsWithNSString:field];
}

- (jint)size {
  return [((OrgApacheLuceneIndexFields *) nil_chk(in_)) size];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexFields:", "FilterFields", NULL, 0x1, NULL, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x1, "Ljava.io.IOException;", NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.Fields;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterLeafReader_FilterFields = { 2, "FilterFields", "org.apache.lucene.index", "FilterLeafReader", 0x9, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterLeafReader_FilterFields;
}

@end

void OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(OrgApacheLuceneIndexFilterLeafReader_FilterFields *self, OrgApacheLuceneIndexFields *inArg) {
  OrgApacheLuceneIndexFields_init(self);
  if (inArg == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"incoming Fields cannot be null") autorelease];
  }
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneIndexFilterLeafReader_FilterFields *new_OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(OrgApacheLuceneIndexFields *inArg) {
  OrgApacheLuceneIndexFilterLeafReader_FilterFields *self = [OrgApacheLuceneIndexFilterLeafReader_FilterFields alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterLeafReader_FilterFields)

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterTerms

- (instancetype)initWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)inArg {
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(self, inArg);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum *)iterator {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) iterator];
}

- (jlong)size {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) size];
}

- (jlong)getSumTotalTermFreq {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) getSumTotalTermFreq];
}

- (jlong)getSumDocFreq {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) getSumDocFreq];
}

- (jint)getDocCount {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) getDocCount];
}

- (jboolean)hasFreqs {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) hasFreqs];
}

- (jboolean)hasOffsets {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) hasOffsets];
}

- (jboolean)hasPositions {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) hasPositions];
}

- (jboolean)hasPayloads {
  return [((OrgApacheLuceneIndexTerms *) nil_chk(in_)) hasPayloads];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTerms:", "FilterTerms", NULL, 0x1, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.index.TermsEnum;", 0x1, "Ljava.io.IOException;", NULL },
    { "size", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "getSumTotalTermFreq", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "getSumDocFreq", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "getDocCount", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "hasFreqs", NULL, "Z", 0x1, NULL, NULL },
    { "hasOffsets", NULL, "Z", 0x1, NULL, NULL },
    { "hasPositions", NULL, "Z", 0x1, NULL, NULL },
    { "hasPayloads", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.Terms;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterLeafReader_FilterTerms = { 2, "FilterTerms", "org.apache.lucene.index", "FilterLeafReader", 0x9, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterLeafReader_FilterTerms;
}

@end

void OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexFilterLeafReader_FilterTerms *self, OrgApacheLuceneIndexTerms *inArg) {
  OrgApacheLuceneIndexTerms_init(self);
  if (inArg == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"incoming Terms cannot be null") autorelease];
  }
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneIndexFilterLeafReader_FilterTerms *new_OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexTerms *inArg) {
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms *self = [OrgApacheLuceneIndexFilterLeafReader_FilterTerms alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterLeafReader_FilterTerms)

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum

- (instancetype)initWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)inArg {
  OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, inArg);
  return self;
}

- (OrgApacheLuceneUtilAttributeSource *)attributes {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) attributes];
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) seekCeilWithOrgApacheLuceneUtilBytesRef:text];
}

- (OrgApacheLuceneUtilBytesRef *)next {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) next];
}

- (OrgApacheLuceneUtilBytesRef *)term {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) term];
}

- (jlong)ord {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) ord];
}

- (jint)docFreq {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) docFreq];
}

- (jlong)totalTermFreq {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) totalTermFreq];
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  return [((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) postingsWithOrgApacheLuceneIndexPostingsEnum:reuse withInt:flags];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexTermsEnum:", "FilterTermsEnum", NULL, 0x1, NULL, NULL },
    { "attributes", NULL, "Lorg.apache.lucene.util.AttributeSource;", 0x1, NULL, NULL },
    { "seekCeilWithOrgApacheLuceneUtilBytesRef:", "seekCeil", "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", 0x1, "Ljava.io.IOException;", NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "term", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "ord", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "docFreq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "totalTermFreq", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.TermsEnum;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum = { 2, "FilterTermsEnum", "org.apache.lucene.index", "FilterLeafReader", 0x9, 9, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum;
}

@end

void OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum *self, OrgApacheLuceneIndexTermsEnum *inArg) {
  OrgApacheLuceneIndexTermsEnum_init(self);
  if (inArg == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"incoming TermsEnum cannot be null") autorelease];
  }
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum *new_OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(OrgApacheLuceneIndexTermsEnum *inArg) {
  OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum *self = [OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum)

@implementation OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum

- (instancetype)initWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)inArg {
  OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum_initWithOrgApacheLuceneIndexPostingsEnum_(self, inArg);
  return self;
}

- (jint)docID {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) docID];
}

- (jint)freq {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) freq];
}

- (jint)nextDoc {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) nextDoc];
}

- (jint)advanceWithInt:(jint)target {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) advanceWithInt:target];
}

- (jint)nextPosition {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) nextPosition];
}

- (jint)startOffset {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) startOffset];
}

- (jint)endOffset {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) endOffset];
}

- (OrgApacheLuceneUtilBytesRef *)getPayload {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) getPayload];
}

- (jlong)cost {
  return [((OrgApacheLuceneIndexPostingsEnum *) nil_chk(in_)) cost];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexPostingsEnum:", "FilterPostingsEnum", NULL, 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "nextPosition", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "startOffset", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "endOffset", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "getPayload", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x14, "Lorg.apache.lucene.index.PostingsEnum;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum = { 2, "FilterPostingsEnum", "org.apache.lucene.index", "FilterLeafReader", 0x9, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum;
}

@end

void OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum_initWithOrgApacheLuceneIndexPostingsEnum_(OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum *self, OrgApacheLuceneIndexPostingsEnum *inArg) {
  OrgApacheLuceneIndexPostingsEnum_init(self);
  if (inArg == nil) {
    @throw [new_JavaLangNullPointerException_initWithNSString_(@"incoming PostingsEnum cannot be null") autorelease];
  }
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum *new_OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum_initWithOrgApacheLuceneIndexPostingsEnum_(OrgApacheLuceneIndexPostingsEnum *inArg) {
  OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum *self = [OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum alloc];
  OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum_initWithOrgApacheLuceneIndexPostingsEnum_(self, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterLeafReader_FilterPostingsEnum)

@implementation OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper

- (instancetype)init {
  OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper = { 2, "CoreClosedListenerWrapper", "org.apache.lucene.index", "FilterLeafReader", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper;
}

@end

void OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper_init(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *new_OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper_init() {
  OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper *self = [OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper alloc];
  OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterLeafReader_CoreClosedListenerWrapper)
