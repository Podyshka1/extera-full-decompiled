.class public final Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;-><init>()V

    return-void
.end method

.method private final getChallenge(Lorg/json/JSONObject;)[B
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_CHALLENGE$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->b64Decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 269
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Challenge not found in request or is unexpectedly empty"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final isDeviceGMSVersionOlderThan(Landroid/content/Context;J)Z
    .locals 4

    .line 146
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "getPackageManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "com.google.android.gms"

    if-lt v0, v2, :cond_1

    .line 156
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "getPackageInfo(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$GetGMSVersion;->getVersionLong(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v2, p1

    :goto_0
    cmp-long p1, v2, p2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public final b64Decode(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 553
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "decode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth_release(Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 4

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getOrderedErrorCodeToExceptions$credentials_play_services_auth_release()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/exceptions/domerrors/DomError;

    if-nez v0, :cond_0

    .line 325
    new-instance p1, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    .line 326
    new-instance v0, Landroidx/credentials/exceptions/domerrors/UnknownError;

    invoke-direct {v0}, Landroidx/credentials/exceptions/domerrors/UnknownError;-><init>()V

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown fido gms exception - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 325
    invoke-direct {p1, v0, p2}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    return-object p1

    .line 334
    :cond_0
    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->NOT_ALLOWED_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 335
    const-string v2, "Unable to get sync account"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3, p1, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 338
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    .line 339
    const-string p2, "Passkey retrieval was cancelled by the user."

    .line 338
    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/GetCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 342
    :cond_1
    new-instance p1, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    invoke-direct {p1, v0, p2}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public final checkAlgSupported(I)Z
    .locals 0

    .line 574
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/COSEAlgorithmIdentifier;->fromCoseValue(I)Lcom/google/android/gms/fido/fido2/api/common/COSEAlgorithmIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public final convert(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroid/content/Context;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0xe60ade8

    .line 135
    invoke-direct {p0, p2, v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->isDeviceGMSVersionOlderThan(Landroid/content/Context;J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 136
    new-instance p2, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    invoke-virtual {p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest;->getRequestJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 139
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest;->getRequestJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->convertJSON$credentials_play_services_auth_release(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    move-result-object p1

    return-object p1
.end method

.method public final convertJSON$credentials_play_services_auth_release(Lorg/json/JSONObject;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;-><init>()V

    .line 167
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->parseRequiredChallengeAndUser$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V

    .line 168
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->parseRequiredRpAndParams$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V

    .line 170
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V

    .line 172
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->parseOptionalTimeout$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V

    .line 173
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->parseOptionalAuthenticatorSelection$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V

    .line 174
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->parseOptionalExtensions$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->build()Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final convertToPlayAuthPasskeyJsonRequest(Landroidx/credentials/GetPublicKeyCredentialOption;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;
    .locals 2

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;->setSupported(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {p1}, Landroidx/credentials/GetPublicKeyCredentialOption;->getRequestJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;->setRequestJson(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final convertToPlayAuthPasskeyRequest(Landroidx/credentials/GetPublicKeyCredentialOption;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;
    .locals 3

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroidx/credentials/GetPublicKeyCredentialOption;->getRequestJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_RPID$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getChallenge(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 259
    new-instance v1, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;-><init>()V

    const/4 v2, 0x1

    .line 260
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;->setSupported(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;->setRpId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;->setChallenge([B)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 253
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    .line 254
    const-string v0, "GetPublicKeyCredentialOption - rpId not specified in the request or is unexpectedly empty"

    .line 253
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getJSON_KEY_ALG$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_ALG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_APPID$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 93
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_APPID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_ATTESTATION$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_ATTESTATION$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_AUTH_ATTACHMENT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_AUTH_SELECTION$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_CHALLENGE$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_CHALLENGE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_DISPLAY_NAME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_EXCLUDE_CREDENTIALS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_EXTENSTIONS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_ICON$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_ICON$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_ID$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_ID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_NAME$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_NAME$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_PUB_KEY_CRED_PARAMS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_REQUIRE_RES_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_RES_KEY$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_RES_KEY$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_RP$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_RP$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_RPID$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_RPID$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_THIRD_PARTY_PAYMENT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_TIMEOUT$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_TIMEOUT$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 101
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_TRANSPORTS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_TYPE$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_TYPE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON_KEY_USER$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getJSON_KEY_USER$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOrderedErrorCodeToExceptions$credentials_play_services_auth_release()Ljava/util/LinkedHashMap;
    .locals 1

    .line 582
    invoke-static {}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->access$getOrderedErrorCodeToExceptions$cp()Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public final parseOptionalAuthenticatorSelection$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V
    .locals 5

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_AUTH_SELECTION$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 382
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;-><init>()V

    .line 384
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_REQUIRE_RES_KEY$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 385
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_RES_KEY$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 388
    invoke-static {v2}, Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 391
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;->setRequireResidentKey(Ljava/lang/Boolean;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;

    move-result-object v1

    .line 392
    invoke-virtual {v1, v2}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;->setResidentKeyRequirement(Lcom/google/android/gms/fido/fido2/api/common/ResidentKeyRequirement;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;

    .line 394
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_AUTH_ATTACHMENT$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 397
    invoke-static {p1}, Lcom/google/android/gms/fido/fido2/api/common/Attachment;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/Attachment;

    move-result-object p1

    .line 396
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;->setAttachment(Lcom/google/android/gms/fido/fido2/api/common/Attachment;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;

    .line 400
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria$Builder;->build()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setAuthenticatorSelection(Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorSelectionCriteria;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    :cond_2
    return-void
.end method

.method public final parseOptionalExtensions$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V
    .locals 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_EXTENSTIONS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 354
    new-instance v0, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;-><init>()V

    .line 355
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_APPID$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 357
    new-instance v2, Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->setFido2Extension(Lcom/google/android/gms/fido/fido2/api/common/FidoAppIdExtension;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_THIRD_PARTY_PAYMENT$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 363
    new-instance v1, Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;

    invoke-direct {v1, v3}, Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;-><init>(Z)V

    .line 362
    invoke-virtual {v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->setGoogleThirdPartyPaymentExtension(Lcom/google/android/gms/fido/fido2/api/common/GoogleThirdPartyPaymentExtension;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;

    .line 366
    :cond_1
    const-string v1, "uvm"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 369
    new-instance p1, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;

    invoke-direct {p1, v3}, Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;-><init>(Z)V

    .line 368
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->setUserVerificationMethodExtension(Lcom/google/android/gms/fido/fido2/api/common/UserVerificationMethodExtension;)Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;

    .line 372
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions$Builder;->build()Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setAuthenticationExtensions(Lcom/google/android/gms/fido/fido2/api/common/AuthenticationExtensions;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    :cond_3
    return-void
.end method

.method public final parseOptionalTimeout$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V
    .locals 4

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_TIMEOUT$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_TIMEOUT$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    const/16 p1, 0x3e8

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 410
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setTimeoutSeconds(Ljava/lang/Double;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    :cond_0
    return-void
.end method

.method public final parseOptionalWithRequiredDefaultsAttestationAndExcludeCredentials$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V
    .locals 12

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 420
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_EXCLUDE_CREDENTIALS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 422
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 423
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ID$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->b64Decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 424
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_TYPE$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 425
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_3

    .line 431
    array-length v8, v6

    if-eqz v8, :cond_2

    .line 438
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 439
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_TRANSPORTS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 441
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_1

    .line 444
    :try_start_0
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/fido/common/Transport;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/common/Transport;

    move-result-object v11

    .line 443
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/fido/common/Transport$UnsupportedTransportException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 447
    new-instance p2, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    .line 448
    new-instance v0, Landroidx/credentials/exceptions/domerrors/EncodingError;

    invoke-direct {v0}, Landroidx/credentials/exceptions/domerrors/EncodingError;-><init>()V

    .line 449
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-direct {p2, v0, p1}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    throw p2

    :cond_0
    const/4 v8, 0x0

    .line 455
    :cond_1
    new-instance v5, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;

    invoke-direct {v5, v7, v6, v8}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialDescriptor;-><init>(Ljava/lang/String;[BLjava/util/List;)V

    .line 454
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 432
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    .line 433
    const-string p2, "PublicKeyCredentialDescriptor id value is not found or unexpectedly empty"

    .line 432
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    .line 427
    const-string p2, "PublicKeyCredentialDescriptor type value is not found or unexpectedly empty"

    .line 426
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 459
    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setExcludeList(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    .line 461
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ATTESTATION$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p1

    .line 466
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;->fromString(Ljava/lang/String;)Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;

    move-result-object p1

    .line 465
    invoke-virtual {p2, p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setAttestationConveyancePreference(Lcom/google/android/gms/fido/fido2/api/common/AttestationConveyancePreference;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    return-void
.end method

.method public final parseRequiredChallengeAndUser$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V
    .locals 5

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getChallenge(Lorg/json/JSONObject;)[B

    move-result-object v0

    .line 518
    invoke-virtual {p2, v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setChallenge([B)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    .line 520
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_USER$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 521
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ID$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->b64Decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 522
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_NAME$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_DISPLAY_NAME$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ICON$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    array-length v3, v0

    if-eqz v3, :cond_1

    .line 537
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    new-instance v3, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;

    invoke-direct {v3, v0, v1, p1, v2}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setUser(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialUserEntity;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    return-void

    .line 538
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    .line 539
    const-string p2, "PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty"

    .line 538
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 532
    :cond_1
    new-instance p1, Lorg/json/JSONException;

    .line 533
    const-string p2, "PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty"

    .line 532
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 526
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    .line 527
    const-string p2, "PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty"

    .line 526
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parseRequiredRpAndParams$credentials_play_services_auth_release(Lorg/json/JSONObject;Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;)V
    .locals 7

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_RP$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 475
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ID$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_NAME$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ICON$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 481
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 487
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 492
    new-instance v4, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;

    invoke-direct {v4, v1, v2, v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setRp(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialRpEntity;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    .line 494
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_PUB_KEY_CRED_PARAMS$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 497
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 498
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_ALG$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 499
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getJSON_KEY_TYPE$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 506
    invoke-virtual {p0, v5}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->checkAlgSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 507
    new-instance v6, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialParameters;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    .line 502
    const-string p2, "PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty"

    .line 501
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 510
    :cond_3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;->setParameters(Ljava/util/List;)Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions$Builder;

    return-void

    .line 488
    :cond_4
    new-instance p1, Lorg/json/JSONException;

    .line 489
    const-string p2, "PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty"

    .line 488
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 482
    :cond_5
    new-instance p1, Lorg/json/JSONException;

    .line 483
    const-string p2, "PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty"

    .line 482
    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final publicKeyCredentialResponseContainsError(Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 5

    const-string v0, "cred"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->getResponse()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;

    move-result-object p1

    const-string v0, "getResponse(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    instance-of v0, p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 285
    check-cast p1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->getErrorCode()Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    move-result-object v0

    const-string v2, "getErrorCode(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->getOrderedErrorCodeToExceptions$credentials_play_services_auth_release()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    .line 287
    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_0

    .line 291
    new-instance v0, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    .line 292
    new-instance v1, Landroidx/credentials/exceptions/domerrors/UnknownError;

    invoke-direct {v1}, Landroidx/credentials/exceptions/domerrors/UnknownError;-><init>()V

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown fido gms exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-direct {v0, v1, p1}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    return-object v0

    .line 300
    :cond_0
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->NOT_ALLOWED_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 301
    const-string v4, "Unable to get sync account"

    invoke-static {p1, v4, v0, v3, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 304
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    .line 305
    const-string v0, "Passkey registration was cancelled by the user."

    .line 304
    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/CreateCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 308
    :cond_1
    new-instance v0, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;

    invoke-direct {v0, v2, p1}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final toAssertPasskeyResponse(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Ljava/lang/String;
    .locals 3

    const-string v0, "cred"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getPublicKeyCredential()Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->getResponse()Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorResponse;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 197
    instance-of v2, v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    if-nez v2, :cond_2

    .line 203
    instance-of v2, v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorAssertionResponse;

    if-eqz v2, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 207
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The PublicKeyCredential response json had an unexpected exception when parsing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    throw v0

    .line 216
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticatorResponse expected assertion response but got: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    const-string v1, "PublicKeyUtility"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 199
    :cond_2
    check-cast v1, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->getErrorCode()Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    move-result-object p1

    const-string v0, "getErrorCode(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Lcom/google/android/gms/fido/fido2/api/common/AuthenticatorErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->beginSignInPublicKeyCredentialResponseContainsError$credentials_play_services_auth_release(Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    throw p1
.end method
