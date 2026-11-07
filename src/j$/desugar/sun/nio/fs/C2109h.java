package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.g0;
import j$.time.AbstractC2185c;
import j$.time.C2213e;
import j$.time.ZoneId;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2269p;
import java.nio.file.DirectoryStream;
import java.util.Collections;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.h */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2109h implements g0, DirectoryStream.Filter, FileAttribute, InterfaceC2265l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f458a;

    /* JADX INFO: renamed from: b */
    public final Object f459b;

    public /* synthetic */ C2109h(Object obj, int i) {
        this.f458a = i;
        this.f459b = obj;
    }

    @Override // java.nio.file.DirectoryStream.Filter
    public boolean accept(Object obj) {
        switch (this.f458a) {
            case 1:
                return ((g0) this.f459b).mo533p(((Path) obj).getFileName());
            default:
                return ((DirectoryStream.Filter) this.f459b).accept(AbstractC2108g.m509f(obj));
        }
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f847a ? (ZoneId) this.f459b : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public long mo532k(InterfaceC2269p interfaceC2269p) {
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public String name() {
        switch (this.f458a) {
        }
        return "posix:permissions";
    }

    @Override // j$.nio.file.g0
    /* JADX INFO: renamed from: p */
    public boolean mo533p(Path path) {
        return ((Pattern) this.f459b).matcher(path.toString()).matches();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public Object value() {
        int i = this.f458a;
        Object obj = this.f459b;
        switch (i) {
            case 3:
                return Collections.unmodifiableSet(AbstractC2108g.m516m((Set) ((java.nio.file.attribute.FileAttribute) obj).value()));
            default:
                return Collections.unmodifiableSet((Set) obj);
        }
    }
}
