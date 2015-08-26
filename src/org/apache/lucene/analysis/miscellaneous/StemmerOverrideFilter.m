//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Character.h"
#include "java/util/ArrayList.h"
#include "java/util/Comparator.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/StemmerOverrideFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/KeywordAttribute.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/AttributeSource.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/BytesRefHash.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/IntsRefBuilder.h"
#include "org/apache/lucene/util/UnicodeUtil.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/ByteSequenceOutputs.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/Outputs.h"

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter () {
 @public
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *stemmerOverrideMap_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute> keywordAtt_;
  OrgApacheLuceneUtilFstFST_BytesReader *fstReader_;
  OrgApacheLuceneUtilFstFST_Arc *scratchArc_;
  IOSCharArray *spare_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter, stemmerOverrideMap_, OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter, keywordAtt_, id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter, fstReader_, OrgApacheLuceneUtilFstFST_BytesReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter, scratchArc_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter, spare_, IOSCharArray *)

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap () {
 @public
  OrgApacheLuceneUtilFstFST *fst_;
  jboolean ignoreCase_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap, fst_, OrgApacheLuceneUtilFstFST *)

@interface OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder () {
 @public
  OrgApacheLuceneUtilBytesRefHash *hash__;
  OrgApacheLuceneUtilBytesRefBuilder *spare_;
  JavaUtilArrayList *outputValues_;
  jboolean ignoreCase_;
  OrgApacheLuceneUtilCharsRefBuilder *charsSpare_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder, hash__, OrgApacheLuceneUtilBytesRefHash *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder, spare_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder, outputValues_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder, charsSpare_, OrgApacheLuceneUtilCharsRefBuilder *)

@implementation OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap:(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *)stemmerOverrideMap {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(self, input, stemmerOverrideMap);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if (fstReader_ == nil) {
      return YES;
    }
    if (![((id<OrgApacheLuceneAnalysisTokenattributesKeywordAttribute>) nil_chk(keywordAtt_)) isKeyword]) {
      OrgApacheLuceneUtilBytesRef *stem = [((OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *) nil_chk(stemmerOverrideMap_)) getWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:[termAtt_ length] withOrgApacheLuceneUtilFstFST_Arc:scratchArc_ withOrgApacheLuceneUtilFstFST_BytesReader:fstReader_];
      if (stem != nil) {
        JreStrongAssign(&spare_, OrgApacheLuceneUtilArrayUtil_growWithCharArray_withInt_([termAtt_ buffer], stem->length_));
        jint length = OrgApacheLuceneUtilUnicodeUtil_UTF8toUTF16WithOrgApacheLuceneUtilBytesRef_withCharArray_(stem, spare_);
        if (spare_ != [termAtt_ buffer]) {
          [termAtt_ copyBufferWithCharArray:spare_ withInt:0 withInt:length];
        }
        else {
          [termAtt_ setLengthWithInt:length];
        }
        [keywordAtt_ setKeywordWithBoolean:YES];
      }
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(stemmerOverrideMap_);
  RELEASE_(termAtt_);
  RELEASE_(keywordAtt_);
  RELEASE_(fstReader_);
  RELEASE_(scratchArc_);
  RELEASE_(spare_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap:", "StemmerOverrideFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stemmerOverrideMap_", NULL, 0x12, "Lorg.apache.lucene.analysis.miscellaneous.StemmerOverrideFilter$StemmerOverrideMap;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "keywordAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.KeywordAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "fstReader_", NULL, 0x12, "Lorg.apache.lucene.util.fst.FST$BytesReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "scratchArc_", NULL, 0x12, "Lorg.apache.lucene.util.fst.FST$Arc;", NULL, "Lorg/apache/lucene/util/fst/FST$Arc<Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
    { "spare_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.miscellaneous.StemmerOverrideFilter$StemmerOverrideMap;", "Lorg.apache.lucene.analysis.miscellaneous.StemmerOverrideFilter$Builder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter = { 2, "StemmerOverrideFilter", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 2, methods, 6, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *stemmerOverrideMap) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesKeywordAttribute_class_()]);
  JreStrongAssignAndConsume(&self->scratchArc_, new_OrgApacheLuceneUtilFstFST_Arc_init());
  JreStrongAssignAndConsume(&self->spare_, [IOSCharArray newArrayWithLength:0]);
  JreStrongAssign(&self->stemmerOverrideMap_, stemmerOverrideMap);
  JreStrongAssign(&self->fstReader_, [((OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *) nil_chk(stemmerOverrideMap)) getBytesReader]);
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *stemmerOverrideMap) {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter *self = [OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter alloc];
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_(self, input, stemmerOverrideMap);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter)

@implementation OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
                                      withBoolean:(jboolean)ignoreCase {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_(self, fst, ignoreCase);
  return self;
}

- (OrgApacheLuceneUtilFstFST_BytesReader *)getBytesReader {
  if (fst_ == nil) {
    return nil;
  }
  else {
    return [fst_ getBytesReader];
  }
}

- (OrgApacheLuceneUtilBytesRef *)getWithCharArray:(IOSCharArray *)buffer
                                          withInt:(jint)bufferLen
                withOrgApacheLuceneUtilFstFST_Arc:(OrgApacheLuceneUtilFstFST_Arc *)scratchArc
        withOrgApacheLuceneUtilFstFST_BytesReader:(OrgApacheLuceneUtilFstFST_BytesReader *)fstReader {
  OrgApacheLuceneUtilBytesRef *pendingOutput = [((OrgApacheLuceneUtilFstOutputs *) nil_chk(((OrgApacheLuceneUtilFstFST *) nil_chk(fst_))->outputs_)) getNoOutput];
  OrgApacheLuceneUtilBytesRef *matchOutput = nil;
  jint bufUpto = 0;
  [fst_ getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:scratchArc];
  while (bufUpto < bufferLen) {
    jint codePoint = JavaLangCharacter_codePointAtWithCharArray_withInt_withInt_(buffer, bufUpto, bufferLen);
    if ([fst_ findTargetArcWithInt:ignoreCase_ ? JavaLangCharacter_toLowerCaseWithInt_(codePoint) : codePoint withOrgApacheLuceneUtilFstFST_Arc:scratchArc withOrgApacheLuceneUtilFstFST_Arc:scratchArc withOrgApacheLuceneUtilFstFST_BytesReader:fstReader] == nil) {
      return nil;
    }
    pendingOutput = [fst_->outputs_ addWithId:pendingOutput withId:((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(scratchArc))->output_];
    bufUpto += JavaLangCharacter_charCountWithInt_(codePoint);
  }
  if ([((OrgApacheLuceneUtilFstFST_Arc *) nil_chk(scratchArc)) isFinal]) {
    matchOutput = [fst_->outputs_ addWithId:pendingOutput withId:scratchArc->nextFinalOutput_];
  }
  return matchOutput;
}

- (void)dealloc {
  RELEASE_(fst_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilFstFST:withBoolean:", "StemmerOverrideMap", NULL, 0x1, NULL, NULL },
    { "getBytesReader", NULL, "Lorg.apache.lucene.util.fst.FST$BytesReader;", 0x1, NULL, NULL },
    { "getWithCharArray:withInt:withOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilFstFST_BytesReader:", "get", "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fst_", NULL, 0x12, "Lorg.apache.lucene.util.fst.FST;", NULL, "Lorg/apache/lucene/util/fst/FST<Lorg/apache/lucene/util/BytesRef;>;", .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap = { 2, "StemmerOverrideMap", "org.apache.lucene.analysis.miscellaneous", "StemmerOverrideFilter", 0x19, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *self, OrgApacheLuceneUtilFstFST *fst, jboolean ignoreCase) {
  NSObject_init(self);
  JreStrongAssign(&self->fst_, fst);
  self->ignoreCase_ = ignoreCase;
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_(OrgApacheLuceneUtilFstFST *fst, jboolean ignoreCase) {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *self = [OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap alloc];
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_(self, fst, ignoreCase);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap)

@implementation OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder

- (instancetype)init {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_init(self);
  return self;
}

- (instancetype)initWithBoolean:(jboolean)ignoreCase {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(self, ignoreCase);
  return self;
}

- (jboolean)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
               withJavaLangCharSequence:(id<JavaLangCharSequence>)output {
  jint length = [((id<JavaLangCharSequence>) nil_chk(input)) length];
  if (ignoreCase_) {
    [((OrgApacheLuceneUtilCharsRefBuilder *) nil_chk(charsSpare_)) growWithInt:length];
    IOSCharArray *buffer = [charsSpare_ chars];
    for (jint i = 0; i < length; ) {
      i += JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(JavaLangCharacter_toLowerCaseWithInt_(JavaLangCharacter_codePointAtWithJavaLangCharSequence_withInt_(input, i)), buffer, i);
    }
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) copyCharsWithCharArray:buffer withInt:0 withInt:length];
  }
  else {
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) copyCharsWithJavaLangCharSequence:input withInt:0 withInt:length];
  }
  if ([((OrgApacheLuceneUtilBytesRefHash *) nil_chk(hash__)) addWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(spare_)) get]] >= 0) {
    [((JavaUtilArrayList *) nil_chk(outputValues_)) addWithId:output];
    return YES;
  }
  return NO;
}

- (OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap *)build {
  OrgApacheLuceneUtilFstByteSequenceOutputs *outputs = OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton();
  OrgApacheLuceneUtilFstBuilder *builder = [new_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_withOrgApacheLuceneUtilFstOutputs_(JreLoadStatic(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum, BYTE4), outputs) autorelease];
  IOSIntArray *sort = [((OrgApacheLuceneUtilBytesRefHash *) nil_chk(hash__)) sortWithJavaUtilComparator:OrgApacheLuceneUtilBytesRef_getUTF8SortedAsUnicodeComparator()];
  OrgApacheLuceneUtilIntsRefBuilder *intsSpare = [new_OrgApacheLuceneUtilIntsRefBuilder_init() autorelease];
  jint size = [hash__ size];
  OrgApacheLuceneUtilBytesRef *spare = [new_OrgApacheLuceneUtilBytesRef_init() autorelease];
  for (jint i = 0; i < size; i++) {
    jint id_ = IOSIntArray_Get(nil_chk(sort), i);
    OrgApacheLuceneUtilBytesRef *bytesRef = [hash__ getWithInt:id_ withOrgApacheLuceneUtilBytesRef:spare];
    [intsSpare copyUTF8BytesWithOrgApacheLuceneUtilBytesRef:bytesRef];
    [builder addWithOrgApacheLuceneUtilIntsRef:[intsSpare get] withId:[new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_([((JavaUtilArrayList *) nil_chk(outputValues_)) getWithInt:id_]) autorelease]];
  }
  return [new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_StemmerOverrideMap_initWithOrgApacheLuceneUtilFstFST_withBoolean_([builder finish], ignoreCase_) autorelease];
}

- (void)dealloc {
  RELEASE_(hash__);
  RELEASE_(spare_);
  RELEASE_(outputValues_);
  RELEASE_(charsSpare_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Builder", NULL, 0x1, NULL, NULL },
    { "initWithBoolean:", "Builder", NULL, 0x1, NULL, NULL },
    { "addWithJavaLangCharSequence:withJavaLangCharSequence:", "add", "Z", 0x1, NULL, NULL },
    { "build", NULL, "Lorg.apache.lucene.analysis.miscellaneous.StemmerOverrideFilter$StemmerOverrideMap;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "hash__", "hash", 0x12, "Lorg.apache.lucene.util.BytesRefHash;", NULL, NULL, .constantValue.asLong = 0 },
    { "spare_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "outputValues_", NULL, 0x12, "Ljava.util.ArrayList;", NULL, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;", .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "charsSpare_", NULL, 0x12, "Lorg.apache.lucene.util.CharsRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder = { 2, "Builder", "org.apache.lucene.analysis.miscellaneous", "StemmerOverrideFilter", 0x9, 4, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_init(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *self) {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(self, NO);
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_init() {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *self = [OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder alloc];
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_init(self);
  return self;
}

void OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *self, jboolean ignoreCase) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->hash__, new_OrgApacheLuceneUtilBytesRefHash_init());
  JreStrongAssignAndConsume(&self->spare_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  JreStrongAssignAndConsume(&self->outputValues_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->charsSpare_, new_OrgApacheLuceneUtilCharsRefBuilder_init());
  self->ignoreCase_ = ignoreCase;
}

OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *new_OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(jboolean ignoreCase) {
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder *self = [OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder alloc];
  OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder_initWithBoolean_(self, ignoreCase);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousStemmerOverrideFilter_Builder)
