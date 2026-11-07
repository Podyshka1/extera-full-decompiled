package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.attribute.C2138q;
import java.nio.file.attribute.FileStoreAttributeView;

/* JADX INFO: renamed from: j$.nio.file.f */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2152f extends java.nio.file.FileStore {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f533b = 0;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileStore f534a;

    public /* synthetic */ C2152f(FileStore fileStore) {
        this.f534a = fileStore;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileStore fileStore = this.f534a;
        if (obj instanceof C2152f) {
            obj = ((C2152f) obj).f534a;
        }
        return fileStore.equals(obj);
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ Object getAttribute(String str) {
        return this.f534a.mo585a(str);
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getBlockSize() {
        return this.f534a.mo586b();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ FileStoreAttributeView getFileStoreAttributeView(Class cls) {
        C2138q c2138qMo587c = this.f534a.mo587c(cls);
        if (c2138qMo587c == null) {
            return null;
        }
        return c2138qMo587c.f516a;
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getTotalSpace() {
        return this.f534a.mo588d();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getUnallocatedSpace() {
        return this.f534a.mo589e();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getUsableSpace() {
        return this.f534a.mo590f();
    }

    public final /* synthetic */ int hashCode() {
        return this.f534a.hashCode();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ boolean isReadOnly() {
        return this.f534a.mo591g();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ String name() {
        return this.f534a.mo592h();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ boolean supportsFileAttributeView(Class cls) {
        return this.f534a.mo593i(AbstractC2108g.m511h(cls));
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ String type() {
        return this.f534a.mo595k();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ boolean supportsFileAttributeView(String str) {
        return this.f534a.mo594j(str);
    }
}
