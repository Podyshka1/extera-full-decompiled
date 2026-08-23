package androidx.camera.video.internal.config;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class FormatCombo {
    private final String audioMime;
    private final int container;
    private final String videoMime;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FormatCombo)) {
            return false;
        }
        FormatCombo formatCombo = (FormatCombo) obj;
        return this.container == formatCombo.container && Intrinsics.areEqual(this.videoMime, formatCombo.videoMime) && Intrinsics.areEqual(this.audioMime, formatCombo.audioMime);
    }

    public int hashCode() {
        int i = this.container * 31;
        String str = this.videoMime;
        int iHashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.audioMime;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "FormatCombo(container=" + this.container + ", videoMime=" + this.videoMime + ", audioMime=" + this.audioMime + ')';
    }

    public FormatCombo(int i, String str, String str2) {
        this.container = i;
        this.videoMime = str;
        this.audioMime = str2;
        if (str == null && str2 == null) {
            throw new IllegalArgumentException("FormatCombo must have at least one valid track. Both videoMime and audioMime cannot be null.");
        }
    }
}
