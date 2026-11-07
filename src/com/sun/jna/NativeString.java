package com.sun.jna;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
class NativeString implements CharSequence, Comparable {
    static final String WIDE_STRING = "--WIDE-STRING--";
    private String encoding;
    private Pointer pointer;

    public class StringMemory extends Memory {
        public StringMemory(long j) {
            super(j);
        }

        @Override // com.sun.jna.Memory, com.sun.jna.Pointer
        public String toString() {
            return NativeString.this.toString();
        }
    }

    public NativeString(String str) {
        this(str, Native.getDefaultStringEncoding());
    }

    public NativeString(String str, boolean z) {
        this(str, z ? WIDE_STRING : Native.getDefaultStringEncoding());
    }

    public NativeString(WString wString) {
        this(wString.toString(), WIDE_STRING);
    }

    public NativeString(String str, String str2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("String must not be null");
            throw null;
        }
        this.encoding = str2;
        if (WIDE_STRING.equals(str2)) {
            StringMemory stringMemory = new StringMemory((str.length() + 1) * Native.WCHAR_SIZE);
            this.pointer = stringMemory;
            stringMemory.setWideString(0L, str);
        } else {
            byte[] bytes = Native.getBytes(str, str2);
            StringMemory stringMemory2 = new StringMemory(bytes.length + 1);
            this.pointer = stringMemory2;
            stringMemory2.write(0L, bytes, 0, bytes.length);
            this.pointer.setByte(bytes.length, (byte) 0);
        }
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public boolean equals(Object obj) {
        return (obj instanceof CharSequence) && compareTo(obj) == 0;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        boolean zEquals = WIDE_STRING.equals(this.encoding);
        Pointer pointer = this.pointer;
        return zEquals ? pointer.getWideString(0L) : pointer.getString(0L, this.encoding);
    }

    public Pointer getPointer() {
        return this.pointer;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return toString().charAt(i);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return toString().length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return toString().subSequence(i, i2);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null) {
            return 1;
        }
        return toString().compareTo(obj.toString());
    }
}
