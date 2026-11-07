package j$.nio.file;

import java.nio.file.WatchEvent;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchEvent.Modifier f566a;

    public final /* synthetic */ boolean equals(Object obj) {
        WatchEvent.Modifier modifier = this.f566a;
        if (obj instanceof o0) {
            obj = ((o0) obj).f566a;
        }
        return modifier.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f566a.hashCode();
    }
}
