.class public final Landroidx/credentials/DigitalCredential;
.super Landroidx/credentials/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/DigitalCredential$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/DigitalCredential$Companion;


# instance fields
.field private final credentialJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/DigitalCredential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/DigitalCredential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/DigitalCredential;->Companion:Landroidx/credentials/DigitalCredential$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 31
    const-string v0, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL"

    invoke-direct {p0, v0, p2}, Landroidx/credentials/Credential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    iput-object p1, p0, Landroidx/credentials/DigitalCredential;->credentialJson:Ljava/lang/String;

    .line 34
    sget-object p2, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    invoke-virtual {p2, p1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "credentialJson must not be empty, and must be a valid JSON"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/credentials/DigitalCredential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
