package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class FloatList {
    public int _size;
    public float[] content;

    public /* synthetic */ FloatList(int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(i);
    }

    private FloatList(int i) {
        float[] emptyFloatArray;
        if (i == 0) {
            emptyFloatArray = FloatSetKt.getEmptyFloatArray();
        } else {
            emptyFloatArray = new float[i];
        }
        this.content = emptyFloatArray;
    }

    public final int getSize() {
        return this._size;
    }

    public int hashCode() {
        float[] fArr = this.content;
        int i = this._size;
        int iFloatToIntBits = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iFloatToIntBits += Float.floatToIntBits(fArr[i2]) * 31;
        }
        return iFloatToIntBits;
    }

    public final float get(int i) {
        if (i < 0 || i >= this._size) {
            RuntimeHelpersKt.throwIndexOutOfBoundsException("Index must be between 0 and size");
        }
        return this.content[i];
    }

    public final float first() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("FloatList is empty.");
        }
        return this.content[0];
    }

    public final float last() {
        if (this._size == 0) {
            RuntimeHelpersKt.throwNoSuchElementException("FloatList is empty.");
        }
        return this.content[this._size - 1];
    }

    public static /* synthetic */ String joinToString$default(FloatList floatList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if ((i2 & 4) != 0) {
            charSequence3 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        CharSequence charSequence6 = charSequence3;
        return floatList.joinToString(charSequence, charSequence2, charSequence6, i, charSequence5);
    }

    public final String joinToString(CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated) {
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        float[] fArr = this.content;
        int i2 = this._size;
        int i3 = 0;
        while (true) {
            if (i3 < i2) {
                float f = fArr[i3];
                if (i3 == i) {
                    sb.append(truncated);
                    break;
                }
                if (i3 != 0) {
                    sb.append(separator);
                }
                sb.append(f);
                i3++;
            } else {
                sb.append(postfix);
                break;
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public boolean equals(Object obj) {
        if (obj instanceof FloatList) {
            FloatList floatList = (FloatList) obj;
            int i = floatList._size;
            int i2 = this._size;
            if (i == i2) {
                float[] fArr = this.content;
                float[] fArr2 = floatList.content;
                IntRange intRangeUntil = RangesKt.until(0, i2);
                int first = intRangeUntil.getFirst();
                int last = intRangeUntil.getLast();
                if (first > last) {
                    return true;
                }
                while (fArr[first] == fArr2[first]) {
                    if (first == last) {
                        return true;
                    }
                    first++;
                }
                return false;
            }
        }
        return false;
    }

    public String toString() {
        return joinToString$default(this, null, "[", "]", 0, null, 25, null);
    }
}
