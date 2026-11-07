package androidx.credentials;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/credentials/CustomCredential;", "Landroidx/credentials/Credential;", "type", _UrlKt.FRAGMENT_ENCODE_SET, "data", "Landroid/os/Bundle;", "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V", "credentials"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCustomCredential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredential.kt\nandroidx/credentials/CustomCredential\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"})
public class CustomCredential extends Credential {
    public CustomCredential(String str, Bundle bundle) {
        super(str, bundle);
        if (str.length() > 0) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m("type should not be empty");
        throw null;
    }
}
