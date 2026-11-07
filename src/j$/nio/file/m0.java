package j$.nio.file;

import java.nio.file.WatchEvent;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class m0 implements WatchEvent.Kind {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ n0 f559a;

    public final /* synthetic */ boolean equals(Object obj) {
        n0 n0Var = this.f559a;
        if (obj instanceof m0) {
            obj = ((m0) obj).f559a;
        }
        return n0Var.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f559a.hashCode();
    }

    @Override // java.nio.file.WatchEvent.Kind
    public final /* synthetic */ String name() {
        return this.f559a.name();
    }

    @Override // java.nio.file.WatchEvent.Kind
    public final /* synthetic */ Class type() {
        return this.f559a.type();
    }
}
