package j$.time.chrono;

import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2188p;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.q */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC2120q implements InterfaceC2115l {
    public static final EnumC2120q AH;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC2120q[] f542a;

    static {
        EnumC2120q enumC2120q = new EnumC2120q("AH", 0);
        AH = enumC2120q;
        f542a = new EnumC2120q[]{enumC2120q};
    }

    public static EnumC2120q valueOf(String str) {
        return (EnumC2120q) Enum.valueOf(EnumC2120q.class, str);
    }

    public static EnumC2120q[] values() {
        return (EnumC2120q[]) f542a.clone();
    }

    @Override // j$.time.chrono.InterfaceC2115l
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p == EnumC2173a.ERA ? C2192t.m726f(1L, 1L) : super.mo487m(interfaceC2188p);
    }
}
