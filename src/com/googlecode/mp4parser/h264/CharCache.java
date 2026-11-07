package com.googlecode.mp4parser.h264;

/* JADX INFO: loaded from: classes5.dex */
public class CharCache {
    private char[] cache;
    private int pos;

    public CharCache(int i) {
        this.cache = new char[i];
    }

    public String toString() {
        return new String(this.cache, 0, this.pos);
    }

    public void clear() {
        this.pos = 0;
    }

    public void append(char c2) {
        int i = this.pos;
        char[] cArr = this.cache;
        if (i < cArr.length - 1) {
            cArr[i] = c2;
            this.pos = i + 1;
        }
    }

    public int length() {
        return this.pos;
    }
}
