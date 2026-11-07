package j$.nio.file;

import java.nio.file.WatchEvent;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l0 implements n0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchEvent.Kind f554a;

    public final /* synthetic */ boolean equals(Object obj) {
        WatchEvent.Kind kind = this.f554a;
        if (obj instanceof l0) {
            obj = ((l0) obj).f554a;
        }
        return kind.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f554a.hashCode();
    }

    @Override // j$.nio.file.n0
    public final /* synthetic */ String name() {
        return this.f554a.name();
    }

    @Override // j$.nio.file.n0
    public final /* synthetic */ Class type() {
        return this.f554a.type();
    }
}
