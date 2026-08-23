package androidx.view;

import android.os.Bundle;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmInline;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0087@\u0018\u00002\u00020\u0001B\u0015\b\u0001\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\n\u0010\n\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0015\u001a\u00020\u000b2\n\u0010\u0012\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0016\u0010\u0017\u0088\u0001\u0004\u0092\u0001\u00060\u0002j\u0002`\u0003¨\u0006\u0019"}, d2 = {"Landroidx/savedstate/SavedStateWriter;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/os/Bundle;", "Landroidx/savedstate/SavedState;", "source", "constructor-impl", "(Landroid/os/Bundle;)Landroid/os/Bundle;", _UrlKt.FRAGMENT_ENCODE_SET, "key", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "putStringList-impl", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V", "putStringList", "putSavedState-impl", "(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V", "putSavedState", "from", "putAll-impl", "(Landroid/os/Bundle;Landroid/os/Bundle;)V", "putAll", "remove-impl", "(Landroid/os/Bundle;Ljava/lang/String;)V", "remove", "savedstate"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public abstract class SavedStateWriter {
    @PublishedApi
    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Bundle m1760constructorimpl(Bundle bundle) {
        return bundle;
    }

    /* JADX INFO: renamed from: putStringList-impl, reason: not valid java name */
    public static final void m1763putStringListimpl(Bundle bundle, String str, List<String> list) {
        bundle.putStringArrayList(str, SavedStateWriterKt.toArrayListUnsafe(list));
    }

    /* JADX INFO: renamed from: putSavedState-impl, reason: not valid java name */
    public static final void m1762putSavedStateimpl(Bundle bundle, String str, Bundle bundle2) {
        bundle.putBundle(str, bundle2);
    }

    /* JADX INFO: renamed from: putAll-impl, reason: not valid java name */
    public static final void m1761putAllimpl(Bundle bundle, Bundle bundle2) {
        bundle.putAll(bundle2);
    }

    /* JADX INFO: renamed from: remove-impl, reason: not valid java name */
    public static final void m1764removeimpl(Bundle bundle, String str) {
        bundle.remove(str);
    }
}
