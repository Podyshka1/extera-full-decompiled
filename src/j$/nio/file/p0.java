package j$.nio.file;

import java.nio.file.WatchKey;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchKey f571a;

    public /* synthetic */ p0(WatchKey watchKey) {
        this.f571a = watchKey;
    }

    /* JADX INFO: renamed from: a */
    public static /* synthetic */ p0 m628a(WatchKey watchKey) {
        if (watchKey == null) {
            return null;
        }
        return new p0(watchKey);
    }

    public final /* synthetic */ boolean equals(Object obj) {
        WatchKey watchKey = this.f571a;
        if (obj instanceof p0) {
            obj = ((p0) obj).f571a;
        }
        return watchKey.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f571a.hashCode();
    }
}
