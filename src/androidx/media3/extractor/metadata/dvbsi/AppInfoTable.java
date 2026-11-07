package androidx.media3.extractor.metadata.dvbsi;

import androidx.media3.common.Metadata;

/* JADX INFO: loaded from: classes4.dex */
public final class AppInfoTable implements Metadata.Entry {
    public final int controlCode;
    public final String url;

    public AppInfoTable(int i, String str) {
        this.controlCode = i;
        this.url = str;
    }

    public String toString() {
        return "Ait(controlCode=" + this.controlCode + ",url=" + this.url + ")";
    }
}
