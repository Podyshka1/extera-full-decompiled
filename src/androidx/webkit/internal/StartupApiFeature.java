package androidx.webkit.internal;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class StartupApiFeature {
    private static final Set<StartupApiFeature> sValues = new HashSet();
    private final String mInternalFeatureValue;
    private final String mPublicFeatureValue;

    public StartupApiFeature(String str, String str2) {
        this.mPublicFeatureValue = str;
        this.mInternalFeatureValue = str2;
        sValues.add(this);
    }

    /* JADX INFO: renamed from: androidx.webkit.internal.StartupApiFeature$P */
    public static class C1072P extends StartupApiFeature {
        public C1072P(String str, String str2) {
            super(str, str2);
        }
    }

    public static class NoFramework extends StartupApiFeature {
        public NoFramework(String str, String str2) {
            super(str, str2);
        }
    }
}
