.class public final Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/CreateCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreateCredentialRequest$DisplayInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CreateCredentialRequest$DisplayInfo$Companion;


# instance fields
.field private final credentialTypeIcon:Landroid/graphics/drawable/Icon;

.field private final preferDefaultProvider:Ljava/lang/String;

.field private final userDisplayName:Ljava/lang/CharSequence;

.field private final userId:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreateCredentialRequest$DisplayInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->Companion:Landroidx/credentials/CreateCredentialRequest$DisplayInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->userId:Ljava/lang/CharSequence;

    .line 87
    iput-object p2, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->userDisplayName:Ljava/lang/CharSequence;

    .line 88
    iput-object p3, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->credentialTypeIcon:Landroid/graphics/drawable/Icon;

    .line 90
    iput-object p4, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->preferDefaultProvider:Ljava/lang/String;

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "userId should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v1, "androidx.credentials.BUNDLE_KEY_USER_ID"

    iget-object v2, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->userId:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->userDisplayName:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "androidx.credentials.BUNDLE_KEY_USER_DISPLAY_NAME"

    iget-object v2, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->userDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    iget-object v1, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->preferDefaultProvider:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "androidx.credentials.BUNDLE_KEY_DEFAULT_PROVIDER"

    iget-object v2, p0, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->preferDefaultProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
