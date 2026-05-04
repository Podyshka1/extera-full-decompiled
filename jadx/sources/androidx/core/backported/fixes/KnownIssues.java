package androidx.core.backported.fixes;

import android.os.Build;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KnownIssues {
    public static final Companion Companion = new Companion(null);
    public static final KnownIssue KI_350037023 = new KnownIssue(350037023, 1, null, null, 12, null);
    public static final KnownIssue KI_372917199 = new KnownIssue(372917199, 2, SetsKt.setOf("foo/bar/manually_tested"), new Function0() { // from class: androidx.core.backported.fixes.KnownIssues$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(KnownIssues.KI_372917199$lambda$0());
        }
    });
    public static final KnownIssue KI_350037348 = new KnownIssue(350037348, 3, null, null, 12, null);
    public static final KnownIssue KI_398591036 = new KnownIssue(398591036, 5, SetsKt.setOf((Object[]) new String[]{"google/blazer/blazer:16/BD3A.250721.001.B7/13955164:user/release-keys", "google/caiman/caiman:16/BP3A.250905.014/13873947:user/release-keys", "google/comet/comet:16/BP3A.250905.014/13873947:user/release-keys", "google/frankel/frankel:16/BD3A.250721.001.B7/13955164:user/release-keys", "google/komodo/komodo:16/BP3A.250905.014/13873947:user/release-keys", "google/mustang/mustang:16/BD3A.250721.001.B7/13955164:user/release-keys", "google/tokay/tokay:16/BP3A.250905.014/13873947:user/release-keys", "google/blazer/blazer:16/BD3A.251005.003.W3/14147046:user/release-keys", "google/blazer/blazer:16/BD3A.251005.003.J5/14147083:user/release-keys", "google/caiman/caiman:16/BP3A.251005.004.B1/14042072:user/release-keys", "google/comet/comet:16/BP3A.251005.004.B1/14042072:user/release-keys", "google/frankel/frankel:16/BD3A.251005.003.W3/14147046:user/release-keys", "google/frankel/frankel:16/BD3A.251005.003.J5/14147083:user/release-keys", "google/komodo/komodo:16/BP3A.251005.004.B1/14042072:user/release-keys", "google/mustang/mustang:16/BD3A.251005.003.J5/14147083:user/release-keys", "google/mustang/mustang:16/BD3A.251005.003.W3/14147046:user/release-keys", "google/rango/rango:16/BD3A.251005.003.W3/14147046:user/release-keys", "google/rango/rango:16/BD3A.251005.003.J5/14147083:user/release-keys", "google/tokay/tokay:16/BP3A.251005.004.B1/14042072:user/release-keys", "google/blazer/blazer:16/BD3A.251105.010.E1/14337626:user/release-keys", "google/blazer/blazer:16/BD3A.251105.010.F1/14341671:user/release-keys", "google/blazer/blazer:16/BD3A.251105.010.J3/14341896:user/release-keys", "google/caiman/caiman:16/BP3A.251105.015/14339231:user/release-keys", "google/comet/comet:16/BP3A.251105.015/14339231:user/release-keys", "google/frankel/frankel:16/BD3A.251105.010.E1/14337626:user/release-keys", "google/frankel/frankel:16/BD3A.251105.010.F1/14341671:user/release-keys", "google/frankel/frankel:16/BD3A.251105.010.J3/14341896:user/release-keys", "google/komodo/komodo:16/BP3A.251105.015/14339231:user/release-keys", "google/mustang/mustang:16/BD3A.251105.010.E1/14337626:user/release-keys", "google/mustang/mustang:16/BD3A.251105.010.F1/14341671:user/release-keys", "google/mustang/mustang:16/BD3A.251105.010.J3/14341896:user/release-keys", "google/rango/rango:16/BD3A.251105.010.E1/14337626:user/release-keys", "google/rango/rango:16/BD3A.251105.010.F1/14341671:user/release-keys", "google/rango/rango:16/BD3A.251105.010.J3/14341896:user/release-keys", "google/tokay/tokay:16/BP3A.251105.015/14339231:user/release-keys", "google/blazer/blazer:16/BD4A.251205.006.A1/14402117:user/release-keys", "google/blazer/blazer:16/BD4A.251205.006/14401865:user/release-keys", "google/blazer/blazer:16/BP4A.251205.006.C1/14402245:user/release-keys", "google/caiman/caiman:16/BP4A.251205.006.A1/14402117:user/release-keys", "google/caiman/caiman:16/BP4A.251205.006/14401865:user/release-keys", "google/comet/comet:16/BD4A.251205.006.A1/14402117:user/release-keys", "google/comet/comet:16/BD4A.251205.006/14401865:user/release-keys", "google/frankel/frankel:16/BD4A.251205.006.A1/14402117:user/release-keys", "google/frankel/frankel:16/BD4A.251205.006/14401865:user/release-keys", "google/frankel/frankel:16/BP4A.251205.006.C1/14402245:user/release-keys", "google/komodo/komodo:16/BP4A.251205.006.A1/14402117:user/release-keys", "google/komodo/komodo:16/BP4A.251205.006/14401865:user/release-keys", "google/mustang/mustang:16/BD4A.251205.006.A1/14402117:user/release-keys", "google/mustang/mustang:16/BD4A.251205.006/14401865:user/release-keys", "google/mustang/mustang:16/BP4A.251205.006.C1/14402245:user/release-keys", "google/rango/rango:16/BD4A.251205.006.A1/14402117:user/release-keys", "google/rango/rango:16/BP4A.251205.006.C1/14402245:user/release-keys", "google/rango/rango:16/BD4A.251205.006/14401865:user/release-keys", "google/tokay/tokay:16/BP4A.251205.006.A1/14402117:user/release-keys", "google/tokay/tokay:16/BP4A.251205.006/14401865:user/release-keys"}), new Function0() { // from class: androidx.core.backported.fixes.KnownIssues$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(KnownIssues.KI_398591036$lambda$0());
        }
    });
    public static final KnownIssue KI_452390376 = new KnownIssue(452390376, 6, null, new Function0() { // from class: androidx.core.backported.fixes.KnownIssues$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(KnownIssues.KI_452390376$lambda$0());
        }
    }, 4, null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean KI_372917199$lambda$0() {
        return Build.BRAND.equals("robolectric");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean KI_398591036$lambda$0() {
        return Build.BRAND.equals("google");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean KI_452390376$lambda$0() {
        Build.BRAND.equals("google");
        return SetsKt.setOf((Object[]) new String[]{"frankel", "blazer", "mustang", "rango"}).contains(Build.PRODUCT);
    }
}
