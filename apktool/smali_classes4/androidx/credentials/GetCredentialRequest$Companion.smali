.class public final Landroidx/credentials/GetCredentialRequest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/GetCredentialRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequestMetadataBundle(Landroidx/credentials/GetCredentialRequest;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_IDENTITY_DOC_UI"

    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getPreferIdentityDocUi()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    .line 204
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials()Z

    move-result v2

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string v1, "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME"

    .line 208
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getPreferUiBrandingComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
