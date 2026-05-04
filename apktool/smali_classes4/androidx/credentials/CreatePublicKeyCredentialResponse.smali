.class public final Landroidx/credentials/CreatePublicKeyCredentialResponse;
.super Landroidx/credentials/CreateCredentialResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;


# instance fields
.field private final registrationResponseJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "registrationResponseJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->Companion:Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/CreatePublicKeyCredentialResponse$Companion;->toBundle$credentials_release(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/credentials/CreatePublicKeyCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 30
    const-string v0, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    invoke-direct {p0, v0, p2}, Landroidx/credentials/CreateCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    iput-object p1, p0, Landroidx/credentials/CreatePublicKeyCredentialResponse;->registrationResponseJson:Ljava/lang/String;

    .line 45
    sget-object p2, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    invoke-virtual {p2, p1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registrationResponseJson must not be empty, and must be a valid JSON"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
