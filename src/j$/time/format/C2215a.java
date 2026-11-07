package j$.time.format;

import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.InterfaceC2269p;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: renamed from: j$.time.format.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2215a extends C2237w {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2236v f727d;

    public C2215a(C2236v c2236v) {
        this.f727d = c2236v;
    }

    @Override // j$.time.format.C2237w
    /* JADX INFO: renamed from: b */
    public final String mo770b(InterfaceC2196k interfaceC2196k, InterfaceC2269p interfaceC2269p, long j, TextStyle textStyle, Locale locale) {
        return this.f727d.m812a(j, textStyle);
    }

    @Override // j$.time.format.C2237w
    /* JADX INFO: renamed from: c */
    public final String mo771c(InterfaceC2269p interfaceC2269p, long j, TextStyle textStyle, Locale locale) {
        return this.f727d.m812a(j, textStyle);
    }

    @Override // j$.time.format.C2237w
    /* JADX INFO: renamed from: d */
    public final Iterator mo772d(InterfaceC2196k interfaceC2196k, InterfaceC2269p interfaceC2269p, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.f727d.f790b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    @Override // j$.time.format.C2237w
    /* JADX INFO: renamed from: e */
    public final Iterator mo773e(InterfaceC2269p interfaceC2269p, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.f727d.f790b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }
}
