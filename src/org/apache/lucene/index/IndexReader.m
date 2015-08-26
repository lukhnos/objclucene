//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexReader.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Error.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Collections.h"
#include "java/util/LinkedHashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"
#include "java/util/WeakHashMap.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/DocumentStoredFieldVisitor.h"
#include "org/apache/lucene/index/CompositeReader.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneIndexIndexReader () {
 @public
  jboolean closed_;
  jboolean closedByChild_;
  JavaUtilConcurrentAtomicAtomicInteger *refCount_;
  id<JavaUtilSet> readerClosedListeners_;
  id<JavaUtilSet> parentReaders_;
}

- (void)notifyReaderClosedListenersWithJavaLangThrowable:(JavaLangThrowable *)th;

- (void)reportCloseToParentReaders;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexReader, refCount_, JavaUtilConcurrentAtomicAtomicInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexReader, readerClosedListeners_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexReader, parentReaders_, id<JavaUtilSet>)

__attribute__((unused)) static void OrgApacheLuceneIndexIndexReader_notifyReaderClosedListenersWithJavaLangThrowable_(OrgApacheLuceneIndexIndexReader *self, JavaLangThrowable *th);

__attribute__((unused)) static void OrgApacheLuceneIndexIndexReader_reportCloseToParentReaders(OrgApacheLuceneIndexIndexReader *self);

__attribute__((unused)) static jboolean OrgApacheLuceneIndexIndexReader_tryIncRef(OrgApacheLuceneIndexIndexReader *self);

__attribute__((unused)) static void OrgApacheLuceneIndexIndexReader_decRef(OrgApacheLuceneIndexIndexReader *self);

__attribute__((unused)) static void OrgApacheLuceneIndexIndexReader_ensureOpen(OrgApacheLuceneIndexIndexReader *self);

__attribute__((unused)) static jint OrgApacheLuceneIndexIndexReader_numDeletedDocs(OrgApacheLuceneIndexIndexReader *self);

@interface OrgApacheLuceneIndexIndexReader_ReaderClosedListener : NSObject

@end

@implementation OrgApacheLuceneIndexIndexReader

- (instancetype)init {
  OrgApacheLuceneIndexIndexReader_init(self);
  return self;
}

- (void)addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderClosedListener>)listener {
  OrgApacheLuceneIndexIndexReader_ensureOpen(self);
  [((id<JavaUtilSet>) nil_chk(readerClosedListeners_)) addWithId:listener];
}

- (void)removeReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:(id<OrgApacheLuceneIndexIndexReader_ReaderClosedListener>)listener {
  OrgApacheLuceneIndexIndexReader_ensureOpen(self);
  [((id<JavaUtilSet>) nil_chk(readerClosedListeners_)) removeWithId:listener];
}

- (void)registerParentReaderWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneIndexIndexReader_ensureOpen(self);
  [((id<JavaUtilSet>) nil_chk(parentReaders_)) addWithId:reader];
}

- (void)notifyReaderClosedListenersWithJavaLangThrowable:(JavaLangThrowable *)th {
  OrgApacheLuceneIndexIndexReader_notifyReaderClosedListenersWithJavaLangThrowable_(self, th);
}

- (void)reportCloseToParentReaders {
  OrgApacheLuceneIndexIndexReader_reportCloseToParentReaders(self);
}

- (jint)getRefCount {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(refCount_)) get];
}

- (void)incRef {
  if (!OrgApacheLuceneIndexIndexReader_tryIncRef(self)) {
    OrgApacheLuceneIndexIndexReader_ensureOpen(self);
  }
}

- (jboolean)tryIncRef {
  return OrgApacheLuceneIndexIndexReader_tryIncRef(self);
}

- (void)decRef {
  OrgApacheLuceneIndexIndexReader_decRef(self);
}

- (void)ensureOpen {
  OrgApacheLuceneIndexIndexReader_ensureOpen(self);
}

- (jboolean)isEqual:(id)obj {
  return self == obj;
}

- (NSUInteger)hash {
  return JavaLangSystem_identityHashCodeWithId_(self);
}

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexTerms *)getTermVectorWithInt:(jint)docID
                                       withNSString:(NSString *)field {
  OrgApacheLuceneIndexFields *vectors = [self getTermVectorsWithInt:docID];
  if (vectors == nil) {
    return nil;
  }
  return [((OrgApacheLuceneIndexFields *) nil_chk(vectors)) termsWithNSString:field];
}

- (jint)numDocs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)maxDoc {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)numDeletedDocs {
  return OrgApacheLuceneIndexIndexReader_numDeletedDocs(self);
}

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)docID {
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor *visitor = [new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_init() autorelease];
  [self documentWithInt:docID withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
  return [visitor getDocument];
}

- (OrgApacheLuceneDocumentDocument *)documentWithInt:(jint)docID
                                     withJavaUtilSet:(id<JavaUtilSet>)fieldsToLoad {
  OrgApacheLuceneDocumentDocumentStoredFieldVisitor *visitor = [new_OrgApacheLuceneDocumentDocumentStoredFieldVisitor_initWithJavaUtilSet_(fieldsToLoad) autorelease];
  [self documentWithInt:docID withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
  return [visitor getDocument];
}

- (jboolean)hasDeletions {
  return OrgApacheLuceneIndexIndexReader_numDeletedDocs(self) > 0;
}

- (void)close {
  @synchronized(self) {
    if (!closed_) {
      OrgApacheLuceneIndexIndexReader_decRef(self);
      closed_ = YES;
    }
  }
}

- (void)doClose {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (OrgApacheLuceneIndexIndexReaderContext *)getContext {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilList>)leaves {
  return [((OrgApacheLuceneIndexIndexReaderContext *) nil_chk([self getContext])) leaves];
}

- (id)getCoreCacheKey {
  return self;
}

- (id)getCombinedCoreAndDeletesKey {
  return self;
}

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)totalTermFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getSumDocFreqWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)getDocCountWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getSumTotalTermFreqWithNSString:(NSString *)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(refCount_);
  RELEASE_(readerClosedListeners_);
  RELEASE_(parentReaders_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "IndexReader", NULL, 0x0, NULL, NULL },
    { "addReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:", "addReaderClosedListener", "V", 0x11, NULL, NULL },
    { "removeReaderClosedListenerWithOrgApacheLuceneIndexIndexReader_ReaderClosedListener:", "removeReaderClosedListener", "V", 0x11, NULL, NULL },
    { "registerParentReaderWithOrgApacheLuceneIndexIndexReader:", "registerParentReader", "V", 0x11, NULL, NULL },
    { "notifyReaderClosedListenersWithJavaLangThrowable:", "notifyReaderClosedListeners", "V", 0x2, NULL, NULL },
    { "reportCloseToParentReaders", NULL, "V", 0x2, NULL, NULL },
    { "getRefCount", NULL, "I", 0x11, NULL, NULL },
    { "incRef", NULL, "V", 0x11, NULL, NULL },
    { "tryIncRef", NULL, "Z", 0x11, NULL, NULL },
    { "decRef", NULL, "V", 0x11, "Ljava.io.IOException;", NULL },
    { "ensureOpen", NULL, "V", 0x14, "Lorg.apache.lucene.store.AlreadyClosedException;", NULL },
    { "isEqual:", "equals", "Z", 0x11, NULL, NULL },
    { "hash", "hashCode", "I", 0x11, NULL, NULL },
    { "getTermVectorsWithInt:", "getTermVectors", "Lorg.apache.lucene.index.Fields;", 0x401, "Ljava.io.IOException;", NULL },
    { "getTermVectorWithInt:withNSString:", "getTermVector", "Lorg.apache.lucene.index.Terms;", 0x11, "Ljava.io.IOException;", NULL },
    { "numDocs", NULL, "I", 0x401, NULL, NULL },
    { "maxDoc", NULL, "I", 0x401, NULL, NULL },
    { "numDeletedDocs", NULL, "I", 0x11, NULL, NULL },
    { "documentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:", "document", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "documentWithInt:", "document", "Lorg.apache.lucene.document.Document;", 0x11, "Ljava.io.IOException;", NULL },
    { "documentWithInt:withJavaUtilSet:", "document", "Lorg.apache.lucene.document.Document;", 0x11, "Ljava.io.IOException;", NULL },
    { "hasDeletions", NULL, "Z", 0x1, NULL, NULL },
    { "close", NULL, "V", 0x31, "Ljava.io.IOException;", NULL },
    { "doClose", NULL, "V", 0x404, "Ljava.io.IOException;", NULL },
    { "getContext", NULL, "Lorg.apache.lucene.index.IndexReaderContext;", 0x401, NULL, NULL },
    { "leaves", NULL, "Ljava.util.List;", 0x11, NULL, NULL },
    { "getCoreCacheKey", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "getCombinedCoreAndDeletesKey", NULL, "Ljava.lang.Object;", 0x1, NULL, NULL },
    { "docFreqWithOrgApacheLuceneIndexTerm:", "docFreq", "I", 0x401, "Ljava.io.IOException;", NULL },
    { "totalTermFreqWithOrgApacheLuceneIndexTerm:", "totalTermFreq", "J", 0x401, "Ljava.io.IOException;", NULL },
    { "getSumDocFreqWithNSString:", "getSumDocFreq", "J", 0x401, "Ljava.io.IOException;", NULL },
    { "getDocCountWithNSString:", "getDocCount", "I", 0x401, "Ljava.io.IOException;", NULL },
    { "getSumTotalTermFreqWithNSString:", "getSumTotalTermFreq", "J", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "closed_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "closedByChild_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "refCount_", NULL, 0x12, "Ljava.util.concurrent.atomic.AtomicInteger;", NULL, NULL, .constantValue.asLong = 0 },
    { "readerClosedListeners_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Lorg/apache/lucene/index/IndexReader$ReaderClosedListener;>;", .constantValue.asLong = 0 },
    { "parentReaders_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Lorg/apache/lucene/index/IndexReader;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.IndexReader$ReaderClosedListener;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexReader = { 2, "IndexReader", "org.apache.lucene.index", NULL, 0x401, 33, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexReader;
}

@end

void OrgApacheLuceneIndexIndexReader_init(OrgApacheLuceneIndexIndexReader *self) {
  NSObject_init(self);
  self->closed_ = NO;
  self->closedByChild_ = NO;
  JreStrongAssignAndConsume(&self->refCount_, new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(1));
  JreStrongAssign(&self->readerClosedListeners_, JavaUtilCollections_synchronizedSetWithJavaUtilSet_([new_JavaUtilLinkedHashSet_init() autorelease]));
  JreStrongAssign(&self->parentReaders_, JavaUtilCollections_synchronizedSetWithJavaUtilSet_(JavaUtilCollections_newSetFromMapWithJavaUtilMap_([new_JavaUtilWeakHashMap_init() autorelease])));
  if (!([self isKindOfClass:[OrgApacheLuceneIndexCompositeReader class]] || [self isKindOfClass:[OrgApacheLuceneIndexLeafReader class]])) @throw [new_JavaLangError_initWithNSString_(@"IndexReader should never be directly extended, subclass LeafReader or CompositeReader instead.") autorelease];
}

void OrgApacheLuceneIndexIndexReader_notifyReaderClosedListenersWithJavaLangThrowable_(OrgApacheLuceneIndexIndexReader *self, JavaLangThrowable *th) {
  @synchronized(self->readerClosedListeners_) {
    for (id<OrgApacheLuceneIndexIndexReader_ReaderClosedListener> __strong listener in nil_chk(self->readerClosedListeners_)) {
      @try {
        [((id<OrgApacheLuceneIndexIndexReader_ReaderClosedListener>) nil_chk(listener)) onCloseWithOrgApacheLuceneIndexIndexReader:self];
      }
      @catch (JavaLangThrowable *t) {
        if (th == nil) {
          th = t;
        }
        else {
          [th addSuppressedWithJavaLangThrowable:t];
        }
      }
    }
    OrgApacheLuceneUtilIOUtils_reThrowUncheckedWithJavaLangThrowable_(th);
  }
}

void OrgApacheLuceneIndexIndexReader_reportCloseToParentReaders(OrgApacheLuceneIndexIndexReader *self) {
  @synchronized(self->parentReaders_) {
    for (OrgApacheLuceneIndexIndexReader * __strong parent in nil_chk(self->parentReaders_)) {
      ((OrgApacheLuceneIndexIndexReader *) nil_chk(parent))->closedByChild_ = YES;
      [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(parent->refCount_)) addAndGetWithInt:0];
      OrgApacheLuceneIndexIndexReader_reportCloseToParentReaders(parent);
    }
  }
}

jboolean OrgApacheLuceneIndexIndexReader_tryIncRef(OrgApacheLuceneIndexIndexReader *self) {
  jint count;
  while ((count = [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->refCount_)) get]) > 0) {
    if ([self->refCount_ compareAndSetWithInt:count withInt:count + 1]) {
      return YES;
    }
  }
  return NO;
}

void OrgApacheLuceneIndexIndexReader_decRef(OrgApacheLuceneIndexIndexReader *self) {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->refCount_)) get] <= 0) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this IndexReader is closed") autorelease];
  }
  jint rc = [self->refCount_ decrementAndGet];
  if (rc == 0) {
    self->closed_ = YES;
    JavaLangThrowable *throwable = nil;
    @try {
      [self doClose];
    }
    @catch (JavaLangThrowable *th) {
      throwable = th;
    }
    @finally {
      @try {
        OrgApacheLuceneIndexIndexReader_reportCloseToParentReaders(self);
      }
      @finally {
        OrgApacheLuceneIndexIndexReader_notifyReaderClosedListenersWithJavaLangThrowable_(self, throwable);
      }
    }
  }
  else if (rc < 0) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$I$", @"too many decRef calls: refCount is ", rc, @" after decrement")) autorelease];
  }
}

void OrgApacheLuceneIndexIndexReader_ensureOpen(OrgApacheLuceneIndexIndexReader *self) {
  if ([((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(self->refCount_)) get] <= 0) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this IndexReader is closed") autorelease];
  }
  if (self->closedByChild_) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this IndexReader cannot be used anymore as one of its child readers was closed") autorelease];
  }
}

jint OrgApacheLuceneIndexIndexReader_numDeletedDocs(OrgApacheLuceneIndexIndexReader *self) {
  return [self maxDoc] - [self numDocs];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexReader)

@implementation OrgApacheLuceneIndexIndexReader_ReaderClosedListener

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onCloseWithOrgApacheLuceneIndexIndexReader:", "onClose", "V", 0x401, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexReader_ReaderClosedListener = { 2, "ReaderClosedListener", "org.apache.lucene.index", "IndexReader", 0x609, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexReader_ReaderClosedListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexReader_ReaderClosedListener)
