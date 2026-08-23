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
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00022\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "GetGMSVersion", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class PublicKeyCredentialControllerUtility {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String JSON_KEY_CLIENT_DATA = "clientDataJSON";
    private static final String JSON_KEY_ATTESTATION_OBJ = "attestationObject";
    private static final String JSON_KEY_AUTH_DATA = "authenticatorData";
    private static final String JSON_KEY_SIGNATURE = "signature";
    private static final String JSON_KEY_USER_HANDLE = "userHandle";
    private static final String JSON_KEY_RESPONSE = "response";
    private static final String JSON_KEY_ID = "id";
    private static final String JSON_KEY_RAW_ID = "rawId";
    private static final String JSON_KEY_TYPE = TeXSymbolParser.TYPE_ATTR;
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
    private static final LinkedHashMap<ErrorCode, DomError> orderedErrorCodeToExceptions = MapsKt.linkedMapOf(TuplesKt.to(ErrorCode.UNKNOWN_ERR, new UnknownError()), TuplesKt.to(ErrorCode.ABORT_ERR, new AbortError()), TuplesKt.to(ErrorCode.ATTESTATION_NOT_PRIVATE_ERR, new NotReadableError()), TuplesKt.to(ErrorCode.CONSTRAINT_ERR, new ConstraintError()), TuplesKt.to(ErrorCode.DATA_ERR, new DataError()), TuplesKt.to(ErrorCode.INVALID_STATE_ERR, new InvalidStateError()), TuplesKt.to(ErrorCode.ENCODING_ERR, new EncodingError()), TuplesKt.to(ErrorCode.NETWORK_ERR, new NetworkError()), TuplesKt.to(ErrorCode.NOT_ALLOWED_ERR, new NotAllowedError()), TuplesKt.to(ErrorCode.NOT_SUPPORTED_ERR, new NotSupportedError()), TuplesKt.to(ErrorCode.SECURITY_ERR, new SecurityError()), TuplesKt.to(ErrorCode.TIMEOUT_ERR, new TimeoutError()));

    @Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b1\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u000bH\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010\u0019\u001a\u00020%¢\u0006\u0004\b'\u0010(J!\u0010/\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\b\u0010+\u001a\u0004\u0018\u00010\u001aH\u0000¢\u0006\u0004\b-\u0010.J\u001f\u00105\u001a\u0002022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b3\u00104J\u001f\u00107\u001a\u0002022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b6\u00104J\u001f\u00109\u001a\u0002022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b8\u00104J\u001f\u0010;\u001a\u0002022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b:\u00104J\u001f\u0010=\u001a\u0002022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b<\u00104J\u001f\u0010?\u001a\u0002022\u0006\u0010\f\u001a\u00020\u000b2\u0006\u00101\u001a\u000200H\u0000¢\u0006\u0004\b>\u00104J\u0015\u0010A\u001a\u00020\r2\u0006\u0010@\u001a\u00020\u001a¢\u0006\u0004\bA\u0010BJ\u0015\u0010E\u001a\u00020\b2\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FR\u001a\u0010G\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bG\u0010H\u001a\u0004\bI\u0010JR\u001a\u0010K\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bK\u0010H\u001a\u0004\bL\u0010JR\u001a\u0010M\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bM\u0010H\u001a\u0004\bN\u0010JR\u001a\u0010O\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bO\u0010H\u001a\u0004\bP\u0010JR\u001a\u0010Q\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bQ\u0010H\u001a\u0004\bR\u0010JR\u001a\u0010S\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bS\u0010H\u001a\u0004\bT\u0010JR\u001a\u0010U\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bU\u0010H\u001a\u0004\bV\u0010JR\u001a\u0010W\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bW\u0010H\u001a\u0004\bX\u0010JR\u001a\u0010Y\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bY\u0010H\u001a\u0004\bZ\u0010JR\u001a\u0010[\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\b[\u0010H\u001a\u0004\b\\\u0010JR\u001a\u0010]\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\b]\u0010H\u001a\u0004\b^\u0010JR\u001a\u0010_\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\b_\u0010H\u001a\u0004\b`\u0010JR\u001a\u0010a\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\ba\u0010H\u001a\u0004\bb\u0010JR\u001a\u0010c\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bc\u0010H\u001a\u0004\bd\u0010JR\u001a\u0010e\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\be\u0010H\u001a\u0004\bf\u0010JR\u001a\u0010g\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bg\u0010H\u001a\u0004\bh\u0010JR\u001a\u0010i\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bi\u0010H\u001a\u0004\bj\u0010JR\u001a\u0010k\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bk\u0010H\u001a\u0004\bl\u0010JR\u001a\u0010m\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bm\u0010H\u001a\u0004\bn\u0010JR\u001a\u0010o\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bo\u0010H\u001a\u0004\bp\u0010JR\u001a\u0010q\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bq\u0010H\u001a\u0004\br\u0010JR\u001a\u0010s\u001a\u00020\u001a8\u0000X\u0080D¢\u0006\f\n\u0004\bs\u0010H\u001a\u0004\bt\u0010JR6\u0010x\u001a\u001e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020v0uj\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020v`w8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{R\u0014\u0010|\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b|\u0010}R\u0014\u0010~\u001a\u00020C8\u0002X\u0082T¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0016\u0010\u0080\u0001\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010H¨\u0006\u0081\u0001"}, d2 = {"Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroid/content/Context;", "context", _UrlKt.FRAGMENT_ENCODE_SET, "version", _UrlKt.FRAGMENT_ENCODE_SET, "isDeviceGMSVersionOlderThan", "(Landroid/content/Context;J)Z", "Lorg/json/JSONObject;", "json", _UrlKt.FRAGMENT_ENCODE_SET, "getChallenge", "(Lorg/json/JSONObject;)[B", "Landroidx/credentials/CreatePublicKeyCredentialRequest;", "request", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;", "convert", "(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroid/content/Context;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;", "convertJSON$credentials_play_services_auth", "(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;", "convertJSON", "Lcom/google/android/gms/auth/api/identity/SignInCredential;", "cred", _UrlKt.FRAGMENT_ENCODE_SET, "toAssertPasskeyResponse", "(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Ljava/lang/String;", "Landroidx/credentials/GetPublicKeyCredentialOption;", "option", "Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;", "convertToPlayAuthPasskeyJsonRequest", "(Landroidx/credentials/GetPublicKeyCredentialOption;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;", "Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;", "convertToPlayAuthPasskeyRequest", "(Landroidx/credentials/GetPublicKeyCredentialOption;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;", "Landroidx/credentials/exceptions/CreateCredentialException;", "publicKeyCredentialResponseContainsError", "(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;)Landroidx/credentials/exceptions/CreateCredentialException;", "Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;", "code", "msg", "Landroidx/credentials/exceptions/GetCredentialException;", "beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth", "(Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", "beginSignInPublicKeyCredentialResponseContainsError", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;", "builder", _UrlKt.FRAGMENT_ENCODE_SET, "parseOptionalExtensions$credentials_play_services_auth", "(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V", "parseOptionalExtensions", "parseOptionalAuthenticatorSelection$credentials_play_services_auth", "parseOptionalAuthenticatorSelection", "parseOptionalTimeout$credentials_play_services_auth", "parseOptionalTimeout", "parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth", "parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials", "parseRequiredRpAndParams$credentials_play_services_auth", "parseRequiredRpAndParams", "parseRequiredChallengeAndUser$credentials_play_services_auth", "parseRequiredChallengeAndUser", "str", "b64Decode", "(Ljava/lang/String;)[B", _UrlKt.FRAGMENT_ENCODE_SET, "alg", "checkAlgSupported", "(I)Z", "JSON_KEY_ID", "Ljava/lang/String;", "getJSON_KEY_ID$credentials_play_services_auth", "()Ljava/lang/String;", "JSON_KEY_TYPE", "getJSON_KEY_TYPE$credentials_play_services_auth", "JSON_KEY_RPID", "getJSON_KEY_RPID$credentials_play_services_auth", "JSON_KEY_CHALLENGE", "getJSON_KEY_CHALLENGE$credentials_play_services_auth", "JSON_KEY_APPID", "getJSON_KEY_APPID$credentials_play_services_auth", "JSON_KEY_THIRD_PARTY_PAYMENT", "getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth", "JSON_KEY_AUTH_SELECTION", "getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth", "JSON_KEY_REQUIRE_RES_KEY", "getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth", "JSON_KEY_RES_KEY", "getJSON_KEY_RES_KEY$credentials_play_services_auth", "JSON_KEY_AUTH_ATTACHMENT", "getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth", "JSON_KEY_TIMEOUT", "getJSON_KEY_TIMEOUT$credentials_play_services_auth", "JSON_KEY_EXCLUDE_CREDENTIALS", "getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth", "JSON_KEY_TRANSPORTS", "getJSON_KEY_TRANSPORTS$credentials_play_services_auth", "JSON_KEY_RP", "getJSON_KEY_RP$credentials_play_services_auth", "JSON_KEY_NAME", "getJSON_KEY_NAME$credentials_play_services_auth", "JSON_KEY_ICON", "getJSON_KEY_ICON$credentials_play_services_auth", "JSON_KEY_ALG", "getJSON_KEY_ALG$credentials_play_services_auth", "JSON_KEY_USER", "getJSON_KEY_USER$credentials_play_services_auth", "JSON_KEY_DISPLAY_NAME", "getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth", "JSON_KEY_EXTENSTIONS", "getJSON_KEY_EXTENSTIONS$credentials_play_services_auth", "JSON_KEY_ATTESTATION", "getJSON_KEY_ATTESTATION$credentials_play_services_auth", "JSON_KEY_PUB_KEY_CRED_PARAMS", "getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth", "Ljava/util/LinkedHashMap;", "Landroidx/credentials/exceptions/domerrors/DomError;", "Lkotlin/collections/LinkedHashMap;", "orderedErrorCodeToExceptions", "Ljava/util/LinkedHashMap;", "getOrderedErrorCodeToExceptions$credentials_play_services_auth", "()Ljava/util/LinkedHashMap;", "AUTH_MIN_VERSION_JSON_CREATE", "J", "FLAGS", "I", "TAG", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getJSON_KEY_ID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ID;
        }

        public final String getJSON_KEY_TYPE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TYPE;
        }

        public final String getJSON_KEY_RPID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RPID;
        }

        public final String getJSON_KEY_CHALLENGE$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_CHALLENGE;
        }

        public final String getJSON_KEY_APPID$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_APPID;
        }

        public final String getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_THIRD_PARTY_PAYMENT;
        }

        public final String getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_SELECTION;
        }

        public final String getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_REQUIRE_RES_KEY;
        }

        public final String getJSON_KEY_RES_KEY$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RES_KEY;
        }

        public final String getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_AUTH_ATTACHMENT;
        }

        public final String getJSON_KEY_TIMEOUT$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TIMEOUT;
        }

        public final String getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXCLUDE_CREDENTIALS;
        }

        public final String getJSON_KEY_TRANSPORTS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_TRANSPORTS;
        }

        public final String getJSON_KEY_RP$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_RP;
        }

        public final String getJSON_KEY_NAME$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_NAME;
        }

        public final String getJSON_KEY_ICON$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ICON;
        }

        public final String getJSON_KEY_ALG$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ALG;
        }

        public final String getJSON_KEY_USER$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_USER;
        }

        public final String getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_DISPLAY_NAME;
        }

        public final String getJSON_KEY_EXTENSTIONS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_EXTENSTIONS;
        }

        public final String getJSON_KEY_ATTESTATION$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_ATTESTATION;
        }

        public final String getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.JSON_KEY_PUB_KEY_CRED_PARAMS;
        }

        @JvmStatic
        public final PublicKeyCredentialCreationOptions convert(CreatePublicKeyCredentialRequest request, Context context) {
            if (isDeviceGMSVersionOlderThan(context, 241217000L)) {
                return new PublicKeyCredentialCreationOptions(request.getRequestJson());
            }
            return convertJSON$credentials_play_services_auth(new JSONObject(request.getRequestJson()));
        }

        private final boolean isDeviceGMSVersionOlderThan(Context context, long version) {
            long versionLong;
            if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) != 0) {
                return false;
            }
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT >= 28) {
                versionLong = GetGMSVersion.getVersionLong(packageManager.getPackageInfo("com.google.android.gms", 0));
            } else {
                versionLong = packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
            }
            return versionLong > version;
        }

        public final PublicKeyCredentialCreationOptions convertJSON$credentials_play_services_auth(JSONObject json) throws JSONException, CreatePublicKeyCredentialDomException {
            PublicKeyCredentialCreationOptions.Builder builder = new PublicKeyCredentialCreationOptions.Builder();
            parseRequiredChallengeAndUser$credentials_play_services_auth(json, builder);
            parseRequiredRpAndParams$credentials_play_services_auth(json, builder);
            m144xa6f4fa12(json, builder);
            parseOptionalTimeout$credentials_play_services_auth(json, builder);
            m143x6e902079(json, builder);
            parseOptionalExtensions$credentials_play_services_auth(json, builder);
            return builder.build();
        }

        public final String toAssertPasskeyResponse(SignInCredential cred) throws GetCredentialException {
            JSONObject jSONObject = new JSONObject();
            PublicKeyCredential publicKeyCredential = cred.getPublicKeyCredential();
            AuthenticatorResponse response = publicKeyCredential != null ? publicKeyCredential.getResponse() : null;
            if (response instanceof AuthenticatorErrorResponse) {
                AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) response;
                throw m142x4dea1c7f(authenticatorErrorResponse.getErrorCode(), authenticatorErrorResponse.getErrorMessage());
            }
            if (response instanceof AuthenticatorAssertionResponse) {
                try {
                    return publicKeyCredential.toJson();
                } catch (Throwable th) {
                    throw new GetCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
                }
            }
            Log.e("PublicKeyUtility", "AuthenticatorResponse expected assertion response but got: ".concat(response.getClass().getName()));
            return jSONObject.toString();
        }

        public final BeginSignInRequest.PasskeyJsonRequestOptions convertToPlayAuthPasskeyJsonRequest(GetPublicKeyCredentialOption option) {
            return new BeginSignInRequest.PasskeyJsonRequestOptions.Builder().setSupported(true).setRequestJson(option.getRequestJson()).build();
        }

        @Deprecated(message = "Upgrade GMS version so 'convertToPlayAuthPasskeyJsonRequest' is used")
        public final BeginSignInRequest.PasskeysRequestOptions convertToPlayAuthPasskeyRequest(GetPublicKeyCredentialOption option) throws JSONException {
            JSONObject jSONObject = new JSONObject(option.getRequestJson());
            String strOptString = jSONObject.optString(getJSON_KEY_RPID$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
            if (strOptString.length() == 0) {
                throw new JSONException("GetPublicKeyCredentialOption - rpId not specified in the request or is unexpectedly empty");
            }
            return new BeginSignInRequest.PasskeysRequestOptions.Builder().setSupported(true).setRpId(strOptString).setChallenge(getChallenge(jSONObject)).build();
        }

        private final byte[] getChallenge(JSONObject json) throws JSONException {
            String strOptString = json.optString(getJSON_KEY_CHALLENGE$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
            if (strOptString.length() == 0) {
                throw new JSONException("Challenge not found in request or is unexpectedly empty");
            }
            return b64Decode(strOptString);
        }

        public final CreateCredentialException publicKeyCredentialResponseContainsError(PublicKeyCredential cred) {
            AuthenticatorResponse response = cred.getResponse();
            if (!(response instanceof AuthenticatorErrorResponse)) {
                return null;
            }
            AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) response;
            ErrorCode errorCode = authenticatorErrorResponse.getErrorCode();
            DomError domError = getOrderedErrorCodeToExceptions$credentials_play_services_auth().get(errorCode);
            String errorMessage = authenticatorErrorResponse.getErrorMessage();
            if (domError == null) {
                return new CreatePublicKeyCredentialDomException(new UnknownError(), "unknown fido gms exception - " + errorMessage);
            }
            if (errorCode == ErrorCode.NOT_ALLOWED_ERR && errorMessage != null && StringsKt.contains$default((CharSequence) errorMessage, (CharSequence) "Unable to get sync account", false, 2, (Object) null)) {
                return new CreateCredentialCancellationException("Passkey registration was cancelled by the user.");
            }
            return new CreatePublicKeyCredentialDomException(domError, errorMessage);
        }

        /* JADX INFO: renamed from: beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth */
        public final GetCredentialException m142x4dea1c7f(ErrorCode code, String msg) {
            DomError domError = getOrderedErrorCodeToExceptions$credentials_play_services_auth().get(code);
            if (domError == null) {
                return new GetPublicKeyCredentialDomException(new UnknownError(), "unknown fido gms exception - " + msg);
            }
            if (code == ErrorCode.NOT_ALLOWED_ERR && msg != null && StringsKt.contains$default((CharSequence) msg, (CharSequence) "Unable to get sync account", false, 2, (Object) null)) {
                return new GetCredentialCancellationException("Passkey retrieval was cancelled by the user.");
            }
            return new GetPublicKeyCredentialDomException(domError, msg);
        }

        public final void parseOptionalExtensions$credentials_play_services_auth(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            if (json.has(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth())) {
                JSONObject jSONObject = json.getJSONObject(getJSON_KEY_EXTENSTIONS$credentials_play_services_auth());
                AuthenticationExtensions.Builder builder2 = new AuthenticationExtensions.Builder();
                String strOptString = jSONObject.optString(getJSON_KEY_APPID$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
                if (strOptString.length() > 0) {
                    builder2.setFido2Extension(new FidoAppIdExtension(strOptString));
                }
                if (jSONObject.optBoolean(getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth(), false)) {
                    builder2.setGoogleThirdPartyPaymentExtension(new GoogleThirdPartyPaymentExtension(true));
                }
                if (jSONObject.optBoolean("uvm", false)) {
                    builder2.setUserVerificationMethodExtension(new UserVerificationMethodExtension(true));
                }
                builder.setAuthenticationExtensions(builder2.build());
            }
        }

        /* JADX INFO: renamed from: parseOptionalAuthenticatorSelection$credentials_play_services_auth */
        public final void m143x6e902079(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            if (json.has(getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth())) {
                JSONObject jSONObject = json.getJSONObject(getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth());
                AuthenticatorSelectionCriteria.Builder builder2 = new AuthenticatorSelectionCriteria.Builder();
                boolean zOptBoolean = jSONObject.optBoolean(getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth(), false);
                String strOptString = jSONObject.optString(getJSON_KEY_RES_KEY$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
                builder2.setRequireResidentKey(Boolean.valueOf(zOptBoolean)).setResidentKeyRequirement(strOptString.length() > 0 ? ResidentKeyRequirement.fromString(strOptString) : null);
                String strOptString2 = jSONObject.optString(getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
                if (strOptString2.length() > 0) {
                    builder2.setAttachment(Attachment.fromString(strOptString2));
                }
                builder.setAuthenticatorSelection(builder2.build());
            }
        }

        public final void parseOptionalTimeout$credentials_play_services_auth(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) {
            if (json.has(getJSON_KEY_TIMEOUT$credentials_play_services_auth())) {
                builder.setTimeoutSeconds(Double.valueOf(json.getLong(getJSON_KEY_TIMEOUT$credentials_play_services_auth()) / 1000.0d));
            }
        }

        /* JADX INFO: renamed from: parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth */
        public final void m144xa6f4fa12(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException, CreatePublicKeyCredentialDomException {
            ArrayList arrayList;
            ArrayList arrayList2 = new ArrayList();
            if (json.has(getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth())) {
                JSONArray jSONArray = json.getJSONArray(getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth());
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    byte[] bArrB64Decode = b64Decode(jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth()));
                    String string = jSONObject.getString(getJSON_KEY_TYPE$credentials_play_services_auth());
                    if (string.length() == 0) {
                        throw new JSONException("PublicKeyCredentialDescriptor type value is not found or unexpectedly empty");
                    }
                    if (bArrB64Decode.length == 0) {
                        throw new JSONException("PublicKeyCredentialDescriptor id value is not found or unexpectedly empty");
                    }
                    if (jSONObject.has(getJSON_KEY_TRANSPORTS$credentials_play_services_auth())) {
                        arrayList = new ArrayList();
                        JSONArray jSONArray2 = jSONObject.getJSONArray(getJSON_KEY_TRANSPORTS$credentials_play_services_auth());
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
                    arrayList2.add(new PublicKeyCredentialDescriptor(string, bArrB64Decode, arrayList));
                }
            }
            builder.setExcludeList(arrayList2);
            String strOptString = json.optString(getJSON_KEY_ATTESTATION$credentials_play_services_auth(), "none");
            builder.setAttestationConveyancePreference(AttestationConveyancePreference.fromString(strOptString.length() != 0 ? strOptString : "none"));
        }

        public final void parseRequiredRpAndParams$credentials_play_services_auth(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            JSONObject jSONObject = json.getJSONObject(getJSON_KEY_RP$credentials_play_services_auth());
            String string = jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth());
            String strOptString = jSONObject.optString(getJSON_KEY_NAME$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
            String strOptString2 = jSONObject.optString(getJSON_KEY_ICON$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
            if (strOptString2.length() == 0) {
                strOptString2 = null;
            }
            if (strOptString.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty");
            }
            if (string.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty");
            }
            builder.setRp(new PublicKeyCredentialRpEntity(string, strOptString, strOptString2));
            JSONArray jSONArray = json.getJSONArray(getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth());
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                int i2 = (int) jSONObject2.getLong(getJSON_KEY_ALG$credentials_play_services_auth());
                String strOptString3 = jSONObject2.optString(getJSON_KEY_TYPE$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
                if (strOptString3.length() == 0) {
                    throw new JSONException("PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty");
                }
                if (checkAlgSupported(i2)) {
                    arrayList.add(new PublicKeyCredentialParameters(strOptString3, i2));
                }
            }
            builder.setParameters(arrayList);
        }

        public final void parseRequiredChallengeAndUser$credentials_play_services_auth(JSONObject json, PublicKeyCredentialCreationOptions.Builder builder) throws JSONException {
            builder.setChallenge(getChallenge(json));
            JSONObject jSONObject = json.getJSONObject(getJSON_KEY_USER$credentials_play_services_auth());
            byte[] bArrB64Decode = b64Decode(jSONObject.getString(getJSON_KEY_ID$credentials_play_services_auth()));
            String string = jSONObject.getString(getJSON_KEY_NAME$credentials_play_services_auth());
            String string2 = jSONObject.getString(getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth());
            String strOptString = jSONObject.optString(getJSON_KEY_ICON$credentials_play_services_auth(), _UrlKt.FRAGMENT_ENCODE_SET);
            if (string2.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty");
            }
            if (bArrB64Decode.length == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty");
            }
            if (string.length() == 0) {
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty");
            }
            builder.setUser(new PublicKeyCredentialUserEntity(bArrB64Decode, string, strOptString, string2));
        }

        public final byte[] b64Decode(String str) {
            return Base64.decode(str, 11);
        }

        public final boolean checkAlgSupported(int alg) {
            try {
                COSEAlgorithmIdentifier.fromCoseValue(alg);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        public final LinkedHashMap<ErrorCode, DomError> getOrderedErrorCodeToExceptions$credentials_play_services_auth() {
            return PublicKeyCredentialControllerUtility.orderedErrorCodeToExceptions;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$GetGMSVersion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getVersionLong", _UrlKt.FRAGMENT_ENCODE_SET, "info", "Landroid/content/pm/PackageInfo;", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class GetGMSVersion {
        public static final GetGMSVersion INSTANCE = new GetGMSVersion();

        private GetGMSVersion() {
        }

        @JvmStatic
        public static final long getVersionLong(PackageInfo info) {
            return info.getLongVersionCode();
        }
    }
}
