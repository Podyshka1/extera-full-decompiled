.class public final Landroidx/credentials/playservices/controllers/identityauth/beginsignin/BeginSignInControllerUtility$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/controllers/identityauth/beginsignin/BeginSignInControllerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/BeginSignInControllerUtility$Companion;-><init>()V

    return-void
.end method

.method private final determineDeviceGMSVersionCode(Landroid/content/Context;)J
    .locals 2

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "getPackageManager(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p1

    return-wide v0
.end method

.method private final needsBackwardsCompatibleRequest(J)Z
    .locals 2

    const-wide/32 v0, 0xdd13758

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final constructBeginSignInRequest$credentials_play_services_auth_release(Landroidx/credentials/GetCredentialRequest;Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;-><init>()V

    .line 48
    invoke-direct {p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/BeginSignInControllerUtility$Companion;->determineDeviceGMSVersionCode(Landroid/content/Context;)J

    move-result-wide v1

    .line 49
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/credentials/CredentialOption;

    .line 57
    instance-of v6, v5, Landroidx/credentials/GetPublicKeyCredentialOption;

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    .line 58
    invoke-direct {p0, v1, v2}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/BeginSignInControllerUtility$Companion;->needsBackwardsCompatibleRequest(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    sget-object v4, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    .line 61
    check-cast v5, Landroidx/credentials/GetPublicKeyCredentialOption;

    invoke-virtual {v4, v5}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->convertToPlayAuthPasskeyRequest(Landroidx/credentials/GetPublicKeyCredentialOption;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;

    move-result-object v4

    .line 59
    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->setPasskeysSignInRequestOptions(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeysRequestOptions;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    goto :goto_1

    .line 65
    :cond_1
    sget-object v4, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;

    .line 66
    check-cast v5, Landroidx/credentials/GetPublicKeyCredentialOption;

    invoke-virtual {v4, v5}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/PublicKeyCredentialControllerUtility$Companion;->convertToPlayAuthPasskeyJsonRequest(Landroidx/credentials/GetPublicKeyCredentialOption;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;

    move-result-object v4

    .line 64
    invoke-virtual {v0, v4}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->setPasskeyJsonSignInRequestOptions(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$PasskeyJsonRequestOptions;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0xe60ade8

    cmp-long p2, v1, v4

    if-lez p2, :cond_3

    .line 79
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials()Z

    move-result p1

    .line 78
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->setPreferImmediatelyAvailableCredentials(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    .line 82
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->setAutoSelectEnabled(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
