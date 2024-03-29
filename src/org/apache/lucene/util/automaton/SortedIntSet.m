//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/SortedIntSet.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/automaton/SortedIntSet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/automaton/SortedIntSet must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilAutomatonSortedIntSet () {
 @public
  jint hashCode_;
  id<JavaUtilMap> map_;
  jboolean useTreeMap_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonSortedIntSet, map_, id<JavaUtilMap>)

inline jint OrgApacheLuceneUtilAutomatonSortedIntSet_get_TREE_MAP_CUTOVER(void);
#define OrgApacheLuceneUtilAutomatonSortedIntSet_TREE_MAP_CUTOVER 30
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneUtilAutomatonSortedIntSet, TREE_MAP_CUTOVER, jint)

@implementation OrgApacheLuceneUtilAutomatonSortedIntSet

- (instancetype)initPackagePrivateWithInt:(jint)capacity {
  OrgApacheLuceneUtilAutomatonSortedIntSet_initPackagePrivateWithInt_(self, capacity);
  return self;
}

- (void)incrWithInt:(jint)num {
  if (useTreeMap_) {
    JavaLangInteger *key = JavaLangInteger_valueOfWithInt_(num);
    JavaLangInteger *val = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(map_)) getWithId:key]);
    if (val == nil) {
      [map_ putWithId:key withId:JavaLangInteger_valueOfWithInt_(1)];
    }
    else {
      [map_ putWithId:key withId:JavaLangInteger_valueOfWithInt_(1 + [val intValue])];
    }
    return;
  }
  if (upto_ == ((IOSIntArray *) nil_chk(values_))->size_) {
    JreStrongAssign(&values_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(values_, 1 + upto_));
    JreStrongAssign(&counts_, OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(counts_, 1 + upto_));
  }
  for (jint i = 0; i < upto_; i++) {
    if (IOSIntArray_Get(nil_chk(values_), i) == num) {
      (*IOSIntArray_GetRef(nil_chk(counts_), i))++;
      return;
    }
    else if (num < IOSIntArray_Get(values_, i)) {
      jint j = upto_ - 1;
      while (j >= i) {
        *IOSIntArray_GetRef(values_, 1 + j) = IOSIntArray_Get(values_, j);
        *IOSIntArray_GetRef(nil_chk(counts_), 1 + j) = IOSIntArray_Get(counts_, j);
        j--;
      }
      *IOSIntArray_GetRef(values_, i) = num;
      *IOSIntArray_GetRef(nil_chk(counts_), i) = 1;
      upto_++;
      return;
    }
  }
  *IOSIntArray_GetRef(nil_chk(values_), upto_) = num;
  *IOSIntArray_GetRef(nil_chk(counts_), upto_) = 1;
  upto_++;
  if (upto_ == OrgApacheLuceneUtilAutomatonSortedIntSet_TREE_MAP_CUTOVER) {
    useTreeMap_ = true;
    for (jint i = 0; i < upto_; i++) {
      [((id<JavaUtilMap>) nil_chk(map_)) putWithId:JavaLangInteger_valueOfWithInt_(IOSIntArray_Get(nil_chk(values_), i)) withId:JavaLangInteger_valueOfWithInt_(IOSIntArray_Get(nil_chk(counts_), i))];
    }
  }
}

- (void)decrWithInt:(jint)num {
  if (useTreeMap_) {
    jint count = [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(map_)) getWithId:JavaLangInteger_valueOfWithInt_(num)])) intValue];
    if (count == 1) {
      [map_ removeWithId:JavaLangInteger_valueOfWithInt_(num)];
    }
    else {
      [map_ putWithId:JavaLangInteger_valueOfWithInt_(num) withId:JavaLangInteger_valueOfWithInt_(count - 1)];
    }
    if ([map_ size] == 0) {
      useTreeMap_ = false;
      upto_ = 0;
    }
    return;
  }
  for (jint i = 0; i < upto_; i++) {
    if (IOSIntArray_Get(nil_chk(values_), i) == num) {
      (*IOSIntArray_GetRef(nil_chk(counts_), i))--;
      if (IOSIntArray_Get(counts_, i) == 0) {
        jint limit = upto_ - 1;
        while (i < limit) {
          *IOSIntArray_GetRef(values_, i) = IOSIntArray_Get(values_, i + 1);
          *IOSIntArray_GetRef(counts_, i) = IOSIntArray_Get(counts_, i + 1);
          i++;
        }
        upto_ = limit;
      }
      return;
    }
  }
  JreAssert(false, @"org/apache/lucene/util/automaton/SortedIntSet.java:132 condition failed: assert false;");
}

- (void)computeHash {
  if (useTreeMap_) {
    if ([((id<JavaUtilMap>) nil_chk(map_)) size] > ((IOSIntArray *) nil_chk(values_))->size_) {
      jint size = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_([map_ size], OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT);
      JreStrongAssignAndConsume(&values_, [IOSIntArray newArrayWithLength:size]);
      JreStrongAssignAndConsume(&counts_, [IOSIntArray newArrayWithLength:size]);
    }
    hashCode_ = [map_ size];
    upto_ = 0;
    for (JavaLangInteger *boxed__ in nil_chk([map_ keySet])) {
      jint state = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
      hashCode_ = 683 * hashCode_ + state;
      *IOSIntArray_GetRef(nil_chk(values_), upto_++) = state;
    }
  }
  else {
    hashCode_ = upto_;
    for (jint i = 0; i < upto_; i++) {
      hashCode_ = 683 * hashCode_ + IOSIntArray_Get(nil_chk(values_), i);
    }
  }
}

- (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *)freezeWithInt:(jint)state {
  IOSIntArray *c = [IOSIntArray arrayWithLength:upto_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(values_, 0, c, 0, upto_);
  return create_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(c, hashCode_, state);
}

- (NSUInteger)hash {
  return hashCode_;
}

- (jboolean)isEqual:(id)_other {
  if (_other == nil) {
    return false;
  }
  if (!([_other isKindOfClass:[OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet class]])) {
    return false;
  }
  OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *other = (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *) cast_chk(_other, [OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet class]);
  if (hashCode_ != other->hashCode_) {
    return false;
  }
  if (((IOSIntArray *) nil_chk(other->values_))->size_ != upto_) {
    return false;
  }
  for (jint i = 0; i < upto_; i++) {
    if (IOSIntArray_Get(other->values_, i) != IOSIntArray_Get(nil_chk(values_), i)) {
      return false;
    }
  }
  return true;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = JreRetainedLocalValue([create_JavaLangStringBuilder_init() appendWithChar:'[']);
  for (jint i = 0; i < upto_; i++) {
    if (i > 0) {
      [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:' '];
    }
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sb)) appendWithInt:IOSIntArray_Get(nil_chk(values_), i)])) appendWithChar:':'])) appendWithInt:IOSIntArray_Get(nil_chk(counts_), i)];
  }
  [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:']'];
  return [sb description];
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(counts_);
  RELEASE_(map_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet;", 0x1, 3, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithInt:);
  methods[1].selector = @selector(incrWithInt:);
  methods[2].selector = @selector(decrWithInt:);
  methods[3].selector = @selector(computeHash);
  methods[4].selector = @selector(freezeWithInt:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  methods[7].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "counts_", "[I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "upto_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "hashCode_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "TREE_MAP_CUTOVER", "I", .constantValue.asInt = OrgApacheLuceneUtilAutomatonSortedIntSet_TREE_MAP_CUTOVER, 0x1a, -1, -1, -1, -1 },
    { "map_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
    { "useTreeMap_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "state_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "incr", "decr", "freeze", "hashCode", "equals", "LNSObject;", "toString", "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;", "LOrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonSortedIntSet = { "SortedIntSet", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x10, 8, 8, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonSortedIntSet;
}

@end

void OrgApacheLuceneUtilAutomatonSortedIntSet_initPackagePrivateWithInt_(OrgApacheLuceneUtilAutomatonSortedIntSet *self, jint capacity) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->map_, new_JavaUtilTreeMap_init());
  JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithLength:capacity]);
  JreStrongAssignAndConsume(&self->counts_, [IOSIntArray newArrayWithLength:capacity]);
}

OrgApacheLuceneUtilAutomatonSortedIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_initPackagePrivateWithInt_(jint capacity) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonSortedIntSet, initPackagePrivateWithInt_, capacity)
}

OrgApacheLuceneUtilAutomatonSortedIntSet *create_OrgApacheLuceneUtilAutomatonSortedIntSet_initPackagePrivateWithInt_(jint capacity) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonSortedIntSet, initPackagePrivateWithInt_, capacity)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonSortedIntSet)

@implementation OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet

- (instancetype)initWithIntArray:(IOSIntArray *)values
                         withInt:(jint)hashCode
                         withInt:(jint)state {
  OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(self, values, hashCode, state);
  return self;
}

- (instancetype)initWithInt:(jint)num
                    withInt:(jint)state {
  OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(self, num, state);
  return self;
}

- (NSUInteger)hash {
  return hashCode_;
}

- (jboolean)isEqual:(id)_other {
  if (_other == nil) {
    return false;
  }
  if ([_other isKindOfClass:[OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet class]]) {
    OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *other = (OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *) _other;
    if (hashCode_ != other->hashCode_) {
      return false;
    }
    if (((IOSIntArray *) nil_chk(other->values_))->size_ != values_->size_) {
      return false;
    }
    for (jint i = 0; i < values_->size_; i++) {
      if (IOSIntArray_Get(other->values_, i) != IOSIntArray_Get(values_, i)) {
        return false;
      }
    }
    return true;
  }
  else if ([_other isKindOfClass:[OrgApacheLuceneUtilAutomatonSortedIntSet class]]) {
    OrgApacheLuceneUtilAutomatonSortedIntSet *other = (OrgApacheLuceneUtilAutomatonSortedIntSet *) _other;
    if (hashCode_ != other->hashCode_) {
      return false;
    }
    if (((IOSIntArray *) nil_chk(other->values_))->size_ != ((IOSIntArray *) nil_chk(values_))->size_) {
      return false;
    }
    for (jint i = 0; i < values_->size_; i++) {
      if (IOSIntArray_Get(other->values_, i) != IOSIntArray_Get(values_, i)) {
        return false;
      }
    }
    return true;
  }
  return false;
}

- (NSString *)description {
  JavaLangStringBuilder *sb = JreRetainedLocalValue([create_JavaLangStringBuilder_init() appendWithChar:'[']);
  for (jint i = 0; i < ((IOSIntArray *) nil_chk(values_))->size_; i++) {
    if (i > 0) {
      [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:' '];
    }
    [((JavaLangStringBuilder *) nil_chk(sb)) appendWithInt:IOSIntArray_Get(values_, i)];
  }
  [((JavaLangStringBuilder *) nil_chk(sb)) appendWithChar:']'];
  return [sb description];
}

- (void)dealloc {
  RELEASE_(values_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 2, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithIntArray:withInt:withInt:);
  methods[1].selector = @selector(initWithInt:withInt:);
  methods[2].selector = @selector(hash);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "[I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "hashCode_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "state_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[III", "II", "hashCode", "equals", "LNSObject;", "toString", "LOrgApacheLuceneUtilAutomatonSortedIntSet;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet = { "FrozenIntSet", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x19, 5, 3, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet;
}

@end

void OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *self, IOSIntArray *values, jint hashCode, jint state) {
  NSObject_init(self);
  JreStrongAssign(&self->values_, values);
  self->hashCode_ = hashCode;
  self->state_ = state;
}

OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(IOSIntArray *values, jint hashCode, jint state) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet, initWithIntArray_withInt_withInt_, values, hashCode, state)
}

OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *create_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithIntArray_withInt_withInt_(IOSIntArray *values, jint hashCode, jint state) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet, initWithIntArray_withInt_withInt_, values, hashCode, state)
}

void OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *self, jint num, jint state) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithInts:(jint[]){ num } count:1]);
  self->state_ = state;
  self->hashCode_ = 683 + num;
}

OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *new_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(jint num, jint state) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet, initWithInt_withInt_, num, state)
}

OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet *create_OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet_initWithInt_withInt_(jint num, jint state) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet, initWithInt_withInt_, num, state)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet)
