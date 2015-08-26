//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/rangetree/RangeTreeDocValuesConsumer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/Integer.h"
#include "java/lang/Iterable.h"
#include "java/lang/Long.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/CodecUtil.h"
#include "org/apache/lucene/codecs/DocValuesConsumer.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexFileNames.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentWriteState.h"
#include "org/apache/lucene/rangetree/RangeTreeDocValuesConsumer.h"
#include "org/apache/lucene/rangetree/RangeTreeDocValuesFormat.h"
#include "org/apache/lucene/rangetree/RangeTreeWriter.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/store/IndexOutput.h"
#include "org/apache/lucene/util/IOUtils.h"

@implementation OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer

- (instancetype)initWithOrgApacheLuceneCodecsDocValuesConsumer:(OrgApacheLuceneCodecsDocValuesConsumer *)delegate
                     withOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                                                       withInt:(jint)maxPointsInLeafNode
                                                       withInt:(jint)maxPointsSortInHeap {
  OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer_initWithOrgApacheLuceneCodecsDocValuesConsumer_withOrgApacheLuceneIndexSegmentWriteState_withInt_withInt_(self, delegate, state, maxPointsInLeafNode, maxPointsSortInHeap);
  return self;
}

- (void)close {
  jboolean success = NO;
  @try {
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(out_);
    success = YES;
  }
  @finally {
    if (success) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ delegate_, out_ } count:2 type:JavaIoCloseable_class_()]);
    }
    else {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ delegate_, out_ } count:2 type:JavaIoCloseable_class_()]);
    }
  }
  NSString *metaFileName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state_))->segmentInfo_))->name_, state_->segmentSuffix_, OrgApacheLuceneRangetreeRangeTreeDocValuesFormat_META_EXTENSION_);
  OrgApacheLuceneStoreIndexOutput *metaOut = [((OrgApacheLuceneStoreDirectory *) nil_chk(state_->directory_)) createOutputWithNSString:metaFileName withOrgApacheLuceneStoreIOContext:state_->context_];
  success = NO;
  @try {
    OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(metaOut, OrgApacheLuceneRangetreeRangeTreeDocValuesFormat_META_CODEC_NAME_, OrgApacheLuceneRangetreeRangeTreeDocValuesFormat_META_VERSION_CURRENT, [state_->segmentInfo_ getId], state_->segmentSuffix_);
    [((OrgApacheLuceneStoreIndexOutput *) nil_chk(metaOut)) writeVIntWithInt:[((id<JavaUtilMap>) nil_chk(fieldIndexFPs_)) size]];
    for (id<JavaUtilMap_Entry> __strong ent in nil_chk([fieldIndexFPs_ entrySet])) {
      [metaOut writeVIntWithInt:[((JavaLangInteger *) nil_chk([((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey])) intValue]];
      [metaOut writeVLongWithLong:[((JavaLangLong *) nil_chk([ent getValue])) longLongValue]];
    }
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(metaOut);
    success = YES;
  }
  @finally {
    if (success) {
      OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ metaOut } count:1 type:JavaIoCloseable_class_()]);
    }
    else {
      OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ metaOut } count:1 type:JavaIoCloseable_class_()]);
    }
  }
}

- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                          withJavaLangIterable:(id<JavaLangIterable>)docToValueCount
                                          withJavaLangIterable:(id<JavaLangIterable>)values {
  [((OrgApacheLuceneCodecsDocValuesConsumer *) nil_chk(delegate_)) addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:field withJavaLangIterable:docToValueCount withJavaLangIterable:values];
  OrgApacheLuceneRangetreeRangeTreeWriter *writer = [new_OrgApacheLuceneRangetreeRangeTreeWriter_initWithInt_withInt_(maxPointsInLeafNode_, maxPointsSortInHeap_) autorelease];
  id<JavaUtilIterator> valueIt = [((id<JavaLangIterable>) nil_chk(values)) iterator];
  id<JavaUtilIterator> valueCountIt = [((id<JavaLangIterable>) nil_chk(docToValueCount)) iterator];
  for (jint docID = 0; docID < [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state_))->segmentInfo_)) maxDoc]; docID++) {
    JreAssert(([((id<JavaUtilIterator>) nil_chk(valueCountIt)) hasNext]), (@"org/apache/lucene/rangetree/RangeTreeDocValuesConsumer.java:99 condition failed: assert valueCountIt.hasNext();"));
    jint count = [((NSNumber *) nil_chk([valueCountIt next])) intValue];
    for (jint i = 0; i < count; i++) {
      JreAssert(([((id<JavaUtilIterator>) nil_chk(valueIt)) hasNext]), (@"org/apache/lucene/rangetree/RangeTreeDocValuesConsumer.java:102 condition failed: assert valueIt.hasNext();"));
      [writer addWithLong:[((NSNumber *) nil_chk([valueIt next])) longLongValue] withInt:docID];
    }
  }
  jlong indexStartFP = [writer finishWithOrgApacheLuceneStoreIndexOutput:out_];
  [((id<JavaUtilMap>) nil_chk(fieldIndexFPs_)) putWithId:JavaLangInteger_valueOfWithInt_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(field))->number_) withId:JavaLangLong_valueOfWithLong_(indexStartFP)];
}

- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                    withJavaLangIterable:(id<JavaLangIterable>)values {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"use either SortedNumericDocValuesField or SortedSetDocValuesField") autorelease];
}

- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                   withJavaLangIterable:(id<JavaLangIterable>)values {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"use either SortedNumericDocValuesField or SortedSetDocValuesField") autorelease];
}

- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                   withJavaLangIterable:(id<JavaLangIterable>)values
                                   withJavaLangIterable:(id<JavaLangIterable>)docToOrd {
  @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"use either SortedNumericDocValuesField or SortedSetDocValuesField") autorelease];
}

- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                      withJavaLangIterable:(id<JavaLangIterable>)values
                                      withJavaLangIterable:(id<JavaLangIterable>)docToOrdCount
                                      withJavaLangIterable:(id<JavaLangIterable>)ords {
  [((OrgApacheLuceneCodecsDocValuesConsumer *) nil_chk(delegate_)) addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:field withJavaLangIterable:values withJavaLangIterable:docToOrdCount withJavaLangIterable:ords];
  OrgApacheLuceneRangetreeRangeTreeWriter *writer = [new_OrgApacheLuceneRangetreeRangeTreeWriter_initWithInt_withInt_(maxPointsInLeafNode_, maxPointsSortInHeap_) autorelease];
  id<JavaUtilIterator> docToOrdCountIt = [((id<JavaLangIterable>) nil_chk(docToOrdCount)) iterator];
  id<JavaUtilIterator> ordsIt = [((id<JavaLangIterable>) nil_chk(ords)) iterator];
  for (jint docID = 0; docID < [((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state_))->segmentInfo_)) maxDoc]; docID++) {
    JreAssert(([((id<JavaUtilIterator>) nil_chk(docToOrdCountIt)) hasNext]), (@"org/apache/lucene/rangetree/RangeTreeDocValuesConsumer.java:135 condition failed: assert docToOrdCountIt.hasNext();"));
    jint count = [((NSNumber *) nil_chk([docToOrdCountIt next])) intValue];
    for (jint i = 0; i < count; i++) {
      JreAssert(([((id<JavaUtilIterator>) nil_chk(ordsIt)) hasNext]), (@"org/apache/lucene/rangetree/RangeTreeDocValuesConsumer.java:138 condition failed: assert ordsIt.hasNext();"));
      jlong ord = [((NSNumber *) nil_chk([ordsIt next])) longLongValue];
      [writer addWithLong:ord withInt:docID];
    }
  }
  jlong indexStartFP = [writer finishWithOrgApacheLuceneStoreIndexOutput:out_];
  [((id<JavaUtilMap>) nil_chk(fieldIndexFPs_)) putWithId:JavaLangInteger_valueOfWithInt_(((OrgApacheLuceneIndexFieldInfo *) nil_chk(field))->number_) withId:JavaLangLong_valueOfWithLong_(indexStartFP)];
}

- (void)dealloc {
  RELEASE_(delegate_);
  RELEASE_(out_);
  RELEASE_(fieldIndexFPs_);
  RELEASE_(state_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneCodecsDocValuesConsumer:withOrgApacheLuceneIndexSegmentWriteState:withInt:withInt:", "RangeTreeDocValuesConsumer", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:withJavaLangIterable:withJavaLangIterable:", "addSortedNumericField", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addNumericFieldWithOrgApacheLuceneIndexFieldInfo:withJavaLangIterable:", "addNumericField", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:withJavaLangIterable:", "addBinaryField", "V", 0x1, NULL, NULL },
    { "addSortedFieldWithOrgApacheLuceneIndexFieldInfo:withJavaLangIterable:withJavaLangIterable:", "addSortedField", "V", 0x1, NULL, NULL },
    { "addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:withJavaLangIterable:withJavaLangIterable:withJavaLangIterable:", "addSortedSetField", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", NULL, 0x10, "Lorg.apache.lucene.codecs.DocValuesConsumer;", NULL, NULL, .constantValue.asLong = 0 },
    { "maxPointsInLeafNode_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxPointsSortInHeap_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "out_", NULL, 0x10, "Lorg.apache.lucene.store.IndexOutput;", NULL, NULL, .constantValue.asLong = 0 },
    { "fieldIndexFPs_", NULL, 0x10, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;", .constantValue.asLong = 0 },
    { "state_", NULL, 0x10, "Lorg.apache.lucene.index.SegmentWriteState;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer = { 2, "RangeTreeDocValuesConsumer", "org.apache.lucene.rangetree", NULL, 0x0, 7, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer;
}

@end

void OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer_initWithOrgApacheLuceneCodecsDocValuesConsumer_withOrgApacheLuceneIndexSegmentWriteState_withInt_withInt_(OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer *self, OrgApacheLuceneCodecsDocValuesConsumer *delegate, OrgApacheLuceneIndexSegmentWriteState *state, jint maxPointsInLeafNode, jint maxPointsSortInHeap) {
  OrgApacheLuceneCodecsDocValuesConsumer_init(self);
  JreStrongAssignAndConsume(&self->fieldIndexFPs_, new_JavaUtilHashMap_init());
  OrgApacheLuceneRangetreeRangeTreeWriter_verifyParamsWithInt_withInt_(maxPointsInLeafNode, maxPointsSortInHeap);
  JreStrongAssign(&self->delegate_, delegate);
  self->maxPointsInLeafNode_ = maxPointsInLeafNode;
  self->maxPointsSortInHeap_ = maxPointsSortInHeap;
  JreStrongAssign(&self->state_, state);
  NSString *datFileName = OrgApacheLuceneIndexIndexFileNames_segmentFileNameWithNSString_withNSString_withNSString_(((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentWriteState *) nil_chk(state))->segmentInfo_))->name_, state->segmentSuffix_, OrgApacheLuceneRangetreeRangeTreeDocValuesFormat_DATA_EXTENSION_);
  JreStrongAssign(&self->out_, [((OrgApacheLuceneStoreDirectory *) nil_chk(state->directory_)) createOutputWithNSString:datFileName withOrgApacheLuceneStoreIOContext:state->context_]);
  OrgApacheLuceneCodecsCodecUtil_writeIndexHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_withByteArray_withNSString_(self->out_, OrgApacheLuceneRangetreeRangeTreeDocValuesFormat_DATA_CODEC_NAME_, OrgApacheLuceneRangetreeRangeTreeDocValuesFormat_DATA_VERSION_CURRENT, [state->segmentInfo_ getId], state->segmentSuffix_);
}

OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer *new_OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer_initWithOrgApacheLuceneCodecsDocValuesConsumer_withOrgApacheLuceneIndexSegmentWriteState_withInt_withInt_(OrgApacheLuceneCodecsDocValuesConsumer *delegate, OrgApacheLuceneIndexSegmentWriteState *state, jint maxPointsInLeafNode, jint maxPointsSortInHeap) {
  OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer *self = [OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer alloc];
  OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer_initWithOrgApacheLuceneCodecsDocValuesConsumer_withOrgApacheLuceneIndexSegmentWriteState_withInt_withInt_(self, delegate, state, maxPointsInLeafNode, maxPointsSortInHeap);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneRangetreeRangeTreeDocValuesConsumer)
