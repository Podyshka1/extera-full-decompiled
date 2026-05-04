.class public final Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :try_start_0
    const-string v0, "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException;->Companion:Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialDomException$Companion;->createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Landroidx/credentials/internal/FrameworkClassParsingException;

    invoke-direct {v0}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialCustomException;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/exceptions/CreateCredentialCustomException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method
