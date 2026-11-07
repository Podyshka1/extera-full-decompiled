package io.noties.markwon.html.jsoup.nodes;

import io.noties.markwon.html.jsoup.helper.Validate;
import java.util.Map;
import okhttp3.HttpUrl$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public class Attribute implements Map.Entry<String, String>, Cloneable {
    private String key;
    Attributes parent;
    private String val;

    public Attribute(String str, String str2, Attributes attributes) {
        Validate.notNull(str);
        this.key = str.trim();
        Validate.notEmpty(str);
        this.val = str2;
        this.parent = attributes;
    }

    @Override // java.util.Map.Entry
    public String getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public String getValue() {
        return this.val;
    }

    @Override // java.util.Map.Entry
    public String setValue(String str) {
        int iIndexOfKey;
        String str2 = this.parent.get(this.key);
        Attributes attributes = this.parent;
        if (attributes != null && (iIndexOfKey = attributes.indexOfKey(this.key)) != -1) {
            this.parent.vals[iIndexOfKey] = str;
        }
        this.val = str;
        return str2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Attribute attribute = (Attribute) obj;
            String str = this.key;
            String str2 = attribute.key;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            String str3 = this.val;
            String str4 = attribute.val;
            if (str3 != null) {
                return str3.equals(str4);
            }
            if (str4 == null) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        String str = this.key;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.val;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Attribute m3081clone() {
        try {
            return (Attribute) super.clone();
        } catch (CloneNotSupportedException e) {
            HttpUrl$$ExternalSyntheticBUOutline0.m899m(e);
            return null;
        }
    }
}
