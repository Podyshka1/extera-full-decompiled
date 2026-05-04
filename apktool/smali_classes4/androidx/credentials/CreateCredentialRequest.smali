.class public abstract Landroidx/credentials/CreateCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreateCredentialRequest$Companion;,
        Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CreateCredentialRequest$Companion;


# instance fields
.field private final candidateQueryData:Landroid/os/Bundle;

.field private final credentialData:Landroid/os/Bundle;

.field private final displayInfo:Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

.field private final isAutoSelectAllowed:Z

.field private final isSystemProviderRequired:Z

.field private final origin:Ljava/lang/String;

.field private final preferImmediatelyAvailableCredentials:Z

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CreateCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CreateCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CreateCredentialRequest;->Companion:Landroidx/credentials/CreateCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLandroidx/credentials/CreateCredentialRequest$DisplayInfo;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/credentials/CreateCredentialRequest;->type:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroidx/credentials/CreateCredentialRequest;->credentialData:Landroid/os/Bundle;

    .line 58
    iput-object p3, p0, Landroidx/credentials/CreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    .line 59
    iput-boolean p4, p0, Landroidx/credentials/CreateCredentialRequest;->isSystemProviderRequired:Z

    .line 60
    iput-boolean p5, p0, Landroidx/credentials/CreateCredentialRequest;->isAutoSelectAllowed:Z

    .line 61
    iput-object p6, p0, Landroidx/credentials/CreateCredentialRequest;->displayInfo:Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    .line 62
    iput-object p7, p0, Landroidx/credentials/CreateCredentialRequest;->origin:Ljava/lang/String;

    .line 63
    iput-boolean p8, p0, Landroidx/credentials/CreateCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    .line 67
    const-string p1, "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

    invoke-virtual {p2, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-string p4, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    .line 68
    invoke-virtual {p2, p4, p8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {p3, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->candidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getCredentialData()Landroid/os/Bundle;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->credentialData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getDisplayInfo()Landroidx/credentials/CreateCredentialRequest$DisplayInfo;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->displayInfo:Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    return-object v0
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/credentials/CreateCredentialRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isSystemProviderRequired()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Landroidx/credentials/CreateCredentialRequest;->isSystemProviderRequired:Z

    return v0
.end method
