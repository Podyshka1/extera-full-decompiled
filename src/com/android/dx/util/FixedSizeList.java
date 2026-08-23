package com.android.dx.util;

import java.util.Arrays;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class FixedSizeList extends MutabilityControl implements ToHuman {
    private Object[] arr;

    public FixedSizeList(int i) {
        super(i != 0);
        try {
            this.arr = new Object[i];
        } catch (NegativeArraySizeException unused) {
            f$$ExternalSyntheticBUOutline1.m178m("size < 0");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.arr, ((FixedSizeList) obj).arr);
    }

    public int hashCode() {
        return Arrays.hashCode(this.arr);
    }

    public String toString() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1).concat("{"), ", ", "}", false);
    }

    public String toHuman() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1).concat("{"), ", ", "}", true);
    }

    public String toString(String str, String str2, String str3) {
        return toString0(str, str2, str3, false);
    }

    public String toHuman(String str, String str2, String str3) {
        return toString0(str, str2, str3, true);
    }

    public final int size() {
        return this.arr.length;
    }

    public void shrinkToFit() {
        int length = this.arr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.arr[i2] != null) {
                i++;
            }
        }
        if (length == i) {
            return;
        }
        throwIfImmutable();
        Object[] objArr = new Object[i];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            Object obj = this.arr[i4];
            if (obj != null) {
                objArr[i3] = obj;
                i3++;
            }
        }
        this.arr = objArr;
        if (i == 0) {
            setImmutable();
        }
    }

    public final Object get0(int i) {
        try {
            Object obj = this.arr[i];
            if (obj != null) {
                return obj;
            }
            throw new NullPointerException("unset: " + i);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return throwIndex(i);
        }
    }

    public final Object getOrNull0(int i) {
        return this.arr[i];
    }

    public final void set0(int i, Object obj) {
        throwIfImmutable();
        try {
            this.arr[i] = obj;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throwIndex(i);
        }
    }

    private Object throwIndex(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("n < 0");
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    private String toString0(String str, String str2, String str3, boolean z) {
        int length = this.arr.length;
        StringBuilder sb = new StringBuilder((length * 10) + 10);
        if (str != null) {
            sb.append(str);
        }
        for (int i = 0; i < length; i++) {
            if (i != 0 && str2 != null) {
                sb.append(str2);
            }
            Object[] objArr = this.arr;
            if (z) {
                sb.append(((ToHuman) objArr[i]).toHuman());
            } else {
                sb.append(objArr[i]);
            }
        }
        if (str3 != null) {
            sb.append(str3);
        }
        return sb.toString();
    }
}
