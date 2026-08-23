package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class JsonToStringWriter implements InternalJsonWriter {
    private char[] array = CharArrayPool.INSTANCE.take();
    private int size;

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long j) {
        write(String.valueOf(j));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c) {
        ensureAdditionalCapacity(1);
        char[] cArr = this.array;
        int i = this.size;
        this.size = i + 1;
        cArr[i] = c;
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
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
        Intrinsics.checkNotNullParameter(text, "text");
        ensureAdditionalCapacity(text.length() + 2);
        char[] cArr = this.array;
        int i = this.size;
        int i2 = i + 1;
        cArr[i] = '\"';
        int length = text.length();
        text.getChars(0, length, cArr, i2);
        int i3 = length + i2;
        for (int i4 = i2; i4 < i3; i4++) {
            char c = cArr[i4];
            if (c < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c] != 0) {
                appendStringSlowPath(i4 - i2, i4, text);
                return;
            }
        }
        cArr[i3] = '\"';
        this.size = i3 + 1;
    }

    private final void appendStringSlowPath(int i, int i2, String str) {
        byte b;
        int length = str.length();
        while (i < length) {
            int iEnsureTotalCapacity = ensureTotalCapacity(i2, 2);
            char cCharAt = str.charAt(i);
            if (cCharAt >= StringOpsKt.getESCAPE_MARKERS().length || (b = StringOpsKt.getESCAPE_MARKERS()[cCharAt]) == 0) {
                int i3 = iEnsureTotalCapacity + 1;
                this.array[iEnsureTotalCapacity] = cCharAt;
                i2 = i3;
                i++;
            } else {
                if (b == 1) {
                    String str2 = StringOpsKt.getESCAPE_STRINGS()[cCharAt];
                    Intrinsics.checkNotNull(str2);
                    int iEnsureTotalCapacity2 = ensureTotalCapacity(iEnsureTotalCapacity, str2.length());
                    str2.getChars(0, str2.length(), this.array, iEnsureTotalCapacity2);
                    i2 = iEnsureTotalCapacity2 + str2.length();
                    this.size = i2;
                } else {
                    char[] cArr = this.array;
                    cArr[iEnsureTotalCapacity] = '\\';
                    cArr[iEnsureTotalCapacity + 1] = (char) b;
                    i2 = iEnsureTotalCapacity + 2;
                    this.size = i2;
                }
                i++;
            }
        }
        int iEnsureTotalCapacity3 = ensureTotalCapacity(i2, 1);
        this.array[iEnsureTotalCapacity3] = '\"';
        this.size = iEnsureTotalCapacity3 + 1;
    }

    public void release() {
        CharArrayPool.INSTANCE.release(this.array);
    }

    public String toString() {
        return new String(this.array, 0, this.size);
    }

    private final void ensureAdditionalCapacity(int i) {
        ensureTotalCapacity(this.size, i);
    }

    private final int ensureTotalCapacity(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.array;
        if (cArr.length <= i3) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, RangesKt.coerceAtLeast(i3, i * 2));
            Intrinsics.checkNotNullExpressionValue(cArrCopyOf, "copyOf(...)");
            this.array = cArrCopyOf;
        }
        return i;
    }
}
