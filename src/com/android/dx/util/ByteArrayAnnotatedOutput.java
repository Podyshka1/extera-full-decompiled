package com.android.dx.util;

import com.android.dex.Leb128;
import com.android.dex.util.ByteOutput;
import com.android.dex.util.ExceptionWithContext;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import okhttp3.internal.url._UrlKt;
import org.webrtc.GlShader$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class ByteArrayAnnotatedOutput implements AnnotatedOutput, ByteOutput {
    private static final int DEFAULT_SIZE = 1000;
    private int annotationWidth;
    private ArrayList<Annotation> annotations;
    private int cursor;
    private byte[] data;
    private int hexCols;
    private final boolean stretchy;
    private boolean verbose;

    public ByteArrayAnnotatedOutput(byte[] bArr) {
        this(bArr, false);
    }

    public ByteArrayAnnotatedOutput() {
        this(1000);
    }

    public ByteArrayAnnotatedOutput(int i) {
        this(new byte[i], true);
    }

    private ByteArrayAnnotatedOutput(byte[] bArr, boolean z) {
        if (bArr == null) {
            f$$ExternalSyntheticBUOutline2.m179m("data == null");
            throw null;
        }
        this.stretchy = z;
        this.data = bArr;
        this.cursor = 0;
        this.verbose = false;
        this.annotations = null;
        this.annotationWidth = 0;
        this.hexCols = 0;
    }

    public byte[] getArray() {
        return this.data;
    }

    public byte[] toByteArray() {
        int i = this.cursor;
        byte[] bArr = new byte[i];
        System.arraycopy(this.data, 0, bArr, 0, i);
        return bArr;
    }

    @Override // com.android.dx.util.Output
    public int getCursor() {
        return this.cursor;
    }

    @Override // com.android.dx.util.Output
    public void assertCursor(int i) {
        if (this.cursor == i) {
            return;
        }
        throw new ExceptionWithContext("expected cursor " + i + "; actual value: " + this.cursor);
    }

    @Override // com.android.dx.util.Output, com.android.dex.util.ByteOutput
    public void writeByte(int i) {
        int i2 = this.cursor;
        int i3 = i2 + 1;
        if (this.stretchy) {
            ensureCapacity(i3);
        } else if (i3 > this.data.length) {
            throwBounds();
            return;
        }
        this.data[i2] = (byte) i;
        this.cursor = i3;
    }

    @Override // com.android.dx.util.Output
    public void writeShort(int i) {
        int i2 = this.cursor;
        int i3 = i2 + 2;
        if (this.stretchy) {
            ensureCapacity(i3);
        } else if (i3 > this.data.length) {
            throwBounds();
            return;
        }
        byte[] bArr = this.data;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        this.cursor = i3;
    }

    @Override // com.android.dx.util.Output
    public void writeInt(int i) {
        int i2 = this.cursor;
        int i3 = i2 + 4;
        if (this.stretchy) {
            ensureCapacity(i3);
        } else if (i3 > this.data.length) {
            throwBounds();
            return;
        }
        byte[] bArr = this.data;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.cursor = i3;
    }

    @Override // com.android.dx.util.Output
    public void writeLong(long j) {
        int i = this.cursor;
        int i2 = i + 8;
        if (this.stretchy) {
            ensureCapacity(i2);
        } else if (i2 > this.data.length) {
            throwBounds();
            return;
        }
        int i3 = (int) j;
        byte[] bArr = this.data;
        bArr[i] = (byte) i3;
        bArr[i + 1] = (byte) (i3 >> 8);
        bArr[i + 2] = (byte) (i3 >> 16);
        bArr[i + 3] = (byte) (i3 >> 24);
        int i4 = (int) (j >> 32);
        bArr[i + 4] = (byte) i4;
        bArr[i + 5] = (byte) (i4 >> 8);
        bArr[i + 6] = (byte) (i4 >> 16);
        bArr[i + 7] = (byte) (i4 >> 24);
        this.cursor = i2;
    }

    @Override // com.android.dx.util.Output
    public int writeUleb128(int i) {
        if (this.stretchy) {
            ensureCapacity(this.cursor + 5);
        }
        int i2 = this.cursor;
        Leb128.writeUnsignedLeb128(this, i);
        return this.cursor - i2;
    }

    @Override // com.android.dx.util.Output
    public int writeSleb128(int i) {
        if (this.stretchy) {
            ensureCapacity(this.cursor + 5);
        }
        int i2 = this.cursor;
        Leb128.writeSignedLeb128(this, i);
        return this.cursor - i2;
    }

    @Override // com.android.dx.util.Output
    public void write(ByteArray byteArray) {
        int size = byteArray.size();
        int i = this.cursor;
        int i2 = size + i;
        if (this.stretchy) {
            ensureCapacity(i2);
        } else if (i2 > this.data.length) {
            throwBounds();
            return;
        }
        byteArray.getBytes(this.data, i);
        this.cursor = i2;
    }

    @Override // com.android.dx.util.Output
    public void write(byte[] bArr, int i, int i2) {
        int i3 = this.cursor;
        int i4 = i3 + i2;
        int i5 = i + i2;
        if ((i | i2 | i4) < 0 || i5 > bArr.length) {
            Hex$$ExternalSyntheticBUOutline0.m194m("bytes.length ", bArr.length, "; ", i, "..!", i4);
            return;
        }
        if (this.stretchy) {
            ensureCapacity(i4);
        } else if (i4 > this.data.length) {
            throwBounds();
            return;
        }
        System.arraycopy(bArr, i, this.data, i3, i2);
        this.cursor = i4;
    }

    @Override // com.android.dx.util.Output
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // com.android.dx.util.Output
    public void writeZeroes(int i) {
        if (i < 0) {
            f$$ExternalSyntheticBUOutline1.m178m("count < 0");
            return;
        }
        int i2 = this.cursor + i;
        if (this.stretchy) {
            ensureCapacity(i2);
        } else if (i2 > this.data.length) {
            throwBounds();
            return;
        }
        Arrays.fill(this.data, this.cursor, i2, (byte) 0);
        this.cursor = i2;
    }

    @Override // com.android.dx.util.Output
    public void alignTo(int i) {
        int i2 = i - 1;
        if (i < 0 || (i & i2) != 0) {
            f$$ExternalSyntheticBUOutline1.m178m("bogus alignment");
            return;
        }
        int i3 = (this.cursor + i2) & (~i2);
        if (this.stretchy) {
            ensureCapacity(i3);
        } else if (i3 > this.data.length) {
            throwBounds();
            return;
        }
        Arrays.fill(this.data, this.cursor, i3, (byte) 0);
        this.cursor = i3;
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public boolean annotates() {
        return this.annotations != null;
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public boolean isVerbose() {
        return this.verbose;
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public void annotate(String str) {
        if (this.annotations == null) {
            return;
        }
        endAnnotation();
        this.annotations.add(new Annotation(this.cursor, str));
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public void annotate(int i, String str) {
        if (this.annotations == null) {
            return;
        }
        endAnnotation();
        int size = this.annotations.size();
        int end = size == 0 ? 0 : this.annotations.get(size - 1).getEnd();
        int i2 = this.cursor;
        if (end <= i2) {
            end = i2;
        }
        this.annotations.add(new Annotation(end, i + end, str));
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public void endAnnotation() {
        int size;
        ArrayList<Annotation> arrayList = this.annotations;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        this.annotations.get(size - 1).setEndIfUnset(this.cursor);
    }

    @Override // com.android.dx.util.AnnotatedOutput
    public int getAnnotationWidth() {
        int i = this.hexCols;
        return this.annotationWidth - (((i * 2) + 8) + (i / 2));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017 A[PHI: r1
  0x0017: PHI (r1v3 int) = (r1v0 int), (r1v1 int) binds: [B:9:0x0015, B:12:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void enableAnnotations(int i, boolean z) {
        if (this.annotations != null || this.cursor != 0) {
            GlShader$$ExternalSyntheticBUOutline1.m966m("cannot enable annotations");
            return;
        }
        if (i < 40) {
            f$$ExternalSyntheticBUOutline1.m178m("annotationWidth < 40");
            return;
        }
        int i2 = (((i - 7) / 15) + 1) & (-2);
        int i3 = 6;
        if (i2 < 6) {
            i2 = i3;
        } else {
            i3 = 10;
            if (i2 > 10) {
            }
        }
        this.annotations = new ArrayList<>(1000);
        this.annotationWidth = i;
        this.hexCols = i2;
        this.verbose = z;
    }

    public void finishAnnotating() {
        endAnnotation();
        ArrayList<Annotation> arrayList = this.annotations;
        if (arrayList != null) {
            for (int size = arrayList.size(); size > 0; size--) {
                int i = size - 1;
                Annotation annotation = this.annotations.get(i);
                if (annotation.getStart() > this.cursor) {
                    this.annotations.remove(i);
                } else {
                    int end = annotation.getEnd();
                    int i2 = this.cursor;
                    if (end > i2) {
                        annotation.setEnd(i2);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public void writeAnnotationsTo(Writer writer) {
        int i;
        String text;
        int i2;
        TwoColumnOutput twoColumnOutput = new TwoColumnOutput(writer, (this.annotationWidth - r0) - 1, getAnnotationWidth(), "|");
        Writer left = twoColumnOutput.getLeft();
        Writer right = twoColumnOutput.getRight();
        int size = this.annotations.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = this.cursor;
            if (i4 >= i || i3 >= size) {
                break;
            }
            Annotation annotation = this.annotations.get(i3);
            int start = annotation.getStart();
            if (i4 < start) {
                text = _UrlKt.FRAGMENT_ENCODE_SET;
                i2 = start;
                start = i4;
            } else {
                int end = annotation.getEnd();
                text = annotation.getText();
                i3++;
                i2 = end;
            }
            left.write(Hex.dump(this.data, start, i2 - start, start, this.hexCols, 6));
            right.write(text);
            twoColumnOutput.flush();
            i4 = i2;
        }
        if (i4 < i) {
            left.write(Hex.dump(this.data, i4, i - i4, i4, this.hexCols, 6));
        }
        while (i3 < size) {
            right.write(this.annotations.get(i3).getText());
            i3++;
        }
        twoColumnOutput.flush();
    }

    private static void throwBounds() {
        throw new IndexOutOfBoundsException("attempt to write past the end");
    }

    private void ensureCapacity(int i) {
        byte[] bArr = this.data;
        if (bArr.length < i) {
            byte[] bArr2 = new byte[(i * 2) + 1000];
            System.arraycopy(bArr, 0, bArr2, 0, this.cursor);
            this.data = bArr2;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static class Annotation {
        private int end;
        private final int start;
        private final String text;

        public Annotation(int i, int i2, String str) {
            this.start = i;
            this.end = i2;
            this.text = str;
        }

        public Annotation(int i, String str) {
            this(i, Integer.MAX_VALUE, str);
        }

        public void setEndIfUnset(int i) {
            if (this.end == Integer.MAX_VALUE) {
                this.end = i;
            }
        }

        public void setEnd(int i) {
            this.end = i;
        }

        public int getStart() {
            return this.start;
        }

        public int getEnd() {
            return this.end;
        }

        public String getText() {
            return this.text;
        }
    }
}
