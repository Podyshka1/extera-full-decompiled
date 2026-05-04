package org.mvel2.util;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class StringAppender implements CharSequence {
    private static final int DEFAULT_SIZE = 15;
    private byte[] btr;
    private int capacity;
    private String encoding;
    private int size;
    private char[] str;

    public StringAppender() {
        this.size = 0;
        this.capacity = 15;
        this.str = new char[15];
    }

    public StringAppender(int i) {
        this.size = 0;
        this.capacity = i;
        this.str = new char[i];
    }

    public StringAppender(int i, String str) {
        this.size = 0;
        this.capacity = i;
        this.str = new char[i];
        this.encoding = str;
    }

    public StringAppender(char c) {
        this.size = 0;
        this.capacity = 15;
        char[] cArr = new char[15];
        this.str = cArr;
        cArr[0] = c;
    }

    public StringAppender(char[] cArr) {
        this.size = 0;
        this.str = cArr;
        int length = cArr.length;
        this.size = length;
        this.capacity = length;
    }

    public StringAppender(CharSequence charSequence) {
        int i = 0;
        this.size = 0;
        int length = charSequence.length();
        this.size = length;
        this.capacity = length;
        this.str = new char[length];
        while (true) {
            char[] cArr = this.str;
            if (i >= cArr.length) {
                return;
            }
            cArr[i] = charSequence.charAt(i);
            i++;
        }
    }

    public StringAppender(String str) {
        this.size = 0;
        char[] charArray = str.toCharArray();
        this.str = charArray;
        int length = charArray.length;
        this.size = length;
        this.capacity = length;
    }

    public StringAppender append(char[] cArr) {
        if (cArr.length > this.capacity - this.size) {
            grow(cArr.length);
        }
        for (char c : cArr) {
            char[] cArr2 = this.str;
            int i = this.size;
            cArr2[i] = c;
            this.size = i + 1;
        }
        return this;
    }

    public StringAppender append(byte[] bArr) {
        if (bArr.length > this.capacity - this.size) {
            grow(bArr.length);
        }
        for (byte b : bArr) {
            char[] cArr = this.str;
            int i = this.size;
            cArr[i] = (char) b;
            this.size = i + 1;
        }
        return this;
    }

    public StringAppender append(char[] cArr, int i, int i2) {
        if (i2 > this.capacity - this.size) {
            grow(i2);
        }
        int i3 = i2 + i;
        while (i < i3) {
            char[] cArr2 = this.str;
            int i4 = this.size;
            this.size = i4 + 1;
            cArr2[i4] = cArr[i];
            i++;
        }
        return this;
    }

    public StringAppender append(byte[] bArr, int i, int i2) {
        if (i2 > this.capacity - this.size) {
            grow(i2);
        }
        int i3 = i2 + i;
        while (i < i3) {
            char[] cArr = this.str;
            int i4 = this.size;
            this.size = i4 + 1;
            cArr[i4] = (char) bArr[i];
            i++;
        }
        return this;
    }

    public StringAppender append(Object obj) {
        return append(String.valueOf(obj));
    }

    public StringAppender append(CharSequence charSequence) {
        if (charSequence.length() > this.capacity - this.size) {
            grow(charSequence.length());
        }
        for (int i = 0; i < charSequence.length(); i++) {
            this.str[this.size] = charSequence.charAt(i);
            this.size++;
        }
        return this;
    }

    public StringAppender append(String str) {
        if (str == null) {
            return this;
        }
        int length = str.length();
        if (length > this.capacity - this.size) {
            grow(length);
        }
        str.getChars(0, length, this.str, this.size);
        this.size += length;
        return this;
    }

    public StringAppender append(char c) {
        int i = this.size;
        if (i >= this.capacity) {
            grow(i);
        }
        char[] cArr = this.str;
        int i2 = this.size;
        this.size = i2 + 1;
        cArr[i2] = c;
        return this;
    }

    public StringAppender append(byte b) {
        if (this.btr == null) {
            this.capacity = 15;
            this.btr = new byte[15];
        }
        int i = this.size;
        if (i >= this.capacity) {
            growByte(i * 2);
        }
        byte[] bArr = this.btr;
        int i2 = this.size;
        this.size = i2 + 1;
        bArr[i2] = b;
        return this;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.size;
    }

    private void grow(int i) {
        if (this.capacity == 0) {
            this.capacity = 15;
        }
        int i2 = this.capacity + (i * 2);
        this.capacity = i2;
        char[] cArr = new char[i2];
        System.arraycopy(this.str, 0, cArr, 0, this.size);
        this.str = cArr;
    }

    private void growByte(int i) {
        int i2 = this.capacity + i;
        this.capacity = i2;
        byte[] bArr = new byte[i2];
        System.arraycopy(this.btr, 0, bArr, 0, this.size);
        this.btr = bArr;
    }

    public char[] getChars(int i, int i2) {
        char[] cArr = new char[i2];
        System.arraycopy(this.str, i, cArr, 0, i2);
        return cArr;
    }

    public char[] toChars() {
        String str;
        if (this.btr != null) {
            if (this.encoding == null) {
                this.encoding = System.getProperty("file.encoding");
            }
            try {
                str = new String(this.btr, this.encoding);
            } catch (UnsupportedEncodingException unused) {
                str = new String(this.btr);
            }
            return str.toCharArray();
        }
        int i = this.size;
        char[] cArr = new char[i];
        System.arraycopy(this.str, 0, cArr, 0, i);
        return cArr;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        if (this.btr != null) {
            if (this.encoding == null) {
                this.encoding = System.getProperty("file.encoding");
            }
            try {
                return new String(this.btr, 0, this.size, this.encoding);
            } catch (UnsupportedEncodingException unused) {
                return new String(this.btr, 0, this.size);
            }
        }
        int i = this.size;
        return i == this.capacity ? new String(this.str) : new String(this.str, 0, i);
    }

    public void getChars(int i, int i2, char[] cArr, int i3) {
        while (i < i2) {
            cArr[i3] = this.str[i];
            i++;
            i3++;
        }
    }

    public void reset() {
        this.size = 0;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.str[i];
    }

    public CharSequence substring(int i, int i2) {
        return new String(this.str, i, i2 - i);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return substring(i, i2);
    }
}
