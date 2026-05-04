.class public final Landroidx/credentials/CreatePublicKeyCredentialRequest;
.super Landroidx/credentials/CreateCredentialRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;


# instance fields
.field private final clientDataHash:[B

.field private final isConditional:Z

.field private final requestJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZLjava/lang/String;)V
    .locals 10

    .line 0
    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZLjava/lang/String;ZZ)V
    .locals 12

    const-string v0, "requestJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v2, v3, v2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->getRequestDisplayInfo$credentials_release$default(Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object v5

    const/16 v10, 0xc0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object/from16 v6, p4

    move/from16 v3, p5

    move/from16 v9, p6

    .line 111
    invoke-direct/range {v0 .. v11}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[BZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    const/4 v1, 0x0

    if-eqz p8, :cond_1

    move p3, v1

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    move p5, v1

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    move p7, v1

    :goto_0
    move p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_4
    move p7, p6

    goto :goto_0

    .line 103
    :goto_1
    invoke-direct/range {p1 .. p7}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZLjava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Z)V
    .locals 10

    move/from16 v0, p9

    .line 64
    const-string v2, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p3

    move v9, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 63
    invoke-direct/range {v1 .. v9}, Landroidx/credentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Z)V

    .line 53
    iput-object p1, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->requestJson:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->clientDataHash:[B

    .line 61
    iput-boolean v0, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->isConditional:Z

    .line 165
    sget-object p2, Landroidx/credentials/internal/RequestValidationHelper;->Companion:Landroidx/credentials/internal/RequestValidationHelper$Companion;

    invoke-virtual {p2, p1}, Landroidx/credentials/internal/RequestValidationHelper$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 169
    const-string p1, "androidx.credentials.BUNDLE_KEY_IS_CONDITIONAL_REQUEST"

    const/4 p2, 0x1

    move-object/from16 v4, p8

    invoke-virtual {v4, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestJson must not be empty, and must be a valid JSON"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object/from16 v6, p6

    :goto_0
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_1

    .line 59
    sget-object v3, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v3, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->toCredentialDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object/from16 v7, p7

    :goto_1
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    .line 60
    sget-object v3, Landroidx/credentials/CreatePublicKeyCredentialRequest;->Companion:Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;

    invoke-virtual {v3, p1, p2}, Landroidx/credentials/CreatePublicKeyCredentialRequest$Companion;->toCandidateDataBundle$credentials_release(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v3

    move-object v8, v3

    goto :goto_2

    :cond_2
    move-object/from16 v8, p8

    :goto_2
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v9, v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v0, p0

    goto :goto_3

    :cond_3
    move/from16 v9, p9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 52
    :goto_3
    invoke-direct/range {v0 .. v9}, Landroidx/credentials/CreatePublicKeyCredentialRequest;-><init>(Ljava/lang/String;[BZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final getRequestJson()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->requestJson:Ljava/lang/String;

    return-object v0
.end method

.method public final isConditional()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroidx/credentials/CreatePublicKeyCredentialRequest;->isConditional:Z

    return v0
.end method
