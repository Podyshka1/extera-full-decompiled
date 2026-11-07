package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.attribute.C2278q;
import java.nio.file.attribute.FileStoreAttributeView;

/* JADX INFO: renamed from: j$.nio.file.f */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2292f extends java.nio.file.FileStore {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f534b = 0;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ FileStore f535a;

    public /* synthetic */ C2292f(FileStore fileStore) {
        this.f535a = fileStore;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileStore fileStore = this.f535a;
        if (obj instanceof C2292f) {
            obj = ((C2292f) obj).f535a;
        }
        return fileStore.equals(obj);
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ Object getAttribute(String str) {
        return this.f535a.mo609a(str);
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getBlockSize() {
        return this.f535a.mo610b();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ FileStoreAttributeView getFileStoreAttributeView(Class cls) {
        C2278q c2278qMo611c = this.f535a.mo611c(cls);
        if (c2278qMo611c == null) {
            return null;
        }
        return c2278qMo611c.f517a;
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getTotalSpace() {
        return this.f535a.mo612d();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getUnallocatedSpace() {
        return this.f535a.mo613e();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ long getUsableSpace() {
        return this.f535a.mo614f();
    }

    public final /* synthetic */ int hashCode() {
        return this.f535a.hashCode();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ boolean isReadOnly() {
        return this.f535a.mo615g();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ String name() {
        return this.f535a.mo616h();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ boolean supportsFileAttributeView(Class cls) {
        return this.f535a.mo617i(AbstractC2248g.m535h(cls));
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ String type() {
        return this.f535a.mo619k();
    }

    @Override // java.nio.file.FileStore
    public final /* synthetic */ boolean supportsFileAttributeView(String str) {
        return this.f535a.mo618j(str);
    }
}
