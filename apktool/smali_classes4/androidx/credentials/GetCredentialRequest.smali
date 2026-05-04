.class public final Landroidx/credentials/GetCredentialRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/GetCredentialRequest$Builder;,
        Landroidx/credentials/GetCredentialRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/GetCredentialRequest$Companion;


# instance fields
.field private final credentialOptions:Ljava/util/List;

.field private final origin:Ljava/lang/String;

.field private final preferIdentityDocUi:Z

.field private final preferImmediatelyAvailableCredentials:Z

.field private final preferUiBrandingComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/GetCredentialRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/GetCredentialRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/GetCredentialRequest;->Companion:Landroidx/credentials/GetCredentialRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V
    .locals 1

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest;->credentialOptions:Ljava/util/List;

    .line 70
    iput-object p2, p0, Landroidx/credentials/GetCredentialRequest;->origin:Ljava/lang/String;

    .line 71
    iput-boolean p3, p0, Landroidx/credentials/GetCredentialRequest;->preferIdentityDocUi:Z

    .line 72
    iput-object p4, p0, Landroidx/credentials/GetCredentialRequest;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 73
    iput-boolean p5, p0, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    .line 78
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 1788
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1790
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/credentials/CredentialOption;

    goto :goto_0

    .line 90
    :cond_1
    :goto_1
    iget-object p1, p0, Landroidx/credentials/GetCredentialRequest;->credentialOptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/credentials/CredentialOption;

    goto :goto_2

    :cond_2
    return-void

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "credentialOptions should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getCredentialOptions()Ljava/util/List;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest;->credentialOptions:Ljava/util/List;

    return-object v0
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreferIdentityDocUi()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroidx/credentials/GetCredentialRequest;->preferIdentityDocUi:Z

    return v0
.end method

.method public final getPreferUiBrandingComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final preferImmediatelyAvailableCredentials()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Landroidx/credentials/GetCredentialRequest;->preferImmediatelyAvailableCredentials:Z

    return v0
.end method
