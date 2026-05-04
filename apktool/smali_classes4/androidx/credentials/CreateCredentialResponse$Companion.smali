.class public final Landroidx/credentials/CreateCredentialResponse$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/CreateCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/CreateCredentialResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x640a7654

    if-eq v0, v1, :cond_1

    const v1, -0x20663139

    if-eq v0, v1, :cond_0

    const v1, -0x5aa2881

    if-ne v0, v1, :cond_2

    const-string v0, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreatePublicKeyCredentialResponse;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    const-string v0, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Landroidx/credentials/CreatePasswordResponse;->Companion:Landroidx/credentials/CreatePasswordResponse$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/CreatePasswordResponse$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreatePasswordResponse;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1
    const-string v0, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Landroidx/credentials/CreateDigitalCredentialResponse;->Companion:Landroidx/credentials/CreateDigitalCredentialResponse$Companion;

    invoke-virtual {v0, p2}, Landroidx/credentials/CreateDigitalCredentialResponse$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreateDigitalCredentialResponse;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    new-instance v0, Landroidx/credentials/internal/FrameworkClassParsingException;

    invoke-direct {v0}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    new-instance v0, Landroidx/credentials/CreateCustomCredentialResponse;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/CreateCustomCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;
    .locals 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v0, "androidx.credentials.provider.extra.CREATE_CREDENTIAL_RESPONSE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    const-string v2, "androidx.credentials.provider.extra.CREATE_CREDENTIAL_REQUEST_DATA"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 78
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroidx/credentials/CreateCredentialResponse$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    return-object p1
.end method
