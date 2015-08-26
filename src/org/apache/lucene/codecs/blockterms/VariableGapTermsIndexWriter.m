//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/blockterms/VariableGapTermsIndexWriter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/TermStats.h"
#include "org/apache/lucene/codecs/blockterms/TermsIndexWriterBase.h"
#include "org/apache/lucene/codecs/blockterms/VariableGapTermsIndexWriter.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/IntsRefBuilder.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/PositiveIntOutputs.h"
#include "org/apache/lucene/util/fst/Util.h"

@interface OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter () {
 @public
  id<JavaUtilList> fields_;
  OrgApacheLuceneIndexFieldInfos *fieldInfos_;
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *policy_;
}

- (void)writeTrailerWithLong:(jlong)dirStart;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter, fields_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter, fieldInfos_, OrgApacheLuceneIndexFieldInfos *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter, policy_, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *)

__attribute__((unused)) static void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_writeTrailerWithLong_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *self, jlong dirStart);

@interface OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector () {
 @public
  jint count_;
  jint interval_;
}

@end

@interface OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector () {
 @public
  jint count_;
  jint docFreqThresh_;
  jint interval_;
}

@end

@interface OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter : OrgApacheLuceneCodecsBlocktermsTermsIndexWriterBase_FieldWriter {
 @public
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *this$1_;
  OrgApacheLuceneUtilFstBuilder *fstBuilder_;
  OrgApacheLuceneUtilFstPositiveIntOutputs *fstOutputs_;
  jlong startTermsFilePointer_;
  OrgApacheLuceneIndexFieldInfo *fieldInfo_;
  OrgApacheLuceneUtilFstFST *fst_;
  jlong indexStart_;
  OrgApacheLuceneUtilBytesRefBuilder *lastTerm_;
  jboolean first_;
  OrgApacheLuceneUtilIntsRefBuilder *scratchIntsRef_;
}

- (instancetype)initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter:(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *)outer$
                                                 withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                                                          withLong:(jlong)termsFilePointer;

- (jboolean)checkIndexTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
                       withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats;

- (void)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
        withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats
                                  withLong:(jlong)termsFilePointer;

- (void)finishWithLong:(jlong)termsFilePointer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, this$1_, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, fstBuilder_, OrgApacheLuceneUtilFstBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, fstOutputs_, OrgApacheLuceneUtilFstPositiveIntOutputs *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, fieldInfo_, OrgApacheLuceneIndexFieldInfo *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, fst_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, lastTerm_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter, scratchIntsRef_, OrgApacheLuceneUtilIntsRefBuilder *)

__attribute__((unused)) static void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *self, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong termsFilePointer);

__attribute__((unused)) static OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *new_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong termsFilePointer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter)

NSString *OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_TERMS_INDEX_EXTENSION_ = @"tiv";
NSString *OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_CODEC_NAME_ = @"VariableGapTermsIndex";

@implementation OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter

- (instancetype)initWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
withOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector:(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *)policy {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_(self, state, policy);
  return self;
}

- (OrgApacheLuceneCodecsBlocktermsTermsIndexWriterBase_FieldWriter *)addFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                                                                                      withLong:(jlong)termsFilePointer {
  [((OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *) nil_chk(policy_)) newFieldWithOrgApacheLuceneIndexFieldInfo:field];
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *writer = [new_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(self, field, termsFilePointer) autorelease];
  [((id<JavaUtilList>) nil_chk(fields_)) addWithId:writer];
  return writer;
}

- (jint)indexedTermPrefixLengthWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)priorTerm
                               withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)indexedTerm {
  jint idxTermOffset = ((OrgApacheLuceneUtilBytesRef *) nil_chk(indexedTerm))->offset_;
  jint priorTermOffset = ((OrgApacheLuceneUtilBytesRef *) nil_chk(priorTerm))->offset_;
  jint limit = JavaLangMath_minWithInt_withInt_(priorTerm->length_, indexedTerm->length_);
  for (jint byteIdx = 0; byteIdx < limit; byteIdx++) {
    if (IOSByteArray_Get(nil_chk(priorTerm->bytes_), priorTermOffset + byteIdx) != IOSByteArray_Get(indexedTerm->bytes_, idxTermOffset + byteIdx)) {
      return byteIdx + 1;
    }
  }
  return JavaLangMath_minWithInt_withInt_(1 + priorTerm->length_, indexedTerm->length_);
}

- (void)close {
  if (out_ != nil) {
    @try {
      jlong dirStart = [out_ getFilePointer];
      jint fieldCount = [((id<JavaUtilList>) nil_chk(fields_)) size];
      jint nonNullFieldCount = 0;
      for (jint i = 0; i < fieldCount; i++) {
        OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *field = [fields_ getWithInt:i];
        if (((OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *) nil_chk(field))->fst_ != nil) {
          nonNullFieldCount++;
        }
      }
      [out_ writeVIntWithInt:nonNullFieldCount];
      for (jint i = 0; i < fieldCount; i++) {
        OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *field = [fields_ getWithInt:i];
        if (((OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *) nil_chk(field))->fst_ != nil) {
          [out_ writeVIntWithInt:((OrgApacheLuceneIndexFieldInfo *) nil_chk(field->fieldInfo_))->number_];
          [out_ writeVLongWithLong:field->indexStart_];
        }
      }
      OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_writeTrailerWithLong_(self, dirStart);
      OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(out_);
    }
    @finally {
      [out_ close];
      JreStrongAssign(&out_, nil);
    }
  }
}

- (void)writeTrailerWithLong:(jlong)dirStart {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_writeTrailerWithLong_(self, dirStart);
}

- (void)dealloc {
  RELEASE_(out_);
  RELEASE_(fields_);
  RELEASE_(fieldInfos_);
  RELEASE_(policy_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexSegmentWriteState:withOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector:", "VariableGapTermsIndexWriter", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "addFieldWithOrgApacheLuceneIndexFieldInfo:withLong:", "addField", "Lorg.apache.lucene.codecs.blockterms.TermsIndexWriterBase$FieldWriter;", 0x1, "Ljava.io.IOException;", NULL },
    { "indexedTermPrefixLengthWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:", "indexedTermPrefixLength", "I", 0x4, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "writeTrailerWithLong:", "writeTrailer", "V", 0x2, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "out_", NULL, 0x4, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "TERMS_INDEX_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_TERMS_INDEX_EXTENSION_, NULL, .constantValue.asLong = 0 },
    { "CODEC_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "VERSION_START", "VERSION_START", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_VERSION_START },
    { "VERSION_CURRENT", "VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_VERSION_CURRENT },
    { "fields_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/codecs/blockterms/VariableGapTermsIndexWriter$FSTFieldWriter;>;", .constantValue.asLong = 0 },
    { "fieldInfos_", NULL, 0x12, "Lorg.apache.lucene.index.FieldInfos;", NULL, NULL, .constantValue.asLong = 0 },
    { "policy_", NULL, 0x12, "Lorg.apache.lucene.codecs.blockterms.VariableGapTermsIndexWriter$IndexTermSelector;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.blockterms.VariableGapTermsIndexWriter$IndexTermSelector;", "Lorg.apache.lucene.codecs.blockterms.VariableGapTermsIndexWriter$EveryNTermSelector;", "Lorg.apache.lucene.codecs.blockterms.VariableGapTermsIndexWriter$EveryNOrDocFreqTermSelector;", "Lorg.apache.lucene.codecs.blockterms.VariableGapTermsIndexWriter$FSTFieldWriter;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter = { 2, "VariableGapTermsIndexWriter", "org.apache.lucene.codecs.blockterms", NULL, 0x1, 5, methods, 8, fields, 0, NULL, 4, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter;
}

@end

void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *self, OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *policy) {
  OrgApacheLuceneCodecsBlocktermsTermsIndexWriterBase_init(self);
  JreStrongAssignAndConsume(&self->fields_, new_JavaUtilArrayList_init());
  NSString *indexFileName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_))->name_, state->segmentSuffix_, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_TERMS_INDEX_EXTENSION_);
  JreStrongAssign(&self->out_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) createOutputWithNSString:indexFileName withOrgApacheLuceneStoreIOContext:state->context_]);
  jboolean success = NO;
  @try {
    JreStrongAssign(&self->fieldInfos_, state->fieldInfos_);
    JreStrongAssign(&self->policy_, policy);
    OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(self->out_, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_CODEC_NAME_, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    success = YES;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ self->out_ } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *new_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_(OrgApacheLuceneIndexSegmentWriteState *state, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *policy) {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *self = [OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter alloc];
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_initWithOrgApacheLuceneIndexSegmentWriteState_withOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_(self, state, policy);
  return self;
}

void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_writeTrailerWithLong_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *self, jlong dirStart) {
  [((OrgApacheLuceneStoreIndexOutput *) nil_chk(self->out_)) writeLongWithLong:dirStart];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter)

@implementation OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector

- (jboolean)isIndexTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                    withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)newFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (instancetype)init {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "isIndexTermWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneCodecsTermStats:", "isIndexTerm", "Z", 0x401, NULL, NULL },
    { "newFieldWithOrgApacheLuceneIndexFieldInfo:", "newField", "V", 0x401, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector = { 2, "IndexTermSelector", "org.apache.lucene.codecs.blockterms", "VariableGapTermsIndexWriter", 0x409, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector;
}

@end

void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_init(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector)

@implementation OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector

- (instancetype)initWithInt:(jint)interval {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector_initWithInt_(self, interval);
  return self;
}

- (jboolean)isIndexTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                    withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats {
  if (count_ >= interval_) {
    count_ = 1;
    return YES;
  }
  else {
    count_++;
    return NO;
  }
}

- (void)newFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  count_ = interval_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:", "EveryNTermSelector", NULL, 0x1, NULL, NULL },
    { "isIndexTermWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneCodecsTermStats:", "isIndexTerm", "Z", 0x1, NULL, NULL },
    { "newFieldWithOrgApacheLuceneIndexFieldInfo:", "newField", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "count_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "interval_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector = { 2, "EveryNTermSelector", "org.apache.lucene.codecs.blockterms", "VariableGapTermsIndexWriter", 0x19, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector;
}

@end

void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector_initWithInt_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector *self, jint interval) {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_init(self);
  self->interval_ = interval;
  self->count_ = interval;
}

OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector *new_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector_initWithInt_(jint interval) {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector *self = [OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector alloc];
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector_initWithInt_(self, interval);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNTermSelector)

@implementation OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector

- (instancetype)initWithInt:(jint)docFreqThresh
                    withInt:(jint)interval {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector_initWithInt_withInt_(self, docFreqThresh, interval);
  return self;
}

- (jboolean)isIndexTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                    withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats {
  if (((OrgApacheLuceneCodecsTermStats *) nil_chk(stats))->docFreq_ >= docFreqThresh_ || count_ >= interval_) {
    count_ = 1;
    return YES;
  }
  else {
    count_++;
    return NO;
  }
}

- (void)newFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  count_ = interval_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withInt:", "EveryNOrDocFreqTermSelector", NULL, 0x1, NULL, NULL },
    { "isIndexTermWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneCodecsTermStats:", "isIndexTerm", "Z", 0x1, NULL, NULL },
    { "newFieldWithOrgApacheLuceneIndexFieldInfo:", "newField", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "count_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "docFreqThresh_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "interval_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector = { 2, "EveryNOrDocFreqTermSelector", "org.apache.lucene.codecs.blockterms", "VariableGapTermsIndexWriter", 0x19, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector;
}

@end

void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector_initWithInt_withInt_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector *self, jint docFreqThresh, jint interval) {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector_init(self);
  self->interval_ = interval;
  self->docFreqThresh_ = docFreqThresh;
  self->count_ = interval;
}

OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector *new_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector_initWithInt_withInt_(jint docFreqThresh, jint interval) {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector *self = [OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector alloc];
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector_initWithInt_withInt_(self, docFreqThresh, interval);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_EveryNOrDocFreqTermSelector)

@implementation OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter

- (instancetype)initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter:(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *)outer$
                                                 withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
                                                                          withLong:(jlong)termsFilePointer {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(self, outer$, fieldInfo, termsFilePointer);
  return self;
}

- (jboolean)checkIndexTermWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
                       withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats {
  if ([((OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_IndexTermSelector *) nil_chk(this$1_->policy_)) isIndexTermWithOrgApacheLuceneUtilBytesRef:text withOrgApacheLuceneCodecsTermStats:stats] || first_) {
    first_ = NO;
    return YES;
  }
  else {
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(lastTerm_)) copyBytesWithOrgApacheLuceneUtilBytesRef:text];
    return NO;
  }
}

- (void)addWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text
        withOrgApacheLuceneCodecsTermStats:(OrgApacheLuceneCodecsTermStats *)stats
                                  withLong:(jlong)termsFilePointer {
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(text))->length_ == 0) {
    JreAssert((termsFilePointer == startTermsFilePointer_), (@"org/apache/lucene/codecs/blockterms/VariableGapTermsIndexWriter.java:266 condition failed: assert termsFilePointer == startTermsFilePointer;"));
    return;
  }
  jint lengthSave = text->length_;
  text->length_ = [this$1_ indexedTermPrefixLengthWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(lastTerm_)) get] withOrgApacheLuceneUtilBytesRef:text];
  @try {
    [((OrgApacheLuceneUtilFstBuilder *) nil_chk(fstBuilder_)) addWithOrgApacheLuceneUtilIntsRef:OrgApacheLuceneUtilFstUtil_toIntsRefWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilIntsRefBuilder_(text, scratchIntsRef_) withId:JavaLangLong_valueOfWithLong_(termsFilePointer)];
  }
  @finally {
    text->length_ = lengthSave;
  }
  [lastTerm_ copyBytesWithOrgApacheLuceneUtilBytesRef:text];
}

- (void)finishWithLong:(jlong)termsFilePointer {
  JreStrongAssign(&fst_, [((OrgApacheLuceneUtilFstBuilder *) nil_chk(fstBuilder_)) finish]);
  if (fst_ != nil) {
    [fst_ saveWithOrgApacheLuceneStoreDataOutput:this$1_->out_];
  }
}

- (void)dealloc {
  RELEASE_(this$1_);
  RELEASE_(fstBuilder_);
  RELEASE_(fstOutputs_);
  RELEASE_(fieldInfo_);
  RELEASE_(fst_);
  RELEASE_(lastTerm_);
  RELEASE_(scratchIntsRef_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter:withOrgApacheLuceneIndexFieldInfo:withLong:", "FSTFieldWriter", NULL, 0x1, NULL, NULL },
    { "checkIndexTermWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneCodecsTermStats:", "checkIndexTerm", "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "addWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneCodecsTermStats:withLong:", "add", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "finishWithLong:", "finish", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$1_", NULL, 0x1012, "Lorg.apache.lucene.codecs.blockterms.VariableGapTermsIndexWriter;", NULL, NULL, .constantValue.asLong = 0 },
    { "fstBuilder_", NULL, 0x12, "Lorg.apache.lucene.util.fst.Builder;", NULL, "Lorg/apache/lucene/util/fst/Builder<Ljava/lang/Long;>;", .constantValue.asLong = 0 },
    { "fstOutputs_", NULL, 0x12, "Lorg.apache.lucene.util.fst.PositiveIntOutputs;", NULL, NULL, .constantValue.asLong = 0 },
    { "startTermsFilePointer_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldInfo_", NULL, 0x10, "Lorg.apache.lucene.index.FieldInfo;", NULL, NULL, .constantValue.asLong = 0 },
    { "fst_", NULL, 0x0, "Lorg.apache.lucene.util.fst.FST;", NULL, "Lorg/apache/lucene/util/fst/FST<Ljava/lang/Long;>;", .constantValue.asLong = 0 },
    { "indexStart_", NULL, 0x10, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "lastTerm_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "first_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "scratchIntsRef_", NULL, 0x12, "Lorg.apache.lucene.util.IntsRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter = { 2, "FSTFieldWriter", "org.apache.lucene.codecs.blockterms", "VariableGapTermsIndexWriter", 0x2, 4, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter;
}

@end

void OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *self, OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong termsFilePointer) {
  JreStrongAssign(&self->this$1_, outer$);
  OrgApacheLuceneCodecsBlocktermsTermsIndexWriterBase_FieldWriter_initWithOrgApacheLuceneCodecsBlocktermsTermsIndexWriterBase_(self, outer$);
  JreStrongAssignAndConsume(&self->lastTerm_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  self->first_ = YES;
  JreStrongAssignAndConsume(&self->scratchIntsRef_, new_OrgApacheLuceneUtilIntsRefBuilder_init());
  JreStrongAssign(&self->fieldInfo_, fieldInfo);
  JreStrongAssign(&self->fstOutputs_, OrgApacheLuceneUtilFstPositiveIntOutputs_getSingleton());
  JreStrongAssignAndConsume(&self->fstBuilder_, new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_(JreLoadStatic(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum, BYTE1), self->fstOutputs_));
  self->indexStart_ = [((OrgApacheLuceneStoreIndexOutput *) nil_chk(outer$->out_)) getFilePointer];
  [self->fstBuilder_ addWithOrgApacheLuceneUtilIntsRef:[new_OrgApacheLuceneUtilIntsRef_init() autorelease] withId:JavaLangLong_valueOfWithLong_(termsFilePointer)];
  self->startTermsFilePointer_ = termsFilePointer;
}

OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *new_OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter *outer$, OrgApacheLuceneIndexFieldInfo *fieldInfo, jlong termsFilePointer) {
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter *self = [OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter alloc];
  OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter_initWithOrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_withOrgApacheLuceneIndexFieldInfo_withLong_(self, outer$, fieldInfo, termsFilePointer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktermsVariableGapTermsIndexWriter_FSTFieldWriter)
