package kotlinx.serialization.json.internal;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.json.JsonConfiguration;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b$\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b \u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010'\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0006H&¢\u0006\u0004\b'\u0010\u0016J\u000f\u0010(\u001a\u00020\u0011H&¢\u0006\u0004\b(\u0010\u0013J\u000f\u0010*\u001a\u00020)H&¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0011¢\u0006\u0004\b,\u0010\u0013J\u0017\u0010/\u001a\u00020\u00112\u0006\u0010.\u001a\u00020-H\u0004¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020!¢\u0006\u0004\b1\u0010%J\u0017\u0010*\u001a\u00020!2\u0006\u00102\u001a\u00020-H&¢\u0006\u0004\b*\u00103J\u0017\u00104\u001a\u00020!2\u0006\u00102\u001a\u00020-H\u0004¢\u0006\u0004\b4\u00103J\u000f\u00105\u001a\u00020)H\u0016¢\u0006\u0004\b5\u0010+J\u0017\u00107\u001a\u00020\u00112\b\b\u0002\u00106\u001a\u00020\u0011¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u0006H&¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u0004\u0018\u00010\f2\u0006\u0010;\u001a\u00020\u0011¢\u0006\u0004\b<\u0010=J\u001f\u0010?\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010>\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u000eJ\u000f\u0010@\u001a\u00020\fH&¢\u0006\u0004\b@\u0010\u0010J\r\u0010A\u001a\u00020\f¢\u0006\u0004\bA\u0010\u0010J'\u0010A\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0005¢\u0006\u0004\bA\u0010BJ\r\u0010C\u001a\u00020\f¢\u0006\u0004\bC\u0010\u0010J\r\u0010D\u001a\u00020\f¢\u0006\u0004\bD\u0010\u0010J\u001f\u0010G\u001a\u00020!2\u0006\u0010E\u001a\u00020\u00062\u0006\u0010F\u001a\u00020\u0006H\u0014¢\u0006\u0004\bG\u0010HJ\u0015\u0010J\u001a\u00020!2\u0006\u0010I\u001a\u00020\u0011¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\fH\u0016¢\u0006\u0004\bL\u0010\u0010J\u0015\u0010N\u001a\u00020!2\u0006\u0010M\u001a\u00020\f¢\u0006\u0004\bN\u0010OJ+\u0010S\u001a\u00020R2\u0006\u0010P\u001a\u00020\f2\b\b\u0002\u0010&\u001a\u00020\u00062\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\f¢\u0006\u0004\bS\u0010TJ\r\u0010V\u001a\u00020U¢\u0006\u0004\bV\u0010WJ\r\u0010X\u001a\u00020\u0011¢\u0006\u0004\bX\u0010\u0013R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010Y\u001a\u0004\bZ\u0010[R\u0016\u0010\u000b\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\\R\u0014\u0010^\u001a\u00020]8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u0018\u0010`\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR&\u0010d\u001a\u00060bj\u0002`c8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR\u0014\u0010\u0018\u001a\u00020\u00178$X¤\u0004¢\u0006\u0006\u001a\u0004\bj\u0010k¨\u0006l"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonLexer;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/serialization/json/JsonConfiguration;", "configuration", "<init>", "(Lkotlinx/serialization/json/JsonConfiguration;)V", _UrlKt.FRAGMENT_ENCODE_SET, "lastPosition", "current", "appendEscape", "(II)I", "currentPosition", _UrlKt.FRAGMENT_ENCODE_SET, "decodedString", "(II)Ljava/lang/String;", "takePeeked", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "wasUnquotedString", "()Z", "startPosition", "appendEsc", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "source", "startPos", "appendHex", "(Ljava/lang/CharSequence;I)I", "fromHexChar", "start", "consumeBoolean", "(I)Z", "literalSuffix", _UrlKt.FRAGMENT_ENCODE_SET, "consumeBooleanLiteral", "(Ljava/lang/String;I)V", "ensureHaveChars", "()V", "position", "prefetchOrEof", "canConsumeValue", _UrlKt.FRAGMENT_ENCODE_SET, "consumeNextToken", "()B", "tryConsumeComma", _UrlKt.FRAGMENT_ENCODE_SET, "c", "isValidValueStart", "(C)Z", "expectEof", "expected", "(C)V", "unexpectedToken", "peekNextToken", "doConsume", "tryConsumeNull", "(Z)Z", "skipWhitespaces", "()I", "isLenient", "peekString", "(Z)Ljava/lang/String;", "endPos", "substring", "consumeKeyString", "consumeString", "(Ljava/lang/CharSequence;II)Ljava/lang/String;", "consumeStringLenientNotNull", "consumeStringLenient", "fromIndex", "toIndex", "appendRange", "(II)V", "allowLenientStrings", "skipElement", "(Z)V", "toString", PluginsConstants.Settings.KEY, "failOnUnknownKey", "(Ljava/lang/String;)V", "message", PluginsConstants.Settings.HINT, _UrlKt.FRAGMENT_ENCODE_SET, "fail", "(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;", _UrlKt.FRAGMENT_ENCODE_SET, "consumeNumericLiteral", "()J", "consumeBooleanLenient", "Lkotlinx/serialization/json/JsonConfiguration;", "getConfiguration$kotlinx_serialization_json", "()Lkotlinx/serialization/json/JsonConfiguration;", "I", "Lkotlinx/serialization/json/internal/JsonPath;", "path", "Lkotlinx/serialization/json/internal/JsonPath;", "peekedString", "Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "escapedString", "Ljava/lang/StringBuilder;", "getEscapedString", "()Ljava/lang/StringBuilder;", "setEscapedString", "(Ljava/lang/StringBuilder;)V", "getSource", "()Ljava/lang/CharSequence;", "kotlinx-serialization-json"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAbstractJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer$fail$1\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,759:1\n229#1,10:760\n751#1,5:771\n229#1,10:776\n229#1,10:788\n232#2:770\n232#2:786\n1#3:787\n*S KotlinDebug\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n209#1:760,10\n219#1:771,5\n226#1:776,10\n681#1:788,10\n209#1:770\n226#1:786\n*E\n"})
public abstract class AbstractJsonLexer {
    private final JsonConfiguration configuration;

    @JvmField
    public int currentPosition;
    private StringBuilder escapedString = new StringBuilder();

    @JvmField
    public final JsonPath path;
    private String peekedString;

    public abstract boolean canConsumeValue();

    public abstract String consumeKeyString();

    public abstract byte consumeNextToken();

    public abstract void consumeNextToken(char expected);

    public void ensureHaveChars() {
    }

    public abstract CharSequence getSource();

    public final boolean isValidValueStart(char c2) {
        return (c2 == ',' || c2 == ':' || c2 == ']' || c2 == '}') ? false : true;
    }

    public abstract int prefetchOrEof(int position);

    public abstract int skipWhitespaces();

    public AbstractJsonLexer(JsonConfiguration jsonConfiguration) {
        this.configuration = jsonConfiguration;
        this.path = new JsonPath(jsonConfiguration);
    }

    /* JADX INFO: renamed from: getConfiguration$kotlinx_serialization_json, reason: from getter */
    public final JsonConfiguration getConfiguration() {
        return this.configuration;
    }

    public final boolean tryConsumeComma() {
        int iSkipWhitespaces = skipWhitespaces();
        CharSequence source = getSource();
        if (iSkipWhitespaces >= source.length() || iSkipWhitespaces == -1 || source.charAt(iSkipWhitespaces) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    public final void expectEof() {
        if (consumeNextToken() == 10) {
            return;
        }
        fail$default(this, "Expected EOF after parsing, but had " + getSource().charAt(this.currentPosition - 1) + " instead", 0, null, 6, null);
        InstantKt$$ExternalSyntheticBUOutline0.m896m();
    }

    public final void unexpectedToken(char expected) {
        int i = this.currentPosition;
        if (i > 0 && expected == '\"') {
            try {
                this.currentPosition = i - 1;
                String strConsumeStringLenient = consumeStringLenient();
                this.currentPosition = i;
                if (Intrinsics.areEqual(strConsumeStringLenient, "null")) {
                    fail("Expected string literal but 'null' literal was found", this.currentPosition - 1, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw new KotlinNothingValueException();
                }
            } catch (Throwable th) {
                this.currentPosition = i;
                throw th;
            }
        }
        String str = AbstractJsonLexerKt.tokenDescription(AbstractJsonLexerKt.charToTokenClass(expected));
        int i2 = this.currentPosition;
        int i3 = i2 > 0 ? i2 - 1 : i2;
        fail$default(this, "Expected " + str + ", but had '" + ((i2 == getSource().length() || i3 < 0) ? "EOF" : String.valueOf(getSource().charAt(i3))) + "' instead", i3, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public byte peekNextToken() {
        CharSequence source = getSource();
        int i = this.currentPosition;
        while (true) {
            int iPrefetchOrEof = prefetchOrEof(i);
            if (iPrefetchOrEof != -1) {
                char cCharAt = source.charAt(iPrefetchOrEof);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != ' ') {
                    this.currentPosition = iPrefetchOrEof;
                    return AbstractJsonLexerKt.charToTokenClass(cCharAt);
                }
                i = iPrefetchOrEof + 1;
            } else {
                this.currentPosition = iPrefetchOrEof;
                return (byte) 10;
            }
        }
    }

    public static /* synthetic */ boolean tryConsumeNull$default(AbstractJsonLexer abstractJsonLexer, boolean z, int i, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: tryConsumeNull");
            return false;
        }
        if ((i & 1) != 0) {
            z = true;
        }
        return abstractJsonLexer.tryConsumeNull(z);
    }

    public final boolean tryConsumeNull(boolean doConsume) {
        int iPrefetchOrEof = prefetchOrEof(skipWhitespaces());
        int length = getSource().length() - iPrefetchOrEof;
        if (length < 4 || iPrefetchOrEof == -1) {
            return false;
        }
        for (int i = 0; i < 4; i++) {
            if ("null".charAt(i) != getSource().charAt(iPrefetchOrEof + i)) {
                return false;
            }
        }
        if (length > 4 && AbstractJsonLexerKt.charToTokenClass(getSource().charAt(iPrefetchOrEof + 4)) == 0) {
            return false;
        }
        if (!doConsume) {
            return true;
        }
        this.currentPosition = iPrefetchOrEof + 4;
        return true;
    }

    public final String peekString(boolean isLenient) {
        String strConsumeString;
        byte bPeekNextToken = peekNextToken();
        if (isLenient) {
            if (bPeekNextToken != 1 && bPeekNextToken != 0) {
                return null;
            }
            strConsumeString = consumeStringLenient();
        } else {
            if (bPeekNextToken != 1) {
                return null;
            }
            strConsumeString = consumeString();
        }
        this.peekedString = strConsumeString;
        return strConsumeString;
    }

    public String substring(int startPos, int endPos) {
        return getSource().subSequence(startPos, endPos).toString();
    }

    public final String consumeString() {
        if (this.peekedString != null) {
            return takePeeked();
        }
        return consumeKeyString();
    }

    public final String consumeString(CharSequence source, int startPosition, int current) {
        String strDecodedString;
        int iPrefetchOrEof = startPosition;
        boolean z = false;
        char cCharAt = source.charAt(current);
        int i = current;
        while (cCharAt != '\"') {
            if (cCharAt == '\\') {
                iPrefetchOrEof = prefetchOrEof(appendEscape(iPrefetchOrEof, i));
                if (iPrefetchOrEof == -1) {
                    fail$default(this, "Unexpected EOF", iPrefetchOrEof, null, 4, null);
                    InstantKt$$ExternalSyntheticBUOutline0.m896m();
                    return null;
                }
            } else {
                i++;
                if (i >= source.length()) {
                    appendRange(iPrefetchOrEof, i);
                    iPrefetchOrEof = prefetchOrEof(i);
                    if (iPrefetchOrEof == -1) {
                        fail$default(this, "Unexpected EOF", iPrefetchOrEof, null, 4, null);
                        InstantKt$$ExternalSyntheticBUOutline0.m896m();
                        return null;
                    }
                } else {
                    continue;
                    cCharAt = source.charAt(i);
                }
            }
            i = iPrefetchOrEof;
            z = true;
            cCharAt = source.charAt(i);
        }
        if (!z) {
            strDecodedString = substring(iPrefetchOrEof, i);
        } else {
            strDecodedString = decodedString(iPrefetchOrEof, i);
        }
        this.currentPosition = i + 1;
        return strDecodedString;
    }

    private final int appendEscape(int lastPosition, int current) {
        appendRange(lastPosition, current);
        return appendEsc(current + 1);
    }

    private final String decodedString(int lastPosition, int currentPosition) {
        appendRange(lastPosition, currentPosition);
        String string = this.escapedString.toString();
        this.escapedString.setLength(0);
        return string;
    }

    private final String takePeeked() {
        String str = this.peekedString;
        this.peekedString = null;
        return str;
    }

    public final String consumeStringLenientNotNull() {
        String strConsumeStringLenient = consumeStringLenient();
        if (!Intrinsics.areEqual(strConsumeStringLenient, "null") || !wasUnquotedString()) {
            return strConsumeStringLenient;
        }
        fail$default(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
        InstantKt$$ExternalSyntheticBUOutline0.m896m();
        return null;
    }

    private final boolean wasUnquotedString() {
        return getSource().charAt(this.currentPosition - 1) != '\"';
    }

    public final String consumeStringLenient() {
        String strDecodedString;
        if (this.peekedString != null) {
            return takePeeked();
        }
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces >= getSource().length() || iSkipWhitespaces == -1) {
            fail$default(this, "EOF", iSkipWhitespaces, null, 4, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return null;
        }
        byte bCharToTokenClass = AbstractJsonLexerKt.charToTokenClass(getSource().charAt(iSkipWhitespaces));
        if (bCharToTokenClass == 1) {
            return consumeString();
        }
        if (bCharToTokenClass != 0) {
            fail$default(this, "Expected beginning of the string, but got " + getSource().charAt(iSkipWhitespaces), 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return null;
        }
        boolean z = false;
        while (AbstractJsonLexerKt.charToTokenClass(getSource().charAt(iSkipWhitespaces)) == 0) {
            iSkipWhitespaces++;
            if (iSkipWhitespaces >= getSource().length()) {
                appendRange(this.currentPosition, iSkipWhitespaces);
                int iPrefetchOrEof = prefetchOrEof(iSkipWhitespaces);
                if (iPrefetchOrEof == -1) {
                    this.currentPosition = iSkipWhitespaces;
                    return decodedString(0, 0);
                }
                iSkipWhitespaces = iPrefetchOrEof;
                z = true;
            }
        }
        int i = this.currentPosition;
        if (!z) {
            strDecodedString = substring(i, iSkipWhitespaces);
        } else {
            strDecodedString = decodedString(i, iSkipWhitespaces);
        }
        this.currentPosition = iSkipWhitespaces;
        return strDecodedString;
    }

    public void appendRange(int fromIndex, int toIndex) {
        this.escapedString.append(getSource(), fromIndex, toIndex);
    }

    private final int appendEsc(int startPosition) {
        int iPrefetchOrEof = prefetchOrEof(startPosition);
        if (iPrefetchOrEof == -1) {
            fail$default(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return 0;
        }
        int i = iPrefetchOrEof + 1;
        char cCharAt = getSource().charAt(iPrefetchOrEof);
        if (cCharAt == 'u') {
            return appendHex(getSource(), i);
        }
        char cEscapeToChar = AbstractJsonLexerKt.escapeToChar(cCharAt);
        if (cEscapeToChar == 0) {
            fail$default(this, "Invalid escaped char '" + cCharAt + '\'', 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return 0;
        }
        this.escapedString.append(cEscapeToChar);
        return i;
    }

    private final int appendHex(CharSequence source, int startPos) {
        int i = startPos + 4;
        if (i >= source.length()) {
            this.currentPosition = startPos;
            ensureHaveChars();
            if (this.currentPosition + 4 >= source.length()) {
                fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
                InstantKt$$ExternalSyntheticBUOutline0.m896m();
                return 0;
            }
            return appendHex(source, this.currentPosition);
        }
        this.escapedString.append((char) ((fromHexChar(source, startPos) << 12) + (fromHexChar(source, startPos + 1) << 8) + (fromHexChar(source, startPos + 2) << 4) + fromHexChar(source, startPos + 3)));
        return i;
    }

    private final int fromHexChar(CharSequence source, int currentPosition) {
        char cCharAt = source.charAt(currentPosition);
        if ('0' <= cCharAt && cCharAt < ':') {
            return cCharAt - '0';
        }
        if ('a' <= cCharAt && cCharAt < 'g') {
            return cCharAt - 'W';
        }
        if ('A' <= cCharAt && cCharAt < 'G') {
            return cCharAt - '7';
        }
        fail$default(this, "Invalid toHexChar char '" + cCharAt + "' in unicode escape", 0, null, 6, null);
        InstantKt$$ExternalSyntheticBUOutline0.m896m();
        return 0;
    }

    public final void skipElement(boolean allowLenientStrings) {
        ArrayList arrayList = new ArrayList();
        byte bPeekNextToken = peekNextToken();
        if (bPeekNextToken != 8 && bPeekNextToken != 6) {
            consumeStringLenient();
            return;
        }
        while (true) {
            byte bPeekNextToken2 = peekNextToken();
            if (bPeekNextToken2 != 1) {
                if (bPeekNextToken2 == 8 || bPeekNextToken2 == 6) {
                    arrayList.add(Byte.valueOf(bPeekNextToken2));
                } else if (bPeekNextToken2 == 9) {
                    if (((Number) CollectionsKt.last((List) arrayList)).byteValue() != 8) {
                        fail$default(this, "found ] instead of }", 0, null, 6, null);
                        InstantKt$$ExternalSyntheticBUOutline0.m896m();
                        return;
                    }
                    CollectionsKt.removeLast(arrayList);
                } else if (bPeekNextToken2 == 7) {
                    if (((Number) CollectionsKt.last((List) arrayList)).byteValue() != 6) {
                        fail$default(this, "found } instead of ]", 0, null, 6, null);
                        InstantKt$$ExternalSyntheticBUOutline0.m896m();
                        return;
                    }
                    CollectionsKt.removeLast(arrayList);
                } else if (bPeekNextToken2 == 10) {
                    fail$default(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                    InstantKt$$ExternalSyntheticBUOutline0.m896m();
                    return;
                }
                consumeNextToken();
                if (arrayList.size() == 0) {
                    return;
                }
            } else if (allowLenientStrings) {
                consumeStringLenient();
            } else {
                consumeKeyString();
            }
        }
    }

    public String toString() {
        return "JsonReader(source='" + ((Object) getSource()) + "', currentPosition=" + this.currentPosition + ')';
    }

    public final void failOnUnknownKey(String key) {
        fail("Encountered an unknown key '" + key + '\'', StringsKt.lastIndexOf$default((CharSequence) substring(0, this.currentPosition), key, 0, false, 6, (Object) null), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ Void fail$default(AbstractJsonLexer abstractJsonLexer, String str, int i, String str2, int i2, Object obj) {
        if (obj != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: fail");
            return null;
        }
        if ((i2 & 2) != 0) {
            i = abstractJsonLexer.currentPosition;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        return abstractJsonLexer.fail(str, i, str2);
    }

    public final Void fail(String message, int position, String hint) {
        throw JsonExceptionsKt.decodingExceptionOf(this, message, position, this.path.getPath(), hint, getSource());
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01c4, code lost:
    
        return -r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c5, code lost:
    
        fail$default(r18, "Numeric value overflow", 0, null, 6, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01d3, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01d4, code lost:
    
        fail$default(r18, "Expected numeric literal", r2, null, 4, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01e1, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0093, code lost:
    
        if (r2 == r1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009a, code lost:
    
        fail$default(r18, "Unexpected symbol '-' in numeric literal", r2, null, 4, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a7, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0111, code lost:
    
        fail$default(r18, "Unexpected symbol '" + r15 + "' in numeric literal", r2, null, 4, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x012b, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x012e, code lost:
    
        if (r2 == r1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0130, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0132, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0133, code lost:
    
        if (r1 == r2) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0135, code lost:
    
        if (r9 == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0139, code lost:
    
        if (r1 == (r2 - 1)) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013b, code lost:
    
        if (r0 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013d, code lost:
    
        if (r4 == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0149, code lost:
    
        if (getSource().charAt(r2) != '\"') goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x014b, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0150, code lost:
    
        fail$default(r18, "Expected closing quotation mark", r2, null, 4, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015d, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x015e, code lost:
    
        fail$default(r18, "EOF", 0, null, 6, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x016c, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x016d, code lost:
    
        r18.currentPosition = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x016f, code lost:
    
        if (r8 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0171, code lost:
    
        r1 = r10 * consumeNumericLiteral$calculateExponent(r12, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x017b, code lost:
    
        if (r1 > 9.223372036854776E18d) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0181, code lost:
    
        if (r1 < (-9.223372036854776E18d)) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0189, code lost:
    
        if (java.lang.Math.floor(r1) != r1) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x018b, code lost:
    
        r10 = (long) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x018d, code lost:
    
        fail$default(r18, "Can't convert " + r1 + " to Long", 0, null, 6, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01aa, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01ab, code lost:
    
        fail$default(r18, "Numeric value overflow", 0, null, 6, null);
        kotlin.time.InstantKt$$ExternalSyntheticBUOutline0.m896m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01b9, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01ba, code lost:
    
        if (r9 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01bc, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01c1, code lost:
    
        if (r10 == Long.MIN_VALUE) goto L101;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long consumeNumericLiteral() {
        boolean z;
        long j;
        int iPrefetchOrEof = prefetchOrEof(skipWhitespaces());
        long j2 = 0;
        if (iPrefetchOrEof >= getSource().length() || iPrefetchOrEof == -1) {
            fail$default(this, "EOF", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return 0L;
        }
        if (getSource().charAt(iPrefetchOrEof) == '\"') {
            iPrefetchOrEof++;
            if (iPrefetchOrEof == getSource().length()) {
                fail$default(this, "EOF", 0, null, 6, null);
                InstantKt$$ExternalSyntheticBUOutline0.m896m();
                return 0L;
            }
            z = true;
        } else {
            z = false;
        }
        int i = iPrefetchOrEof;
        long j3 = 0;
        long j4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        loop0: while (true) {
            boolean z4 = false;
            while (true) {
                if (i == getSource().length()) {
                    j = j2;
                    break loop0;
                }
                char cCharAt = getSource().charAt(i);
                j = j2;
                if ((cCharAt != 'e' && cCharAt != 'E') || z2) {
                    if (cCharAt == '-' && z2) {
                        break;
                    }
                    if (cCharAt != '+' || !z2) {
                        if (cCharAt != '-') {
                            if (AbstractJsonLexerKt.charToTokenClass(cCharAt) != 0) {
                                break loop0;
                            }
                            int i2 = i + 1;
                            int i3 = cCharAt - '0';
                            if (i3 < 0 || i3 >= 10) {
                                break loop0;
                            }
                            if (z2) {
                                j4 = (j4 * 10) + ((long) i3);
                            } else {
                                j3 = (j3 * 10) - ((long) i3);
                                if (j3 > j) {
                                    fail$default(this, "Numeric value overflow", 0, null, 6, null);
                                    InstantKt$$ExternalSyntheticBUOutline0.m896m();
                                    return j;
                                }
                            }
                            i = i2;
                            j2 = j;
                        } else {
                            if (i != iPrefetchOrEof) {
                                fail$default(this, "Unexpected symbol '-' in numeric literal", i, null, 4, null);
                                InstantKt$$ExternalSyntheticBUOutline0.m896m();
                                return j;
                            }
                            i++;
                            j2 = j;
                            z3 = true;
                        }
                    } else {
                        if (i == iPrefetchOrEof) {
                            fail$default(this, "Unexpected symbol '+' in numeric literal", i, null, 4, null);
                            InstantKt$$ExternalSyntheticBUOutline0.m896m();
                            return j;
                        }
                        i++;
                        j2 = j;
                    }
                } else {
                    if (i == iPrefetchOrEof) {
                        fail$default(this, "Unexpected symbol '" + cCharAt + "' in numeric literal", i, null, 4, null);
                        InstantKt$$ExternalSyntheticBUOutline0.m896m();
                        return j;
                    }
                    i++;
                    j2 = j;
                    z2 = true;
                }
                z4 = true;
            }
            i++;
            j2 = j;
        }
    }

    private static final double consumeNumericLiteral$calculateExponent(long j, boolean z) {
        if (!z) {
            return Math.pow(10.0d, -j);
        }
        if (!z) {
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return 0.0d;
        }
        return Math.pow(10.0d, j);
    }

    public final boolean consumeBooleanLenient() {
        boolean z;
        int iSkipWhitespaces = skipWhitespaces();
        if (iSkipWhitespaces == getSource().length()) {
            fail$default(this, "EOF", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return false;
        }
        if (getSource().charAt(iSkipWhitespaces) == '\"') {
            iSkipWhitespaces++;
            z = true;
        } else {
            z = false;
        }
        boolean zConsumeBoolean = consumeBoolean(iSkipWhitespaces);
        if (!z) {
            return zConsumeBoolean;
        }
        if (this.currentPosition == getSource().length()) {
            fail$default(this, "EOF", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return false;
        }
        if (getSource().charAt(this.currentPosition) != '\"') {
            fail$default(this, "Expected closing quotation mark", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return false;
        }
        this.currentPosition++;
        return zConsumeBoolean;
    }

    private final boolean consumeBoolean(int start) {
        int iPrefetchOrEof = prefetchOrEof(start);
        if (iPrefetchOrEof >= getSource().length() || iPrefetchOrEof == -1) {
            fail$default(this, "EOF", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return false;
        }
        int i = iPrefetchOrEof + 1;
        int iCharAt = getSource().charAt(iPrefetchOrEof) | ' ';
        if (iCharAt == 102) {
            consumeBooleanLiteral("alse", i);
            return false;
        }
        if (iCharAt == 116) {
            consumeBooleanLiteral("rue", i);
            return true;
        }
        fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6, null);
        InstantKt$$ExternalSyntheticBUOutline0.m896m();
        return false;
    }

    private final void consumeBooleanLiteral(String literalSuffix, int current) {
        if (getSource().length() - current < literalSuffix.length()) {
            fail$default(this, "Unexpected end of boolean literal", 0, null, 6, null);
            InstantKt$$ExternalSyntheticBUOutline0.m896m();
            return;
        }
        int length = literalSuffix.length();
        for (int i = 0; i < length; i++) {
            if (literalSuffix.charAt(i) != (getSource().charAt(current + i) | ' ')) {
                fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6, null);
                InstantKt$$ExternalSyntheticBUOutline0.m896m();
                return;
            }
        }
        this.currentPosition = current + literalSuffix.length();
    }
}
