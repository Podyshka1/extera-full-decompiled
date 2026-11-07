package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB]\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0011BG\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u000f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u000f\u0010\u001a¨\u0006\u001c"}, d2 = {"Landroidx/credentials/CreatePublicKeyCredentialRequest;", "Landroidx/credentials/CreateCredentialRequest;", _UrlKt.FRAGMENT_ENCODE_SET, "requestJson", _UrlKt.FRAGMENT_ENCODE_SET, "clientDataHash", _UrlKt.FRAGMENT_ENCODE_SET, "isAutoSelectAllowed", "preferImmediatelyAvailableCredentials", "Landroidx/credentials/CreateCredentialRequest$DisplayInfo;", "displayInfo", "origin", "Landroid/os/Bundle;", "credentialData", "candidateQueryData", "isConditional", "<init>", "(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Z)V", "(Ljava/lang/String;[BZLjava/lang/String;ZZ)V", "Ljava/lang/String;", "getRequestJson", "()Ljava/lang/String;", "[B", "getClientDataHash", "()[B", "Z", "()Z", "Companion", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CreatePublicKeyCredentialRequest extends CreateCredentialRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final byte[] clientDataHash;
    private final boolean isConditional;
    private final String requestJson;

    @JvmOverloads
    public CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z, String str2) {
        this(str, bArr, z, str2, false, false, 48, null);
    }

    public final String getRequestJson() {
        return this.requestJson;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public /* synthetic */ CreatePublicKeyCredentialRequest(java.lang.String r11, byte[] r12, boolean r13, boolean r14, androidx.credentials.CreateCredentialRequest.DisplayInfo r15, java.lang.String r16, android.os.Bundle r17, android.os.Bundle r18, boolean r19, int r20, kotlin.jvm.internal.DefaultConstructorMarker r21) {
        /*
            r10 = this;
            r0 = r20
            r3 = r0 & 32
            if (r3 == 0) goto L9
            r3 = 0
            r6 = r3
            goto Lb
        L9:
            r6 = r16
        Lb:
            r3 = r0 & 64
            if (r3 == 0) goto L17
            androidx.credentials.CreatePublicKeyCredentialRequest$Companion r3 = androidx.credentials.CreatePublicKeyCredentialRequest.INSTANCE
            android.os.Bundle r3 = r3.toCredentialDataBundle$credentials(r11, r12)
            r7 = r3
            goto L19
        L17:
            r7 = r17
        L19:
            r3 = r0 & 128(0x80, float:1.8E-43)
            if (r3 == 0) goto L25
            androidx.credentials.CreatePublicKeyCredentialRequest$Companion r3 = androidx.credentials.CreatePublicKeyCredentialRequest.INSTANCE
            android.os.Bundle r3 = r3.toCandidateDataBundle$credentials(r11, r12)
            r8 = r3
            goto L27
        L25:
            r8 = r18
        L27:
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L34
            r0 = 0
            r9 = r0
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = r14
            r5 = r15
            r0 = r10
            goto L3c
        L34:
            r9 = r19
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = r14
            r5 = r15
        L3c:
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.CreatePublicKeyCredentialRequest.<init>(java.lang.String, byte[], boolean, boolean, androidx.credentials.CreateCredentialRequest$DisplayInfo, java.lang.String, android.os.Bundle, android.os.Bundle, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX INFO: renamed from: isConditional, reason: from getter */
    public final boolean getIsConditional() {
        return this.isConditional;
    }

    private CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z, boolean z2, CreateCredentialRequest.DisplayInfo displayInfo, String str2, Bundle bundle, Bundle bundle2, boolean z3) {
        super("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle, bundle2, false, z, displayInfo, str2, z2);
        this.requestJson = str;
        this.clientDataHash = bArr;
        this.isConditional = z3;
        if (!RequestValidationHelper.INSTANCE.isValidJSON(str)) {
            f$$ExternalSyntheticBUOutline1.m212m("requestJson must not be empty, and must be a valid JSON");
            throw null;
        }
        if (z3) {
            bundle2.putBoolean("androidx.credentials.BUNDLE_KEY_IS_CONDITIONAL_REQUEST", true);
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_IS_CONDITIONAL_REQUEST", true);
        }
    }

    public /* synthetic */ CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z, String str2, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? false : z3);
    }

    @JvmOverloads
    public CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z, String str2, boolean z2, boolean z3) {
        this(str, bArr, z2, z, Companion.getRequestDisplayInfo$credentials$default(INSTANCE, str, null, 2, null), str2, null, null, z3, 192, null);
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0001¢\u0006\u0004\b\b\u0010\tJ#\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0001¢\u0006\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0014¨\u0006\u0018"}, d2 = {"Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "requestJson", "defaultProvider", "Landroidx/credentials/CreateCredentialRequest$DisplayInfo;", "getRequestDisplayInfo$credentials", "(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;", "getRequestDisplayInfo", _UrlKt.FRAGMENT_ENCODE_SET, "clientDataHash", "Landroid/os/Bundle;", "toCredentialDataBundle$credentials", "(Ljava/lang/String;[B)Landroid/os/Bundle;", "toCredentialDataBundle", "toCandidateDataBundle$credentials", "toCandidateDataBundle", "BUNDLE_KEY_CLIENT_DATA_HASH", "Ljava/lang/String;", "BUNDLE_KEY_REQUEST_JSON", "BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST", "BUNDLE_KEY_CONDITIONAL_CREATE", "credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CreateCredentialRequest.DisplayInfo getRequestDisplayInfo$credentials$default(Companion companion, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            return companion.getRequestDisplayInfo$credentials(str, str2);
        }

        @JvmStatic
        public final CreateCredentialRequest.DisplayInfo getRequestDisplayInfo$credentials(String requestJson, String defaultProvider) {
            try {
                JSONObject jSONObject = new JSONObject(requestJson).getJSONObject("user");
                return new CreateCredentialRequest.DisplayInfo(jSONObject.getString("name"), jSONObject.isNull("displayName") ? null : jSONObject.getString("displayName"), null, defaultProvider);
            } catch (Exception unused) {
                f$$ExternalSyntheticBUOutline1.m212m("user.name must be defined in requestJson");
                return null;
            }
        }

        @JvmStatic
        public final Bundle toCredentialDataBundle$credentials(String requestJson, byte[] clientDataHash) {
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_SUBTYPE", "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST");
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", clientDataHash);
            return bundle;
        }

        @JvmStatic
        public final Bundle toCandidateDataBundle$credentials(String requestJson, byte[] clientDataHash) {
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_SUBTYPE", "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST");
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", clientDataHash);
            return bundle;
        }
    }
}
