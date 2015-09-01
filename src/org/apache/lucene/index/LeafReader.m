//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/LeafReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneIndexLeafReader () {
 @public
  __weak OrgApacheLuceneIndexLeafReaderContext *readerContext_;
}

@end

__attribute__((unused)) static OrgApacheLuceneIndexTerms *OrgApacheLuceneIndexLeafReader_termsWithNSString_(OrgApacheLuceneIndexLeafReader *self, NSString *field);

@interface OrgApacheLuceneIndexLeafReader_CoreClosedListener : NSObject

@end

@interface OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper : NSObject < OrgApacheLuceneIndexIndexReader_ReaderClosedListener >

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper)

__attribute__((unused)) static void OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper_init(OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper *self);

__attribute__((unused)) static OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper *new_OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper)

@implementation OrgApacheLuceneIndexLeafReader

- (instancetype)init {
  OrgApacheLuceneIndexLeafReader_init(self);
  return self;
}

- (OrgApacheLuceneIndexLeafReaderContext *)getContext {
  [self ensureOpen];
  return readerContext_;
}

- (OrgApacheLuceneIndexFields *)fields {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneIndexTerms *terms = OrgApacheLuceneIndexLeafReader_termsWithNSString_(self, [((OrgApacheLuceneIndexTerm *) nil_chk(term)) field]);
  if (terms == nil) {
    return 0;
  }
  OrgApacheLuceneIndexTermsEnum *termsEnum = [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator];
  if ([((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) seekExactWithOrgApacheLuceneUtilBytesRef:[term bytes]]) {
    return [termsEnum docFreq];
  }
  else {
    return 0;
  }
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  return OrgApacheLuceneIndexLeafReader_termsWithNSString_(self, field);
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<OrgApacheLuceneUtilBits>)getLiveDocs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)checkIntegrity {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)__javaClone {
  [super __javaClone];
  [readerContext_ release];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LeafReader", NULL, 0x4, NULL, NULL },
    { "getContext", NULL, "Lorg.apache.lucene.index.LeafReaderContext;", 0x11, NULL, NULL },
    { "fields", NULL, "Lorg.apache.lucene.index.Fields;", 0x401, "Ljava.io.IOException;", NULL },
    { "docFreqWithOrgApacheLuceneIndexTerm:", "docFreq", "I", 0x11, "Ljava.io.IOException;", NULL },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x11, "Ljava.io.IOException;", NULL },
    { "getNumericDocValuesWithNSString:", "getNumericDocValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getBinaryDocValuesWithNSString:", "getBinaryDocValues", "Lorg.apache.lucene.index.BinaryDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getSortedDocValuesWithNSString:", "getSortedDocValues", "Lorg.apache.lucene.index.SortedDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getSortedNumericDocValuesWithNSString:", "getSortedNumericDocValues", "Lorg.apache.lucene.index.SortedNumericDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getSortedSetDocValuesWithNSString:", "getSortedSetDocValues", "Lorg.apache.lucene.index.SortedSetDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getDocsWithFieldWithNSString:", "getDocsWithField", "Lorg.apache.lucene.util.Bits;", 0x401, "Ljava.io.IOException;", NULL },
    { "getNormValuesWithNSString:", "getNormValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x401, "Ljava.io.IOException;", NULL },
    { "getFieldInfos", NULL, "Lorg.apache.lucene.index.FieldInfos;", 0x401, NULL, NULL },
    { "getLiveDocs", NULL, "Lorg.apache.lucene.util.Bits;", 0x401, NULL, NULL },
    { "checkIntegrity", NULL, "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "readerContext_", NULL, 0x12, "Lorg.apache.lucene.index.LeafReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.LeafReader$CoreClosedListener;", "Lorg.apache.lucene.index.LeafReader$CoreClosedListenerWrapper;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLeafReader = { 2, "LeafReader", "org.apache.lucene.index", NULL, 0x401, 15, methods, 1, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexLeafReader;
}

@end

void OrgApacheLuceneIndexLeafReader_init(OrgApacheLuceneIndexLeafReader *self) {
  OrgApacheLuceneIndexIndexReader_init(self);
  self->readerContext_ = [new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexLeafReader_(self) autorelease];
}

OrgApacheLuceneIndexTerms *OrgApacheLuceneIndexLeafReader_termsWithNSString_(OrgApacheLuceneIndexLeafReader *self, NSString *field) {
  return [((OrgApacheLuceneIndexFields *) nil_chk([self fields])) termsWithNSString:field];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLeafReader)

@implementation OrgApacheLuceneIndexLeafReader_CoreClosedListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCloseWithId:", "onClose", "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLeafReader_CoreClosedListener = { 2, "CoreClosedListener", "org.apache.lucene.index", "LeafReader", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexLeafReader_CoreClosedListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLeafReader_CoreClosedListener)

@implementation OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper

- (instancetype)init {
  OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper = { 2, "CoreClosedListenerWrapper", "org.apache.lucene.index", "LeafReader", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper;
}

@end

void OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper_init(OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper *self) {
  NSObject_init(self);
}

OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper *new_OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper_init() {
  OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper *self = [OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper alloc];
  OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexLeafReader_CoreClosedListenerWrapper)
