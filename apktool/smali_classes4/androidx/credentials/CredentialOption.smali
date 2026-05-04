.class public abstract Landroidx/credentials/CredentialOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CredentialOption$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CredentialOption$Companion;


# instance fields
.field private final allowedProviders:Ljava/util/Set;

.field private final candidateQueryData:Landroid/os/Bundle;

.field private final isAutoSelectAllowed:Z

.field private final isSystemProviderRequired:Z

.field private final requestData:Landroid/os/Bundle;

.field private final type:Ljava/lang/String;

.field private final typePriorityHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CredentialOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CredentialOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/util/Set;I)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedProviders"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/credentials/CredentialOption;->type:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroidx/credentials/CredentialOption;->requestData:Landroid/os/Bundle;

    .line 70
    iput-object p3, p0, Landroidx/credentials/CredentialOption;->candidateQueryData:Landroid/os/Bundle;

    .line 71
    iput-boolean p4, p0, Landroidx/credentials/CredentialOption;->isSystemProviderRequired:Z

    .line 72
    iput-boolean p5, p0, Landroidx/credentials/CredentialOption;->isAutoSelectAllowed:Z

    .line 73
    iput-object p6, p0, Landroidx/credentials/CredentialOption;->allowedProviders:Ljava/util/Set;

    .line 74
    iput p7, p0, Landroidx/credentials/CredentialOption;->typePriorityHint:I

    .line 78
    const-string p1, "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

    invoke-virtual {p2, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p3, p1, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string p1, "androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE"

    invoke-virtual {p2, p1, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    invoke-virtual {p3, p1, p7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getAllowedProviders()Ljava/util/Set;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->allowedProviders:Ljava/util/Set;

    return-object v0
.end method

.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->candidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRequestData()Landroid/os/Bundle;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->requestData:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isSystemProviderRequired()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroidx/credentials/CredentialOption;->isSystemProviderRequired:Z

    return v0
.end method
