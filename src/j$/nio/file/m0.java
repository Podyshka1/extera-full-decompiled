package j$.nio.file;

import java.nio.file.WatchEvent;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class m0 implements WatchEvent.Kind {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ n0 f560a;

    public final /* synthetic */ boolean equals(Object obj) {
        n0 n0Var = this.f560a;
        if (obj instanceof m0) {
            obj = ((m0) obj).f560a;
        }
        return n0Var.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f560a.hashCode();
    }

    @Override // java.nio.file.WatchEvent.Kind
    public final /* synthetic */ String name() {
        return this.f560a.name();
    }

    @Override // java.nio.file.WatchEvent.Kind
    public final /* synthetic */ Class type() {
        return this.f560a.type();
    }
}
