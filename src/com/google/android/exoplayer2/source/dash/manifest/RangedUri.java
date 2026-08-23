package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.util.UriUtil;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class RangedUri {
    private int hashCode;
    public final long length;
    private final String referenceUri;
    public final long start;

    public RangedUri(String str, long j, long j2) {
        this.referenceUri = str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        this.start = j;
        this.length = j2;
    }

    public Uri resolveUri(String str) {
        return UriUtil.resolveToUri(str, this.referenceUri);
    }

    public String resolveUriString(String str) {
        return UriUtil.resolve(str, this.referenceUri);
    }

    public RangedUri attemptMerge(RangedUri rangedUri, String str) {
        String strResolveUriString = resolveUriString(str);
        RangedUri rangedUri2 = null;
        if (rangedUri != null && strResolveUriString.equals(rangedUri.resolveUriString(str))) {
            long j = this.length;
            if (j != -1) {
                long j2 = this.start;
                if (j2 + j == rangedUri.start) {
                    long j3 = rangedUri.length;
                    return new RangedUri(strResolveUriString, j2, j3 != -1 ? j + j3 : -1L);
                }
            }
            long j4 = rangedUri.length;
            if (j4 != -1) {
                long j5 = rangedUri.start;
                if (j5 + j4 == this.start) {
                    rangedUri2 = new RangedUri(strResolveUriString, j5, j != -1 ? j4 + j : -1L);
                }
            }
        }
        return rangedUri2;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((527 + ((int) this.start)) * 31) + ((int) this.length)) * 31) + this.referenceUri.hashCode();
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && RangedUri.class == obj.getClass()) {
            RangedUri rangedUri = (RangedUri) obj;
            if (this.start == rangedUri.start && this.length == rangedUri.length && this.referenceUri.equals(rangedUri.referenceUri)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.referenceUri + ", start=" + this.start + ", length=" + this.length + ")";
    }
}
