package androidx.credentials;

import android.os.Bundle;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.internal.RequestValidationHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class CreatePublicKeyCredentialRequest extends CreateCredentialRequest {
    public static final Companion Companion = new Companion(null);
    private final byte[] clientDataHash;
    private final boolean isConditional;
    private final String requestJson;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(String requestJson, byte[] bArr, boolean z, String str) {
        this(requestJson, bArr, z, str, false, false, 48, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
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
    /* synthetic */ CreatePublicKeyCredentialRequest(java.lang.String r11, byte[] r12, boolean r13, boolean r14, androidx.credentials.CreateCredentialRequest.DisplayInfo r15, java.lang.String r16, android.os.Bundle r17, android.os.Bundle r18, boolean r19, int r20, kotlin.jvm.internal.DefaultConstructorMarker r21) {
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
            androidx.credentials.CreatePublicKeyCredentialRequest$Companion r3 = androidx.credentials.CreatePublicKeyCredentialRequest.Companion
            android.os.Bundle r3 = r3.toCredentialDataBundle$credentials_release(r11, r12)
            r7 = r3
            goto L19
        L17:
            r7 = r17
        L19:
            r3 = r0 & 128(0x80, float:1.8E-43)
            if (r3 == 0) goto L25
            androidx.credentials.CreatePublicKeyCredentialRequest$Companion r3 = androidx.credentials.CreatePublicKeyCredentialRequest.Companion
            android.os.Bundle r3 = r3.toCandidateDataBundle$credentials_release(r11, r12)
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

    public final boolean isConditional() {
        return this.isConditional;
    }

    private CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z, boolean z2, CreateCredentialRequest.DisplayInfo displayInfo, String str2, Bundle bundle, Bundle bundle2, boolean z3) {
        super("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle, bundle2, false, z, displayInfo, str2, z2);
        this.requestJson = str;
        this.clientDataHash = bArr;
        this.isConditional = z3;
        if (!RequestValidationHelper.Companion.isValidJSON(str)) {
            throw new IllegalArgumentException("requestJson must not be empty, and must be a valid JSON");
        }
        if (z3) {
            bundle2.putBoolean("androidx.credentials.BUNDLE_KEY_IS_CONDITIONAL_REQUEST", true);
        }
    }

    public /* synthetic */ CreatePublicKeyCredentialRequest(String str, byte[] bArr, boolean z, String str2, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : bArr, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? false : z3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreatePublicKeyCredentialRequest(String requestJson, byte[] bArr, boolean z, String str, boolean z2, boolean z3) {
        this(requestJson, bArr, z2, z, Companion.getRequestDisplayInfo$credentials_release$default(Companion, requestJson, null, 2, null), str, null, null, z3, 192, null);
        Intrinsics.checkNotNullParameter(requestJson, "requestJson");
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CreateCredentialRequest.DisplayInfo getRequestDisplayInfo$credentials_release$default(Companion companion, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            return companion.getRequestDisplayInfo$credentials_release(str, str2);
        }

        public final CreateCredentialRequest.DisplayInfo getRequestDisplayInfo$credentials_release(String requestJson, String str) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            try {
                JSONObject jSONObject = new JSONObject(requestJson).getJSONObject("user");
                String string = jSONObject.getString("name");
                String string2 = jSONObject.isNull("displayName") ? null : jSONObject.getString("displayName");
                Intrinsics.checkNotNull(string);
                return new CreateCredentialRequest.DisplayInfo(string, string2, null, str);
            } catch (Exception unused) {
                throw new IllegalArgumentException("user.name must be defined in requestJson");
            }
        }

        public final Bundle toCredentialDataBundle$credentials_release(String requestJson, byte[] bArr) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_SUBTYPE", "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST");
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", bArr);
            return bundle;
        }

        public final Bundle toCandidateDataBundle$credentials_release(String requestJson, byte[] bArr) {
            Intrinsics.checkNotNullParameter(requestJson, "requestJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_SUBTYPE", "androidx.credentials.BUNDLE_VALUE_SUBTYPE_CREATE_PUBLIC_KEY_CREDENTIAL_REQUEST");
            bundle.putString("androidx.credentials.BUNDLE_KEY_REQUEST_JSON", requestJson);
            bundle.putByteArray("androidx.credentials.BUNDLE_KEY_CLIENT_DATA_HASH", bArr);
            return bundle;
        }
    }
}
