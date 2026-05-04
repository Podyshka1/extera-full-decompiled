.class public abstract Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;,
        Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$GetGMSVersion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

.field private static final JSON_KEY_ALG:Ljava/lang/String;

.field private static final JSON_KEY_APPID:Ljava/lang/String;

.field private static final JSON_KEY_ATTESTATION:Ljava/lang/String;

.field private static final JSON_KEY_ATTESTATION_OBJ:Ljava/lang/String;

.field private static final JSON_KEY_AUTH_ATTACHMENT:Ljava/lang/String;

.field private static final JSON_KEY_AUTH_DATA:Ljava/lang/String;

.field private static final JSON_KEY_AUTH_SELECTION:Ljava/lang/String;

.field private static final JSON_KEY_CHALLENGE:Ljava/lang/String;

.field private static final JSON_KEY_CLIENT_DATA:Ljava/lang/String;

.field private static final JSON_KEY_CLIENT_EXTENSION_RESULTS:Ljava/lang/String;

.field private static final JSON_KEY_CRED_PROPS:Ljava/lang/String;

.field private static final JSON_KEY_DISPLAY_NAME:Ljava/lang/String;

.field private static final JSON_KEY_EXCLUDE_CREDENTIALS:Ljava/lang/String;

.field private static final JSON_KEY_EXTENSTIONS:Ljava/lang/String;

.field private static final JSON_KEY_ICON:Ljava/lang/String;

.field private static final JSON_KEY_ID:Ljava/lang/String;

.field private static final JSON_KEY_KEY_PROTECTION_TYPE:Ljava/lang/String;

.field private static final JSON_KEY_MATCHER_PROTECTION_TYPE:Ljava/lang/String;

.field private static final JSON_KEY_NAME:Ljava/lang/String;

.field private static final JSON_KEY_PUB_KEY_CRED_PARAMS:Ljava/lang/String;

.field private static final JSON_KEY_RAW_ID:Ljava/lang/String;

.field private static final JSON_KEY_REQUIRE_RES_KEY:Ljava/lang/String;

.field private static final JSON_KEY_RESPONSE:Ljava/lang/String;

.field private static final JSON_KEY_RES_KEY:Ljava/lang/String;

.field private static final JSON_KEY_RK:Ljava/lang/String;

.field private static final JSON_KEY_RP:Ljava/lang/String;

.field private static final JSON_KEY_RPID:Ljava/lang/String;

.field private static final JSON_KEY_SIGNATURE:Ljava/lang/String;

.field private static final JSON_KEY_THIRD_PARTY_PAYMENT:Ljava/lang/String;

.field private static final JSON_KEY_TIMEOUT:Ljava/lang/String;

.field private static final JSON_KEY_TRANSPORTS:Ljava/lang/String;

.field private static final JSON_KEY_TYPE:Ljava/lang/String;

.field private static final JSON_KEY_USER:Ljava/lang/String;

.field private static final JSON_KEY_USER_HANDLE:Ljava/lang/String;

.field private static final JSON_KEY_USER_VERIFICATION_METHOD:Ljava/lang/String;

.field private static final orderedErrorCodeToExceptions:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    .line 82
    const-string v0, "clientDataJSON"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CLIENT_DATA:Ljava/lang/String;

    .line 83
    const-string v0, "attestationObject"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION_OBJ:Ljava/lang/String;

    .line 84
    const-string v0, "authenticatorData"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_DATA:Ljava/lang/String;

    .line 85
    const-string v0, "signature"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_SIGNATURE:Ljava/lang/String;

    .line 86
    const-string v0, "userHandle"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER_HANDLE:Ljava/lang/String;

    .line 87
    const-string v0, "response"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RESPONSE:Ljava/lang/String;

    .line 88
    const-string v0, "id"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ID:Ljava/lang/String;

    .line 89
    const-string v0, "rawId"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RAW_ID:Ljava/lang/String;

    .line 90
    const-string v0, "type"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TYPE:Ljava/lang/String;

    .line 91
    const-string v0, "rpId"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RPID:Ljava/lang/String;

    .line 92
    const-string v0, "challenge"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CHALLENGE:Ljava/lang/String;

    .line 93
    const-string v0, "appid"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_APPID:Ljava/lang/String;

    .line 94
    const-string v0, "thirdPartyPayment"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_THIRD_PARTY_PAYMENT:Ljava/lang/String;

    .line 95
    const-string v0, "authenticatorSelection"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_SELECTION:Ljava/lang/String;

    .line 96
    const-string v0, "requireResidentKey"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_REQUIRE_RES_KEY:Ljava/lang/String;

    .line 97
    const-string v0, "residentKey"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RES_KEY:Ljava/lang/String;

    .line 98
    const-string v0, "authenticatorAttachment"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_ATTACHMENT:Ljava/lang/String;

    .line 99
    const-string v0, "timeout"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TIMEOUT:Ljava/lang/String;

    .line 100
    const-string v0, "excludeCredentials"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXCLUDE_CREDENTIALS:Ljava/lang/String;

    .line 101
    const-string v0, "transports"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TRANSPORTS:Ljava/lang/String;

    .line 102
    const-string v0, "rp"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RP:Ljava/lang/String;

    .line 103
    const-string v0, "name"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_NAME:Ljava/lang/String;

    .line 104
    const-string v0, "icon"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ICON:Ljava/lang/String;

    .line 105
    const-string v0, "alg"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ALG:Ljava/lang/String;

    .line 106
    const-string v0, "user"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER:Ljava/lang/String;

    .line 107
    const-string v0, "displayName"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_DISPLAY_NAME:Ljava/lang/String;

    .line 108
    const-string v0, "userVerificationMethod"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER_VERIFICATION_METHOD:Ljava/lang/String;

    .line 109
    const-string v0, "keyProtectionType"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_KEY_PROTECTION_TYPE:Ljava/lang/String;

    .line 110
    const-string v0, "matcherProtectionType"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_MATCHER_PROTECTION_TYPE:Ljava/lang/String;

    .line 111
    const-string v0, "extensions"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXTENSTIONS:Ljava/lang/String;

    .line 112
    const-string v0, "attestation"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION:Ljava/lang/String;

    .line 113
    const-string v0, "pubKeyCredParams"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_PUB_KEY_CRED_PARAMS:Ljava/lang/String;

    .line 114
    const-string v0, "clientExtensionResults"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CLIENT_EXTENSION_RESULTS:Ljava/lang/String;

    .line 115
    const-string v0, "rk"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RK:Ljava/lang/String;

    .line 116
    const-string v0, "credProps"

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CRED_PROPS:Ljava/lang/String;

    .line 584
    sget-object v0, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->UNKNOWN_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v1, Landroidx/credentials/exceptions/domerrors/UnknownError;

    invoke-direct {v1}, Landroidx/credentials/exceptions/domerrors/UnknownError;-><init>()V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 585
    sget-object v1, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->ABORT_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v2, Landroidx/credentials/exceptions/domerrors/AbortError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/AbortError;-><init>()V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 586
    sget-object v2, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->ATTESTATION_NOT_PRIVATE_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v3, Landroidx/credentials/exceptions/domerrors/NotReadableError;

    invoke-direct {v3}, Landroidx/credentials/exceptions/domerrors/NotReadableError;-><init>()V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 587
    sget-object v3, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->CONSTRAINT_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v4, Landroidx/credentials/exceptions/domerrors/ConstraintError;

    invoke-direct {v4}, Landroidx/credentials/exceptions/domerrors/ConstraintError;-><init>()V

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 588
    sget-object v4, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->DATA_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v5, Landroidx/credentials/exceptions/domerrors/DataError;

    invoke-direct {v5}, Landroidx/credentials/exceptions/domerrors/DataError;-><init>()V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 589
    sget-object v5, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->INVALID_STATE_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v6, Landroidx/credentials/exceptions/domerrors/InvalidStateError;

    invoke-direct {v6}, Landroidx/credentials/exceptions/domerrors/InvalidStateError;-><init>()V

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 590
    sget-object v6, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->ENCODING_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v7, Landroidx/credentials/exceptions/domerrors/EncodingError;

    invoke-direct {v7}, Landroidx/credentials/exceptions/domerrors/EncodingError;-><init>()V

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 591
    sget-object v7, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->NETWORK_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v8, Landroidx/credentials/exceptions/domerrors/NetworkError;

    invoke-direct {v8}, Landroidx/credentials/exceptions/domerrors/NetworkError;-><init>()V

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 592
    sget-object v8, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->NOT_ALLOWED_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v9, Landroidx/credentials/exceptions/domerrors/NotAllowedError;

    invoke-direct {v9}, Landroidx/credentials/exceptions/domerrors/NotAllowedError;-><init>()V

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 593
    sget-object v9, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->NOT_SUPPORTED_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v10, Landroidx/credentials/exceptions/domerrors/NotSupportedError;

    invoke-direct {v10}, Landroidx/credentials/exceptions/domerrors/NotSupportedError;-><init>()V

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 594
    sget-object v10, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->SECURITY_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v11, Landroidx/credentials/exceptions/domerrors/SecurityError;

    invoke-direct {v11}, Landroidx/credentials/exceptions/domerrors/SecurityError;-><init>()V

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 595
    sget-object v11, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->TIMEOUT_ERR:Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    new-instance v12, Landroidx/credentials/exceptions/domerrors/TimeoutError;

    invoke-direct {v12}, Landroidx/credentials/exceptions/domerrors/TimeoutError;-><init>()V

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v12, 0xc

    new-array v12, v12, [Lkotlin/Pair;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    .line 583
    invoke-static {v12}, Lkotlin/collections/MapsKt;->linkedMapOf([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->orderedErrorCodeToExceptions:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic access$getJSON_KEY_ALG$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ALG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_APPID$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_APPID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ATTESTATION$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ATTESTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_AUTH_ATTACHMENT$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_ATTACHMENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_AUTH_SELECTION$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_AUTH_SELECTION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_CHALLENGE$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_CHALLENGE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_DISPLAY_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_DISPLAY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_EXCLUDE_CREDENTIALS$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXCLUDE_CREDENTIALS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_EXTENSTIONS$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_EXTENSTIONS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ICON$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ICON:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_ID$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_NAME$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_PUB_KEY_CRED_PARAMS$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_PUB_KEY_CRED_PARAMS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_REQUIRE_RES_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_REQUIRE_RES_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RES_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RES_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RP$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_RPID$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_RPID:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_THIRD_PARTY_PAYMENT$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_THIRD_PARTY_PAYMENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_TIMEOUT$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_TRANSPORTS$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TRANSPORTS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_TYPE$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getJSON_KEY_USER$cp()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->JSON_KEY_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getOrderedErrorCodeToExceptions$cp()Ljava/util/LinkedHashMap;
    .locals 1

    .line 78
    sget-object v0, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->orderedErrorCodeToExceptions:Ljava/util/LinkedHashMap;

    return-object v0
.end method
