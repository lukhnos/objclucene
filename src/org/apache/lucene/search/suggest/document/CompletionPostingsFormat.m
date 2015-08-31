//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionPostingsFormat.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/codecs/FieldsConsumer.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/search/suggest/document/CompletionFieldsConsumer.h"
#include "org/apache/lucene/search/suggest/document/CompletionFieldsProducer.h"
#include "org/apache/lucene/search/suggest/document/CompletionPostingsFormat.h"

NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_ = @"completion";
NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION_ = @"cmp";
NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION_ = @"lkp";

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat

- (instancetype)init {
  OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_init(self);
  return self;
}

- (OrgApacheLuceneCodecsPostingsFormat *)delegatePostingsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsFieldsConsumer *)fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  OrgApacheLuceneCodecsPostingsFormat *delegatePostingsFormat = [self delegatePostingsFormat];
  if (delegatePostingsFormat == nil) {
    @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(JreStrcat("$$$", @"Error - ", [[self getClass] getName], @" has been constructed without a choice of PostingsFormat")) autorelease];
  }
  return [new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsConsumer_initWithOrgApacheLuceneCodecsPostingsFormat_withOrgApacheLuceneIndexSegmentWriteState_(delegatePostingsFormat, state) autorelease];
}

- (OrgApacheLuceneCodecsFieldsProducer *)fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  return [new_OrgApacheLuceneSearchSuggestDocumentCompletionFieldsProducer_initWithOrgApacheLuceneIndexSegmentReadState_(state) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CompletionPostingsFormat", NULL, 0x1, NULL, NULL },
    { "delegatePostingsFormat", NULL, "Lorg.apache.lucene.codecs.PostingsFormat;", 0x404, NULL, NULL },
    { "fieldsConsumerWithOrgApacheLuceneIndexSegmentWriteState:", "fieldsConsumer", "Lorg.apache.lucene.codecs.FieldsConsumer;", 0x1, "Ljava.io.IOException;", NULL },
    { "fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:", "fieldsProducer", "Lorg.apache.lucene.codecs.FieldsProducer;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CODEC_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "COMPLETION_CODEC_VERSION", "COMPLETION_CODEC_VERSION", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_CODEC_VERSION },
    { "COMPLETION_VERSION_CURRENT", "COMPLETION_VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT },
    { "INDEX_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION_, NULL, .constantValue.asLong = 0 },
    { "DICT_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat = { 2, "CompletionPostingsFormat", "org.apache.lucene.search.suggest.document", NULL, 0x401, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_init(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat *self) {
  OrgApacheLuceneCodecsPostingsFormat_initWithNSString_(self, OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat)