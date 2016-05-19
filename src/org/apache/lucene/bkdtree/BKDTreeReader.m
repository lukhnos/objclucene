//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/BKDTreeReader.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/bkdtree/BKDTreeReader.h"
#include "org/apache/lucene/bkdtree/BKDTreeWriter.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/store/ByteArrayDataInput.h"
#include "org/apache/lucene/store/IndexInput.h"
#include "org/apache/lucene/util/DocIdSetBuilder.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@class OrgApacheLuceneBkdtreeBKDTreeReader_QueryState;

@interface OrgApacheLuceneBkdtreeBKDTreeReader () {
 @public
  IOSIntArray *splitValues_;
  jint leafNodeOffset_;
  IOSLongArray *leafBlockFPs_;
}

/*!
 @brief Fast path: this is called when the query rect fully encompasses all cells under this node.
 */
- (jint)addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState:(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *)state
                                                         withInt:(jint)nodeID;

- (jint)intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState:(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *)state
                                                            withInt:(jint)nodeID
                                                            withInt:(jint)cellLatMinEnc
                                                            withInt:(jint)cellLatMaxEnc
                                                            withInt:(jint)cellLonMinEnc
                                                            withInt:(jint)cellLonMaxEnc;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader, splitValues_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader, leafBlockFPs_, IOSLongArray *)

__attribute__((unused)) static jint OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader *self, OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *state, jint nodeID);

__attribute__((unused)) static jint OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader *self, OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *state, jint nodeID, jint cellLatMinEnc, jint cellLatMaxEnc, jint cellLonMinEnc, jint cellLonMaxEnc);

__attribute__((unused)) static void OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initWithNSString_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader_Relation *self, NSString *__name, jint __ordinal);

@interface OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter : NSObject

@end

@interface OrgApacheLuceneBkdtreeBKDTreeReader_QueryState : NSObject {
 @public
  OrgApacheLuceneStoreIndexInput *in_;
  IOSByteArray *scratch_;
  OrgApacheLuceneStoreByteArrayDataInput *scratchReader_;
  OrgApacheLuceneUtilDocIdSetBuilder *docs_;
  jint latMinEnc_;
  jint latMaxEnc_;
  jint lonMinEnc_;
  jint lonMaxEnc_;
  id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter_;
  OrgApacheLuceneIndexSortedNumericDocValues *sndv_;
}

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)maxDoc
                                               withInt:(jint)latMinEnc
                                               withInt:(jint)latMaxEnc
                                               withInt:(jint)lonMinEnc
                                               withInt:(jint)lonMaxEnc
  withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:(id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter>)latLonFilter
        withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sndv;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, in_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, scratch_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, scratchReader_, OrgApacheLuceneStoreByteArrayDataInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, docs_, OrgApacheLuceneUtilDocIdSetBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, latLonFilter_, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, sndv_, OrgApacheLuceneIndexSortedNumericDocValues *)

__attribute__((unused)) static void OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *self, OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc, jint latMinEnc, jint latMaxEnc, jint lonMinEnc, jint lonMaxEnc, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter, OrgApacheLuceneIndexSortedNumericDocValues *sndv);

__attribute__((unused)) static OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *new_OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc, jint latMinEnc, jint latMaxEnc, jint lonMinEnc, jint lonMaxEnc, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter, OrgApacheLuceneIndexSortedNumericDocValues *sndv) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *create_OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc, jint latMinEnc, jint latMaxEnc, jint lonMinEnc, jint lonMaxEnc, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter, OrgApacheLuceneIndexSortedNumericDocValues *sndv);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState)

@implementation OrgApacheLuceneBkdtreeBKDTreeReader

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)maxDoc {
  OrgApacheLuceneBkdtreeBKDTreeReader_initWithOrgApacheLuceneStoreIndexInput_withInt_(self, inArg, maxDoc);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)intersectWithDouble:(jdouble)latMin
                                            withDouble:(jdouble)latMax
                                            withDouble:(jdouble)lonMin
                                            withDouble:(jdouble)lonMax
        withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sndv {
  return [self intersectWithDouble:latMin withDouble:latMax withDouble:lonMin withDouble:lonMax withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:nil withOrgApacheLuceneIndexSortedNumericDocValues:sndv];
}

- (OrgApacheLuceneSearchDocIdSet *)intersectWithDouble:(jdouble)latMin
                                            withDouble:(jdouble)latMax
                                            withDouble:(jdouble)lonMin
                                            withDouble:(jdouble)lonMax
  withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:(id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter>)filter
        withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sndv {
  if (OrgApacheLuceneBkdtreeBKDTreeWriter_validLatWithDouble_(latMin) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid latMin: ", latMin));
  }
  if (OrgApacheLuceneBkdtreeBKDTreeWriter_validLatWithDouble_(latMax) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid latMax: ", latMax));
  }
  if (OrgApacheLuceneBkdtreeBKDTreeWriter_validLonWithDouble_(lonMin) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid lonMin: ", lonMin));
  }
  if (OrgApacheLuceneBkdtreeBKDTreeWriter_validLonWithDouble_(lonMax) == false) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$D", @"invalid lonMax: ", lonMax));
  }
  jint latMinEnc = OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLatWithDouble_(latMin);
  jint latMaxEnc = OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLatWithDouble_(latMax);
  jint lonMinEnc = OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLonWithDouble_(lonMin);
  jint lonMaxEnc = OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLonWithDouble_(lonMax);
  OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *state = create_OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_([((OrgApacheLuceneStoreIndexInput *) nil_chk(in_)) clone], maxDoc_, latMinEnc, latMaxEnc, lonMinEnc, lonMaxEnc, filter, sndv);
  jint hitCount = OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(self, state, 1, OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLatWithDouble_(-90.0), OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLatWithDouble_(JavaLangMath_nextAfterWithDouble_withDouble_(90.0, JavaLangDouble_POSITIVE_INFINITY)), OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLonWithDouble_(-180.0), OrgApacheLuceneBkdtreeBKDTreeWriter_encodeLonWithDouble_(JavaLangMath_nextAfterWithDouble_withDouble_(180.0, JavaLangDouble_POSITIVE_INFINITY)));
  return [((OrgApacheLuceneUtilDocIdSetBuilder *) nil_chk(state->docs_)) buildWithLong:hitCount];
}

- (jint)addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState:(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *)state
                                                         withInt:(jint)nodeID {
  return OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(self, state, nodeID);
}

- (jint)intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState:(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *)state
                                                            withInt:(jint)nodeID
                                                            withInt:(jint)cellLatMinEnc
                                                            withInt:(jint)cellLatMaxEnc
                                                            withInt:(jint)cellLonMinEnc
                                                            withInt:(jint)cellLonMaxEnc {
  return OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(self, state, nodeID, cellLatMinEnc, cellLatMaxEnc, cellLonMinEnc, cellLonMaxEnc);
}

- (jlong)ramBytesUsed {
  return ((IOSIntArray *) nil_chk(splitValues_))->size_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + ((IOSLongArray *) nil_chk(leafBlockFPs_))->size_ * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (void)dealloc {
  RELEASE_(splitValues_);
  RELEASE_(leafBlockFPs_);
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreIndexInput:withInt:", "BKDTreeReader", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "intersectWithDouble:withDouble:withDouble:withDouble:withOrgApacheLuceneIndexSortedNumericDocValues:", "intersect", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "intersectWithDouble:withDouble:withDouble:withDouble:withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:withOrgApacheLuceneIndexSortedNumericDocValues:", "intersect", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState:withInt:", "addAll", "I", 0x2, "Ljava.io.IOException;", NULL },
    { "intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState:withInt:withInt:withInt:withInt:withInt:", "intersect", "I", 0x2, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "splitValues_", NULL, 0x12, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "leafNodeOffset_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "leafBlockFPs_", NULL, 0x12, "[J", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.IndexInput;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.bkdtree.BKDTreeReader$Relation;", "Lorg.apache.lucene.bkdtree.BKDTreeReader$LatLonFilter;", "Lorg.apache.lucene.bkdtree.BKDTreeReader$QueryState;"};
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeBKDTreeReader = { 2, "BKDTreeReader", "org.apache.lucene.bkdtree", NULL, 0x10, 7, methods, 5, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeBKDTreeReader;
}

@end

void OrgApacheLuceneBkdtreeBKDTreeReader_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader *self, OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc) {
  NSObject_init(self);
  jint numLeaves = [((OrgApacheLuceneStoreIndexInput *) nil_chk(inArg)) readVInt];
  self->leafNodeOffset_ = numLeaves;
  JreStrongAssignAndConsume(&self->splitValues_, [IOSIntArray newArrayWithLength:numLeaves]);
  for (jint i = 0; i < numLeaves; i++) {
    *IOSIntArray_GetRef(self->splitValues_, i) = [inArg readInt];
  }
  JreStrongAssignAndConsume(&self->leafBlockFPs_, [IOSLongArray newArrayWithLength:numLeaves]);
  for (jint i = 0; i < numLeaves; i++) {
    *IOSLongArray_GetRef(self->leafBlockFPs_, i) = [inArg readVLong];
  }
  self->maxDoc_ = maxDoc;
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneBkdtreeBKDTreeReader *new_OrgApacheLuceneBkdtreeBKDTreeReader_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneBkdtreeBKDTreeReader, initWithOrgApacheLuceneStoreIndexInput_withInt_, inArg, maxDoc)
}

OrgApacheLuceneBkdtreeBKDTreeReader *create_OrgApacheLuceneBkdtreeBKDTreeReader_initWithOrgApacheLuceneStoreIndexInput_withInt_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneBkdtreeBKDTreeReader, initWithOrgApacheLuceneStoreIndexInput_withInt_, inArg, maxDoc)
}

jint OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader *self, OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *state, jint nodeID) {
  if (nodeID >= self->leafNodeOffset_) {
    jlong fp = IOSLongArray_Get(nil_chk(self->leafBlockFPs_), nodeID - self->leafNodeOffset_);
    if (fp == 0) {
      return 0;
    }
    [((OrgApacheLuceneStoreIndexInput *) nil_chk(((OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *) nil_chk(state))->in_)) seekWithLong:fp];
    jint count = [state->in_ readVInt];
    [((OrgApacheLuceneUtilDocIdSetBuilder *) nil_chk(state->docs_)) growWithInt:count];
    for (jint i = 0; i < count; i++) {
      jint docID = [state->in_ readInt];
      [state->docs_ addWithInt:docID];
    }
    return count;
  }
  else {
    jint splitValue = IOSIntArray_Get(nil_chk(self->splitValues_), nodeID);
    if (splitValue == JavaLangInteger_MAX_VALUE) {
      return 0;
    }
    jint count = OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(self, state, 2 * nodeID);
    count += OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(self, state, 2 * nodeID + 1);
    return count;
  }
}

jint OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader *self, OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *state, jint nodeID, jint cellLatMinEnc, jint cellLatMaxEnc, jint cellLonMinEnc, jint cellLonMaxEnc) {
  if (((OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *) nil_chk(state))->latLonFilter_ != nil) {
    if (cellLatMinEnc > state->latMinEnc_ || cellLatMaxEnc < state->latMaxEnc_ || cellLonMinEnc > state->lonMinEnc_ || cellLonMaxEnc < state->lonMaxEnc_) {
      OrgApacheLuceneBkdtreeBKDTreeReader_Relation *r = [state->latLonFilter_ compareWithDouble:OrgApacheLuceneBkdtreeBKDTreeWriter_decodeLatWithInt_(cellLatMinEnc) withDouble:OrgApacheLuceneBkdtreeBKDTreeWriter_decodeLatWithInt_(cellLatMaxEnc) withDouble:OrgApacheLuceneBkdtreeBKDTreeWriter_decodeLonWithInt_(cellLonMinEnc) withDouble:OrgApacheLuceneBkdtreeBKDTreeWriter_decodeLonWithInt_(cellLonMaxEnc)];
      if (r == JreLoadEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, OUTSIDE)) {
        return 0;
      }
      else if (r == JreLoadEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, INSIDE)) {
        return OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(self, state, nodeID);
      }
      else {
      }
    }
  }
  else if (state->latMinEnc_ <= cellLatMinEnc && state->latMaxEnc_ >= cellLatMaxEnc && state->lonMinEnc_ <= cellLonMinEnc && state->lonMaxEnc_ >= cellLonMaxEnc) {
    return OrgApacheLuceneBkdtreeBKDTreeReader_addAllWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_(self, state, nodeID);
  }
  jlong latRange = (jlong) cellLatMaxEnc - (jlong) cellLatMinEnc;
  jlong lonRange = (jlong) cellLonMaxEnc - (jlong) cellLonMinEnc;
  jint dim;
  if (latRange >= lonRange) {
    dim = 0;
  }
  else {
    dim = 1;
  }
  if (nodeID >= self->leafNodeOffset_) {
    jint hitCount = 0;
    jlong fp = IOSLongArray_Get(nil_chk(self->leafBlockFPs_), nodeID - self->leafNodeOffset_);
    if (fp == 0) {
      return 0;
    }
    [((OrgApacheLuceneStoreIndexInput *) nil_chk(state->in_)) seekWithLong:fp];
    jint count = [state->in_ readVInt];
    [((OrgApacheLuceneUtilDocIdSetBuilder *) nil_chk(state->docs_)) growWithInt:count];
    for (jint i = 0; i < count; i++) {
      jint docID = [state->in_ readInt];
      [((OrgApacheLuceneIndexSortedNumericDocValues *) nil_chk(state->sndv_)) setDocumentWithInt:docID];
      jint docValueCount = [state->sndv_ count];
      for (jint j = 0; j < docValueCount; j++) {
        jlong enc = [state->sndv_ valueAtWithInt:j];
        jint latEnc = (jint) ((JreRShift64(enc, 32)) & (jlong) 0xffffffffLL);
        jint lonEnc = (jint) (enc & (jlong) 0xffffffffLL);
        if (latEnc >= state->latMinEnc_ && latEnc < state->latMaxEnc_ && lonEnc >= state->lonMinEnc_ && lonEnc < state->lonMaxEnc_ && (state->latLonFilter_ == nil || [state->latLonFilter_ acceptWithDouble:OrgApacheLuceneBkdtreeBKDTreeWriter_decodeLatWithInt_(latEnc) withDouble:OrgApacheLuceneBkdtreeBKDTreeWriter_decodeLonWithInt_(lonEnc)])) {
          [state->docs_ addWithInt:docID];
          hitCount++;
          break;
        }
      }
    }
    return hitCount;
  }
  else {
    jint splitValue = IOSIntArray_Get(nil_chk(self->splitValues_), nodeID);
    if (splitValue == JavaLangInteger_MAX_VALUE) {
      return 0;
    }
    jint count = 0;
    if (dim == 0) {
      if (state->latMinEnc_ < splitValue) {
        count += OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(self, state, 2 * nodeID, cellLatMinEnc, splitValue, cellLonMinEnc, cellLonMaxEnc);
      }
      if (state->latMaxEnc_ >= splitValue) {
        count += OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(self, state, 2 * nodeID + 1, splitValue, cellLatMaxEnc, cellLonMinEnc, cellLonMaxEnc);
      }
    }
    else {
      JreAssert((dim == 1), (@"org/apache/lucene/bkdtree/BKDTreeReader.java:339 condition failed: assert dim == 1;"));
      if (state->lonMinEnc_ < splitValue) {
        count += OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(self, state, 2 * nodeID, cellLatMinEnc, cellLatMaxEnc, cellLonMinEnc, splitValue);
      }
      if (state->lonMaxEnc_ >= splitValue) {
        count += OrgApacheLuceneBkdtreeBKDTreeReader_intersectWithOrgApacheLuceneBkdtreeBKDTreeReader_QueryState_withInt_withInt_withInt_withInt_withInt_(self, state, 2 * nodeID + 1, cellLatMinEnc, cellLatMaxEnc, splitValue, cellLonMaxEnc);
      }
    }
    return count;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeBKDTreeReader)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneBkdtreeBKDTreeReader_Relation)

OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values_[3];

@implementation OrgApacheLuceneBkdtreeBKDTreeReader_Relation

+ (OrgApacheLuceneBkdtreeBKDTreeReader_Relation *)INSIDE {
  return JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, INSIDE);
}

+ (OrgApacheLuceneBkdtreeBKDTreeReader_Relation *)CROSSES {
  return JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, CROSSES);
}

+ (OrgApacheLuceneBkdtreeBKDTreeReader_Relation *)OUTSIDE {
  return JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, OUTSIDE);
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values();
}

+ (OrgApacheLuceneBkdtreeBKDTreeReader_Relation *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneBkdtreeBKDTreeReader_Relation_valueOfWithNSString_(name);
}

- (OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum)toNSEnum {
  return (OrgApacheLuceneBkdtreeBKDTreeReader_Relation_Enum)[self ordinal];
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneBkdtreeBKDTreeReader_Relation class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 3 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    (JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, INSIDE) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initWithNSString_withInt_(e, @"INSIDE", 0);
    (JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, CROSSES) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initWithNSString_withInt_(e, @"CROSSES", 1);
    (JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, OUTSIDE) = e = objc_constructInstance(self, (void *)ptr), ptr += objSize);
    OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initWithNSString_withInt_(e, @"OUTSIDE", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneBkdtreeBKDTreeReader_Relation)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "INSIDE", "INSIDE", 0x4019, "Lorg.apache.lucene.bkdtree.BKDTreeReader$Relation;", &JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, INSIDE), NULL, .constantValue.asLong = 0 },
    { "CROSSES", "CROSSES", 0x4019, "Lorg.apache.lucene.bkdtree.BKDTreeReader$Relation;", &JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, CROSSES), NULL, .constantValue.asLong = 0 },
    { "OUTSIDE", "OUTSIDE", 0x4019, "Lorg.apache.lucene.bkdtree.BKDTreeReader$Relation;", &JreEnum(OrgApacheLuceneBkdtreeBKDTreeReader_Relation, OUTSIDE), NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.bkdtree.BKDTreeReader$Relation;"};
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeBKDTreeReader_Relation = { 2, "Relation", "org.apache.lucene.bkdtree", "BKDTreeReader", 0x4018, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/bkdtree/BKDTreeReader$Relation;>;" };
  return &_OrgApacheLuceneBkdtreeBKDTreeReader_Relation;
}

@end

void OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initWithNSString_withInt_(OrgApacheLuceneBkdtreeBKDTreeReader_Relation *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values() {
  OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values_ count:3 type:OrgApacheLuceneBkdtreeBKDTreeReader_Relation_class_()];
}

OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneBkdtreeBKDTreeReader_Relation *e = OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

OrgApacheLuceneBkdtreeBKDTreeReader_Relation *OrgApacheLuceneBkdtreeBKDTreeReader_Relation_fromOrdinal(NSUInteger ordinal) {
  OrgApacheLuceneBkdtreeBKDTreeReader_Relation_initialize();
  if (ordinal >= 3) {
    return nil;
  }
  return OrgApacheLuceneBkdtreeBKDTreeReader_Relation_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeBKDTreeReader_Relation)

@implementation OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "acceptWithDouble:withDouble:", "accept", "Z", 0x401, NULL, NULL },
    { "compareWithDouble:withDouble:withDouble:withDouble:", "compare", "Lorg.apache.lucene.bkdtree.BKDTreeReader$Relation;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter = { 2, "LatLonFilter", "org.apache.lucene.bkdtree", "BKDTreeReader", 0x608, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter)

@implementation OrgApacheLuceneBkdtreeBKDTreeReader_QueryState

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                               withInt:(jint)maxDoc
                                               withInt:(jint)latMinEnc
                                               withInt:(jint)latMaxEnc
                                               withInt:(jint)lonMinEnc
                                               withInt:(jint)lonMaxEnc
  withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:(id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter>)latLonFilter
        withOrgApacheLuceneIndexSortedNumericDocValues:(OrgApacheLuceneIndexSortedNumericDocValues *)sndv {
  OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(self, inArg, maxDoc, latMinEnc, latMaxEnc, lonMinEnc, lonMaxEnc, latLonFilter, sndv);
  return self;
}

- (void)dealloc {
  RELEASE_(in_);
  RELEASE_(scratch_);
  RELEASE_(scratchReader_);
  RELEASE_(docs_);
  RELEASE_(latLonFilter_);
  RELEASE_(sndv_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneStoreIndexInput:withInt:withInt:withInt:withInt:withInt:withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter:withOrgApacheLuceneIndexSortedNumericDocValues:", "QueryState", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "in_", NULL, 0x10, "Lorg.apache.lucene.store.IndexInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratch_", NULL, 0x0, "[B", NULL, NULL, .constantValue.asLong = 0 },
    { "scratchReader_", NULL, 0x10, "Lorg.apache.lucene.store.ByteArrayDataInput;", NULL, NULL, .constantValue.asLong = 0 },
    { "docs_", NULL, 0x10, "Lorg.apache.lucene.util.DocIdSetBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "latMinEnc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "latMaxEnc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lonMinEnc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lonMaxEnc_", NULL, 0x10, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "latLonFilter_", NULL, 0x10, "Lorg.apache.lucene.bkdtree.BKDTreeReader$LatLonFilter;", NULL, NULL, .constantValue.asLong = 0 },
    { "sndv_", NULL, 0x10, "Lorg.apache.lucene.index.SortedNumericDocValues;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeBKDTreeReader_QueryState = { 2, "QueryState", "org.apache.lucene.bkdtree", "BKDTreeReader", 0x1a, 1, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneBkdtreeBKDTreeReader_QueryState;
}

@end

void OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *self, OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc, jint latMinEnc, jint latMaxEnc, jint lonMinEnc, jint lonMaxEnc, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter, OrgApacheLuceneIndexSortedNumericDocValues *sndv) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratch_, [IOSByteArray newArrayWithLength:16]);
  JreStrongAssignAndConsume(&self->scratchReader_, new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_(self->scratch_));
  JreStrongAssign(&self->in_, inArg);
  JreStrongAssignAndConsume(&self->docs_, new_OrgApacheLuceneUtilDocIdSetBuilder_initWithInt_(maxDoc));
  self->latMinEnc_ = latMinEnc;
  self->latMaxEnc_ = latMaxEnc;
  self->lonMinEnc_ = lonMinEnc;
  self->lonMaxEnc_ = lonMaxEnc;
  JreStrongAssign(&self->latLonFilter_, latLonFilter);
  JreStrongAssign(&self->sndv_, sndv);
}

OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *new_OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc, jint latMinEnc, jint latMaxEnc, jint lonMinEnc, jint lonMaxEnc, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter, OrgApacheLuceneIndexSortedNumericDocValues *sndv) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_, inArg, maxDoc, latMinEnc, latMaxEnc, lonMinEnc, lonMaxEnc, latLonFilter, sndv)
}

OrgApacheLuceneBkdtreeBKDTreeReader_QueryState *create_OrgApacheLuceneBkdtreeBKDTreeReader_QueryState_initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_(OrgApacheLuceneStoreIndexInput *inArg, jint maxDoc, jint latMinEnc, jint latMaxEnc, jint lonMinEnc, jint lonMaxEnc, id<OrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter> latLonFilter, OrgApacheLuceneIndexSortedNumericDocValues *sndv) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState, initWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withInt_withInt_withInt_withOrgApacheLuceneBkdtreeBKDTreeReader_LatLonFilter_withOrgApacheLuceneIndexSortedNumericDocValues_, inArg, maxDoc, latMinEnc, latMaxEnc, lonMinEnc, lonMaxEnc, latLonFilter, sndv)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeBKDTreeReader_QueryState)
