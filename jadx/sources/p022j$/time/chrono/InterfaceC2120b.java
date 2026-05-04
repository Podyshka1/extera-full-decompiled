package p022j$.time.chrono;

import p022j$.time.C2173h;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;

/* JADX INFO: renamed from: j$.time.chrono.b */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2120b extends InterfaceC2198m, InterfaceC2200o, Comparable {
    /* JADX INFO: renamed from: B */
    int compareTo(InterfaceC2120b interfaceC2120b);

    /* JADX INFO: renamed from: a */
    InterfaceC2129k mo610a();

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: c */
    InterfaceC2120b mo588c(long j, InterfaceC2202q interfaceC2202q);

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    InterfaceC2120b mo589d(long j, InterfaceC2204s interfaceC2204s);

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    boolean mo575e(InterfaceC2202q interfaceC2202q);

    int hashCode();

    String toString();

    /* JADX INFO: renamed from: x */
    long mo612x();

    /* JADX INFO: renamed from: y */
    ChronoLocalDateTime mo613y(C2173h c2173h);
}
