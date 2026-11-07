package j$.nio.file;

import java.nio.file.WatchEvent;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ WatchEvent.Modifier f565a;

    public final /* synthetic */ boolean equals(Object obj) {
        WatchEvent.Modifier modifier = this.f565a;
        if (obj instanceof o0) {
            obj = ((o0) obj).f565a;
        }
        return modifier.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f565a.hashCode();
    }
}
