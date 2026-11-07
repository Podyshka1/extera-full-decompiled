package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.attribute.C2138q;
import java.nio.file.attribute.FileStoreAttributeView;

/* JADX INFO: renamed from: j$.nio.file.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2151e extends FileStore {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.FileStore f531a;

    public C2151e(java.nio.file.FileStore fileStore) {
        this.f531a = fileStore;
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Object mo585a(String str) {
        return this.f531a.getAttribute(str);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ long mo586b() {
        return this.f531a.getBlockSize();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2138q mo587c(Class cls) {
        FileStoreAttributeView fileStoreAttributeView = this.f531a.getFileStoreAttributeView(cls);
        if (fileStoreAttributeView == null) {
            return null;
        }
        return new C2138q(fileStoreAttributeView);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ long mo588d() {
        return this.f531a.getTotalSpace();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ long mo589e() {
        return this.f531a.getUnallocatedSpace();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.FileStore fileStore = this.f531a;
        if (obj instanceof C2151e) {
            obj = ((C2151e) obj).f531a;
        }
        return fileStore.equals(obj);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ long mo590f() {
        return this.f531a.getUsableSpace();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ boolean mo591g() {
        return this.f531a.isReadOnly();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ String mo592h() {
        return this.f531a.name();
    }

    public final /* synthetic */ int hashCode() {
        return this.f531a.hashCode();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: i */
    public final /* synthetic */ boolean mo593i(Class cls) {
        return this.f531a.supportsFileAttributeView(AbstractC2108g.m511h(cls));
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: j */
    public final /* synthetic */ boolean mo594j(String str) {
        return this.f531a.supportsFileAttributeView(str);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ String mo595k() {
        return this.f531a.type();
    }
}
