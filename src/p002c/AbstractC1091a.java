package p002c;

/* JADX INFO: renamed from: c.a */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1091a {
    /* JADX INFO: renamed from: a */
    public static void m205a(String str) {
        try {
            System.loadLibrary(str);
        } catch (Throwable th) {
            a$$ExternalSyntheticBUOutline0.m206m("Failed to load native library: ", str, th);
        }
    }
}
