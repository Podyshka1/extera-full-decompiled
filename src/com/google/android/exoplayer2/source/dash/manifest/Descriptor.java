package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public final class Descriptor {

    /* JADX INFO: renamed from: id */
    public final String f325id;
    public final String schemeIdUri;
    public final String value;

    public Descriptor(String str, String str2, String str3) {
        this.schemeIdUri = str;
        this.value = str2;
        this.f325id = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Descriptor.class == obj.getClass()) {
            Descriptor descriptor = (Descriptor) obj;
            if (Util.areEqual(this.schemeIdUri, descriptor.schemeIdUri) && Util.areEqual(this.value, descriptor.value) && Util.areEqual(this.f325id, descriptor.f325id)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = this.schemeIdUri.hashCode() * 31;
        String str = this.value;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f325id;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
