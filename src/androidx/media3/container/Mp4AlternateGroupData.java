package androidx.media3.container;

import androidx.media3.common.Metadata;

/* JADX INFO: loaded from: classes3.dex */
public final class Mp4AlternateGroupData implements Metadata.Entry {
    public final int alternateGroup;

    public Mp4AlternateGroupData(int i) {
        this.alternateGroup = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Mp4AlternateGroupData) && this.alternateGroup == ((Mp4AlternateGroupData) obj).alternateGroup;
    }

    public int hashCode() {
        return this.alternateGroup;
    }

    public String toString() {
        return "Mp4AlternateGroup: " + this.alternateGroup;
    }
}
