//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"
#include "java/util/Collection.h"
#include "java/util/Comparator.h"
#include "java/util/HashMap.h"
#include "java/util/IdentityHashMap.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/UnicodeUtil.h"
#include "org/apache/lucene/util/automaton/Automaton.h"
#include "org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.h"

@interface OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder () {
 @public
  JavaUtilHashMap *stateRegistry_;
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *root_;
  OrgApacheLuceneUtilCharsRef *previous_;
}

+ (jint)convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)a
withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)s
                                     withJavaUtilIdentityHashMap:(JavaUtilIdentityHashMap *)visited;

- (jboolean)setPreviousWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)current;

- (void)replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state;

- (void)addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state
                                                          withJavaLangCharSequence:(id<JavaLangCharSequence>)current
                                                                           withInt:(jint)fromIndex;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, stateRegistry_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, root_, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, previous_, OrgApacheLuceneUtilCharsRef *)

static id<JavaUtilComparator> OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder, comparator_, id<JavaUtilComparator>)

__attribute__((unused)) static jint OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *a, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s, JavaUtilIdentityHashMap *visited);

__attribute__((unused)) static jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilCharsRef *current);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state, id<JavaLangCharSequence> current, jint fromIndex);

@interface OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State ()

+ (jboolean)referenceEqualsWithNSObjectArray:(IOSObjectArray *)a1
                           withNSObjectArray:(IOSObjectArray *)a2;

- (instancetype)init;

@end

static IOSIntArray *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State, NO_LABELS_, IOSIntArray *)

static IOSObjectArray *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State, NO_STATES_, IOSObjectArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(IOSObjectArray *a1, IOSObjectArray *a2);

__attribute__((unused)) static void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *self);

__attribute__((unused)) static OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder)

@implementation OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder

- (void)addWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)current {
  JreAssert((stateRegistry_ != nil), (@"Automaton already built."));
  JreAssert((previous_ == nil || [((id<JavaUtilComparator>) nil_chk(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator_)) compareWithId:previous_ withId:current] <= 0), (JreStrcat("$@$@", @"Input must be in sorted UTF-8 order: ", previous_, @" >= ", current)));
  JreAssert((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(self, current)), (@"org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.java:220 condition failed: assert setPrevious(current);"));
  jint pos = 0, max = [((OrgApacheLuceneUtilCharsRef *) nil_chk(current)) length];
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *next, *state = root_;
  while (pos < max && (next = [((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) lastChildWithInt:JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(current, pos)]) != nil) {
    state = next;
    pos += JavaLangCharacter_charCountWithInt_(JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(current, pos));
  }
  if ([((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) hasChildren]) OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, state);
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(self, state, current, pos);
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)complete {
  if (self->stateRegistry_ == nil) @throw [new_JavaLangIllegalStateException_init() autorelease];
  if ([((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(root_)) hasChildren]) OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, root_);
  JreStrongAssign(&stateRegistry_, nil);
  return root_;
}

+ (jint)convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)a
withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)s
                                     withJavaUtilIdentityHashMap:(JavaUtilIdentityHashMap *)visited {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(a, s, visited);
}

+ (OrgApacheLuceneUtilAutomatonAutomaton *)buildWithJavaUtilCollection:(id<JavaUtilCollection>)input {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(input);
}

- (jboolean)setPreviousWithOrgApacheLuceneUtilCharsRef:(OrgApacheLuceneUtilCharsRef *)current {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(self, current);
}

- (void)replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, state);
}

- (void)addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state
                                                          withJavaLangCharSequence:(id<JavaLangCharSequence>)current
                                                                           withInt:(jint)fromIndex {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(self, state, current, fromIndex);
}

- (instancetype)init {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(stateRegistry_);
  RELEASE_(root_);
  RELEASE_(previous_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder class]) {
    JreStrongAssign(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator_, OrgApacheLuceneUtilCharsRef_getUTF16SortedAsUTF8Comparator());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "addWithOrgApacheLuceneUtilCharsRef:", "add", "V", 0x1, NULL, NULL },
    { "complete", NULL, "Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", 0x1, NULL, NULL },
    { "convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:withJavaUtilIdentityHashMap:", "convert", "I", 0xa, NULL, NULL },
    { "buildWithJavaUtilCollection:", "build", "Lorg.apache.lucene.util.automaton.Automaton;", 0x9, NULL, NULL },
    { "setPreviousWithOrgApacheLuceneUtilCharsRef:", "setPrevious", "Z", 0x2, NULL, NULL },
    { "replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:", "replaceOrRegister", "V", 0x2, NULL, NULL },
    { "addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:withJavaLangCharSequence:withInt:", "addSuffix", "V", 0x2, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stateRegistry_", NULL, 0x2, "Ljava.util.HashMap;", NULL, "Ljava/util/HashMap<Lorg/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder$State;Lorg/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder$State;>;", .constantValue.asLong = 0 },
    { "root_", NULL, 0x2, "Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "previous_", NULL, 0x2, "Lorg.apache.lucene.util.CharsRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "comparator_", NULL, 0x1a, "Ljava.util.Comparator;", &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_comparator_, "Ljava/util/Comparator<Lorg/apache/lucene/util/CharsRef;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder = { 2, "DaciukMihovAutomatonBuilder", "org.apache.lucene.util.automaton", NULL, 0x10, 8, methods, 4, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder;
}

@end

jint OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *a, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s, JavaUtilIdentityHashMap *visited) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initialize();
  JavaLangInteger *converted = [((JavaUtilIdentityHashMap *) nil_chk(visited)) getWithId:s];
  if (converted != nil) {
    return [converted intValue];
  }
  converted = JavaLangInteger_valueOfWithInt_([((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(a)) createState]);
  [a setAcceptWithInt:[converted intValue] withBoolean:((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(s))->is_final_];
  [visited putWithId:s withId:converted];
  jint i = 0;
  IOSIntArray *labels = s->labels_;
  {
    IOSObjectArray *a__ = s->states_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *target = *b__++;
      [a addTransitionWithInt:[converted intValue] withInt:OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(a, target, visited) withInt:IOSIntArray_Get(nil_chk(labels), i++)];
    }
  }
  return [converted intValue];
}

OrgApacheLuceneUtilAutomatonAutomaton *OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_buildWithJavaUtilCollection_(id<JavaUtilCollection> input) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_initialize();
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *builder = [new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init() autorelease];
  IOSCharArray *chars = [IOSCharArray arrayWithLength:0];
  OrgApacheLuceneUtilCharsRef *ref = [new_OrgApacheLuceneUtilCharsRef_init() autorelease];
  for (OrgApacheLuceneUtilBytesRef * __strong b in nil_chk(input)) {
    chars = OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_(chars, ((OrgApacheLuceneUtilBytesRef *) nil_chk(b))->length_);
    jint len = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(b, chars);
    JreStrongAssign(&ref->chars_, chars);
    ref->length_ = len;
    [builder addWithOrgApacheLuceneUtilCharsRef:ref];
  }
  OrgApacheLuceneUtilAutomatonAutomaton_Builder *a = [new_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init() autorelease];
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_convertWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaUtilIdentityHashMap_(a, [builder complete], [new_JavaUtilIdentityHashMap_init() autorelease]);
  return [a finish];
}

jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_setPreviousWithOrgApacheLuceneUtilCharsRef_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilCharsRef *current) {
  JreStrongAssign(&self->previous_, OrgApacheLuceneUtilCharsRef_deepCopyOfWithOrgApacheLuceneUtilCharsRef_(current));
  return YES;
}

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *child = [((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) lastChild];
  if ([((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(child)) hasChildren]) OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_replaceOrRegisterWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_(self, child);
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *registered = [((JavaUtilHashMap *) nil_chk(self->stateRegistry_)) getWithId:child];
  if (registered != nil) {
    [state replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:registered];
  }
  else {
    [self->stateRegistry_ putWithId:child withId:child];
  }
}

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_addSuffixWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_withJavaLangCharSequence_withInt_(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *state, id<JavaLangCharSequence> current, jint fromIndex) {
  jint len = [((id<JavaLangCharSequence>) nil_chk(current)) length];
  while (fromIndex < len) {
    jint cp = JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(current, fromIndex);
    state = [((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state)) newStateWithInt:cp];
    fromIndex += JavaLangCharacter_charCountWithInt_(cp);
  }
  ((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(state))->is_final_ = YES;
}

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->stateRegistry_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->root_, new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init());
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init() {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder *self = [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder alloc];
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)

@implementation OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)getStateWithInt:(jint)label {
  jint index = JavaUtilArrays_binarySearchWithIntArray_withInt_(labels_, label);
  return index >= 0 ? IOSObjectArray_Get(nil_chk(states_), index) : nil;
}

- (jboolean)isEqual:(id)obj {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *other = (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) check_class_cast(obj, [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State class]);
  return is_final_ == ((OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *) nil_chk(other))->is_final_ && JavaUtilArrays_equalsWithIntArray_withIntArray_(self->labels_, other->labels_) && OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(self->states_, other->states_);
}

- (NSUInteger)hash {
  jint hash_ = is_final_ ? 1 : 0;
  hash_ ^= hash_ * 31 + ((IOSIntArray *) nil_chk(self->labels_))->size_;
  {
    IOSIntArray *a__ = self->labels_;
    jint const *b__ = a__->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint c = *b__++;
      hash_ ^= hash_ * 31 + c;
    }
  }
  {
    IOSObjectArray *a__ = self->states_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s = *b__++;
      hash_ ^= JavaLangSystem_identityHashCodeWithId_(s);
    }
  }
  return hash_;
}

- (jboolean)hasChildren {
  return ((IOSIntArray *) nil_chk(labels_))->size_ > 0;
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)newStateWithInt:(jint)label {
  JreAssert((JavaUtilArrays_binarySearchWithIntArray_withInt_(labels_, label) < 0), (JreStrcat("$I", @"State already has transition labeled: ", label)));
  JreStrongAssign(&labels_, JavaUtilArrays_copyOfWithIntArray_withInt_(labels_, ((IOSIntArray *) nil_chk(labels_))->size_ + 1));
  JreStrongAssign(&states_, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(states_, ((IOSObjectArray *) nil_chk(states_))->size_ + 1));
  *IOSIntArray_GetRef(labels_, ((IOSIntArray *) nil_chk(labels_))->size_ - 1) = label;
  return IOSObjectArray_SetAndConsume(states_, ((IOSObjectArray *) nil_chk(states_))->size_ - 1, new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init());
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)lastChild {
  JreAssert(([self hasChildren]), (@"No outgoing transitions."));
  return IOSObjectArray_Get(states_, ((IOSObjectArray *) nil_chk(states_))->size_ - 1);
}

- (OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)lastChildWithInt:(jint)label {
  jint index = ((IOSIntArray *) nil_chk(labels_))->size_ - 1;
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *s = nil;
  if (index >= 0 && IOSIntArray_Get(labels_, index) == label) {
    s = IOSObjectArray_Get(nil_chk(states_), index);
  }
  JreAssert((s == [self getStateWithInt:label]), (@"org/apache/lucene/util/automaton/DaciukMihovAutomatonBuilder.java:158 condition failed: assert s == getState(label);"));
  return s;
}

- (void)replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *)state {
  JreAssert(([self hasChildren]), (@"No outgoing transitions."));
  IOSObjectArray_Set(states_, ((IOSObjectArray *) nil_chk(states_))->size_ - 1, state);
}

+ (jboolean)referenceEqualsWithNSObjectArray:(IOSObjectArray *)a1
                           withNSObjectArray:(IOSObjectArray *)a2 {
  return OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(a1, a2);
}

- (instancetype)init {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(labels_);
  RELEASE_(states_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS_, [IOSIntArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES_, [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_class_()]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getStateWithInt:", "getState", "Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", 0x0, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "hasChildren", NULL, "Z", 0x0, NULL, NULL },
    { "newStateWithInt:", "newState", "Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", 0x0, NULL, NULL },
    { "lastChild", NULL, "Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", 0x0, NULL, NULL },
    { "lastChildWithInt:", "lastChild", "Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", 0x0, NULL, NULL },
    { "replaceLastChildWithOrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State:", "replaceLastChild", "V", 0x0, NULL, NULL },
    { "referenceEqualsWithNSObjectArray:withNSObjectArray:", "referenceEquals", "Z", 0xa, NULL, NULL },
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_LABELS_", NULL, 0x1a, "[I", &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS_, NULL, .constantValue.asLong = 0 },
    { "NO_STATES_", NULL, 0x1a, "[Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", &OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES_, NULL, .constantValue.asLong = 0 },
    { "labels_", NULL, 0x0, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "states_", NULL, 0x0, "[Lorg.apache.lucene.util.automaton.DaciukMihovAutomatonBuilder$State;", NULL, NULL, .constantValue.asLong = 0 },
    { "is_final_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State = { 2, "State", "org.apache.lucene.util.automaton", "DaciukMihovAutomatonBuilder", 0x1a, 10, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State;
}

@end

jboolean OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_referenceEqualsWithNSObjectArray_withNSObjectArray_(IOSObjectArray *a1, IOSObjectArray *a2) {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_initialize();
  if (((IOSObjectArray *) nil_chk(a1))->size_ != ((IOSObjectArray *) nil_chk(a2))->size_) {
    return NO;
  }
  for (jint i = 0; i < a1->size_; i++) {
    if (IOSObjectArray_Get(a1, i) != IOSObjectArray_Get(a2, i)) {
      return NO;
    }
  }
  return YES;
}

void OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *self) {
  NSObject_init(self);
  JreStrongAssign(&self->labels_, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_LABELS_);
  JreStrongAssign(&self->states_, OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_NO_STATES_);
}

OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *new_OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init() {
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State *self = [OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State alloc];
  OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAutomatonDaciukMihovAutomatonBuilder_State)
