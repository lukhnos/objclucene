//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SegmentDocValues.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/Long.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/codecs/DocValuesFormat.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/SegmentCommitInfo.h"
#include "org/apache/lucene/index/SegmentDocValues.h"
#include "org/apache/lucene/index/SegmentInfo.h"
#include "org/apache/lucene/index/SegmentReadState.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/IOContext.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/RefCount.h"

@interface OrgApacheLuceneIndexSegmentDocValues () {
 @public
  id<JavaUtilMap> genDVProducers_;
}

- (OrgApacheLuceneUtilRefCount *)newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)si
                                                             withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                                              withJavaLangLong:(JavaLangLong *)gen
                                                            withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentDocValues, genDVProducers_, id<JavaUtilMap>)

__attribute__((unused)) static OrgApacheLuceneUtilRefCount *OrgApacheLuceneIndexSegmentDocValues_newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withJavaLangLong_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexSegmentDocValues *self, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreDirectory *dir, JavaLangLong *gen, OrgApacheLuceneIndexFieldInfos *infos);

@interface OrgApacheLuceneIndexSegmentDocValues_$1 : OrgApacheLuceneUtilRefCount {
 @public
  OrgApacheLuceneIndexSegmentDocValues *this$0_;
  JavaLangLong *val$gen_;
}

- (void)release__;

- (instancetype)initWithOrgApacheLuceneIndexSegmentDocValues:(OrgApacheLuceneIndexSegmentDocValues *)outer$
                                            withJavaLangLong:(JavaLangLong *)capture$0
                  withOrgApacheLuceneCodecsDocValuesProducer:(OrgApacheLuceneCodecsDocValuesProducer *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSegmentDocValues_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentDocValues_$1, this$0_, OrgApacheLuceneIndexSegmentDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSegmentDocValues_$1, val$gen_, JavaLangLong *)

__attribute__((unused)) static void OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(OrgApacheLuceneIndexSegmentDocValues_$1 *self, OrgApacheLuceneIndexSegmentDocValues *outer$, JavaLangLong *capture$0, OrgApacheLuceneCodecsDocValuesProducer *arg$0);

__attribute__((unused)) static OrgApacheLuceneIndexSegmentDocValues_$1 *new_OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(OrgApacheLuceneIndexSegmentDocValues *outer$, JavaLangLong *capture$0, OrgApacheLuceneCodecsDocValuesProducer *arg$0) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexSegmentDocValues_$1 *create_OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(OrgApacheLuceneIndexSegmentDocValues *outer$, JavaLangLong *capture$0, OrgApacheLuceneCodecsDocValuesProducer *arg$0);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSegmentDocValues_$1)

@implementation OrgApacheLuceneIndexSegmentDocValues

- (OrgApacheLuceneUtilRefCount *)newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)si
                                                             withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                                                              withJavaLangLong:(JavaLangLong *)gen
                                                            withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos {
  return OrgApacheLuceneIndexSegmentDocValues_newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withJavaLangLong_withOrgApacheLuceneIndexFieldInfos_(self, si, dir, gen, infos);
}

- (OrgApacheLuceneCodecsDocValuesProducer *)getDocValuesProducerWithLong:(jlong)gen
                               withOrgApacheLuceneIndexSegmentCommitInfo:(OrgApacheLuceneIndexSegmentCommitInfo *)si
                                       withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir
                                      withOrgApacheLuceneIndexFieldInfos:(OrgApacheLuceneIndexFieldInfos *)infos {
  @synchronized(self) {
    OrgApacheLuceneUtilRefCount *dvp = [((id<JavaUtilMap>) nil_chk(genDVProducers_)) getWithId:JavaLangLong_valueOfWithLong_(gen)];
    if (dvp == nil) {
      dvp = OrgApacheLuceneIndexSegmentDocValues_newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withJavaLangLong_withOrgApacheLuceneIndexFieldInfos_(self, si, dir, JavaLangLong_valueOfWithLong_(gen), infos);
      JreAssert((dvp != nil), (@"org/apache/lucene/index/SegmentDocValues.java:68 condition failed: assert dvp != null;"));
      [genDVProducers_ putWithId:JavaLangLong_valueOfWithLong_(gen) withId:dvp];
    }
    else {
      [dvp incRef];
    }
    return [((OrgApacheLuceneUtilRefCount *) nil_chk(dvp)) get];
  }
}

- (void)decRefWithJavaUtilList:(id<JavaUtilList>)dvProducersGens {
  @synchronized(self) {
    NSException *t = nil;
    for (JavaLangLong * __strong gen in nil_chk(dvProducersGens)) {
      OrgApacheLuceneUtilRefCount *dvp = [((id<JavaUtilMap>) nil_chk(genDVProducers_)) getWithId:gen];
      JreAssert((dvp != nil), (JreStrcat("$@", @"gen=", gen)));
      @try {
        [((OrgApacheLuceneUtilRefCount *) nil_chk(dvp)) decRef];
      }
      @catch (NSException *th) {
        if (t != nil) {
          t = th;
        }
      }
    }
    if (t != nil) {
      OrgApacheLuceneUtilIOUtils_reThrowWithNSException_(t);
    }
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexSegmentDocValues_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(genDVProducers_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneStoreDirectory:withJavaLangLong:withOrgApacheLuceneIndexFieldInfos:", "newDocValuesProducer", "Lorg.apache.lucene.util.RefCount;", 0x2, "Ljava.io.IOException;", "(Lorg/apache/lucene/index/SegmentCommitInfo;Lorg/apache/lucene/store/Directory;Ljava/lang/Long;Lorg/apache/lucene/index/FieldInfos;)Lorg/apache/lucene/util/RefCount<Lorg/apache/lucene/codecs/DocValuesProducer;>;" },
    { "getDocValuesProducerWithLong:withOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneStoreDirectory:withOrgApacheLuceneIndexFieldInfos:", "getDocValuesProducer", "Lorg.apache.lucene.codecs.DocValuesProducer;", 0x20, "Ljava.io.IOException;", NULL },
    { "decRefWithJavaUtilList:", "decRef", "V", 0x20, "Ljava.io.IOException;", "(Ljava/util/List<Ljava/lang/Long;>;)V" },
    { "init", "SegmentDocValues", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "genDVProducers_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Long;Lorg/apache/lucene/util/RefCount<Lorg/apache/lucene/codecs/DocValuesProducer;>;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentDocValues = { 2, "SegmentDocValues", "org.apache.lucene.index", NULL, 0x10, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexSegmentDocValues;
}

@end

OrgApacheLuceneUtilRefCount *OrgApacheLuceneIndexSegmentDocValues_newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo_withOrgApacheLuceneStoreDirectory_withJavaLangLong_withOrgApacheLuceneIndexFieldInfos_(OrgApacheLuceneIndexSegmentDocValues *self, OrgApacheLuceneIndexSegmentCommitInfo *si, OrgApacheLuceneStoreDirectory *dir, JavaLangLong *gen, OrgApacheLuceneIndexFieldInfos *infos) {
  OrgApacheLuceneStoreDirectory *dvDir = dir;
  NSString *segmentSuffix = @"";
  if ([((JavaLangLong *) nil_chk(gen)) longLongValue] != -1) {
    dvDir = ((OrgApacheLuceneIndexSegmentInfo *) nil_chk(((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk(si))->info_))->dir_;
    segmentSuffix = JavaLangLong_toStringWithLong_withInt_([gen longLongValue], JavaLangCharacter_MAX_RADIX);
  }
  OrgApacheLuceneIndexSegmentReadState *srs = create_OrgApacheLuceneIndexSegmentReadState_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_(dvDir, ((OrgApacheLuceneIndexSegmentCommitInfo *) nil_chk(si))->info_, infos, JreLoadStatic(OrgApacheLuceneStoreIOContext, READ), segmentSuffix);
  OrgApacheLuceneCodecsDocValuesFormat *dvFormat = [((OrgApacheLuceneCodecsCodec *) nil_chk([((OrgApacheLuceneIndexSegmentInfo *) nil_chk(si->info_)) getCodec])) docValuesFormat];
  return create_OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(self, gen, [((OrgApacheLuceneCodecsDocValuesFormat *) nil_chk(dvFormat)) fieldsProducerWithOrgApacheLuceneIndexSegmentReadState:srs]);
}

void OrgApacheLuceneIndexSegmentDocValues_init(OrgApacheLuceneIndexSegmentDocValues *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->genDVProducers_, new_JavaUtilHashMap_init());
}

OrgApacheLuceneIndexSegmentDocValues *new_OrgApacheLuceneIndexSegmentDocValues_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSegmentDocValues, init)
}

OrgApacheLuceneIndexSegmentDocValues *create_OrgApacheLuceneIndexSegmentDocValues_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSegmentDocValues, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentDocValues)

@implementation OrgApacheLuceneIndexSegmentDocValues_$1

- (void)release__ {
  [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(object_)) close];
  @synchronized(this$0_) {
    [((id<JavaUtilMap>) nil_chk(this$0_->genDVProducers_)) removeWithId:val$gen_];
  }
}

- (instancetype)initWithOrgApacheLuceneIndexSegmentDocValues:(OrgApacheLuceneIndexSegmentDocValues *)outer$
                                            withJavaLangLong:(JavaLangLong *)capture$0
                  withOrgApacheLuceneCodecsDocValuesProducer:(OrgApacheLuceneCodecsDocValuesProducer *)arg$0 {
  OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(self, outer$, capture$0, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$gen_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "release__", "release", "V", 0x4, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneIndexSegmentDocValues:withJavaLangLong:withOrgApacheLuceneCodecsDocValuesProducer:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.index.SegmentDocValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$gen_", NULL, 0x1012, "Ljava.lang.Long;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.codecs.DocValuesProducer;"};
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneIndexSegmentDocValues", "newDocValuesProducerWithOrgApacheLuceneIndexSegmentCommitInfo:withOrgApacheLuceneStoreDirectory:withJavaLangLong:withOrgApacheLuceneIndexFieldInfos:" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSegmentDocValues_$1 = { 2, "", "org.apache.lucene.index", "SegmentDocValues", 0x8008, 2, methods, 2, fields, 1, superclass_type_args, 0, NULL, &enclosing_method, "Lorg/apache/lucene/util/RefCount<Lorg/apache/lucene/codecs/DocValuesProducer;>;" };
  return &_OrgApacheLuceneIndexSegmentDocValues_$1;
}

@end

void OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(OrgApacheLuceneIndexSegmentDocValues_$1 *self, OrgApacheLuceneIndexSegmentDocValues *outer$, JavaLangLong *capture$0, OrgApacheLuceneCodecsDocValuesProducer *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$gen_, capture$0);
  OrgApacheLuceneUtilRefCount_initWithId_(self, arg$0);
}

OrgApacheLuceneIndexSegmentDocValues_$1 *new_OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(OrgApacheLuceneIndexSegmentDocValues *outer$, JavaLangLong *capture$0, OrgApacheLuceneCodecsDocValuesProducer *arg$0) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSegmentDocValues_$1, initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_, outer$, capture$0, arg$0)
}

OrgApacheLuceneIndexSegmentDocValues_$1 *create_OrgApacheLuceneIndexSegmentDocValues_$1_initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_(OrgApacheLuceneIndexSegmentDocValues *outer$, JavaLangLong *capture$0, OrgApacheLuceneCodecsDocValuesProducer *arg$0) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSegmentDocValues_$1, initWithOrgApacheLuceneIndexSegmentDocValues_withJavaLangLong_withOrgApacheLuceneCodecsDocValuesProducer_, outer$, capture$0, arg$0)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSegmentDocValues_$1)
