//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/VersionBlockTreeTermsReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/PostingsReaderBase.h"
#include "org/apache/lucene/codecs/idversion/VersionBlockTreeTermsReader.h"
#include "org/apache/lucene/codecs/idversion/VersionBlockTreeTermsWriter.h"
#include "org/apache/lucene/codecs/idversion/VersionFieldReader.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/fst/PairOutputs.h"

@interface OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader () {
 @public
  JavaUtilTreeMap *fields_;
}

+ (OrgApacheLuceneUtilBytesRef *)readBytesRefWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg;

- (void)seekDirWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader, fields_, JavaUtilTreeMap *)

__attribute__((unused)) static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *inArg);

__attribute__((unused)) static void OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *self, OrgApacheLuceneStoreIndexInput *input);

@implementation OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader

- (instancetype)initWithOrgApacheLuceneCodecsPostingsReaderBase:(OrgApacheLuceneCodecsPostingsReaderBase *)postingsReader
                       withOrgApacheLuceneIndexSegmentReadState:(OrgApacheLuceneIndexSegmentReadState *)state {
  OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(self, postingsReader, state);
  return self;
}

+ (OrgApacheLuceneUtilBytesRef *)readBytesRefWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg {
  return OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(inArg);
}

- (void)seekDirWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)input {
  OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_(self, input);
}

- (void)close {
  @try {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ in_, postingsReader_ } count:2 type:JavaIoCloseable_class_()]);
  }
  @finally {
    [((JavaUtilTreeMap *) nil_chk(fields_)) clear];
  }
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilSet>) nil_chk(JavaUtilCollections_unmodifiableSetWithJavaUtilSet_([((JavaUtilTreeMap *) nil_chk(fields_)) keySet]))) iterator];
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  JreAssert((field != nil), (@"org/apache/lucene/codecs/idversion/VersionBlockTreeTermsReader.java:201 condition failed: assert field != null;"));
  return [((JavaUtilTreeMap *) nil_chk(fields_)) getWithId:field];
}

- (jint)size {
  return [((JavaUtilTreeMap *) nil_chk(fields_)) size];
}

- (jlong)ramBytesUsed {
  jlong sizeInBytes = [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader_)) ramBytesUsed];
  for (OrgApacheLuceneCodecsIdversionVersionFieldReader * __strong reader in nil_chk([((JavaUtilTreeMap *) nil_chk(fields_)) values])) {
    sizeInBytes += [((OrgApacheLuceneCodecsIdversionVersionFieldReader *) nil_chk(reader)) ramBytesUsed];
  }
  return sizeInBytes;
}

- (void)checkIntegrity {
  OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(in_);
  [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader_)) checkIntegrity];
}

- (NSString *)description {
  return JreStrcat("$$I$$C", [[self getClass] getSimpleName], @"(fields=", [((JavaUtilTreeMap *) nil_chk(fields_)) size], @",delegate=", [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader_)) description], ')');
}

- (void)dealloc {
  RELEASE_(in_);
  RELEASE_(postingsReader_);
  RELEASE_(fields_);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneCodecsPostingsReaderBase:withOrgApacheLuceneIndexSegmentReadState:", "VersionBlockTreeTermsReader", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "readBytesRefWithOrgApacheLuceneStoreIndexInput:", "readBytesRef", "Lorg.apache.lucene.util.BytesRef;", 0xa, "Ljava.io.IOException;", NULL },
    { "seekDirWithOrgApacheLuceneStoreIndexInput:", "seekDir", "V", 0x2, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x1, "Ljava.io.IOException;", NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "checkIntegrity", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.IndexInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "postingsReader_", NULL, 0x10, "Lorg.apache.lucene.codecs.PostingsReaderBase;", NULL, NULL, .constantValue.asLong = 0 },
    { "fields_", NULL, 0x12, "Ljava.util.TreeMap;", NULL, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/apache/lucene/codecs/idversion/VersionFieldReader;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader = { 2, "VersionBlockTreeTermsReader", "org.apache.lucene.codecs.idversion", NULL, 0x11, 10, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader;
}

@end

void OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *self, OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state) {
  OrgApacheLuceneCodecsFieldsProducer_init(self);
  JreStrongAssignAndConsume(&self->fields_, new_JavaUtilTreeMap_init());
  JreStrongAssign(&self->postingsReader_, postingsReader);
  NSString *termsFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentReadState *) nil_chk(state))->segmentInfo_))->name_, state->segmentSuffix_, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_EXTENSION_);
  JreStrongAssign(&self->in_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) openInputWithNSString:termsFile withOrgApacheLuceneStoreIOContext:state->context_]);
  jboolean success = NO;
  OrgApacheLuceneStoreIndexInput *indexIn = nil;
  @try {
    jint termsVersion = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(self->in_, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_CODEC_NAME_, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_VERSION_START, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    NSString *indexFile = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(state->segmentInfo_->name_, state->segmentSuffix_, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_INDEX_EXTENSION_);
    indexIn = [state->directory_ openInputWithNSString:indexFile withOrgApacheLuceneStoreIOContext:state->context_];
    jint indexVersion = OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_withByteArray_withNSString_(indexIn, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_TERMS_INDEX_CODEC_NAME_, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_VERSION_START, OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
    if (indexVersion != termsVersion) {
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$@CIC@CI", @"mixmatched version files: ", self->in_, '=', termsVersion, ',', indexIn, '=', indexVersion), indexIn) autorelease];
    }
    OrgApacheLuceneCodecsCodecUtil_checksumEntireFileWithOrgApacheLuceneStoreIndexInput_(indexIn);
    [((OrgApacheLuceneCodecsPostingsReaderBase *) nil_chk(postingsReader)) init__WithOrgApacheLuceneStoreIndexInput:self->in_ withOrgApacheLuceneIndexSegmentReadState:state];
    OrgApacheLuceneCodecsCodecUtil_retrieveChecksumWithOrgApacheLuceneStoreIndexInput_(self->in_);
    OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_(self, self->in_);
    OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_(self, indexIn);
    jint numFields = [((OrgApacheLuceneStoreIndexInput *) nil_chk(self->in_)) readVInt];
    if (numFields < 0) {
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I", @"invalid numFields: ", numFields), self->in_) autorelease];
    }
    for (jint i = 0; i < numFields; i++) {
      jint field = [self->in_ readVInt];
      jlong numTerms = [self->in_ readVLong];
      JreAssert((numTerms >= 0), (@"org/apache/lucene/codecs/idversion/VersionBlockTreeTermsReader.java:118 condition failed: assert numTerms >= 0;"));
      jint numBytes = [self->in_ readVInt];
      OrgApacheLuceneUtilBytesRef *code = [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_([IOSByteArray arrayWithLength:numBytes]) autorelease];
      [self->in_ readBytesWithByteArray:code->bytes_ withInt:0 withInt:numBytes];
      code->length_ = numBytes;
      jlong version_ = [self->in_ readVLong];
      OrgApacheLuceneUtilFstPairOutputs_Pair *rootCode = [((OrgApacheLuceneUtilFstPairOutputs *) nil_chk(JreLoadStatic(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsWriter, FST_OUTPUTS_))) newPairWithId:code withId:JavaLangLong_valueOfWithLong_(version_)];
      OrgApacheLuceneIndexFieldInfo *fieldInfo = [((OrgApacheLuceneIndexFieldInfos *) nil_chk(state->fieldInfos_)) fieldInfoWithInt:field];
      JreAssert((fieldInfo != nil), (JreStrcat("$I", @"field=", field)));
      jlong sumTotalTermFreq = numTerms;
      jlong sumDocFreq = numTerms;
      JreAssert((numTerms <= JavaLangInteger_MAX_VALUE), (@"org/apache/lucene/codecs/idversion/VersionBlockTreeTermsReader.java:129 condition failed: assert numTerms <= Integer.MAX_VALUE;"));
      jint docCount = (jint) numTerms;
      jint longsSize = [self->in_ readVInt];
      OrgApacheLuceneUtilBytesRef *minTerm = OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(self->in_);
      OrgApacheLuceneUtilBytesRef *maxTerm = OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(self->in_);
      if (docCount < 0 || docCount > [state->segmentInfo_ maxDoc]) {
        @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$I$I", @"invalid docCount: ", docCount, @" maxDoc: ", [state->segmentInfo_ maxDoc]), self->in_) autorelease];
      }
      if (sumDocFreq < docCount) {
        @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$J$I", @"invalid sumDocFreq: ", sumDocFreq, @" docCount: ", docCount), self->in_) autorelease];
      }
      if (sumTotalTermFreq != -1 && sumTotalTermFreq < sumDocFreq) {
        @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$J$J", @"invalid sumTotalTermFreq: ", sumTotalTermFreq, @" sumDocFreq: ", sumDocFreq), self->in_) autorelease];
      }
      jlong indexStartFP = [((OrgApacheLuceneStoreIndexInput *) nil_chk(indexIn)) readVLong];
      OrgApacheLuceneCodecsIdversionVersionFieldReader *previous = [self->fields_ putWithId:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_ withId:[new_OrgApacheLuceneCodecsIdversionVersionFieldReader_initWithOrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_withOrgApacheLuceneIndexFieldInfo_withLong_withOrgApacheLuceneUtilFstPairOutputs_Pair_withLong_withLong_withInt_withLong_withInt_withOrgApacheLuceneStoreIndexInput_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self, fieldInfo, numTerms, rootCode, sumTotalTermFreq, sumDocFreq, docCount, indexStartFP, longsSize, indexIn, minTerm, maxTerm) autorelease]];
      if (previous != nil) {
        @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(JreStrcat("$$", @"duplicate field: ", fieldInfo->name_), self->in_) autorelease];
      }
    }
    [((OrgApacheLuceneStoreIndexInput *) nil_chk(indexIn)) close];
    success = YES;
  }
  @finally {
    if (!success) {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ indexIn, self } count:2 type:JavaIoCloseable_class_()]);
    }
  }
}

OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *new_OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(OrgApacheLuceneCodecsPostingsReaderBase *postingsReader, OrgApacheLuceneIndexSegmentReadState *state) {
  OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *self = [OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader alloc];
  OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_initWithOrgApacheLuceneCodecsPostingsReaderBase_withOrgApacheLuceneIndexSegmentReadState_(self, postingsReader, state);
  return self;
}

OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_readBytesRefWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneStoreIndexInput *inArg) {
  OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_initialize();
  OrgApacheLuceneUtilBytesRef *bytes = [new_OrgApacheLuceneUtilBytesRef_init() autorelease];
  bytes->length_ = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readVInt];
  JreStrongAssignAndConsume(&bytes->bytes_, [IOSByteArray newArrayWithLength:bytes->length_]);
  [inArg readBytesWithByteArray:bytes->bytes_ withInt:0 withInt:bytes->length_];
  return bytes;
}

void OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader_seekDirWithOrgApacheLuceneStoreIndexInput_(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader *self, OrgApacheLuceneStoreIndexInput *input) {
  [input seekWithLong:[((OrgApacheLuceneStoreIndexInput *) nil_chk(input)) length] - OrgApacheLuceneCodecsCodecUtil_footerLength() - 8];
  jlong dirOffset = [input readLong];
  [input seekWithLong:dirOffset];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsIdversionVersionBlockTreeTermsReader)
