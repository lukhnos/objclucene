//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/MinimizationOperations.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/BitSet.h"
#include "java/util/HashSet.h"
#include "java/util/LinkedList.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/MinimizationOperations.h"
#include "org/apache/lucene/util/automaton/Operations.h"
#include "org/apache/lucene/util/automaton/Transition.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/automaton/MinimizationOperations must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilAutomatonMinimizationOperations ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonMinimizationOperations_init(OrgApacheLuceneUtilAutomatonMinimizationOperations *self);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonMinimizationOperations *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonMinimizationOperations *create_OrgApacheLuceneUtilAutomatonMinimizationOperations_init(void);

@implementation OrgApacheLuceneUtilAutomatonMinimizationOperations

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonMinimizationOperations_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilAutomatonAutomaton *)minimizeWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                                                     withInt:(jint)maxDeterminizedStates {
  return OrgApacheLuceneUtilAutomatonMinimizationOperations_minimizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a, maxDeterminizedStates);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(minimizeWithOrgApacheLuceneUtilAutomatonAutomaton:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "minimize", "LOrgApacheLuceneUtilAutomatonAutomaton;I", "LOrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair;LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList;LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonMinimizationOperations = { "MinimizationOperations", "org.apache.lucene.util.automaton", ptrTable, methods, NULL, 7, 0x11, 2, 0, -1, 2, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonMinimizationOperations;
}

@end

void OrgApacheLuceneUtilAutomatonMinimizationOperations_init(OrgApacheLuceneUtilAutomatonMinimizationOperations *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAutomatonMinimizationOperations *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations, init)
}

OrgApacheLuceneUtilAutomatonMinimizationOperations *create_OrgApacheLuceneUtilAutomatonMinimizationOperations_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations, init)
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonMinimizationOperations_minimizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(OrgApacheLuceneUtilAutomatonAutomaton *a, jint maxDeterminizedStates) {
  OrgApacheLuceneUtilAutomatonMinimizationOperations_initialize();
  if ([((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(a)) getNumStates] == 0 || ([a isAcceptWithInt:0] == false && [a getNumTransitionsWithInt:0] == 0)) {
    return create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  }
  a = OrgApacheLuceneUtilAutomatonOperations_determinizeWithOrgApacheLuceneUtilAutomatonAutomaton_withInt_(a, maxDeterminizedStates);
  if ([((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(a)) getNumTransitionsWithInt:0] == 1) {
    OrgApacheLuceneUtilAutomatonTransition *t = create_OrgApacheLuceneUtilAutomatonTransition_init();
    [a getTransitionWithInt:0 withInt:0 withOrgApacheLuceneUtilAutomatonTransition:t];
    if (t->dest_ == 0 && t->min_ == JavaLangCharacter_MIN_CODE_POINT && t->max_ == JavaLangCharacter_MAX_CODE_POINT) {
      return a;
    }
  }
  a = OrgApacheLuceneUtilAutomatonOperations_totalizeWithOrgApacheLuceneUtilAutomatonAutomaton_(a);
  IOSIntArray *sigma = [((OrgApacheLuceneUtilAutomatonAutomaton *) nil_chk(a)) getStartPoints];
  jint sigmaLen = ((IOSIntArray *) nil_chk(sigma))->size_;
  jint statesLen = [a getNumStates];
  IOSObjectArray *reverse = [IOSObjectArray arrayWithDimensions:2 lengths:(jint[]){ statesLen, sigmaLen } type:JavaUtilArrayList_class_()];
  IOSObjectArray *partition = [IOSObjectArray arrayWithLength:statesLen type:JavaUtilHashSet_class_()];
  IOSObjectArray *splitblock = [IOSObjectArray arrayWithLength:statesLen type:JavaUtilArrayList_class_()];
  IOSIntArray *block = [IOSIntArray arrayWithLength:statesLen];
  IOSObjectArray *active = [IOSObjectArray arrayWithDimensions:2 lengths:(jint[]){ statesLen, sigmaLen } type:OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_class_()];
  IOSObjectArray *active2 = [IOSObjectArray arrayWithDimensions:2 lengths:(jint[]){ statesLen, sigmaLen } type:OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_class_()];
  JavaUtilLinkedList *pending = create_JavaUtilLinkedList_init();
  JavaUtilBitSet *pending2 = create_JavaUtilBitSet_initWithInt_(sigmaLen * statesLen);
  JavaUtilBitSet *split = create_JavaUtilBitSet_initWithInt_(statesLen);
  JavaUtilBitSet *refine = create_JavaUtilBitSet_initWithInt_(statesLen);
  JavaUtilBitSet *refine2 = create_JavaUtilBitSet_initWithInt_(statesLen);
  for (jint q = 0; q < statesLen; q++) {
    IOSObjectArray_SetAndConsume(splitblock, q, new_JavaUtilArrayList_init());
    IOSObjectArray_SetAndConsume(partition, q, new_JavaUtilHashSet_init());
    for (jint x = 0; x < sigmaLen; x++) {
      IOSObjectArray_SetAndConsume(nil_chk(IOSObjectArray_Get(active, q)), x, new_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init());
    }
  }
  for (jint q = 0; q < statesLen; q++) {
    jint j = [a isAcceptWithInt:q] ? 0 : 1;
    [((JavaUtilHashSet *) nil_chk(IOSObjectArray_Get(partition, j))) addWithId:JavaLangInteger_valueOfWithInt_(q)];
    *IOSIntArray_GetRef(block, q) = j;
    for (jint x = 0; x < sigmaLen; x++) {
      IOSObjectArray *r = IOSObjectArray_Get(reverse, [a stepWithInt:q withInt:IOSIntArray_Get(sigma, x)]);
      if (IOSObjectArray_Get(nil_chk(r), x) == nil) {
        IOSObjectArray_SetAndConsume(r, x, new_JavaUtilArrayList_init());
      }
      [((JavaUtilArrayList *) nil_chk(IOSObjectArray_Get(r, x))) addWithId:JavaLangInteger_valueOfWithInt_(q)];
    }
  }
  for (jint j = 0; j <= 1; j++) {
    for (jint x = 0; x < sigmaLen; x++) {
      for (JavaLangInteger *boxed__ in nil_chk(IOSObjectArray_Get(partition, j))) {
        jint q = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
        if (IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(reverse, q)), x) != nil) {
          IOSObjectArray_Set(nil_chk(IOSObjectArray_Get(active2, q)), x, [((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, j)), x))) addWithInt:q]);
        }
      }
    }
  }
  for (jint x = 0; x < sigmaLen; x++) {
    jint j = (((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, 0)), x)))->size_ <= ((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, 1)), x)))->size_) ? 0 : 1;
    [pending addWithId:create_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(j, x)];
    [pending2 setWithInt:x * statesLen + j];
  }
  jint k = 2;
  while (![pending isEmpty]) {
    OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *ip = [pending removeFirst];
    jint p = ((OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *) nil_chk(ip))->n1_;
    jint x = ip->n2_;
    [pending2 clearWithInt:x * statesLen + p];
    for (OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *m = JreRetainedLocalValue(((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, p)), x)))->first_); m != nil; m = m->next_) {
      JavaUtilArrayList *r = IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(reverse, m->q_)), x);
      if (r != nil) {
        for (JavaLangInteger *boxed__ in r) {
          jint i = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
          if (![split getWithInt:i]) {
            [split setWithInt:i];
            jint j = IOSIntArray_Get(block, i);
            [((JavaUtilArrayList *) nil_chk(IOSObjectArray_Get(splitblock, j))) addWithId:JavaLangInteger_valueOfWithInt_(i)];
            if (![refine2 getWithInt:j]) {
              [refine2 setWithInt:j];
              [refine setWithInt:j];
            }
          }
        }
      }
    }
    for (jint j = [refine nextSetBitWithInt:0]; j >= 0; j = [refine nextSetBitWithInt:j + 1]) {
      JavaUtilArrayList *sb = IOSObjectArray_Get(splitblock, j);
      if ([((JavaUtilArrayList *) nil_chk(sb)) size] < [((JavaUtilHashSet *) nil_chk(IOSObjectArray_Get(partition, j))) size]) {
        JavaUtilHashSet *b1 = IOSObjectArray_Get(partition, j);
        JavaUtilHashSet *b2 = IOSObjectArray_Get(partition, k);
        for (JavaLangInteger *boxed__ in sb) {
          jint s = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
          [((JavaUtilHashSet *) nil_chk(b1)) removeWithId:JavaLangInteger_valueOfWithInt_(s)];
          [((JavaUtilHashSet *) nil_chk(b2)) addWithId:JavaLangInteger_valueOfWithInt_(s)];
          *IOSIntArray_GetRef(block, s) = k;
          for (jint c = 0; c < sigmaLen; c++) {
            OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *sn = IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active2, s)), c);
            if (sn != nil && JreObjectEqualsEquals(sn->sl_, IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, j)), c))) {
              [sn remove];
              IOSObjectArray_Set(nil_chk(IOSObjectArray_Get(active2, s)), c, [((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, k)), c))) addWithInt:s]);
            }
          }
        }
        for (jint c = 0; c < sigmaLen; c++) {
          jint aj = ((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, j)), c)))->size_;
          jint ak = ((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(IOSObjectArray_Get(nil_chk(IOSObjectArray_Get(active, k)), c)))->size_;
          jint ofs = c * statesLen;
          if (![pending2 getWithInt:ofs + j] && 0 < aj && aj <= ak) {
            [pending2 setWithInt:ofs + j];
            [pending addWithId:create_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(j, c)];
          }
          else {
            [pending2 setWithInt:ofs + k];
            [pending addWithId:create_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(k, c)];
          }
        }
        k++;
      }
      [refine2 clearWithInt:j];
      for (JavaLangInteger *boxed__ in sb) {
        jint s = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
        [split clearWithInt:s];
      }
      [sb clear];
    }
    [refine clear];
  }
  OrgApacheLuceneUtilAutomatonAutomaton *result = create_OrgApacheLuceneUtilAutomatonAutomaton_init();
  OrgApacheLuceneUtilAutomatonTransition *t = create_OrgApacheLuceneUtilAutomatonTransition_init();
  IOSIntArray *stateMap = [IOSIntArray arrayWithLength:statesLen];
  IOSIntArray *stateRep = [IOSIntArray arrayWithLength:k];
  [result createState];
  for (jint n = 0; n < k; n++) {
    jboolean isInitial = false;
    for (JavaLangInteger *boxed__ in nil_chk(IOSObjectArray_Get(partition, n))) {
      jint q = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
      if (q == 0) {
        isInitial = true;
        break;
      }
    }
    jint newState;
    if (isInitial) {
      newState = 0;
    }
    else {
      newState = [result createState];
    }
    for (JavaLangInteger *boxed__ in nil_chk(IOSObjectArray_Get(partition, n))) {
      jint q = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
      *IOSIntArray_GetRef(stateMap, q) = newState;
      [result setAcceptWithInt:newState withBoolean:[a isAcceptWithInt:q]];
      *IOSIntArray_GetRef(stateRep, newState) = q;
    }
  }
  for (jint n = 0; n < k; n++) {
    jint numTransitions = [a initTransitionWithInt:IOSIntArray_Get(stateRep, n) withOrgApacheLuceneUtilAutomatonTransition:t];
    for (jint i = 0; i < numTransitions; i++) {
      [a getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:t];
      [result addTransitionWithInt:n withInt:IOSIntArray_Get(stateMap, t->dest_) withInt:t->min_ withInt:t->max_];
    }
  }
  [result finishState];
  return OrgApacheLuceneUtilAutomatonOperations_removeDeadStatesWithOrgApacheLuceneUtilAutomatonAutomaton_(result);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonMinimizationOperations)

@implementation OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair

- (instancetype)initWithInt:(jint)n1
                    withInt:(jint)n2 {
  OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(self, n1, n2);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "n1_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "n2_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "II", "LOrgApacheLuceneUtilAutomatonMinimizationOperations;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair = { "IntPair", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x18, 1, 2, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair;
}

@end

void OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *self, jint n1, jint n2) {
  NSObject_init(self);
  self->n1_ = n1;
  self->n2_ = n2;
}

OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(jint n1, jint n2) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair, initWithInt_withInt_, n1, n2)
}

OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair *create_OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair_initWithInt_withInt_(jint n1, jint n2) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair, initWithInt_withInt_, n1, n2)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonMinimizationOperations_IntPair)

@implementation OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *)addWithInt:(jint)q {
  return create_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(q, self);
}

- (void)dealloc {
  RELEASE_(first_);
  RELEASE_(last_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;", 0x0, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "size_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "first_", "LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "last_", "LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "add", "I", "LOrgApacheLuceneUtilAutomatonMinimizationOperations;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList = { "StateList", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x18, 2, 3, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList;
}

@end

void OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList, init)
}

OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *create_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList)

@implementation OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode

- (instancetype)initWithInt:(jint)q
withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList:(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *)sl {
  OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(self, q, sl);
  return self;
}

- (void)remove {
  ((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(sl_))->size_--;
  if (JreObjectEqualsEquals(sl_->first_, self)) JreStrongAssign(&sl_->first_, next_);
  else JreStrongAssign(&((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *) nil_chk(prev_))->next_, next_);
  if (JreObjectEqualsEquals(sl_->last_, self)) JreStrongAssign(&sl_->last_, prev_);
  else JreStrongAssign(&((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *) nil_chk(next_))->prev_, prev_);
}

- (void)dealloc {
  RELEASE_(next_);
  RELEASE_(prev_);
  RELEASE_(sl_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList:);
  methods[1].selector = @selector(remove);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "q_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "next_", "LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "prev_", "LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "sl_", "LOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ILOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList;", "LOrgApacheLuceneUtilAutomatonMinimizationOperations;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode = { "StateListNode", "org.apache.lucene.util.automaton", ptrTable, methods, fields, 7, 0x18, 2, 4, 1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode;
}

@end

void OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *self, jint q, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *sl) {
  NSObject_init(self);
  self->q_ = q;
  JreStrongAssign(&self->sl_, sl);
  if (((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *) nil_chk(sl))->size_++ == 0) JreStrongAssign(&sl->first_, JreStrongAssign(&sl->last_, self));
  else {
    JreStrongAssign(&((OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *) nil_chk(sl->last_))->next_, self);
    JreStrongAssign(&self->prev_, sl->last_);
    JreStrongAssign(&sl->last_, self);
  }
}

OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *new_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(jint q, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *sl) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode, initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_, q, sl)
}

OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode *create_OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode_initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_(jint q, OrgApacheLuceneUtilAutomatonMinimizationOperations_StateList *sl) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode, initWithInt_withOrgApacheLuceneUtilAutomatonMinimizationOperations_StateList_, q, sl)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonMinimizationOperations_StateListNode)
