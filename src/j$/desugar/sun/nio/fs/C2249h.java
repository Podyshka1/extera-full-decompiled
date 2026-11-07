package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.g0;
import j$.time.AbstractC2324b;
import j$.time.C2352d;
import j$.time.ZoneId;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2408p;
import java.nio.file.DirectoryStream;
import java.util.Collections;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.h */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2249h implements g0, DirectoryStream.Filter, FileAttribute, InterfaceC2404l {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f459a;

    /* JADX INFO: renamed from: b */
    public final Object f460b;

    public /* synthetic */ C2249h(Object obj, int i) {
        this.f459a = i;
        this.f460b = obj;
    }

    @Override // java.nio.file.DirectoryStream.Filter
    public boolean accept(Object obj) {
        switch (this.f459a) {
            case 1:
                return ((g0) this.f460b).mo557p(((Path) obj).getFileName());
            default:
                return ((DirectoryStream.Filter) this.f460b).accept(AbstractC2248g.m533f(obj));
        }
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f849a ? (ZoneId) this.f460b : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public long mo556k(InterfaceC2408p interfaceC2408p) {
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public String name() {
        switch (this.f459a) {
        }
        return "posix:permissions";
    }

    @Override // j$.nio.file.g0
    /* JADX INFO: renamed from: p */
    public boolean mo557p(Path path) {
        return ((Pattern) this.f460b).matcher(path.toString()).matches();
    }

    @Override // j$.nio.file.attribute.FileAttribute
    public Object value() {
        int i = this.f459a;
        Object obj = this.f460b;
        switch (i) {
            case 3:
                return Collections.unmodifiableSet(AbstractC2248g.m540m((Set) ((java.nio.file.attribute.FileAttribute) obj).value()));
            default:
                return Collections.unmodifiableSet((Set) obj);
        }
    }
}
