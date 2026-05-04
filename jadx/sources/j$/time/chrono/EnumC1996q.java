package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2063q;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: j$.time.chrono.q */
/* JADX INFO: loaded from: classes2.dex */
public final class EnumC1996q implements InterfaceC1991l {
    public static final EnumC1996q AH;

    /* JADX INFO: renamed from: a */
    public static final /* synthetic */ EnumC1996q[] f479a;

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m436s(this, interfaceC2063q);
    }

    @Override // j$.time.chrono.InterfaceC1991l
    public final int getValue() {
        return 1;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo456h(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m431n(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object mo458k(C2009a c2009a) {
        return AbstractC1965a.m440w(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final /* synthetic */ long mo460w(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m433p(this, interfaceC2063q);
    }

    public static EnumC1996q valueOf(String str) {
        return (EnumC1996q) Enum.valueOf(EnumC1996q.class, str);
    }

    public static EnumC1996q[] values() {
        return (EnumC1996q[]) f479a.clone();
    }

    static {
        EnumC1996q enumC1996q = new EnumC1996q("AH", 0);
        AH = enumC1996q;
        f479a = new EnumC1996q[]{enumC1996q};
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.ERA) {
            return C2067u.m659e(1L, 1L);
        }
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(1, EnumC2047a.ERA);
    }
}
