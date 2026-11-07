package j$.nio.file;

import java.nio.file.WatchKey;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchKey f572a;

    public /* synthetic */ p0(WatchKey watchKey) {
        this.f572a = watchKey;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ p0 m652a(WatchKey watchKey) {
        if (watchKey == null) {
            return null;
        }
        return new p0(watchKey);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchKey watchKey = this.f572a;
        if (obj instanceof p0) {
            obj = ((p0) obj).f572a;
        }
        return watchKey.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f572a.hashCode();
    }
}
