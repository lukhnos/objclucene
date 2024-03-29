//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionPostingsWriter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/codecs/BlockTermState.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/PushPostingsWriterBase.h"
#include "org/apache/lucene/codecs/idversion/IDVersionPostingsFormat.h"
#include "org/apache/lucene/codecs/idversion/IDVersionPostingsWriter.h"
#include "org/apache/lucene/codecs/idversion/IDVersionTermState.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexOptions.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/idversion/IDVersionPostingsWriter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter () {
 @public
  jint lastPosition_;
  jlong lastVersion_;
  id<OrgApacheLuceneUtilBits> liveDocs_;
  jlong lastEncodedVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter, liveDocs_, id<OrgApacheLuceneUtilBits>)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter)

NSString *OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_TERMS_CODEC = @"IDVersionPostingsWriterTerms";
OrgApacheLuceneCodecsIdversionIDVersionTermState *OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_emptyState;

@implementation OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter

+ (NSString *)TERMS_CODEC {
  return OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_TERMS_CODEC;
}

+ (jint)VERSION_START {
  return OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_VERSION_START;
}

+ (jint)VERSION_CURRENT {
  return OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_VERSION_CURRENT;
}

+ (OrgApacheLuceneCodecsIdversionIDVersionTermState *)emptyState {
  return OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_emptyState;
}

- (instancetype)initPackagePrivateWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs {
  OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_initPackagePrivateWithOrgApacheLuceneUtilBits_(self, liveDocs);
  return self;
}

- (OrgApacheLuceneCodecsBlockTermState *)newTermState {
  return create_OrgApacheLuceneCodecsIdversionIDVersionTermState_initPackagePrivate();
}

- (void)init__WithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)termsOut
        withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state {
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(termsOut, OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_TERMS_CODEC, OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_VERSION_CURRENT, [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_)) getId], state->segmentSuffix_);
}

- (jint)setFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  [super setFieldWithOrgApacheLuceneIndexFieldInfo:fieldInfo];
  if ([((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo)) getIndexOptions] != JreLoadEnum(OrgApacheLuceneIndexIndexOptions, DOCS_AND_FREQS_AND_POSITIONS)) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"field must be index using IndexOptions.DOCS_AND_FREQS_AND_POSITIONS");
  }
  if ([fieldInfo hasVectors]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"field cannot index term vectors: CheckIndex will report this as index corruption");
  }
  JreStrongAssign(&lastState_, OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_emptyState);
  return 0;
}

- (void)startTerm {
  lastDocID_ = -1;
}

- (void)startDocWithInt:(jint)docID
                withInt:(jint)termDocFreq {
  if (liveDocs_ != nil && [liveDocs_ getWithInt:docID] == false) {
    return;
  }
  if (lastDocID_ != -1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"term appears in more than one document");
  }
  if (termDocFreq != 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"term appears more than once in the document");
  }
  lastDocID_ = docID;
  lastPosition_ = -1;
  lastVersion_ = -1;
}

- (void)addPositionWithInt:(jint)position
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)payload
                   withInt:(jint)startOffset
                   withInt:(jint)endOffset {
  if (lastDocID_ == -1) {
    return;
  }
  if (lastPosition_ != -1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"term appears more than once in document");
  }
  lastPosition_ = position;
  if (payload == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"token doens't have a payload");
  }
  if (payload->length_ != 8) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$IC", @"payload.length != 8 (got ", payload->length_, ')'));
  }
  lastVersion_ = OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_bytesToLongWithOrgApacheLuceneUtilBytesRef_(payload);
  if (lastVersion_ < OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_MIN_VERSION) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J$J$@C", @"version must be >= MIN_VERSION=", OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_MIN_VERSION, @" (got: ", lastVersion_, @"; payload=", payload, ')'));
  }
  if (lastVersion_ > OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_MAX_VERSION) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J$J$@C", @"version must be <= MAX_VERSION=", OrgApacheLuceneCodecsIdversionIDVersionPostingsFormat_MAX_VERSION, @" (got: ", lastVersion_, @"; payload=", payload, ')'));
  }
}

- (void)finishDoc {
  if (lastDocID_ == -1) {
    return;
  }
  if (lastPosition_ == -1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"missing addPosition");
  }
}

- (void)finishTermWithOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)_state {
  if (lastDocID_ == -1) {
    return;
  }
  OrgApacheLuceneCodecsIdversionIDVersionTermState *state = (OrgApacheLuceneCodecsIdversionIDVersionTermState *) cast_chk(_state, [OrgApacheLuceneCodecsIdversionIDVersionTermState class]);
  JreAssert(((OrgApacheLuceneCodecsIdversionIDVersionTermState *) nil_chk(state))->docFreq_ > 0, @"org/apache/lucene/codecs/idversion/IDVersionPostingsWriter.java:146 condition failed: assert state.docFreq > 0;");
  state->docID_ = lastDocID_;
  state->idVersion_ = lastVersion_;
}

- (void)encodeTermWithLongArray:(IOSLongArray *)longs
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
withOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo
withOrgApacheLuceneCodecsBlockTermState:(OrgApacheLuceneCodecsBlockTermState *)_state
                    withBoolean:(jboolean)absolute {
  OrgApacheLuceneCodecsIdversionIDVersionTermState *state = (OrgApacheLuceneCodecsIdversionIDVersionTermState *) cast_chk(_state, [OrgApacheLuceneCodecsIdversionIDVersionTermState class]);
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:((OrgApacheLuceneCodecsIdversionIDVersionTermState *) nil_chk(state))->docID_];
  if (absolute) {
    [outArg writeVLongWithLong:state->idVersion_];
  }
  else {
    jlong delta = state->idVersion_ - lastEncodedVersion_;
    [outArg writeZLongWithLong:delta];
  }
  lastEncodedVersion_ = state->idVersion_;
}

- (void)close {
}

- (void)dealloc {
  RELEASE_(lastState_);
  RELEASE_(liveDocs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsBlockTermState;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "I", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneUtilBits:);
  methods[1].selector = @selector(newTermState);
  methods[2].selector = @selector(init__WithOrgApacheLuceneStoreIndexOutput:withOrgApacheLuceneIndexSegmentWriteState:);
  methods[3].selector = @selector(setFieldWithOrgApacheLuceneIndexFieldInfo:);
  methods[4].selector = @selector(startTerm);
  methods[5].selector = @selector(startDocWithInt:withInt:);
  methods[6].selector = @selector(addPositionWithInt:withOrgApacheLuceneUtilBytesRef:withInt:withInt:);
  methods[7].selector = @selector(finishDoc);
  methods[8].selector = @selector(finishTermWithOrgApacheLuceneCodecsBlockTermState:);
  methods[9].selector = @selector(encodeTermWithLongArray:withOrgApacheLuceneStoreDataOutput:withOrgApacheLuceneIndexFieldInfo:withOrgApacheLuceneCodecsBlockTermState:withBoolean:);
  methods[10].selector = @selector(close);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TERMS_CODEC", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 14, -1, -1 },
    { "VERSION_START", "I", .constantValue.asInt = OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_VERSION_START, 0x18, -1, -1, -1, -1 },
    { "VERSION_CURRENT", "I", .constantValue.asInt = OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_VERSION_CURRENT, 0x18, -1, -1, -1, -1 },
    { "emptyState", "LOrgApacheLuceneCodecsIdversionIDVersionTermState;", .constantValue.asLong = 0, 0x18, -1, 15, -1, -1 },
    { "lastState_", "LOrgApacheLuceneCodecsIdversionIDVersionTermState;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastDocID_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "lastPosition_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastVersion_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "liveDocs_", "LOrgApacheLuceneUtilBits;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "lastEncodedVersion_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilBits;", "init", "LOrgApacheLuceneStoreIndexOutput;LOrgApacheLuceneIndexSegmentWriteState;", "LJavaIoIOException;", "setField", "LOrgApacheLuceneIndexFieldInfo;", "startDoc", "II", "addPosition", "ILOrgApacheLuceneUtilBytesRef;II", "finishTerm", "LOrgApacheLuceneCodecsBlockTermState;", "encodeTerm", "[JLOrgApacheLuceneStoreDataOutput;LOrgApacheLuceneIndexFieldInfo;LOrgApacheLuceneCodecsBlockTermState;Z", &OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_TERMS_CODEC, &OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_emptyState };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter = { "IDVersionPostingsWriter", "org.apache.lucene.codecs.idversion", ptrTable, methods, fields, 7, 0x10, 11, 10, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_emptyState, new_OrgApacheLuceneCodecsIdversionIDVersionTermState_initPackagePrivate());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter)
  }
}

@end

void OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_initPackagePrivateWithOrgApacheLuceneUtilBits_(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter *self, id<OrgApacheLuceneUtilBits> liveDocs) {
  OrgApacheLuceneCodecsPushPostingsWriterBase_init(self);
  JreStrongAssign(&self->liveDocs_, liveDocs);
}

OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter *new_OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_initPackagePrivateWithOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> liveDocs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter, initPackagePrivateWithOrgApacheLuceneUtilBits_, liveDocs)
}

OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter *create_OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter_initPackagePrivateWithOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> liveDocs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter, initPackagePrivateWithOrgApacheLuceneUtilBits_, liveDocs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsIdversionIDVersionPostingsWriter)
