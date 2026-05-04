package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public class StringJsonLexer extends AbstractJsonLexer {
    private final String source;

    public StringJsonLexer(String source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.source = source;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String getSource() {
        return this.source;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int prefetchOrEof(int i) {
        if (i < getSource().length()) {
            return i;
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
    public void consumeNextToken(char c) {
        if (this.currentPosition == -1) {
            unexpectedToken(c);
        }
        String source = getSource();
        int i = this.currentPosition;
        while (i < source.length()) {
            int i2 = i + 1;
            char cCharAt = source.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\n' && cCharAt != '\r' && cCharAt != '\t') {
                this.currentPosition = i2;
                if (cCharAt == c) {
                    return;
                } else {
                    unexpectedToken(c);
                }
            }
            i = i2;
        }
        this.currentPosition = -1;
        unexpectedToken(c);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public String consumeKeyString() {
        consumeNextToken('\"');
        int i = this.currentPosition;
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) getSource(), '\"', i, false, 4, (Object) null);
        if (iIndexOf$default == -1) {
            consumeStringLenient();
            String str = AbstractJsonLexerKt.tokenDescription((byte) 1);
            int i2 = this.currentPosition;
            AbstractJsonLexer.fail$default(this, "Expected " + str + ", but had '" + ((i2 == getSource().length() || i2 < 0) ? "EOF" : String.valueOf(getSource().charAt(i2))) + "' instead", i2, null, 4, null);
            throw new KotlinNothingValueException();
        }
        for (int i3 = i; i3 < iIndexOf$default; i3++) {
            if (getSource().charAt(i3) == '\\') {
                return consumeString(getSource(), this.currentPosition, i3);
            }
        }
        this.currentPosition = iIndexOf$default + 1;
        String strSubstring = getSource().substring(i, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return strSubstring;
    }
}
