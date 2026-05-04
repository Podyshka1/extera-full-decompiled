.class public final Landroidx/credentials/RestoreCredential$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/RestoreCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/RestoreCredential$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/RestoreCredential;
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v0, "androidx.credentials.BUNDLE_KEY_GET_RESTORE_CREDENTIAL_RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Landroidx/credentials/RestoreCredential;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Landroidx/credentials/RestoreCredential;-><init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 58
    :cond_0
    new-instance p1, Landroidx/credentials/exceptions/NoCredentialException;

    .line 59
    const-string v0, "The device does not contain a restore credential."

    .line 58
    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/NoCredentialException;-><init>(Ljava/lang/CharSequence;)V

    throw p1
.end method
