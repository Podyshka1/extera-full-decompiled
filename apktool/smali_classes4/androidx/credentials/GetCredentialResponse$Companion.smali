.class public final Landroidx/credentials/GetCredentialResponse$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/GetCredentialResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/GetCredentialResponse;
    .locals 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    const-string v0, "androidx.credentials.provider.extra.EXTRA_CREDENTIAL_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 47
    :cond_0
    const-string v2, "androidx.credentials.provider.extra.EXTRA_CREDENTIAL_DATA"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroidx/credentials/GetCredentialResponse;

    sget-object v2, Landroidx/credentials/Credential;->Companion:Landroidx/credentials/Credential$Companion;

    invoke-virtual {v2, v0, p1}, Landroidx/credentials/Credential$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/Credential;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/credentials/GetCredentialResponse;-><init>(Landroidx/credentials/Credential;)V

    return-object v1
.end method
