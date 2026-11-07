package j$.nio.file;

import java.nio.file.WatchEvent;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l0 implements n0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchEvent.Kind f553a;

    public final /* synthetic */ boolean equals(Object obj) {
        WatchEvent.Kind kind = this.f553a;
        if (obj instanceof l0) {
            obj = ((l0) obj).f553a;
        }
        return kind.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f553a.hashCode();
    }

    @Override // j$.nio.file.n0
    public final /* synthetic */ String name() {
        return this.f553a.name();
    }

    @Override // j$.nio.file.n0
    public final /* synthetic */ Class type() {
        return this.f553a.type();
    }
}
