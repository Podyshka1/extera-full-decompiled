.class public final Landroidx/credentials/CreateDigitalCredentialResponse;
.super Landroidx/credentials/CreateCredentialResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreateDigitalCredentialResponse$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CreateDigitalCredentialResponse$Companion;


# instance fields
.field private final responseJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CreateDigitalCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreateDigitalCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreateDigitalCredentialResponse;->Companion:Landroidx/credentials/CreateDigitalCredentialResponse$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "responseJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Landroidx/credentials/CreateDigitalCredentialResponse;->Companion:Landroidx/credentials/CreateDigitalCredentialResponse$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/CreateDigitalCredentialResponse$Companion;->toBundle$credentials_release(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 32
    const-string v1, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    invoke-direct {p0, v1, v0}, Landroidx/credentials/CreateCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    iput-object p1, p0, Landroidx/credentials/CreateDigitalCredentialResponse;->responseJson:Ljava/lang/String;

    .line 37
    sget-object v0, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "responseJson must not be empty, and must be a valid JSON"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
