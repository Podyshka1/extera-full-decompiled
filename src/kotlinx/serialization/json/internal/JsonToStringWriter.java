package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.BuildConfig;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\t\bF¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0096\u0080\u0004J\u0012\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0080\u0004J\u0012\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0080\u0004J\u0012\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0080\u0004J\"\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0011H\u0082\u0080\u0004J\n\u0010\u0017\u001a\u00020\tH\u0096\u0080\u0004J\n\u0010\u0018\u001a\u00020\u0011H\u0096\u0080\u0004J\u0012\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0007H\u0082\u0080\u0004J\u001a\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0083\u0080\bR\u000f\u0010\u0004\u001a\u00020\u0005X\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0006\u001a\u00020\u0007X\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lkotlinx/serialization/json/internal/JsonToStringWriter;", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "<init>", "()V", "array", _UrlKt.FRAGMENT_ENCODE_SET, "size", _UrlKt.FRAGMENT_ENCODE_SET, "writeLong", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "writeChar", "char", _UrlKt.FRAGMENT_ENCODE_SET, "write", "text", _UrlKt.FRAGMENT_ENCODE_SET, "writeQuoted", "appendStringSlowPath", "firstEscapedChar", "currentSize", "string", BuildConfig.BUILD_TYPE, "toString", "ensureAdditionalCapacity", "expected", "ensureTotalCapacity", "oldSize", "additional", "kotlinx-serialization-json"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
public final class JsonToStringWriter implements InternalJsonWriter {
    private char[] array = CharArrayPool.INSTANCE.take();
    private int size;

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long value) {
        write(String.valueOf(value));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c2) {
        ensureAdditionalCapacity(1);
        char[] cArr = this.array;
        int i = this.size;
        this.size = i + 1;
        cArr[i] = c2;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(String text) {
        int length = text.length();
        if (length == 0) {
            return;
        }
        ensureAdditionalCapacity(length);
        text.getChars(0, text.length(), this.array, this.size);
        this.size += length;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeQuoted(String text) {
        ensureAdditionalCapacity(text.length() + 2);
        char[] cArr = this.array;
        int i = this.size;
        int i2 = i + 1;
        cArr[i] = Typography.quote;
        int length = text.length();
        text.getChars(0, length, cArr, i2);
        int i3 = length + i2;
        for (int i4 = i2; i4 < i3; i4++) {
            char c2 = cArr[i4];
            if (c2 < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c2] != 0) {
                appendStringSlowPath(i4 - i2, i4, text);
                return;
            }
        }
        cArr[i3] = Typography.quote;
        this.size = i3 + 1;
    }

    private final void appendStringSlowPath(int firstEscapedChar, int currentSize, String string) {
        byte b2;
        int length = string.length();
        while (firstEscapedChar < length) {
            int iEnsureTotalCapacity = ensureTotalCapacity(currentSize, 2);
            char cCharAt = string.charAt(firstEscapedChar);
            if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b2 = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                int i = iEnsureTotalCapacity + 1;
                this.array[iEnsureTotalCapacity] = cCharAt;
                currentSize = i;
                firstEscapedChar++;
            } else {
                if (b2 == 1) {
                    String str = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    int iEnsureTotalCapacity2 = ensureTotalCapacity(iEnsureTotalCapacity, str.length());
                    str.getChars(0, str.length(), this.array, iEnsureTotalCapacity2);
                    currentSize = iEnsureTotalCapacity2 + str.length();
                    this.size = currentSize;
                } else {
                    char[] cArr = this.array;
                    cArr[iEnsureTotalCapacity] = '\\';
                    cArr[iEnsureTotalCapacity + 1] = (char) b2;
                    currentSize = iEnsureTotalCapacity + 2;
                    this.size = currentSize;
                }
                firstEscapedChar++;
            }
        }
        int iEnsureTotalCapacity3 = ensureTotalCapacity(currentSize, 1);
        this.array[iEnsureTotalCapacity3] = Typography.quote;
        this.size = iEnsureTotalCapacity3 + 1;
    }

    public void release() {
        CharArrayPool.INSTANCE.release(this.array);
    }

    public String toString() {
        return new String(this.array, 0, this.size);
    }

    private final void ensureAdditionalCapacity(int expected) {
        ensureTotalCapacity(this.size, expected);
    }

    @IgnorableReturnValue
    private final int ensureTotalCapacity(int oldSize, int additional) {
        int i = additional + oldSize;
        char[] cArr = this.array;
        if (cArr.length <= i) {
            this.array = Arrays.copyOf(cArr, RangesKt.coerceAtLeast(i, oldSize * 2));
        }
        return oldSize;
    }
}
