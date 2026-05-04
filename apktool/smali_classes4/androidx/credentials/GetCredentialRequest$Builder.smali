.class public final Landroidx/credentials/GetCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private credentialOptions:Ljava/util/List;

.field private origin:Ljava/lang/String;

.field private preferIdentityDocUi:Z

.field private preferImmediatelyAvailableCredentials:Z

.field private preferUiBrandingComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCredentialOption(Landroidx/credentials/CredentialOption;)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 1

    const-string v0, "credentialOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/credentials/GetCredentialRequest;
    .locals 6

    .line 172
    new-instance v0, Landroidx/credentials/GetCredentialRequest;

    .line 173
    iget-object v1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->credentialOptions:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 174
    iget-object v2, p0, Landroidx/credentials/GetCredentialRequest$Builder;->origin:Ljava/lang/String;

    .line 175
    iget-boolean v3, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferIdentityDocUi:Z

    .line 176
    iget-object v4, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferUiBrandingComponentName:Landroid/content/ComponentName;

    .line 177
    iget-boolean v5, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferImmediatelyAvailableCredentials:Z

    .line 172
    invoke-direct/range {v0 .. v5}, Landroidx/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Ljava/lang/String;ZLandroid/content/ComponentName;Z)V

    return-object v0
.end method

.method public final setOrigin(Ljava/lang/String;)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 1

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public final setPreferImmediatelyAvailableCredentials(Z)Landroidx/credentials/GetCredentialRequest$Builder;
    .locals 0

    .line 140
    iput-boolean p1, p0, Landroidx/credentials/GetCredentialRequest$Builder;->preferImmediatelyAvailableCredentials:Z

    return-object p0
.end method
