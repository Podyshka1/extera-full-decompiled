package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JsonExceptionsKt {
    public static final JsonDecodingException JsonDecodingException(int i, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (i >= 0) {
            message = "Unexpected JSON token at offset " + i + ": " + message;
        }
        return new JsonDecodingException(message);
    }

    public static final JsonDecodingException JsonDecodingException(int i, String message, CharSequence input) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(input, "input");
        return JsonDecodingException(i, message + "\nJSON input: " + ((Object) minify(input, i)));
    }

    public static final JsonEncodingException InvalidFloatingPointEncoded(Number value, String output) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(output, "output");
        return new JsonEncodingException("Unexpected special floating-point value " + value + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) minify$default(output, 0, 1, null)));
    }

    public static final Void throwInvalidFloatingPointDecoded(AbstractJsonLexer abstractJsonLexer, Number result) {
        Intrinsics.checkNotNullParameter(abstractJsonLexer, "<this>");
        Intrinsics.checkNotNullParameter(result, "result");
        AbstractJsonLexer.fail$default(abstractJsonLexer, "Unexpected special floating-point value " + result + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ Void invalidTrailingComma$default(AbstractJsonLexer abstractJsonLexer, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "object";
        }
        return invalidTrailingComma(abstractJsonLexer, str);
    }

    public static final Void invalidTrailingComma(AbstractJsonLexer abstractJsonLexer, String entity) {
        Intrinsics.checkNotNullParameter(abstractJsonLexer, "<this>");
        Intrinsics.checkNotNullParameter(entity, "entity");
        abstractJsonLexer.fail("Trailing comma before the end of JSON " + entity, abstractJsonLexer.currentPosition - 1, "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingComma = true' in 'Json {}' builder to support them.");
        throw new KotlinNothingValueException();
    }

    public static final JsonEncodingException InvalidKeyKindException(SerialDescriptor keyDescriptor) {
        Intrinsics.checkNotNullParameter(keyDescriptor, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + keyDescriptor.getSerialName() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.getKind() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static /* synthetic */ CharSequence minify$default(CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        return minify(charSequence, i);
    }

    public static final CharSequence minify(CharSequence charSequence, int i) {
        String str;
        Intrinsics.checkNotNullParameter(charSequence, "<this>");
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
