//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/Extensions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserExtExtensions")
#ifdef RESTRICT_OrgApacheLuceneQueryparserExtExtensions
#define INCLUDE_ALL_OrgApacheLuceneQueryparserExtExtensions 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserExtExtensions 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserExtExtensions

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserExtExtensions_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserExtExtensions || defined(INCLUDE_OrgApacheLuceneQueryparserExtExtensions))
#define OrgApacheLuceneQueryparserExtExtensions_

@class OrgApacheLuceneQueryparserExtExtensions_Pair;
@class OrgApacheLuceneQueryparserExtParserExtension;

/*!
 @brief The <code>Extensions</code> class represents an extension mapping to associate 
 <code>ParserExtension</code> instances with extension keys.An extension key is a
  string encoded into a Lucene standard query parser field symbol recognized by 
 <code>ExtendableQueryParser</code>.
 The query parser passes each extension field
  token to <code>splitExtensionField(String, String)</code> to separate the
  extension key from the field identifier. 
 <p>
  In addition to the key to extension mapping this class also defines the field
  name overloading scheme. <code>ExtendableQueryParser</code> uses the given
  extension to split the actual field name and extension key by calling 
 <code>splitExtensionField(String, String)</code>. To change the order or the key
  / field name encoding scheme users can subclass <code>Extensions</code> to
  implement their own.
 - seealso: ExtendableQueryParser
 - seealso: ParserExtension
 */
@interface OrgApacheLuceneQueryparserExtExtensions : NSObject
@property (readonly, class) jchar DEFAULT_EXTENSION_FIELD_DELIMITER NS_SWIFT_NAME(DEFAULT_EXTENSION_FIELD_DELIMITER);

#pragma mark Public

/*!
 @brief Creates a new <code>Extensions</code> instance with the 
 <code>DEFAULT_EXTENSION_FIELD_DELIMITER</code> as a delimiter character.
 */
- (instancetype __nonnull)init;

/*!
 @brief Creates a new <code>Extensions</code> instance
 @param extensionFieldDelimiter the extensions field delimiter character
 */
- (instancetype __nonnull)initWithChar:(jchar)extensionFieldDelimiter;

/*!
 @brief Adds a new <code>ParserExtension</code> instance associated with the given key.
 @param key the parser extension key
 @param extension the parser extension
 */
- (void)addWithNSString:(NSString *)key
withOrgApacheLuceneQueryparserExtParserExtension:(OrgApacheLuceneQueryparserExtParserExtension *)extension;

/*!
 @brief Builds an extension field string from a given extension key and the default
  query field.The default field and the key are delimited with the extension
  field delimiter character.
 This method makes no assumption about the order
  of the extension key and the field. By default the extension key is
  appended to the end of the returned string while the field is added to the
  beginning. Special Query characters are escaped in the result. 
 <p>
  Note: <code>Extensions</code> subclasses must maintain the contract between 
 <code>buildExtensionField(String)</code> and 
 <code>splitExtensionField(String, String)</code> where the latter inverts the
  former. 
 </p>
 */
- (NSString *)buildExtensionFieldWithNSString:(NSString *)extensionKey;

/*!
 @brief Builds an extension field string from a given extension key and the
  extensions field.The field and the key are delimited with the extension
  field delimiter character.
 This method makes no assumption about the order
  of the extension key and the field. By default the extension key is
  appended to the end of the returned string while the field is added to the
  beginning. Special Query characters are escaped in the result. 
 <p>
  Note: <code>Extensions</code> subclasses must maintain the contract between 
 <code>buildExtensionField(String, String)</code> and 
 <code>splitExtensionField(String, String)</code> where the latter inverts the
  former. 
 </p>
 @param extensionKey the extension key
 @param field the field to apply the extension on.
 @return escaped extension field identifier
 - seealso: #buildExtensionField(String)to use the default query field
 */
- (NSString *)buildExtensionFieldWithNSString:(NSString *)extensionKey
                                 withNSString:(NSString *)field;

/*!
 @brief Escapes an extension field.The default implementation is equivalent to 
 <code>QueryParser.escape(String)</code>.
 @param extfield the extension field identifier
 @return the extension field identifier with all special chars escaped with
          a backslash character.
 */
- (NSString *)escapeExtensionFieldWithNSString:(NSString *)extfield;

/*!
 @brief Returns the <code>ParserExtension</code> instance for the given key or 
 <code>null</code> if no extension can be found for the key.
 @param key the extension key
 @return the <code>ParserExtension</code> instance for the given key or
          <code>null</code> if no extension can be found for the key.
 */
- (OrgApacheLuceneQueryparserExtParserExtension *)getExtensionWithNSString:(NSString *)key;

/*!
 @brief Returns the extension field delimiter
 @return the extension field delimiter
 */
- (jchar)getExtensionFieldDelimiter;

/*!
 @brief Splits a extension field and returns the field / extension part as a 
 <code>Pair</code>.This method tries to split on the first occurrence of the
  extension field delimiter, if the delimiter is not present in the string
  the result will contain a <code>null</code> value for the extension key and
  the given field string as the field value.
 If the given extension field
  string contains no field identifier the result pair will carry the given
  default field as the field value.
 @param defaultField the default query field
 @param field the extension field string
 @return a <code>Pair</code> with the field name as the <code>Pair.cur</code> and the
          extension key as the <code>Pair.cud</code>
 */
- (OrgApacheLuceneQueryparserExtExtensions_Pair *)splitExtensionFieldWithNSString:(NSString *)defaultField
                                                                     withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserExtExtensions)

/*!
 @brief The default extension field delimiter character.This constant is set to
  ':'
 */
inline jchar OrgApacheLuceneQueryparserExtExtensions_get_DEFAULT_EXTENSION_FIELD_DELIMITER(void);
#define OrgApacheLuceneQueryparserExtExtensions_DEFAULT_EXTENSION_FIELD_DELIMITER ':'
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneQueryparserExtExtensions, DEFAULT_EXTENSION_FIELD_DELIMITER, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtExtensions_init(OrgApacheLuceneQueryparserExtExtensions *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions *new_OrgApacheLuceneQueryparserExtExtensions_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions *create_OrgApacheLuceneQueryparserExtExtensions_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtExtensions_initWithChar_(OrgApacheLuceneQueryparserExtExtensions *self, jchar extensionFieldDelimiter);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions *new_OrgApacheLuceneQueryparserExtExtensions_initWithChar_(jchar extensionFieldDelimiter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions *create_OrgApacheLuceneQueryparserExtExtensions_initWithChar_(jchar extensionFieldDelimiter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserExtExtensions)

#endif

#if !defined (OrgApacheLuceneQueryparserExtExtensions_Pair_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserExtExtensions || defined(INCLUDE_OrgApacheLuceneQueryparserExtExtensions_Pair))
#define OrgApacheLuceneQueryparserExtExtensions_Pair_

/*!
 @brief This class represents a generic pair.
 */
@interface OrgApacheLuceneQueryparserExtExtensions_Pair : NSObject {
 @public
  id cur_;
  id cud_;
}

#pragma mark Public

/*!
 @brief Creates a new Pair
 @param cur the pairs first element
 @param cud the pairs last element
 */
- (instancetype __nonnull)initWithId:(id)cur
                              withId:(id)cud;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserExtExtensions_Pair)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensions_Pair, cur_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensions_Pair, cud_, id)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(OrgApacheLuceneQueryparserExtExtensions_Pair *self, id cur, id cud);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions_Pair *new_OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(id cur, id cud) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions_Pair *create_OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(id cur, id cud);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserExtExtensions_Pair)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserExtExtensions")
