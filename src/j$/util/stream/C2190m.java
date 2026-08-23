package j$.util.stream;

import j$.time.C2045s;
import j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.m */
/* JADX INFO: loaded from: classes2.dex */
public final class C2190m extends AbstractC6226l2 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f1189b = 2;

    /* JADX INFO: renamed from: c */
    public boolean f1190c;

    /* JADX INFO: renamed from: d */
    public Object f1191d;

    public /* synthetic */ C2190m(InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2190m(P3 p3, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1191d = p3;
        this.f1190c = true;
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        switch (this.f1189b) {
            case 0:
                this.f1190c = false;
                this.f1191d = null;
                this.f1187a.mo744m(-1L);
                break;
            case 1:
                this.f1187a.mo744m(-1L);
                break;
            default:
                this.f1187a.mo744m(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        switch (this.f1189b) {
            case 0:
                InterfaceC6242p2 interfaceC6242p2 = this.f1187a;
                if (obj == null) {
                    if (this.f1190c) {
                        return;
                    }
                    this.f1190c = true;
                    this.f1191d = null;
                    interfaceC6242p2.m800v((Object) null);
                    return;
                }
                Object obj2 = this.f1191d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.f1191d = obj;
                    interfaceC6242p2.m800v(obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((C2045s) ((C2196s) this.f1191d).f1231t).apply(obj);
                if (stream != null) {
                    try {
                        boolean z = this.f1190c;
                        InterfaceC6242p2 interfaceC6242p22 = this.f1187a;
                        if (!z) {
                            ((Stream) stream.sequential()).forEach(interfaceC6242p22);
                        } else {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC6242p22.mo745p() && spliterator.tryAdvance(interfaceC6242p22)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                            break;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    break;
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.f1190c) {
                    boolean zTest = ((P3) this.f1191d).f986t.test(obj);
                    this.f1190c = zTest;
                    if (zTest) {
                        this.f1187a.m800v(obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public boolean mo745p() {
        switch (this.f1189b) {
            case 1:
                this.f1190c = true;
                return this.f1187a.mo745p();
            case 2:
                return !this.f1190c || this.f1187a.mo745p();
            default:
                return super.mo745p();
        }
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    public void end() {
        switch (this.f1189b) {
            case 0:
                this.f1190c = false;
                this.f1191d = null;
                this.f1187a.end();
                break;
            default:
                super.end();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2190m(C2196s c2196s, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1191d = c2196s;
    }
}
