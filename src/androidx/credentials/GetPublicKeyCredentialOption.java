package androidx.credentials;

import android.content.ComponentName;
import android.os.Bundle;
import androidx.credentials.internal.RequestValidationHelper;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017BC\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fB-\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u000e\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Landroidx/credentials/GetPublicKeyCredentialOption;", "Landroidx/credentials/CredentialOption;", _UrlKt.FRAGMENT_ENCODE_SET, "requestJson", _UrlKt.FRAGMENT_ENCODE_SET, "clientDataHash", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/content/ComponentName;", "allowedProviders", "Landroid/os/Bundle;", "requestData", "candidateQueryData", _UrlKt.FRAGMENT_ENCODE_SET, "typePriorityCategory", "<init>", "(Ljava/lang/String;[BLjava/util/Set;Landroid/os/Bundle;Landroid/os/Bundle;I)V", "(Ljava/lang/String;[BLjava/util/Set;)V", "Ljava/lang/String;", "getRequestJson", "()Ljava/lang/String;", "[B", "getClientDataHash", "()[B", "Companion", "credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class GetPublicKeyCredentialOption extends CredentialOption {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final byte[] clientDataHash;
    private final String requestJson;

    @JvmOverloads
    public GetPublicKeyCredentialOption(String str, byte[] bArr) {
        this(str, bArr, null, 4, null);
    }

    private GetPublicKeyCredentialOption(String str, byte[] bArr, Set<ComponentName> set, Bundle bundle, Bundle bundle2, int i) {
        super("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle, bundle2, false, true, set, i);
        this.requestJson = str;
        this.clientDataHash = bArr;
        if (RequestValidationHelper.INSTANCE.isValidJSON(str)) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m("requestJson must not be empty, and must be a valid JSON");
        throw null;
    }

    public /* synthetic */ GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, Bundle bundle, Bundle bundle2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bArr, set, bundle, bundle2, (i2 & 32) != 0 ? 100 : i);
    }

    public final String getRequestJson() {
        return this.requestJson;
    }

    public /* synthetic */ GetPublicKeyCredentialOption(String str, byte[] bArr, Set set, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? SetsKt.emptySet() : set);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @JvmOverloads
    public GetPublicKeyCredentialOption(String str, byte[] bArr, Set<ComponentName> set) {
        Companion companion = INSTANCE;
        this(str, bArr, set, companion.toRequestDataBundle$credentials(str, bArr), companion.toRequestDataBundle$credentials(str, bArr), 0, 32, null);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0001¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000e\u0010\rR\u0014\u0010\u000f\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000f\u0010\r¨\u0006\u0010"}, d2 = {"Landroidx/credentials/GetPublicKeyCredentialOption$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "requestJson", _UrlKt.FRAGMENT_ENCODE_SET, "clientDataHash", "Landroid/os/Bundle;", "toRequestDataBundle$credentials", "(Ljava/lang/String;[B)Landroid/os/Bundle;", "toRequestDataBundle", "BUNDLE_KEY_CLIENT_DATA_HASH", "Ljava/lang/String;", "BUNDLE_KEY_REQUEST_JSON", "BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION", "credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Bundle toRequestDataBundle$credentials(String requestJson, byte[] clientDataHash) {
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_SUBTYPE", "androidx.credentials.BUNDLE_VALUE_SUBTYPE_GET_PUBLIC_KEY_CREDENTIAL_OPTION");
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", clientDataHash);
            return bundle;
        }
    }
}
