package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.attribute.k */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2272k implements java.nio.file.attribute.FileAttribute {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileAttribute f512a;

    public C2272k(FileAttribute fileAttribute) {
        this.f512a = fileAttribute;
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final String name() {
        return "posix:permissions";
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final Object value() {
        return Collections.unmodifiableSet(AbstractC2248g.m540m((Set) this.f512a.value()));
    }
}
