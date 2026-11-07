package j$.time.chrono;

import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2269p;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.q */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2202q implements InterfaceC2197l {
    public static final EnumC2202q AH;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2202q[] f698a;

    static {
        EnumC2202q enumC2202q = new EnumC2202q("AH", 0);
        AH = enumC2202q;
        f698a = new EnumC2202q[]{enumC2202q};
    }

    public static EnumC2202q valueOf(String str) {
        return (EnumC2202q) Enum.valueOf(EnumC2202q.class, str);
    }

    public static EnumC2202q[] values() {
        return (EnumC2202q[]) f698a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2197l
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p == EnumC2254a.ERA ? C2272s.m835f(1L, 1L) : super.mo643l(interfaceC2269p);
    }
}
