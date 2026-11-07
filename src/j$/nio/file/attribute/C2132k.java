package j$.nio.file.attribute;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: renamed from: j$.nio.file.attribute.k */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2132k implements java.nio.file.attribute.FileAttribute {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileAttribute f511a;

    public C2132k(FileAttribute fileAttribute) {
        this.f511a = fileAttribute;
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final String name() {
        return "posix:permissions";
    }

    @Override // java.nio.file.attribute.FileAttribute
    public final Object value() {
        return Collections.unmodifiableSet(AbstractC2108g.m516m((Set) this.f511a.value()));
    }
}
