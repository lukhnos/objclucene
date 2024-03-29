//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/NodeHash.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/NodeHash.h"
#include "org/apache/lucene/util/packed/PackedInts.h"
#include "org/apache/lucene/util/packed/PagedGrowableWriter.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/fst/NodeHash must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilFstNodeHash () {
 @public
  OrgApacheLuceneUtilPackedPagedGrowableWriter *table_;
  jlong count_;
  jlong mask_;
  OrgApacheLuceneUtilFstFST *fst_;
  OrgApacheLuceneUtilFstFST_Arc *scratchArc_;
  OrgApacheLuceneUtilFstFST_BytesReader *in_;
}

- (jboolean)nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node
                                                              withLong:(jlong)address;

- (jlong)hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node;

- (jlong)hash__WithLong:(jlong)node;

- (void)addNewWithLong:(jlong)address;

- (void)rehash;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, table_, OrgApacheLuceneUtilPackedPagedGrowableWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, fst_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, scratchArc_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstNodeHash, in_, OrgApacheLuceneUtilFstFST_BytesReader *)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node, jlong address);

__attribute__((unused)) static jlong OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node);

__attribute__((unused)) static jlong OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong node);

__attribute__((unused)) static void OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong address);

__attribute__((unused)) static void OrgApacheLuceneUtilFstNodeHash_rehash(OrgApacheLuceneUtilFstNodeHash *self);

@implementation OrgApacheLuceneUtilFstNodeHash

- (instancetype)initPackagePrivateWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
                      withOrgApacheLuceneUtilFstFST_BytesReader:(OrgApacheLuceneUtilFstFST_BytesReader *)inArg {
  OrgApacheLuceneUtilFstNodeHash_initPackagePrivateWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(self, fst, inArg);
  return self;
}

- (jboolean)nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node
                                                              withLong:(jlong)address {
  return OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(self, node, address);
}

- (jlong)hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)node {
  return OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(self, node);
}

- (jlong)hash__WithLong:(jlong)node {
  return OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, node);
}

- (jlong)addWithOrgApacheLuceneUtilFstBuilder:(OrgApacheLuceneUtilFstBuilder *)builder
withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)nodeIn {
  jlong h = OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(self, nodeIn);
  jlong pos = h & mask_;
  jint c = 0;
  while (true) {
    jlong v = [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(table_)) getWithLong:pos];
    if (v == 0) {
      jlong node = [((OrgApacheLuceneUtilFstFST *) nil_chk(fst_)) addNodeWithOrgApacheLuceneUtilFstBuilder:builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:nodeIn];
      JreAssert(OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, node) == h, JreStrcat("$J$J", @"frozenHash=", OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, node), @" vs h=", h));
      count_++;
      [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(table_)) setWithLong:pos withLong:node];
      if (count_ > JreLongDiv(2 * [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(table_)) size], 3)) {
        OrgApacheLuceneUtilFstNodeHash_rehash(self);
      }
      return node;
    }
    else if (OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(self, nodeIn, v)) {
      return v;
    }
    pos = (pos + (++c)) & mask_;
  }
}

- (void)addNewWithLong:(jlong)address {
  OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(self, address);
}

- (void)rehash {
  OrgApacheLuceneUtilFstNodeHash_rehash(self);
}

- (void)dealloc {
  RELEASE_(table_);
  RELEASE_(fst_);
  RELEASE_(scratchArc_);
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "Z", 0x2, 2, 3, 4, 5, -1, -1 },
    { NULL, "J", 0x2, 6, 7, -1, 8, -1, -1 },
    { NULL, "J", 0x2, 6, 9, 4, -1, -1, -1 },
    { NULL, "J", 0x1, 10, 11, 4, 12, -1, -1 },
    { NULL, "V", 0x2, 13, 9, 4, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneUtilFstFST:withOrgApacheLuceneUtilFstFST_BytesReader:);
  methods[1].selector = @selector(nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:withLong:);
  methods[2].selector = @selector(hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode:);
  methods[3].selector = @selector(hash__WithLong:);
  methods[4].selector = @selector(addWithOrgApacheLuceneUtilFstBuilder:withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:);
  methods[5].selector = @selector(addNewWithLong:);
  methods[6].selector = @selector(rehash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "table_", "LOrgApacheLuceneUtilPackedPagedGrowableWriter;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "count_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mask_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "fst_", "LOrgApacheLuceneUtilFstFST;", .constantValue.asLong = 0, 0x12, -1, -1, 14, -1 },
    { "scratchArc_", "LOrgApacheLuceneUtilFstFST_Arc;", .constantValue.asLong = 0, 0x12, -1, -1, 15, -1 },
    { "in_", "LOrgApacheLuceneUtilFstFST_BytesReader;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilFstFST;LOrgApacheLuceneUtilFstFST_BytesReader;", "(Lorg/apache/lucene/util/fst/FST<TT;>;Lorg/apache/lucene/util/fst/FST$BytesReader;)V", "nodesEqual", "LOrgApacheLuceneUtilFstBuilder_UnCompiledNode;J", "LJavaIoIOException;", "(Lorg/apache/lucene/util/fst/Builder$UnCompiledNode<TT;>;J)Z", "hash", "LOrgApacheLuceneUtilFstBuilder_UnCompiledNode;", "(Lorg/apache/lucene/util/fst/Builder$UnCompiledNode<TT;>;)J", "J", "add", "LOrgApacheLuceneUtilFstBuilder;LOrgApacheLuceneUtilFstBuilder_UnCompiledNode;", "(Lorg/apache/lucene/util/fst/Builder<TT;>;Lorg/apache/lucene/util/fst/Builder$UnCompiledNode<TT;>;)J", "addNew", "Lorg/apache/lucene/util/fst/FST<TT;>;", "Lorg/apache/lucene/util/fst/FST$Arc<TT;>;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstNodeHash = { "NodeHash", "org.apache.lucene.util.fst", ptrTable, methods, fields, 7, 0x10, 7, 6, -1, -1, -1, 16, -1 };
  return &_OrgApacheLuceneUtilFstNodeHash;
}

@end

void OrgApacheLuceneUtilFstNodeHash_initPackagePrivateWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->scratchArc_, new_OrgApacheLuceneUtilFstFST_Arc_init());
  JreStrongAssignAndConsume(&self->table_, new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(16, JreLShift32(1, 27), 8, OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  self->mask_ = 15;
  JreStrongAssign(&self->fst_, fst);
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilFstNodeHash *new_OrgApacheLuceneUtilFstNodeHash_initPackagePrivateWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilFstNodeHash, initPackagePrivateWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_, fst, inArg)
}

OrgApacheLuceneUtilFstNodeHash *create_OrgApacheLuceneUtilFstNodeHash_initPackagePrivateWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_(OrgApacheLuceneUtilFstFST *fst, OrgApacheLuceneUtilFstFST_BytesReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilFstNodeHash, initPackagePrivateWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilFstFST_BytesReader_, fst, inArg)
}

jboolean OrgApacheLuceneUtilFstNodeHash_nodesEqualWithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_withLong_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node, jlong address) {
  [((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_)) readFirstRealTargetArcWithLong:address withOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  if (((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(self->scratchArc_))->bytesPerArc_ != 0 && ((OrgApacheLuceneUtilFstBuilder_UnCompiledNode *) nil_chk(node))->numArcs_ != self->scratchArc_->numArcs_) {
    return false;
  }
  for (jint arcUpto = 0; arcUpto < ((OrgApacheLuceneUtilFstBuilder_UnCompiledNode *) nil_chk(node))->numArcs_; arcUpto++) {
    OrgApacheLuceneUtilFstBuilder_Arc *arc = IOSObjectArray_Get(nil_chk(node->arcs_), arcUpto);
    if (((OrgApacheLuceneUtilFstBuilder_Arc *) nil_chk(arc))->label_ != self->scratchArc_->label_ || ![nil_chk(arc->output_) isEqual:self->scratchArc_->output_] || ((OrgApacheLuceneUtilFstBuilder_CompiledNode *) nil_chk(((OrgApacheLuceneUtilFstBuilder_CompiledNode *) cast_chk(arc->target_, [OrgApacheLuceneUtilFstBuilder_CompiledNode class]))))->node_ != self->scratchArc_->target_ || ![nil_chk(arc->nextFinalOutput_) isEqual:self->scratchArc_->nextFinalOutput_] || arc->isFinal_ != [self->scratchArc_ isFinal]) {
      return false;
    }
    if ([self->scratchArc_ isLast]) {
      if (arcUpto == node->numArcs_ - 1) {
        return true;
      }
      else {
        return false;
      }
    }
    [self->fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  }
  return false;
}

jlong OrgApacheLuceneUtilFstNodeHash_hash__WithOrgApacheLuceneUtilFstBuilder_UnCompiledNode_(OrgApacheLuceneUtilFstNodeHash *self, OrgApacheLuceneUtilFstBuilder_UnCompiledNode *node) {
  jint PRIME = 31;
  jlong h = 0;
  for (jint arcIdx = 0; arcIdx < ((OrgApacheLuceneUtilFstBuilder_UnCompiledNode *) nil_chk(node))->numArcs_; arcIdx++) {
    OrgApacheLuceneUtilFstBuilder_Arc *arc = IOSObjectArray_Get(nil_chk(node->arcs_), arcIdx);
    h = PRIME * h + ((OrgApacheLuceneUtilFstBuilder_Arc *) nil_chk(arc))->label_;
    jlong n = ((OrgApacheLuceneUtilFstBuilder_CompiledNode *) nil_chk(((OrgApacheLuceneUtilFstBuilder_CompiledNode *) cast_chk(arc->target_, [OrgApacheLuceneUtilFstBuilder_CompiledNode class]))))->node_;
    h = PRIME * h + (jint) (n ^ (JreRShift64(n, 32)));
    h = PRIME * h + ((jint) [nil_chk(arc->output_) hash]);
    h = PRIME * h + ((jint) [nil_chk(arc->nextFinalOutput_) hash]);
    if (arc->isFinal_) {
      h += 17;
    }
  }
  return h & JavaLangLong_MAX_VALUE;
}

jlong OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong node) {
  jint PRIME = 31;
  jlong h = 0;
  [((OrgApacheLuceneUtilFstFST *) nil_chk(self->fst_)) readFirstRealTargetArcWithLong:node withOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  while (true) {
    h = PRIME * h + ((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(self->scratchArc_))->label_;
    h = PRIME * h + (jint) (self->scratchArc_->target_ ^ (JreRShift64(self->scratchArc_->target_, 32)));
    h = PRIME * h + ((jint) [nil_chk(self->scratchArc_->output_) hash]);
    h = PRIME * h + ((jint) [nil_chk(self->scratchArc_->nextFinalOutput_) hash]);
    if ([self->scratchArc_ isFinal]) {
      h += 17;
    }
    if ([self->scratchArc_ isLast]) {
      break;
    }
    [self->fst_ readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:self->scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:self->in_];
  }
  return h & JavaLangLong_MAX_VALUE;
}

void OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(OrgApacheLuceneUtilFstNodeHash *self, jlong address) {
  jlong pos = OrgApacheLuceneUtilFstNodeHash_hash__WithLong_(self, address) & self->mask_;
  jint c = 0;
  while (true) {
    if ([((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(self->table_)) getWithLong:pos] == 0) {
      [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(self->table_)) setWithLong:pos withLong:address];
      break;
    }
    pos = (pos + (++c)) & self->mask_;
  }
}

void OrgApacheLuceneUtilFstNodeHash_rehash(OrgApacheLuceneUtilFstNodeHash *self) {
  OrgApacheLuceneUtilPackedPagedGrowableWriter *oldTable = self->table_;
  JreStrongAssignAndConsume(&self->table_, new_OrgApacheLuceneUtilPackedPagedGrowableWriter_initWithLong_withInt_withInt_withFloat_(2 * [((OrgApacheLuceneUtilPackedPagedGrowableWriter *) nil_chk(oldTable)) size], JreLShift32(1, 30), OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(self->count_), OrgApacheLuceneUtilPackedPackedInts_COMPACT));
  self->mask_ = [self->table_ size] - 1;
  for (jlong idx = 0; idx < [oldTable size]; idx++) {
    jlong address = [oldTable getWithLong:idx];
    if (address != 0) {
      OrgApacheLuceneUtilFstNodeHash_addNewWithLong_(self, address);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstNodeHash)
