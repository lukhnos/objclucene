//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CoalescedUpdates.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/Iterable.h"
#include "java/lang/Long.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/index/BufferedUpdates.h"
#include "org/apache/lucene/index/BufferedUpdatesStream.h"
#include "org/apache/lucene/index/CoalescedUpdates.h"
#include "org/apache/lucene/index/DocValuesUpdate.h"
#include "org/apache/lucene/index/FieldTermIterator.h"
#include "org/apache/lucene/index/FrozenBufferedUpdates.h"
#include "org/apache/lucene/index/MergedPrefixCodedTermsIterator.h"
#include "org/apache/lucene/index/PrefixCodedTerms.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/CoalescedUpdates must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexCoalescedUpdates_1 : NSObject < JavaLangIterable > {
 @public
  OrgApacheLuceneIndexCoalescedUpdates *this$0_;
}

- (instancetype)initWithOrgApacheLuceneIndexCoalescedUpdates:(OrgApacheLuceneIndexCoalescedUpdates *)outer$;

- (id<JavaUtilIterator>)iterator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCoalescedUpdates_1)

__attribute__((unused)) static void OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(OrgApacheLuceneIndexCoalescedUpdates_1 *self, OrgApacheLuceneIndexCoalescedUpdates *outer$);

__attribute__((unused)) static OrgApacheLuceneIndexCoalescedUpdates_1 *new_OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(OrgApacheLuceneIndexCoalescedUpdates *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexCoalescedUpdates_1 *create_OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(OrgApacheLuceneIndexCoalescedUpdates *outer$);

@interface OrgApacheLuceneIndexCoalescedUpdates_1_1 : NSObject < JavaUtilIterator > {
 @public
  id<JavaUtilIterator> iter_;
}

- (instancetype)initWithOrgApacheLuceneIndexCoalescedUpdates_1:(OrgApacheLuceneIndexCoalescedUpdates_1 *)outer$;

- (jboolean)hasNext;

- (OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit *)next;

- (void)remove;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCoalescedUpdates_1_1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCoalescedUpdates_1_1, iter_, id<JavaUtilIterator>)

__attribute__((unused)) static void OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(OrgApacheLuceneIndexCoalescedUpdates_1_1 *self, OrgApacheLuceneIndexCoalescedUpdates_1 *outer$);

__attribute__((unused)) static OrgApacheLuceneIndexCoalescedUpdates_1_1 *new_OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(OrgApacheLuceneIndexCoalescedUpdates_1 *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexCoalescedUpdates_1_1 *create_OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(OrgApacheLuceneIndexCoalescedUpdates_1 *outer$);

@implementation OrgApacheLuceneIndexCoalescedUpdates

- (instancetype)initPackagePrivate {
  OrgApacheLuceneIndexCoalescedUpdates_initPackagePrivate(self);
  return self;
}

- (NSString *)description {
  return JreStrcat("$I$J$I$I$IC", @"CoalescedUpdates(termSets=", [((id<JavaUtilList>) nil_chk(terms_)) size], @",totalTermCount=", totalTermCount_, @",queries=", [((id<JavaUtilMap>) nil_chk(queries_)) size], @",numericDVUpdates=", [((id<JavaUtilList>) nil_chk(numericDVUpdates_)) size], @",binaryDVUpdates=", [((id<JavaUtilList>) nil_chk(binaryDVUpdates_)) size], ')');
}

- (void)updateWithOrgApacheLuceneIndexFrozenBufferedUpdates:(OrgApacheLuceneIndexFrozenBufferedUpdates *)inArg {
  totalTermCount_ += [((OrgApacheLuceneIndexPrefixCodedTerms *) nil_chk(((OrgApacheLuceneIndexFrozenBufferedUpdates *) nil_chk(inArg))->terms_)) size];
  [((id<JavaUtilList>) nil_chk(terms_)) addWithId:inArg->terms_];
  for (jint queryIdx = 0; queryIdx < ((IOSObjectArray *) nil_chk(inArg->queries_))->size_; queryIdx++) {
    OrgApacheLuceneSearchQuery *query = IOSObjectArray_Get(inArg->queries_, queryIdx);
    [((id<JavaUtilMap>) nil_chk(queries_)) putWithId:query withId:JreLoadStatic(OrgApacheLuceneIndexBufferedUpdates, MAX_INT)];
  }
  {
    IOSObjectArray *a__ = inArg->numericDVUpdates_;
    OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *nu = *b__++;
      OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *clone = create_OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate_initWithOrgApacheLuceneIndexTerm_withNSString_withJavaLangLong_(((OrgApacheLuceneIndexDocValuesUpdate_NumericDocValuesUpdate *) nil_chk(nu))->term_, nu->field_, (JavaLangLong *) cast_chk(nu->value_, [JavaLangLong class]));
      clone->docIDUpto_ = JavaLangInteger_MAX_VALUE;
      [((id<JavaUtilList>) nil_chk(numericDVUpdates_)) addWithId:clone];
    }
  }
  {
    IOSObjectArray *a__ = inArg->binaryDVUpdates_;
    OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *bu = *b__++;
      OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *clone = create_OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate_initWithOrgApacheLuceneIndexTerm_withNSString_withOrgApacheLuceneUtilBytesRef_(((OrgApacheLuceneIndexDocValuesUpdate_BinaryDocValuesUpdate *) nil_chk(bu))->term_, bu->field_, (OrgApacheLuceneUtilBytesRef *) cast_chk(bu->value_, [OrgApacheLuceneUtilBytesRef class]));
      clone->docIDUpto_ = JavaLangInteger_MAX_VALUE;
      [((id<JavaUtilList>) nil_chk(binaryDVUpdates_)) addWithId:clone];
    }
  }
}

- (OrgApacheLuceneIndexFieldTermIterator *)termIterator {
  if ([((id<JavaUtilList>) nil_chk(terms_)) size] == 1) {
    return [((OrgApacheLuceneIndexPrefixCodedTerms *) nil_chk([terms_ getWithInt:0])) iterator];
  }
  else {
    return create_OrgApacheLuceneIndexMergedPrefixCodedTermsIterator_initPackagePrivateWithJavaUtilList_(terms_);
  }
}

- (id<JavaLangIterable>)queriesIterable {
  return create_OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(self);
}

- (void)dealloc {
  RELEASE_(queries_);
  RELEASE_(terms_);
  RELEASE_(numericDVUpdates_);
  RELEASE_(binaryDVUpdates_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFieldTermIterator;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangIterable;", 0x1, -1, -1, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivate);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(updateWithOrgApacheLuceneIndexFrozenBufferedUpdates:);
  methods[3].selector = @selector(termIterator);
  methods[4].selector = @selector(queriesIterable);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "queries_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 4, -1 },
    { "terms_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 5, -1 },
    { "numericDVUpdates_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 6, -1 },
    { "binaryDVUpdates_", "LJavaUtilList;", .constantValue.asLong = 0, 0x10, -1, -1, 7, -1 },
    { "totalTermCount_", "J", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "toString", "update", "LOrgApacheLuceneIndexFrozenBufferedUpdates;", "()Ljava/lang/Iterable<Lorg/apache/lucene/index/BufferedUpdatesStream$QueryAndLimit;>;", "Ljava/util/Map<Lorg/apache/lucene/search/Query;Ljava/lang/Integer;>;", "Ljava/util/List<Lorg/apache/lucene/index/PrefixCodedTerms;>;", "Ljava/util/List<Lorg/apache/lucene/index/DocValuesUpdate$NumericDocValuesUpdate;>;", "Ljava/util/List<Lorg/apache/lucene/index/DocValuesUpdate$BinaryDocValuesUpdate;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCoalescedUpdates = { "CoalescedUpdates", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 5, 5, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexCoalescedUpdates;
}

@end

void OrgApacheLuceneIndexCoalescedUpdates_initPackagePrivate(OrgApacheLuceneIndexCoalescedUpdates *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->queries_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->terms_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->numericDVUpdates_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->binaryDVUpdates_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneIndexCoalescedUpdates *new_OrgApacheLuceneIndexCoalescedUpdates_initPackagePrivate() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCoalescedUpdates, initPackagePrivate)
}

OrgApacheLuceneIndexCoalescedUpdates *create_OrgApacheLuceneIndexCoalescedUpdates_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCoalescedUpdates, initPackagePrivate)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCoalescedUpdates)

@implementation OrgApacheLuceneIndexCoalescedUpdates_1

- (instancetype)initWithOrgApacheLuceneIndexCoalescedUpdates:(OrgApacheLuceneIndexCoalescedUpdates *)outer$ {
  OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(self, outer$);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return create_OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(self);
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexCoalescedUpdates:);
  methods[1].selector = @selector(iterator);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneIndexCoalescedUpdates;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexCoalescedUpdates;", "()Ljava/util/Iterator<Lorg/apache/lucene/index/BufferedUpdatesStream$QueryAndLimit;>;", "queriesIterable", "Ljava/lang/Object;Ljava/lang/Iterable<Lorg/apache/lucene/index/BufferedUpdatesStream$QueryAndLimit;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCoalescedUpdates_1 = { "", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x8010, 2, 1, 0, -1, 2, 3, -1 };
  return &_OrgApacheLuceneIndexCoalescedUpdates_1;
}

@end

void OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(OrgApacheLuceneIndexCoalescedUpdates_1 *self, OrgApacheLuceneIndexCoalescedUpdates *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

OrgApacheLuceneIndexCoalescedUpdates_1 *new_OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(OrgApacheLuceneIndexCoalescedUpdates *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCoalescedUpdates_1, initWithOrgApacheLuceneIndexCoalescedUpdates_, outer$)
}

OrgApacheLuceneIndexCoalescedUpdates_1 *create_OrgApacheLuceneIndexCoalescedUpdates_1_initWithOrgApacheLuceneIndexCoalescedUpdates_(OrgApacheLuceneIndexCoalescedUpdates *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCoalescedUpdates_1, initWithOrgApacheLuceneIndexCoalescedUpdates_, outer$)
}

@implementation OrgApacheLuceneIndexCoalescedUpdates_1_1

- (instancetype)initWithOrgApacheLuceneIndexCoalescedUpdates_1:(OrgApacheLuceneIndexCoalescedUpdates_1 *)outer$ {
  OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(self, outer$);
  return self;
}

- (jboolean)hasNext {
  return [((id<JavaUtilIterator>) nil_chk(iter_)) hasNext];
}

- (OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit *)next {
  id<JavaUtilMap_Entry> ent = [((id<JavaUtilIterator>) nil_chk(iter_)) next];
  return create_OrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit_initWithOrgApacheLuceneSearchQuery_withInt_([((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey], [((JavaLangInteger *) nil_chk([ent getValue])) intValue]);
}

- (void)remove {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)forEachRemainingWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaUtilIterator_forEachRemainingWithJavaUtilFunctionConsumer_(self, arg0);
}

- (void)dealloc {
  RELEASE_(iter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexBufferedUpdatesStream_QueryAndLimit;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexCoalescedUpdates_1:);
  methods[1].selector = @selector(hasNext);
  methods[2].selector = @selector(next);
  methods[3].selector = @selector(remove);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iter_", "LJavaUtilIterator;", .constantValue.asLong = 0, 0x12, -1, -1, 1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexCoalescedUpdates_1;", "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/lucene/search/Query;Ljava/lang/Integer;>;>;", "iterator", "Ljava/lang/Object;Ljava/util/Iterator<Lorg/apache/lucene/index/BufferedUpdatesStream$QueryAndLimit;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCoalescedUpdates_1_1 = { "", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x8010, 4, 1, 0, -1, 2, 3, -1 };
  return &_OrgApacheLuceneIndexCoalescedUpdates_1_1;
}

@end

void OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(OrgApacheLuceneIndexCoalescedUpdates_1_1 *self, OrgApacheLuceneIndexCoalescedUpdates_1 *outer$) {
  NSObject_init(self);
  JreStrongAssign(&self->iter_, [((id<JavaUtilSet>) nil_chk([((id<JavaUtilMap>) nil_chk(outer$->this$0_->queries_)) entrySet])) iterator]);
}

OrgApacheLuceneIndexCoalescedUpdates_1_1 *new_OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(OrgApacheLuceneIndexCoalescedUpdates_1 *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexCoalescedUpdates_1_1, initWithOrgApacheLuceneIndexCoalescedUpdates_1_, outer$)
}

OrgApacheLuceneIndexCoalescedUpdates_1_1 *create_OrgApacheLuceneIndexCoalescedUpdates_1_1_initWithOrgApacheLuceneIndexCoalescedUpdates_1_(OrgApacheLuceneIndexCoalescedUpdates_1 *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexCoalescedUpdates_1_1, initWithOrgApacheLuceneIndexCoalescedUpdates_1_, outer$)
}
