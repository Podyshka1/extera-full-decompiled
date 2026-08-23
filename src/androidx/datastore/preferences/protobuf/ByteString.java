package androidx.datastore.preferences.protobuf;

import com.android.dex.Dex$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.fido.zzgr$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.fido.zzgr$$ExternalSyntheticBUOutline1;
import com.google.android.gms.internal.fido.zzgu$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.fido.zzgx$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import kotlin.UByte;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteString implements Iterable<Byte>, Serializable {
    public static final ByteString EMPTY = new LiteralByteString(Internal.EMPTY_BYTE_ARRAY);
    private static final Comparator<ByteString> UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    private static final ByteArrayCopier byteArrayCopier;
    private int hash = 0;

    public interface ByteArrayCopier {
        byte[] copyFrom(byte[] bArr, int i, int i2);
    }

    /* JADX INFO: loaded from: classes3.dex */
    public interface ByteIterator extends Iterator<Byte> {
        byte nextByte();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int toInt(byte b2) {
        return b2 & UByte.MAX_VALUE;
    }

    public abstract byte byteAt(int i);

    public abstract void copyToInternal(byte[] bArr, int i, int i2, int i3);

    public abstract boolean equals(Object obj);

    public abstract byte internalByteAt(int i);

    public abstract int partialHash(int i, int i2, int i3);

    public abstract int size();

    public abstract ByteString substring(int i, int i2);

    public abstract void writeTo(ByteOutput byteOutput);

    static {
        byteArrayCopier = Android.isOnAndroidDevice() ? new SystemByteArrayCopier() : new ArraysByteArrayCopier();
        UNSIGNED_LEXICOGRAPHICAL_COMPARATOR = new Comparator<ByteString>() { // from class: androidx.datastore.preferences.protobuf.ByteString.2
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.ByteString$ByteIterator, java.util.Iterator] */
            /* JADX WARN: Type inference failed for: r3v1, types: [androidx.datastore.preferences.protobuf.ByteString$ByteIterator, java.util.Iterator] */
            @Override // java.util.Comparator
            public int compare(ByteString byteString, ByteString byteString2) {
                ?? it = byteString.iterator();
                ?? it2 = byteString2.iterator();
                while (it.hasNext() && it2.hasNext()) {
                    int iCompareTo = Integer.valueOf(ByteString.toInt(it.nextByte())).compareTo(Integer.valueOf(ByteString.toInt(it2.nextByte())));
                    if (iCompareTo != 0) {
                        return iCompareTo;
                    }
                }
                return Integer.valueOf(byteString.size()).compareTo(Integer.valueOf(byteString2.size()));
            }
        };
    }

    public static final class SystemByteArrayCopier implements ByteArrayCopier {
        private SystemByteArrayCopier() {
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class ArraysByteArrayCopier implements ByteArrayCopier {
        private ArraysByteArrayCopier() {
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.ByteArrayCopier
        public byte[] copyFrom(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Byte> iterator() {
        return new AbstractByteIterator() { // from class: androidx.datastore.preferences.protobuf.ByteString.1
            private final int limit;
            private int position = 0;

            {
                this.limit = ByteString.this.size();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.position < this.limit;
            }

            @Override // androidx.datastore.preferences.protobuf.ByteString.ByteIterator
            public byte nextByte() {
                int i = this.position;
                if (i >= this.limit) {
                    Utils$$ExternalSyntheticBUOutline0.m978m();
                    return (byte) 0;
                }
                this.position = i + 1;
                return ByteString.this.internalByteAt(i);
            }
        };
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static abstract class AbstractByteIterator implements ByteIterator {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static ByteString copyFrom(byte[] bArr, int i, int i2) {
        checkRange(i, i + i2, bArr.length);
        return new LiteralByteString(byteArrayCopier.copyFrom(bArr, i, i2));
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString wrap(byte[] bArr) {
        return new LiteralByteString(bArr);
    }

    public static ByteString wrap(byte[] bArr, int i, int i2) {
        return new BoundedByteString(bArr, i, i2);
    }

    public static ByteString copyFromUtf8(String str) {
        return new LiteralByteString(str.getBytes(Internal.UTF_8));
    }

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return Internal.EMPTY_BYTE_ARRAY;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public static abstract class LeafByteString extends ByteString {
        @Override // java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator();
        }

        private LeafByteString() {
        }
    }

    public final int hashCode() {
        int iPartialHash = this.hash;
        if (iPartialHash == 0) {
            int size = size();
            iPartialHash = partialHash(size, 0, size);
            if (iPartialHash == 0) {
                iPartialHash = 1;
            }
            this.hash = iPartialHash;
        }
        return iPartialHash;
    }

    public final int peekCachedHashCode() {
        return this.hash;
    }

    public static void checkIndex(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                zzgr$$ExternalSyntheticBUOutline0.m315m(i);
            } else {
                zzgr$$ExternalSyntheticBUOutline1.m316m(i, i2);
            }
        }
    }

    public static int checkRange(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            zzgx$$ExternalSyntheticBUOutline0.m318m("Beginning index: ", i, " < 0");
            return 0;
        }
        if (i2 < i) {
            Dex$$ExternalSyntheticBUOutline0.m181m("Beginning index larger than ending index: ", i, ", ", i2);
            return 0;
        }
        Dex$$ExternalSyntheticBUOutline0.m181m("End index: ", i2, " >= ", i3);
        return 0;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), truncateAndEscapeForDisplay());
    }

    private String truncateAndEscapeForDisplay() {
        if (size() <= 50) {
            return TextFormatEscaper.escapeBytes(this);
        }
        return TextFormatEscaper.escapeBytes(substring(0, 47)) + "...";
    }

    public static class LiteralByteString extends LeafByteString {
        protected final byte[] bytes;

        public int getOffsetIntoBytes() {
            return 0;
        }

        public LiteralByteString(byte[] bArr) {
            super();
            bArr.getClass();
            this.bytes = bArr;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte byteAt(int i) {
            return this.bytes[i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final ByteString substring(int i, int i2) {
            int iCheckRange = ByteString.checkRange(i, i2, size());
            if (iCheckRange == 0) {
                return ByteString.EMPTY;
            }
            return new BoundedByteString(this.bytes, getOffsetIntoBytes() + i, iCheckRange);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, i, bArr, i2, i3);
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final void writeTo(ByteOutput byteOutput) {
            byteOutput.writeLazy(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (obj instanceof LiteralByteString) {
                LiteralByteString literalByteString = (LiteralByteString) obj;
                int iPeekCachedHashCode = peekCachedHashCode();
                int iPeekCachedHashCode2 = literalByteString.peekCachedHashCode();
                if (iPeekCachedHashCode == 0 || iPeekCachedHashCode2 == 0 || iPeekCachedHashCode == iPeekCachedHashCode2) {
                    return equalsRange(literalByteString, 0, size());
                }
                return false;
            }
            return obj.equals(this);
        }

        public final boolean equalsRange(ByteString byteString, int i, int i2) {
            if (i2 > byteString.size()) {
                zzgu$$ExternalSyntheticBUOutline0.m317m(i2, size());
                return false;
            }
            int i3 = i + i2;
            if (i3 > byteString.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + byteString.size());
            }
            if (byteString instanceof LiteralByteString) {
                LiteralByteString literalByteString = (LiteralByteString) byteString;
                byte[] bArr = this.bytes;
                byte[] bArr2 = literalByteString.bytes;
                int offsetIntoBytes = getOffsetIntoBytes() + i2;
                int offsetIntoBytes2 = getOffsetIntoBytes();
                int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i;
                while (offsetIntoBytes2 < offsetIntoBytes) {
                    if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                        return false;
                    }
                    offsetIntoBytes2++;
                    offsetIntoBytes3++;
                }
                return true;
            }
            return byteString.substring(i, i3).equals(substring(0, i2));
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString
        public final int partialHash(int i, int i2, int i3) {
            return Internal.partialHash(i, this.bytes, getOffsetIntoBytes() + i2, i3);
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static final class BoundedByteString extends LiteralByteString {
        private final int bytesLength;
        private final int bytesOffset;

        public BoundedByteString(byte[] bArr, int i, int i2) {
            super(bArr);
            ByteString.checkRange(i, i + i2, bArr.length);
            this.bytesOffset = i;
            this.bytesLength = i2;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public byte byteAt(int i) {
            ByteString.checkIndex(i, size());
            return this.bytes[this.bytesOffset + i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public byte internalByteAt(int i) {
            return this.bytes[this.bytesOffset + i];
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public int size() {
            return this.bytesLength;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString
        public int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override // androidx.datastore.preferences.protobuf.ByteString.LiteralByteString, androidx.datastore.preferences.protobuf.ByteString
        public void copyToInternal(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + i, bArr, i2, i3);
        }
    }
}
