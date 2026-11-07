package j$.adapter;

/* JADX INFO: renamed from: j$.adapter.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2100a {

    /* JADX INFO: renamed from: a */
    public static final boolean f434a;

    /* JADX INFO: renamed from: b */
    public static final boolean f435b;

    static {
        boolean z;
        try {
            Class.forName("java.util.StringJoiner");
        } catch (ClassNotFoundException unused) {
        }
        boolean z2 = false;
        try {
            Class.forName("java.nio.file.FileSystems");
            z = true;
        } catch (ClassNotFoundException unused2) {
            z = false;
        }
        f434a = z;
        try {
            Class.forName("android.os.Build");
            z2 = true;
        } catch (ClassNotFoundException unused3) {
        }
        f435b = z2;
    }
}
