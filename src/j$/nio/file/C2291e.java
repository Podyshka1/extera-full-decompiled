package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.attribute.C2278q;
import java.nio.file.attribute.FileStoreAttributeView;

/* JADX INFO: renamed from: j$.nio.file.e */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2291e extends FileStore {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.FileStore f532a;

    public C2291e(java.nio.file.FileStore fileStore) {
        this.f532a = fileStore;
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Object mo609a(String str) {
        return this.f532a.getAttribute(str);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: b */
    public final /* synthetic */ long mo610b() {
        return this.f532a.getBlockSize();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2278q mo611c(Class cls) {
        FileStoreAttributeView fileStoreAttributeView = this.f532a.getFileStoreAttributeView(cls);
        if (fileStoreAttributeView == null) {
            return null;
        }
        return new C2278q(fileStoreAttributeView);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: d */
    public final /* synthetic */ long mo612d() {
        return this.f532a.getTotalSpace();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ long mo613e() {
        return this.f532a.getUnallocatedSpace();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.FileStore fileStore = this.f532a;
        if (obj instanceof C2291e) {
            obj = ((C2291e) obj).f532a;
        }
        return fileStore.equals(obj);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ long mo614f() {
        return this.f532a.getUsableSpace();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ boolean mo615g() {
        return this.f532a.isReadOnly();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ String mo616h() {
        return this.f532a.name();
    }

    public final /* synthetic */ int hashCode() {
        return this.f532a.hashCode();
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: i */
    public final /* synthetic */ boolean mo617i(Class cls) {
        return this.f532a.supportsFileAttributeView(AbstractC2248g.m535h(cls));
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: j */
    public final /* synthetic */ boolean mo618j(String str) {
        return this.f532a.supportsFileAttributeView(str);
    }

    @Override // j$.nio.file.FileStore
    /* JADX INFO: renamed from: k */
    public final /* synthetic */ String mo619k() {
        return this.f532a.type();
    }
}
