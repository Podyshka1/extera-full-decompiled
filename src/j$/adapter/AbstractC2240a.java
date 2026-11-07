package j$.adapter;

/* JADX INFO: renamed from: j$.adapter.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2240a {

    /* JADX INFO: renamed from: a */
    public static final boolean f435a;

    /* JADX INFO: renamed from: b */
    public static final boolean f436b;

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
        f435a = z;
        try {
            Class.forName("android.os.Build");
            z2 = true;
        } catch (ClassNotFoundException unused3) {
        }
        f436b = z2;
    }
}
