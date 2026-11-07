package io.noties.markwon.html.jsoup.parser;

import io.noties.markwon.html.jsoup.UncheckedIOException;
import io.noties.markwon.html.jsoup.helper.Validate;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.CharCompanionObject;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class CharacterReader {
    private int bufLength;
    private int bufMark;
    private int bufPos;
    private int bufSplitPoint;
    private final char[] charBuf;
    private final Reader reader;
    private int readerPos;
    private final String[] stringCache;

    public CharacterReader(Reader reader, int i) {
        this.stringCache = new String[128];
        Validate.notNull(reader);
        Validate.isTrue(reader.markSupported());
        this.reader = reader;
        this.charBuf = new char[4096];
        bufferUp();
    }

    public CharacterReader(String str) {
        this(new StringReader(str), str.length());
    }

    private void bufferUp() {
        int i = this.bufPos;
        if (i < this.bufSplitPoint) {
            return;
        }
        try {
            this.reader.skip(i);
            this.reader.mark(4096);
            int i2 = this.reader.read(this.charBuf);
            this.reader.reset();
            if (i2 != -1) {
                this.bufLength = i2;
                this.readerPos += this.bufPos;
                this.bufPos = 0;
                this.bufMark = 0;
                if (i2 > 3072) {
                    i2 = 3072;
                }
                this.bufSplitPoint = i2;
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    public int pos() {
        return this.readerPos + this.bufPos;
    }

    public boolean isEmpty() {
        bufferUp();
        return this.bufPos >= this.bufLength;
    }

    private boolean isEmptyNoBufferUp() {
        return this.bufPos >= this.bufLength;
    }

    public char current() {
        bufferUp();
        return isEmptyNoBufferUp() ? CharCompanionObject.MAX_VALUE : this.charBuf[this.bufPos];
    }

    public char consume() {
        bufferUp();
        char c2 = isEmptyNoBufferUp() ? CharCompanionObject.MAX_VALUE : this.charBuf[this.bufPos];
        this.bufPos++;
        return c2;
    }

    public void unconsume() {
        this.bufPos--;
    }

    public void advance() {
        this.bufPos++;
    }

    public void mark() {
        this.bufMark = this.bufPos;
    }

    public void rewindToMark() {
        this.bufPos = this.bufMark;
    }

    public int nextIndexOf(char c2) {
        bufferUp();
        for (int i = this.bufPos; i < this.bufLength; i++) {
            if (c2 == this.charBuf[i]) {
                return i - this.bufPos;
            }
        }
        return -1;
    }

    public int nextIndexOf(CharSequence charSequence) {
        bufferUp();
        char cCharAt = charSequence.charAt(0);
        int i = this.bufPos;
        while (i < this.bufLength) {
            if (cCharAt != this.charBuf[i]) {
                do {
                    i++;
                    if (i >= this.bufLength) {
                        break;
                    }
                } while (cCharAt != this.charBuf[i]);
            }
            int i2 = i + 1;
            int length = (charSequence.length() + i2) - 1;
            int i3 = this.bufLength;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.charBuf[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.bufPos;
                }
            }
            i = i2;
        }
        return -1;
    }

    public String consumeTo(char c2) {
        int iNextIndexOf = nextIndexOf(c2);
        if (iNextIndexOf != -1) {
            String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
            this.bufPos += iNextIndexOf;
            return strCacheString;
        }
        return consumeToEnd();
    }

    public String consumeTo(String str) {
        int iNextIndexOf = nextIndexOf(str);
        if (iNextIndexOf != -1) {
            String strCacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, iNextIndexOf);
            this.bufPos += iNextIndexOf;
            return strCacheString;
        }
        return consumeToEnd();
    }

    public String consumeToAny(char... cArr) {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        loop0: while (this.bufPos < i2) {
            for (char c2 : cArr) {
                if (cArr2[this.bufPos] == c2) {
                    break loop0;
                }
            }
            this.bufPos++;
        }
        int i3 = this.bufPos;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public String consumeToAnySorted(char... cArr) {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        while (true) {
            int i3 = this.bufPos;
            if (i3 >= i2 || Arrays.binarySearch(cArr, cArr2[i3]) >= 0) {
                break;
            }
            this.bufPos++;
        }
        int i4 = this.bufPos;
        return i4 > i ? cacheString(this.charBuf, this.stringCache, i, i4 - i) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public String consumeData() {
        int i;
        char c2;
        bufferUp();
        int i2 = this.bufPos;
        int i3 = this.bufLength;
        char[] cArr = this.charBuf;
        while (true) {
            i = this.bufPos;
            if (i >= i3 || (c2 = cArr[i]) == '&' || c2 == '<' || c2 == 0) {
                break;
            }
            this.bufPos = i + 1;
        }
        return i > i2 ? cacheString(this.charBuf, this.stringCache, i2, i - i2) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public String consumeTagName() {
        int i;
        char c2;
        bufferUp();
        int i2 = this.bufPos;
        int i3 = this.bufLength;
        char[] cArr = this.charBuf;
        while (true) {
            i = this.bufPos;
            if (i >= i3 || (c2 = cArr[i]) == '\t' || c2 == '\n' || c2 == '\r' || c2 == '\f' || c2 == ' ' || c2 == '/' || c2 == '>' || c2 == 0) {
                break;
            }
            this.bufPos = i + 1;
        }
        return i > i2 ? cacheString(this.charBuf, this.stringCache, i2, i - i2) : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public String consumeToEnd() {
        bufferUp();
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i = this.bufPos;
        String strCacheString = cacheString(cArr, strArr, i, this.bufLength - i);
        this.bufPos = this.bufLength;
        return strCacheString;
    }

    public String consumeLetterSequence() {
        char c2;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c2 = this.charBuf[i2]) < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !Character.isLetter(c2)))) {
                break;
            }
            this.bufPos++;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public String consumeLetterThenDigitSequence() {
        char c2;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c2 = this.charBuf[i2]) < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !Character.isLetter(c2)))) {
                break;
            }
            this.bufPos++;
        }
        while (!isEmptyNoBufferUp()) {
            char[] cArr = this.charBuf;
            int i3 = this.bufPos;
            char c3 = cArr[i3];
            if (c3 < '0' || c3 > '9') {
                break;
            }
            this.bufPos = i3 + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public String consumeHexSequence() {
        int i;
        char c2;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            i = this.bufPos;
            if (i >= this.bufLength || (((c2 = this.charBuf[i]) < '0' || c2 > '9') && ((c2 < 'A' || c2 > 'F') && (c2 < 'a' || c2 > 'f')))) {
                break;
            }
            this.bufPos = i + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i2, i - i2);
    }

    public String consumeDigitSequence() {
        int i;
        char c2;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            i = this.bufPos;
            if (i >= this.bufLength || (c2 = this.charBuf[i]) < '0' || c2 > '9') {
                break;
            }
            this.bufPos = i + 1;
        }
        return cacheString(this.charBuf, this.stringCache, i2, i - i2);
    }

    public boolean matches(char c2) {
        return !isEmpty() && this.charBuf[this.bufPos] == c2;
    }

    public boolean matches(String str) {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.charBuf[this.bufPos + i]) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesIgnoreCase(String str) {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.charBuf[this.bufPos + i])) {
                return false;
            }
        }
        return true;
    }

    public boolean matchesAny(char... cArr) {
        if (isEmpty()) {
            return false;
        }
        bufferUp();
        char c2 = this.charBuf[this.bufPos];
        for (char c3 : cArr) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesAnySorted(char[] cArr) {
        bufferUp();
        return !isEmpty() && Arrays.binarySearch(cArr, this.charBuf[this.bufPos]) >= 0;
    }

    public boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c2 = this.charBuf[this.bufPos];
        if (c2 < 'A' || c2 > 'Z') {
            return (c2 >= 'a' && c2 <= 'z') || Character.isLetter(c2);
        }
        return true;
    }

    public boolean matchesDigit() {
        char c2;
        return !isEmpty() && (c2 = this.charBuf[this.bufPos]) >= '0' && c2 <= '9';
    }

    public boolean matchConsume(String str) {
        bufferUp();
        if (!matches(str)) {
            return false;
        }
        this.bufPos += str.length();
        return true;
    }

    public boolean matchConsumeIgnoreCase(String str) {
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.bufPos += str.length();
        return true;
    }

    public boolean containsIgnoreCase(String str) {
        Locale locale = Locale.ENGLISH;
        return nextIndexOf(str.toLowerCase(locale)) > -1 || nextIndexOf(str.toUpperCase(locale)) > -1;
    }

    public String toString() {
        char[] cArr = this.charBuf;
        int i = this.bufPos;
        return new String(cArr, i, this.bufLength - i);
    }

    private static String cacheString(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        int i3 = 0;
        int i4 = i;
        int i5 = 0;
        while (i3 < i2) {
            i5 = (i5 * 31) + cArr[i4];
            i3++;
            i4++;
        }
        int length = i5 & (strArr.length - 1);
        String str = strArr[length];
        if (str == null) {
            String str2 = new String(cArr, i, i2);
            strArr[length] = str2;
            return str2;
        }
        if (rangeEquals(cArr, i, i2, str)) {
            return str;
        }
        String str3 = new String(cArr, i, i2);
        strArr[length] = str3;
        return str3;
    }

    public static boolean rangeEquals(char[] cArr, int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }
}
