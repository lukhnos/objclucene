//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TokenSources.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/LimitTokenOffsetFilter.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/search/highlight/TokenSources.h"
#include "org/apache/lucene/search/highlight/TokenStreamFromTermVector.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/highlight/TokenSources must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchHighlightTokenSources ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchHighlightTokenSources_init(OrgApacheLuceneSearchHighlightTokenSources *self);

__attribute__((unused)) static OrgApacheLuceneSearchHighlightTokenSources *new_OrgApacheLuceneSearchHighlightTokenSources_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchHighlightTokenSources *create_OrgApacheLuceneSearchHighlightTokenSources_init(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$5(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$6(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$7(void);

@implementation OrgApacheLuceneSearchHighlightTokenSources

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchHighlightTokenSources_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithNSString:(NSString *)field
                                    withOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)tvFields
                                                      withNSString:(NSString *)text
                               withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                           withInt:(jint)maxStartOffset {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithNSString_withOrgApacheLuceneIndexFields_withNSString_withOrgApacheLuceneAnalysisAnalyzer_withInt_(field, tvFields, text, analyzer, maxStartOffset);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTermVectorTokenStreamOrNullWithNSString:(NSString *)field
                                                    withOrgApacheLuceneIndexFields:(OrgApacheLuceneIndexFields *)tvFields
                                                                           withInt:(jint)maxStartOffset {
  return OrgApacheLuceneSearchHighlightTokenSources_getTermVectorTokenStreamOrNullWithNSString_withOrgApacheLuceneIndexFields_withInt_(field, tvFields, maxStartOffset);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                     withInt:(jint)docId
                                                                                withNSString:(NSString *)field
                                                         withOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)document
                                                         withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneSearchHighlightTokenSources_getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneDocumentDocument_withOrgApacheLuceneAnalysisAnalyzer_(reader, docId, field, document, analyzer);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                     withInt:(jint)docId
                                                                                withNSString:(NSString *)field
                                                         withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneSearchHighlightTokenSources_getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(reader, docId, field, analyzer);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)vector
                                                                        withBoolean:(jboolean)tokenPositionsGuaranteedContiguous {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_withBoolean_(vector, tokenPositionsGuaranteedContiguous);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithOrgApacheLuceneIndexTerms:(OrgApacheLuceneIndexTerms *)tpv {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_(tpv);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithOffsetsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                             withInt:(jint)docId
                                                                                        withNSString:(NSString *)field {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOffsetsWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_(reader, docId, field);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                  withInt:(jint)docId
                                                                             withNSString:(NSString *)field
                                                      withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(reader, docId, field, analyzer);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)doc
                                                                             withNSString:(NSString *)field
                                                      withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneDocumentDocument_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(doc, field, analyzer);
}

+ (OrgApacheLuceneAnalysisTokenStream *)getTokenStreamWithNSString:(NSString *)field
                                                      withNSString:(NSString *)contents
                               withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithNSString_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(field, contents, analyzer);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 3, 4, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 5, 6, 2, -1, 7, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 5, 8, 2, -1, 9, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 0, 10, 2, -1, 11, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 0, 12, 2, -1, 13, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 14, 15, 2, -1, 16, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 0, 8, 2, -1, 17, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 0, 18, -1, -1, 19, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x9, 0, 20, -1, -1, 21, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTokenStreamWithNSString:withOrgApacheLuceneIndexFields:withNSString:withOrgApacheLuceneAnalysisAnalyzer:withInt:);
  methods[2].selector = @selector(getTermVectorTokenStreamOrNullWithNSString:withOrgApacheLuceneIndexFields:withInt:);
  methods[3].selector = @selector(getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader:withInt:withNSString:withOrgApacheLuceneDocumentDocument:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[4].selector = @selector(getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader:withInt:withNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[5].selector = @selector(getTokenStreamWithOrgApacheLuceneIndexTerms:withBoolean:);
  methods[6].selector = @selector(getTokenStreamWithOrgApacheLuceneIndexTerms:);
  methods[7].selector = @selector(getTokenStreamWithOffsetsWithOrgApacheLuceneIndexIndexReader:withInt:withNSString:);
  methods[8].selector = @selector(getTokenStreamWithOrgApacheLuceneIndexIndexReader:withInt:withNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[9].selector = @selector(getTokenStreamWithOrgApacheLuceneDocumentDocument:withNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[10].selector = @selector(getTokenStreamWithNSString:withNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getTokenStream", "LNSString;LOrgApacheLuceneIndexFields;LNSString;LOrgApacheLuceneAnalysisAnalyzer;I", "LJavaIoIOException;", "getTermVectorTokenStreamOrNull", "LNSString;LOrgApacheLuceneIndexFields;I", "getAnyTokenStream", "LOrgApacheLuceneIndexIndexReader;ILNSString;LOrgApacheLuceneDocumentDocument;LOrgApacheLuceneAnalysisAnalyzer;", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$0, "LOrgApacheLuceneIndexIndexReader;ILNSString;LOrgApacheLuceneAnalysisAnalyzer;", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$1, "LOrgApacheLuceneIndexTerms;Z", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$2, "LOrgApacheLuceneIndexTerms;", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$3, "getTokenStreamWithOffsets", "LOrgApacheLuceneIndexIndexReader;ILNSString;", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$4, (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$5, "LOrgApacheLuceneDocumentDocument;LNSString;LOrgApacheLuceneAnalysisAnalyzer;", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$6, "LNSString;LNSString;LOrgApacheLuceneAnalysisAnalyzer;", (void *)&OrgApacheLuceneSearchHighlightTokenSources__Annotations$7 };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightTokenSources = { "TokenSources", "org.apache.lucene.search.highlight", ptrTable, methods, NULL, 7, 0x1, 11, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchHighlightTokenSources;
}

@end

void OrgApacheLuceneSearchHighlightTokenSources_init(OrgApacheLuceneSearchHighlightTokenSources *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchHighlightTokenSources *new_OrgApacheLuceneSearchHighlightTokenSources_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightTokenSources, init)
}

OrgApacheLuceneSearchHighlightTokenSources *create_OrgApacheLuceneSearchHighlightTokenSources_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightTokenSources, init)
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithNSString_withOrgApacheLuceneIndexFields_withNSString_withOrgApacheLuceneAnalysisAnalyzer_withInt_(NSString *field, OrgApacheLuceneIndexFields *tvFields, NSString *text, OrgApacheLuceneAnalysisAnalyzer *analyzer, jint maxStartOffset) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  OrgApacheLuceneAnalysisTokenStream *tokenStream = OrgApacheLuceneSearchHighlightTokenSources_getTermVectorTokenStreamOrNullWithNSString_withOrgApacheLuceneIndexFields_withInt_(field, tvFields, maxStartOffset);
  if (tokenStream != nil) {
    return tokenStream;
  }
  tokenStream = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) tokenStreamWithNSString:field withNSString:text];
  if (maxStartOffset >= 0 && maxStartOffset < [((NSString *) nil_chk(text)) java_length] - 1) {
    tokenStream = create_OrgApacheLuceneAnalysisMiscellaneousLimitTokenOffsetFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_(tokenStream, maxStartOffset);
  }
  return tokenStream;
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTermVectorTokenStreamOrNullWithNSString_withOrgApacheLuceneIndexFields_withInt_(NSString *field, OrgApacheLuceneIndexFields *tvFields, jint maxStartOffset) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  if (tvFields == nil) {
    return nil;
  }
  OrgApacheLuceneIndexTerms *tvTerms = [tvFields termsWithNSString:field];
  if (tvTerms == nil || ![tvTerms hasOffsets]) {
    return nil;
  }
  return create_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(tvTerms, maxStartOffset);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneDocumentDocument_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneIndexIndexReader *reader, jint docId, NSString *field, OrgApacheLuceneDocumentDocument *document, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  OrgApacheLuceneAnalysisTokenStream *ts = nil;
  OrgApacheLuceneIndexFields *vectors = JreRetainedLocalValue([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getTermVectorsWithInt:docId]);
  if (vectors != nil) {
    OrgApacheLuceneIndexTerms *vector = JreRetainedLocalValue([vectors termsWithNSString:field]);
    if (vector != nil) {
      ts = OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_(vector);
    }
  }
  if (ts == nil) {
    ts = OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneDocumentDocument_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(document, field, analyzer);
  }
  return ts;
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getAnyTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneIndexIndexReader *reader, jint docId, NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  OrgApacheLuceneAnalysisTokenStream *ts = nil;
  OrgApacheLuceneIndexFields *vectors = JreRetainedLocalValue([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getTermVectorsWithInt:docId]);
  if (vectors != nil) {
    OrgApacheLuceneIndexTerms *vector = JreRetainedLocalValue([vectors termsWithNSString:field]);
    if (vector != nil) {
      ts = OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_(vector);
    }
  }
  if (ts == nil) {
    ts = OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(reader, docId, field, analyzer);
  }
  return ts;
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_withBoolean_(OrgApacheLuceneIndexTerms *vector, jboolean tokenPositionsGuaranteedContiguous) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_(vector);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_(OrgApacheLuceneIndexTerms *tpv) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  if (![((OrgApacheLuceneIndexTerms *) nil_chk(tpv)) hasOffsets]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Highlighting requires offsets from the TokenStream.");
  }
  return create_OrgApacheLuceneSearchHighlightTokenStreamFromTermVector_initWithOrgApacheLuceneIndexTerms_withInt_(tpv, -1);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOffsetsWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_(OrgApacheLuceneIndexIndexReader *reader, jint docId, NSString *field) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  OrgApacheLuceneIndexFields *vectors = JreRetainedLocalValue([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getTermVectorsWithInt:docId]);
  if (vectors == nil) {
    return nil;
  }
  OrgApacheLuceneIndexTerms *vector = JreRetainedLocalValue([vectors termsWithNSString:field]);
  if (vector == nil) {
    return nil;
  }
  if (![vector hasOffsets]) {
    return nil;
  }
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexTerms_(vector);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneIndexIndexReader *reader, jint docId, NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  OrgApacheLuceneDocumentDocument *doc = JreRetainedLocalValue([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) documentWithInt:docId]);
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneDocumentDocument_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(doc, field, analyzer);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithOrgApacheLuceneDocumentDocument_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneDocumentDocument *doc, NSString *field, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  NSString *contents = JreRetainedLocalValue([((OrgApacheLuceneDocumentDocument *) nil_chk(doc)) getWithNSString:field]);
  if (contents == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"Field ", field, @" in document is not stored and cannot be analyzed"));
  }
  return OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithNSString_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(field, contents, analyzer);
}

OrgApacheLuceneAnalysisTokenStream *OrgApacheLuceneSearchHighlightTokenSources_getTokenStreamWithNSString_withNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *field, NSString *contents, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneSearchHighlightTokenSources_initialize();
  @try {
    return [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) tokenStreamWithNSString:field withNSString:contents];
  }
  @catch (JavaIoIOException *ex) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ex);
  }
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$6() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchHighlightTokenSources__Annotations$7() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightTokenSources)
