package j$.time.chrono;

import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2408p;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.q */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2342q implements InterfaceC2337l {
    public static final EnumC2342q AH;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2342q[] f700a;

    static {
        EnumC2342q enumC2342q = new EnumC2342q("AH", 0);
        AH = enumC2342q;
        f700a = new EnumC2342q[]{enumC2342q};
    }

    public static EnumC2342q valueOf(String str) {
        return (EnumC2342q) Enum.valueOf(EnumC2342q.class, str);
    }

    public static EnumC2342q[] values() {
        return (EnumC2342q[]) f700a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2337l
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p == EnumC2393a.ERA ? C2411s.m883f(1L, 1L) : super.mo667l(interfaceC2408p);
    }
}
