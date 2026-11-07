package j$.nio.file;

/* JADX INFO: renamed from: j$.nio.file.c */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2149c implements CopyOption {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.CopyOption f527a;

    public /* synthetic */ C2149c(java.nio.file.CopyOption copyOption) {
        this.f527a = copyOption;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [j$.nio.file.CopyOption, java.nio.file.StandardCopyOption] */
    /* JADX WARN: Type inference failed for: r1v3, types: [j$.nio.file.CopyOption, java.nio.file.StandardCopyOption] */
    /* JADX WARN: Type inference failed for: r1v4, types: [j$.nio.file.CopyOption, java.nio.file.StandardCopyOption] */
    /* JADX WARN: Type inference failed for: r1v6, types: [j$.nio.file.CopyOption, java.nio.file.LinkOption] */
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ CopyOption m619a(java.nio.file.CopyOption copyOption) {
        if (copyOption == 0) {
            return null;
        }
        if (copyOption instanceof C2150d) {
            return ((C2150d) copyOption).f529a;
        }
        if (copyOption instanceof LinkOption) {
            return java.nio.file.LinkOption.NOFOLLOW_LINKS;
        }
        if (!(copyOption instanceof StandardCopyOption)) {
            return new C2149c(copyOption);
        }
        StandardCopyOption standardCopyOption = (StandardCopyOption) copyOption;
        return standardCopyOption == StandardCopyOption.REPLACE_EXISTING ? java.nio.file.StandardCopyOption.REPLACE_EXISTING : standardCopyOption == StandardCopyOption.COPY_ATTRIBUTES ? java.nio.file.StandardCopyOption.COPY_ATTRIBUTES : java.nio.file.StandardCopyOption.ATOMIC_MOVE;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.CopyOption copyOption = this.f527a;
        if (obj instanceof C2149c) {
            obj = ((C2149c) obj).f527a;
        }
        return copyOption.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f527a.hashCode();
    }
}
