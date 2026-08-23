package com.google.android.datatransport;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes.dex */
public final class Encoding {
    private final String name;

    public static Encoding of(String str) {
        return new Encoding(str);
    }

    public String getName() {
        return this.name;
    }

    private Encoding(String str) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("name is null");
            throw null;
        }
        this.name = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Encoding) {
            return this.name.equals(((Encoding) obj).name);
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.name + "\"}";
    }
}
