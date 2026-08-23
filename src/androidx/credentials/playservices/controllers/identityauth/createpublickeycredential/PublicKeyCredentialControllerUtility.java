package androidx.credentials.playservices.controllers.identityauth.createpublickeycredential;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.GetPublicKeyCredentialOption;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.AbortError;
import androidx.credentials.exceptions.domerrors.ConstraintError;
import androidx.credentials.exceptions.domerrors.DataError;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.InvalidStateError;
import androidx.credentials.exceptions.domerrors.NetworkError;
import androidx.credentials.exceptions.domerrors.NotAllowedError;
import androidx.credentials.exceptions.domerrors.NotReadableError;
import androidx.credentials.exceptions.domerrors.NotSupportedError;
import androidx.credentials.exceptions.domerrors.SecurityError;
import androidx.credentials.exceptions.domerrors.TimeoutError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.exceptions.publickeycredential.GetPublicKeyCredentialDomException;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorAssertionResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria;
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.fido.fido2.api.common.FidoAppIdExtension;
import com.google.android.gms.fido.fido2.api.common.GoogleThirdPartyPaymentExtension;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethodExtension;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PublicKeyCredentialControllerUtility {
    public static final Companion Companion = new Companion(null);
    private static final String JSON_KEY_CLIENT_DATA = "clientDataJSON";
    private static final String JSON_KEY_ATTESTATION_OBJ = "attestationObject";
    private static final String JSON_KEY_AUTH_DATA = "authenticatorData";
    private static final String JSON_KEY_SIGNATURE = "signature";
    private static final String JSON_KEY_USER_HANDLE = "userHandle";
    private static final String JSON_KEY_RESPONSE = "response";
    private static final String JSON_KEY_ID = "id";
    private static final String JSON_KEY_RAW_ID = "rawId";
    private static final String JSON_KEY_TYPE = "type";
    private static final String JSON_KEY_RPID = "rpId";
    private static final String JSON_KEY_CHALLENGE = "challenge";
    private static final String JSON_KEY_APPID = "appid";
    private static final String JSON_KEY_THIRD_PARTY_PAYMENT = "thirdPartyPayment";
    private static final String JSON_KEY_AUTH_SELECTION = "authenticatorSelection";
    private static final String JSON_KEY_REQUIRE_RES_KEY = "requireResidentKey";
    private static final String JSON_KEY_RES_KEY = "residentKey";
    private static final String JSON_KEY_AUTH_ATTACHMENT = "authenticatorAttachment";
    private static final String JSON_KEY_TIMEOUT = "timeout";
    private static final String JSON_KEY_EXCLUDE_CREDENTIALS = "excludeCredentials";
    private static final String JSON_KEY_TRANSPORTS = "transports";
    private static final String JSON_KEY_RP = "rp";
    private static final String JSON_KEY_NAME = "name";
    private static final String JSON_KEY_ICON = "icon";
    private static final String JSON_KEY_ALG = "alg";
    private static final String JSON_KEY_USER = "user";
    private static final String JSON_KEY_DISPLAY_NAME = "displayName";
    private static final String JSON_KEY_USER_VERIFICATION_METHOD = "userVerificationMethod";
    private static final String JSON_KEY_KEY_PROTECTION_TYPE = "keyProtectionType";
    private static final String JSON_KEY_MATCHER_PROTECTION_TYPE = "matcherProtectionType";
    private static final String JSON_KEY_EXTENSTIONS = "extensions";
    private static final String JSON_KEY_ATTESTATION = "attestation";
    private static final String JSON_KEY_PUB_KEY_CRED_PARAMS = "pubKeyCredParams";
    private static final String JSON_KEY_CLIENT_EXTENSION_RESULTS = "clientExtensionResults";
    private static final String JSON_KEY_RK = "rk";
    private static final String JSON_KEY_CRED_PROPS = "credProps";
    private static final LinkedHashMap orderedErrorCodeToExceptions = MapsKt.linkedMapOf(TuplesKt.m1081to(ErrorCode.UNKNOWN_ERR, new UnknownError()), TuplesKt.m1081to(ErrorCode.ABORT_ERR, new AbortError()), TuplesKt.m1081to(ErrorCode.ATTESTATION_NOT_PRIVATE_ERR, new NotReadableError()), TuplesKt.m1081to(ErrorCode.CONSTRAINT_ERR, new ConstraintError()), TuplesKt.m1081to(ErrorCode.DATA_ERR, new DataError()), TuplesKt.m1081to(ErrorCode.INVALID_STATE_ERR, new InvalidStateError()), TuplesKt.m1081to(ErrorCode.ENCODING_ERR, new EncodingError()), TuplesKt.m1081to(ErrorCode.NETWORK_ERR, new NetworkError()), TuplesKt.m1081to(ErrorCode.NOT_ALLOWED_ERR, new NotAllowedError()), TuplesKt.m1081to(ErrorCode.NOT_SUPPORTED_ERR, new NotSupportedError()), TuplesKt.m1081to(ErrorCode.SECURITY_ERR, new SecurityError()), TuplesKt.m1081to(ErrorCode.TIMEOUT_ERR, new TimeoutError()));

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getJSON_KEY_ID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ID;
        }

        public final String getJSON_KEY_TYPE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TYPE;
        }

        public final String getJSON_KEY_RPID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RPID;
        }

        public final String getJSON_KEY_CHALLENGE$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CHALLENGE;
        }

        public final String getJSON_KEY_APPID$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_APPID;
        }

        /* JADX INFO: renamed from: getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth_release */
        public final String m183x55d9bf39() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_THIRD_PARTY_PAYMENT;
        }

        /* JADX INFO: renamed from: getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release */
        public final String m179xf055c137() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_SELECTION;
        }

        /* JADX INFO: renamed from: getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth_release */
        public final String m182xe9a27208() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_REQUIRE_RES_KEY;
        }

        public final String getJSON_KEY_RES_KEY$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RES_KEY;
        }

        /* JADX INFO: renamed from: getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth_release */
        public final String m178x4cbca474() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_ATTACHMENT;
        }

        public final String getJSON_KEY_TIMEOUT$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TIMEOUT;
        }

        /* JADX INFO: renamed from: getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release */
        public final String m180x174cd597() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXCLUDE_CREDENTIALS;
        }

        public final String getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TRANSPORTS;
        }

        public final String getJSON_KEY_RP$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RP;
        }

        public final String getJSON_KEY_NAME$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_NAME;
        }

        public final String getJSON_KEY_ICON$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ICON;
        }

        public final String getJSON_KEY_ALG$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ALG;
        }

        public final String getJSON_KEY_USER$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER;
        }

        public final String getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_DISPLAY_NAME;
        }

        public final String getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXTENSTIONS;
        }

        public final String getJSON_KEY_ATTESTATION$credentials_play_services_auth_release() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ATTESTATION;
        }

        /* JADX INFO: renamed from: getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth_release */
        public final String m181x11a7ad79() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_PUB_KEY_CRED_PARAMS;
        }

        public final PublicKeyCredentialCreationOptions convert(CreatePublicKeyCredentialRequest request, Context context) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(context, "context");
            if (isDeviceGMSVersionOlderThan(context, 241217000L)) {
                return new PublicKeyCredentialCreationOptions(request.getRequestJson());
            }
            return convertJSON$credentials_play_services_auth_release(new JSONObject(request.getRequestJson()));
        }

        private final boolean isDeviceGMSVersionOlderThan(Context context, long j) throws PackageManager.NameNotFoundException {
            long versionLong;
            if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) != 0) {
                return false;
            }
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo("com.google.android.gms", 0);
                Intrinsics.checkNotNullExpressionValue(packageInfo, "getPackageInfo(...)");
                versionLong = GetGMSVersion.getVersionLong(packageInfo);
            } else {
                versionLong = packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
            }
            return versionLong > j;
        }

        public final PublicKeyCredentialCreationOptions convertJSON$credentials_play_services_auth_release(JSONObject json) throws JSONException, CreatePublicKeyCredentialDomException {
            Intrinsics.checkNotNullParameter(json, "json");
            PublicKeyCredentialCreationOptions.Builder builder = new PublicKeyCredentialCreationOptions.Builder();
            m187x2d055f1c(json, builder);
            parseRequiredRpAndParams$credentials_play_services_auth_release(json, builder);
            m186x81bb96da(json, builder);
            parseOptionalTimeout$credentials_play_services_auth_release(json, builder);
            m185x4e596641(json, builder);
            parseOptionalExtensions$credentials_play_services_auth_release(json, builder);
            PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptionsBuild = builder.build();
            Intrinsics.checkNotNullExpressionValue(publicKeyCredentialCreationOptionsBuild, "build(...)");
            return publicKeyCredentialCreationOptionsBuild;
        }

        public final String toAssertPasskeyResponse(SignInCredential cred) throws GetCredentialException {
            Intrinsics.checkNotNullParameter(cred, "cred");
            JSONObject jSONObject = new JSONObject();
            PublicKeyCredential publicKeyCredential = cred.getPublicKeyCredential();
            AuthenticatorResponse response = publicKeyCredential != null ? publicKeyCredential.getResponse() : null;
            Intrinsics.checkNotNull(response);
            if (response instanceof AuthenticatorErrorResponse) {
                AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) response;
                ErrorCode errorCode = authenticatorErrorResponse.getErrorCode();
                Intrinsics.checkNotNullExpressionValue(errorCode, "getErrorCode(...)");
                throw m177x9b91fc47(errorCode, authenticatorErrorResponse.getErrorMessage());
            }
            if (response instanceof AuthenticatorAssertionResponse) {
                try {
                    String json = publicKeyCredential.toJson();
                    Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
                    return json;
                } catch (Throwable th) {
                    throw new GetCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
                }
            }
            Log.e("PublicKeyUtility", "AuthenticatorResponse expected assertion response but got: " + response.getClass().getName());
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        }

        public final BeginSignInRequest.PasskeyJsonRequestOptions convertToPlayAuthPasskeyJsonRequest(GetPublicKeyCredentialOption option) {
            Intrinsics.checkNotNullParameter(option, "option");
            BeginSignInRequest.PasskeyJsonRequestOptions passkeyJsonRequestOptionsBuild = new BeginSignInRequest.PasskeyJsonRequestOptions.Builder().setSupported(true).setRequestJson(option.getRequestJson()).build();
            Intrinsics.checkNotNullExpressionValue(passkeyJsonRequestOptionsBuild, "build(...)");
            return passkeyJsonRequestOptionsBuild;
        }

        public final BeginSignInRequest.PasskeysRequestOptions convertToPlayAuthPasskeyRequest(GetPublicKeyCredentialOption option) throws JSONException {
            Intrinsics.checkNotNullParameter(option, "option");
            JSONObject jSONObject = new JSONObject(option.getRequestJson());
            String strOptString = jSONObject.optString(getJSON_KEY_RPID$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
            Intrinsics.checkNotNull(strOptString);
            if (strOptString.length() == 0) {
                throw new JSONException("GetPublicKeyCredentialOption - rpId not specified in the request or is unexpectedly empty");
            }
            BeginSignInRequest.PasskeysRequestOptions passkeysRequestOptionsBuild = new BeginSignInRequest.PasskeysRequestOptions.Builder().setSupported(true).setRpId(strOptString).setChallenge(getChallenge(jSONObject)).build();
            Intrinsics.checkNotNullExpressionValue(passkeysRequestOptionsBuild, "build(...)");
            return passkeysRequestOptionsBuild;
        }

        private final byte[] getChallenge(JSONObject jSONObject) throws JSONException {
            String strOptString = jSONObject.optString(getJSON_KEY_CHALLENGE$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
            Intrinsics.checkNotNull(strOptString);
            if (strOptString.length() == 0) {
                throw new JSONException("Challenge not found in request or is unexpectedly empty");
            }
            return b64Decode(strOptString);
        }

        public final CreateCredentialException publicKeyCredentialResponseContainsError(PublicKeyCredential cred) {
            Intrinsics.checkNotNullParameter(cred, "cred");
            AuthenticatorResponse response = cred.getResponse();
            Intrinsics.checkNotNullExpressionValue(response, "getResponse(...)");
            if (!(response instanceof AuthenticatorErrorResponse)) {
                return null;
            }
            AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) response;
            ErrorCode errorCode = authenticatorErrorResponse.getErrorCode();
            Intrinsics.checkNotNullExpressionValue(errorCode, "getErrorCode(...)");
            DomError domError = (DomError) m184x717581f0().get(errorCode);
            String errorMessage = authenticatorErrorResponse.getErrorMessage();
            if (domError == null) {
                return new CreatePublicKeyCredentialDomException(new UnknownError(), "unknown fido gms exception - " + errorMessage);
            }
            if (errorCode == ErrorCode.NOT_ALLOWED_ERR && errorMessage != null && StringsKt.contains$default((CharSequence) errorMessage, (CharSequence) "Unable to get sync account", false, 2, (Object) null)) {
                return new CreateCredentialCancellationException("Passkey registration was cancelled by the user.");
            }
            return new CreatePublicKeyCredentialDomException(domError, errorMessage);
        }

        /* JADX INFO: renamed from: beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth_release */
        public final GetCredentialException m177x9b91fc47(ErrorCode code, String str) {
            Intrinsics.checkNotNullParameter(code, "code");
            DomError domError = (DomError) m184x717581f0().get(code);
            if (domError == null) {
                return new GetPublicKeyCredentialDomException(new UnknownError(), "unknown fido gms exception - " + str);
            }
            if (code == ErrorCode.NOT_ALLOWED_ERR && str != null && StringsKt.contains$default((CharSequence) str, (CharSequence) "Unable to get sync account", false, 2, (Object) null)) {
                return new GetCredentialCancellationException("Passkey retrieval was cancelled by the user.");
            }
            return new GetPublicKeyCredentialDomException(domError, str);
        }

        public final void parseOptionalExtensions$credentials_play_services_auth_release(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (json.has(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release())) {
                JSONObject jSONObject = json.getJSONObject(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release());
                AuthenticationExtensions.Builder builder2 = new AuthenticationExtensions.Builder();
                String strOptString = jSONObject.optString(getJSON_KEY_APPID$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
                Intrinsics.checkNotNull(strOptString);
                if (strOptString.length() > 0) {
                    builder2.setFido2Extension(new FidoAppIdExtension(strOptString));
                }
                if (jSONObject.optBoolean(m183x55d9bf39(), false)) {
                    builder2.setGoogleThirdPartyPaymentExtension(new GoogleThirdPartyPaymentExtension(true));
                }
                if (jSONObject.optBoolean("uvm", false)) {
                    builder2.setUserVerificationMethodExtension(new UserVerificationMethodExtension(true));
                }
                builder.setAuthenticationExtensions(builder2.build());
            }
        }

        /* JADX INFO: renamed from: parseOptionalAuthenticatorSelection$credentials_play_services_auth_release */
        public final void m185x4e596641(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (json.has(m179xf055c137())) {
                JSONObject jSONObject = json.getJSONObject(m179xf055c137());
                AuthenticatorSelectionCriteria.Builder builder2 = new AuthenticatorSelectionCriteria.Builder();
                boolean zOptBoolean = jSONObject.optBoolean(m182xe9a27208(), false);
                String strOptString = jSONObject.optString(getJSON_KEY_RES_KEY$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
                Intrinsics.checkNotNull(strOptString);
                builder2.setRequireResidentKey(Boolean.valueOf(zOptBoolean)).setResidentKeyRequirement(strOptString.length() > 0 ? ResidentKeyRequirement.fromString(strOptString) : null);
                String strOptString2 = jSONObject.optString(m178x4cbca474(), _UrlKt.FRAGMENT_ENCODE_SET);
                Intrinsics.checkNotNull(strOptString2);
                if (strOptString2.length() > 0) {
                    builder2.setAttachment(Attachment.fromString(strOptString2));
                }
                builder.setAuthenticatorSelection(builder2.build());
            }
        }

        public final void parseOptionalTimeout$credentials_play_services_auth_release(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            if (json.has(getJSON_KEY_TIMEOUT$credentials_play_services_auth_release())) {
                builder.setTimeoutSeconds(Double.valueOf(json.getLong(getJSON_KEY_TIMEOUT$credentials_play_services_auth_release()) / ((double) MediaDataController.MAX_STYLE_RUNS_COUNT)));
            }
        }

        /* JADX INFO: renamed from: parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth_release */
        public final void m186x81bb96da(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException, CreatePublicKeyCredentialDomException {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            ArrayList arrayList2 = new ArrayList();
            if (json.has(m180x174cd597())) {
                JSONArray jSONArray = json.getJSONArray(m180x174cd597());
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    String string = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth_release());
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    byte[] bArrB64Decode = b64Decode(string);
                    String string2 = jSONObject.getString(getJSON_KEY_TYPE$credentials_play_services_auth_release());
                    Intrinsics.checkNotNull(string2);
                    if (string2.length() == 0) {
                        throw new JSONException("PublicKeyCredentialDescriptor type value is not found or unexpectedly empty");
                    }
                    if (bArrB64Decode.length == 0) {
                        throw new JSONException("PublicKeyCredentialDescriptor id value is not found or unexpectedly empty");
                    }
                    if (jSONObject.has(getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release())) {
                        arrayList = new ArrayList();
                        JSONArray jSONArray2 = jSONObject.getJSONArray(getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release());
                        int length2 = jSONArray2.length();
                        for (int i2 = 0; i2 < length2; i2++) {
                            try {
                                arrayList.add(Transport.fromString(jSONArray2.getString(i2)));
                            } catch (Transport.UnsupportedTransportException e) {
                                throw new CreatePublicKeyCredentialDomException(new EncodingError(), e.getMessage());
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                    arrayList2.add(new PublicKeyCredentialDescriptor(string2, bArrB64Decode, arrayList));
                }
            }
            builder.setExcludeList(arrayList2);
            String strOptString = json.optString(getJSON_KEY_ATTESTATION$credentials_play_services_auth_release(), "none");
            Intrinsics.checkNotNull(strOptString);
            builder.setAttestationConveyancePreference(AttestationConveyancePreference.fromString(strOptString.length() != 0 ? strOptString : "none"));
        }

        public final void parseRequiredRpAndParams$credentials_play_services_auth_release(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            JSONObject jSONObject = json.getJSONObject(getJSON_KEY_RP$credentials_play_services_auth_release());
            String string = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth_release());
            String strOptString = jSONObject.optString(getJSON_KEY_NAME$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
            String strOptString2 = jSONObject.optString(getJSON_KEY_ICON$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
            Intrinsics.checkNotNull(strOptString2);
            if (strOptString2.length() == 0) {
                strOptString2 = null;
            }
            Intrinsics.checkNotNull(strOptString);
            if (strOptString.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty");
            }
            Intrinsics.checkNotNull(string);
            if (string.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty");
            }
            builder.setRp(new PublicKeyCredentialRpEntity(string, strOptString, strOptString2));
            JSONArray jSONArray = json.getJSONArray(m181x11a7ad79());
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                int i2 = (int) jSONObject2.getLong(getJSON_KEY_ALG$credentials_play_services_auth_release());
                String strOptString3 = jSONObject2.optString(getJSON_KEY_TYPE$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
                Intrinsics.checkNotNull(strOptString3);
                if (strOptString3.length() == 0) {
                    throw new JSONException("PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty");
                }
                if (checkAlgSupported(i2)) {
                    arrayList.add(new PublicKeyCredentialParameters(strOptString3, i2));
                }
            }
            builder.setParameters(arrayList);
        }

        /* JADX INFO: renamed from: parseRequiredChallengeAndUser$credentials_play_services_auth_release */
        public final void m187x2d055f1c(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            Intrinsics.checkNotNullParameter(json, "json");
            Intrinsics.checkNotNullParameter(builder, "builder");
            builder.setChallenge(getChallenge(json));
            JSONObject jSONObject = json.getJSONObject(getJSON_KEY_USER$credentials_play_services_auth_release());
            String string = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth_release());
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            byte[] bArrB64Decode = b64Decode(string);
            String string2 = jSONObject.getString(getJSON_KEY_NAME$credentials_play_services_auth_release());
            String string3 = jSONObject.getString(getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth_release());
            String strOptString = jSONObject.optString(getJSON_KEY_ICON$credentials_play_services_auth_release(), _UrlKt.FRAGMENT_ENCODE_SET);
            Intrinsics.checkNotNull(string3);
            if (string3.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty");
            }
            if (bArrB64Decode.length == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty");
            }
            Intrinsics.checkNotNull(string2);
            if (string2.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty");
            }
            builder.setUser(new PublicKeyCredentialUserEntity(bArrB64Decode, string2, strOptString, string3));
        }

        public final byte[] b64Decode(String str) {
            Intrinsics.checkNotNullParameter(str, "str");
            byte[] bArrDecode = Base64.decode(str, 11);
            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(...)");
            return bArrDecode;
        }

        public final boolean checkAlgSupported(int i) {
            try {
                COSEAlgorithmIdentifier.fromCoseValue(i);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        /* JADX INFO: renamed from: getOrderedErrorCodeToExceptions$credentials_play_services_auth_release */
        public final LinkedHashMap m184x717581f0() {
            return PublicKeyCredentialControllerUtility.orderedErrorCodeToExceptions;
        }
    }

    private static final class GetGMSVersion {
        public static final GetGMSVersion INSTANCE = new GetGMSVersion();

        private GetGMSVersion() {
        }

        public static final long getVersionLong(PackageInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            return info.getLongVersionCode();
        }
    }
}
