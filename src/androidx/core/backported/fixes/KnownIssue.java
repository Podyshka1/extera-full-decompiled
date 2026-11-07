package androidx.core.backported.fixes;

import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\u0018\u00002\u00020\u0001B?\b\u0000\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\n2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010!\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u0014¨\u0006$"}, d2 = {"Landroidx/core/backported/fixes/KnownIssue;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "alias", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "manuallyTestedFingerprints", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "precondition", "<init>", "(JLjava/lang/Integer;Ljava/util/Set;Lkotlin/jvm/functions/Function0;)V", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "toString", "()Ljava/lang/String;", "J", "getId", "()J", "Ljava/lang/Integer;", "getAlias$core_backported_fixes", "()Ljava/lang/Integer;", "Ljava/util/Set;", "getManuallyTestedFingerprints$core_backported_fixes", "()Ljava/util/Set;", "Lkotlin/jvm/functions/Function0;", "getPrecondition$core_backported_fixes", "()Lkotlin/jvm/functions/Function0;", "url", "Ljava/lang/String;", "getUrl", "core-backported-fixes"}, m862k = 1, mv = {2, 0, 0}, xi = 48)
public final class KnownIssue {
    private final Integer alias;
    private final long id;
    private final Set<String> manuallyTestedFingerprints;
    private final Function0<Boolean> precondition;
    private final String url;

    public KnownIssue(long j, Integer num, Set<String> set, Function0<Boolean> function0) {
        this.id = j;
        this.alias = num;
        this.manuallyTestedFingerprints = set;
        this.precondition = function0;
        this.url = "https://issuetracker.google.com/issues/" + j;
    }

    /* JADX INFO: renamed from: getAlias$core_backported_fixes, reason: from getter */
    public final Integer getAlias() {
        return this.alias;
    }

    public /* synthetic */ KnownIssue(long j, Integer num, Set set, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, num, (i & 4) != 0 ? SetsKt.emptySet() : set, (i & 8) != 0 ? new Function0() { // from class: androidx.core.backported.fixes.KnownIssue$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(KnownIssue.$r8$lambda$3RZ4F6EfPweem0drDMoB3xvz3Hs());
            }
        } : function0);
    }

    public final Set<String> getManuallyTestedFingerprints$core_backported_fixes() {
        return this.manuallyTestedFingerprints;
    }

    public static boolean $r8$lambda$3RZ4F6EfPweem0drDMoB3xvz3Hs() {
        return true;
    }

    public final Function0<Boolean> getPrecondition$core_backported_fixes() {
        return this.precondition;
    }

    public boolean equals(Object other) {
        return (other instanceof KnownIssue) && this.id == ((KnownIssue) other).id;
    }

    public int hashCode() {
        return Long.hashCode(this.id);
    }

    public String toString() {
        Integer num = this.alias;
        long j = this.id;
        if (num == null) {
            return j + " without alias";
        }
        return j + " with alias " + this.alias.intValue();
    }
}
