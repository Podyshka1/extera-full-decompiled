package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import kotlinx.serialization.json.JsonConfiguration;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\r\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\r\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0003\u001a\u00020\u00028\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/serialization/json/internal/StringJsonLexer;", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", _UrlKt.FRAGMENT_ENCODE_SET, "source", "Lkotlinx/serialization/json/JsonConfiguration;", "configuration", "<init>", "(Ljava/lang/String;Lkotlinx/serialization/json/JsonConfiguration;)V", _UrlKt.FRAGMENT_ENCODE_SET, "position", "prefetchOrEof", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "consumeNextToken", "()B", _UrlKt.FRAGMENT_ENCODE_SET, "canConsumeValue", "()Z", "skipWhitespaces", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "expected", _UrlKt.FRAGMENT_ENCODE_SET, "(C)V", "consumeKeyString", "()Ljava/lang/String;", "Ljava/lang/String;", "getSource", "kotlinx-serialization-json"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStringJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 3 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer$fail$1\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n160#2:134\n160#2:135\n160#2:136\n160#2:137\n229#2,10:138\n232#3:148\n1915#4,2:149\n*S KotlinDebug\n*F\n+ 1 StringJsonLexer.kt\nkotlinx/serialization/json/internal/StringJsonLexer\n*L\n28#1:134\n43#1:135\n62#1:136\n78#1:137\n100#1:138,10\n100#1:148\n114#1:149,2\n*E\n"})
public class StringJsonLexer extends AbstractJsonLexer {
    private final String source;

    public StringJsonLexer(String str, JsonConfiguration jsonConfiguration) {
        super(jsonConfiguration);
        this.source = str;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String getSource() {
        return this.source;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int prefetchOrEof(int position) {
        if (position < getSource().length()) {
            return position;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        String source = getSource();
        int i = this.currentPosition;
        while (i != -1 && i < source.length()) {
            int i2 = i + 1;
            char cCharAt = source.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i2;
                return AbstractJsonLexerKt.charToTokenClass(cCharAt);
            }
            i = i2;
        }
        this.currentPosition = source.length();
        return (byte) 10;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        int i = this.currentPosition;
        if (i == -1) {
            return false;
        }
        String source = getSource();
        while (i < source.length()) {
            char cCharAt = source.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i;
                return isValidValueStart(cCharAt);
            }
            i++;
        }
        this.currentPosition = i;
        return false;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        char cCharAt;
        int i = this.currentPosition;
        if (i == -1) {
            return i;
        }
        String source = getSource();
        while (i < source.length() && ((cCharAt = source.charAt(i)) == ' ' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t')) {
            i++;
        }
        this.currentPosition = i;
        return i;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char expected) {
        if (this.currentPosition == -1) {
            unexpectedToken(expected);
        }
        String source = getSource();
        int i = this.currentPosition;
        while (i < source.length()) {
            int i2 = i + 1;
            char cCharAt = source.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i2;
                if (cCharAt == expected) {
                    return;
                } else {
                    unexpectedToken(expected);
                }
            }
            i = i2;
        }
        this.currentPosition = -1;
        unexpectedToken(expected);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String consumeKeyString() {
        consumeNextToken(Typography.quote);
        int i = this.currentPosition;
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) getSource(), Typography.quote, i, false, 4, (Object) null);
        if (iIndexOf$default == -1) {
            consumeStringLenient();
            String str = AbstractJsonLexerKt.tokenDescription((byte) 1);
            int i2 = this.currentPosition;
            AbstractJsonLexer.fail$default(this, "Expected " + str + ", but had '" + ((i2 == getSource().length() || i2 < 0) ? "EOF" : String.valueOf(getSource().charAt(i2))) + "' instead", i2, null, 4, null);
            InstantKt$$ExternalSyntheticBUOutline0.m813m();
            return null;
        }
        for (int i3 = i; i3 < iIndexOf$default; i3++) {
            if (getSource().charAt(i3) == '\\') {
                return consumeString(getSource(), this.currentPosition, i3);
            }
        }
        this.currentPosition = iIndexOf$default + 1;
        return getSource().substring(i, iIndexOf$default);
    }
}
