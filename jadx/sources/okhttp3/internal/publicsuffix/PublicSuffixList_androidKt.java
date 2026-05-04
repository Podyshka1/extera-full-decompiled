package okhttp3.internal.publicsuffix;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.publicsuffix.PublicSuffixList;

/* JADX INFO: loaded from: classes5.dex */
public final class PublicSuffixList_androidKt {
    public static final PublicSuffixList getDefault(PublicSuffixList.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return new AssetPublicSuffixList(null, 1, null);
    }
}
