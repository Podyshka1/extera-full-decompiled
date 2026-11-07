package kotlinx.serialization.json.internal;

import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonEncodingException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\f\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a=\u0010\u0003\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0003\u0010\f\u001a!\u0010\r\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a=\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001d\u0010\u0013\u001a\u00020\u0012*\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001b\u0010\u001c\u001a\u00020\u0012*\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a#\u0010 \u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001a2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0000H\u0000¢\u0006\u0004\b \u0010!\u001a!\u0010\"\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0000H\u0002¢\u0006\u0004\b\"\u0010#\u001a\u001d\u0010$\u001a\u00020\n*\u00020\n2\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b$\u0010%¨\u0006&"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "shortMessage", "Lkotlinx/serialization/json/JsonDecodingException;", "decodingExceptionOf", "(Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", _UrlKt.FRAGMENT_ENCODE_SET, "offset", "path", PluginsConstants.Settings.HINT, _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.TYPE_INPUT, "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/JsonDecodingException;", "formatEncodingException", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "formatDecodingException", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "entity", _UrlKt.FRAGMENT_ENCODE_SET, "invalidTrailingComma", "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;)Ljava/lang/Void;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "keyDescriptor", "Lkotlinx/serialization/json/JsonEncodingException;", "InvalidKeyKindException", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;", _UrlKt.FRAGMENT_ENCODE_SET, "result", "throwInvalidFloatingPointDecoded", "(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/Number;)Ljava/lang/Void;", "value", PluginsConstants.Settings.KEY, "InvalidFloatingPointEncoded", "(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/JsonEncodingException;", "nonFiniteFpMessage", "(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;", "minify", "(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;", "kotlinx-serialization-json"}, m910k = 2, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJsonExceptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonExceptions.kt\nkotlinx/serialization/json/internal/JsonExceptionsKt\n*L\n1#1,136:1\n60#1:137\n60#1:138\n21#1,7:139\n60#1:146\n28#1,7:147\n*S KotlinDebug\n*F\n+ 1 JsonExceptions.kt\nkotlinx/serialization/json/internal/JsonExceptionsKt\n*L\n27#1:137\n47#1:138\n116#1:139,7\n116#1:146\n116#1:147,7\n*E\n"})
public abstract class JsonExceptionsKt {
    public static final JsonDecodingException decodingExceptionOf(String str) {
        return new JsonDecodingException(formatDecodingException(-1, str, null, null, null), str, -1, null, null, null);
    }

    public static final JsonDecodingException decodingExceptionOf(AbstractJsonLexer abstractJsonLexer, String str, int i, String str2, String str3, CharSequence charSequence) {
        String string = abstractJsonLexer.getConfiguration().getExceptionsWithDebugInfo() ? minify(charSequence, i).toString() : null;
        return new JsonDecodingException(formatDecodingException(i, str, str2, str3, string), str, i, str2, string, str3);
    }

    public static final String formatEncodingException(String str, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (str2 == null || StringsKt.isBlank(str2)) {
            str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str3 = "\n" + str2;
        }
        sb.append(str3);
        return sb.toString();
    }

    private static final String formatDecodingException(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        if (i >= 0) {
            sb.append("Unexpected JSON token at offset " + i + ": ");
        }
        sb.append(str);
        if (str2 != null && !StringsKt.isBlank(str2)) {
            sb.append(" at path: ");
            sb.append(str2);
        }
        if (str3 != null && !StringsKt.isBlank(str3)) {
            sb.append("\n" + str3);
        }
        if (str4 != null) {
            sb.append("\nJSON input: ");
            sb.append(str4);
        }
        return sb.toString();
    }

    public static /* synthetic */ Void invalidTrailingComma$default(AbstractJsonLexer abstractJsonLexer, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "object";
        }
        return invalidTrailingComma(abstractJsonLexer, str);
    }

    public static final Void invalidTrailingComma(AbstractJsonLexer abstractJsonLexer, String str) {
        abstractJsonLexer.fail("Trailing comma before the end of JSON " + str, abstractJsonLexer.currentPosition - 1, "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingComma = true' in 'Json {}' builder to support them.");
        throw new KotlinNothingValueException();
    }

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor serialDescriptor) {
        return new JsonEncodingException("Value of type '" + serialDescriptor.getSerialName() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + serialDescriptor.getKind() + '\'', serialDescriptor.getSerialName(), "Use 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final Void throwInvalidFloatingPointDecoded(AbstractJsonLexer abstractJsonLexer, Number number) {
        AbstractJsonLexer.fail$default(abstractJsonLexer, nonFiniteFpMessage(number, null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ JsonEncodingException InvalidFloatingPointEncoded$default(Number number, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        return InvalidFloatingPointEncoded(number, str);
    }

    public static final JsonEncodingException InvalidFloatingPointEncoded(Number number, String str) {
        return new JsonEncodingException(nonFiniteFpMessage(number, str), null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
    }

    private static final String nonFiniteFpMessage(Number number, String str) {
        StringBuilder sb = new StringBuilder("Unexpected special floating-point value ");
        sb.append(number);
        String str2 = ". ";
        if (str != null) {
            str2 = " with key " + str + ". ";
        }
        sb.append(str2);
        sb.append("By default, non-finite floating point values are prohibited because they do not conform JSON specification.");
        return sb.toString();
    }

    public static final CharSequence minify(CharSequence charSequence, int i) {
        String str;
        if (charSequence.length() >= 200) {
            String str2 = ".....";
            if (i == -1) {
                int length = charSequence.length() - 60;
                if (length > 0) {
                    return "....." + charSequence.subSequence(length, charSequence.length()).toString();
                }
            } else {
                int i2 = i - 30;
                int i3 = i + 30;
                if (i2 > 0) {
                    str = ".....";
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                if (i3 >= charSequence.length()) {
                    str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                return str + charSequence.subSequence(RangesKt.coerceAtLeast(i2, 0), RangesKt.coerceAtMost(i3, charSequence.length())).toString() + str2;
            }
        }
        return charSequence;
    }
}
