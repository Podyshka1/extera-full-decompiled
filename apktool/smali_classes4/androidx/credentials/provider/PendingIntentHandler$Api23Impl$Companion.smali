.class public final Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    sget-object v0, Landroidx/credentials/exceptions/CreateCredentialException;->Companion:Landroidx/credentials/exceptions/CreateCredentialException$Companion;

    .line 471
    const-string v1, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 470
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialException$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final extractCreateCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    sget-object v0, Landroidx/credentials/CreateCredentialResponse;->Companion:Landroidx/credentials/CreateCredentialResponse$Companion;

    .line 369
    const-string v1, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 368
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/credentials/CreateCredentialResponse$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public final extractGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    sget-object v0, Landroidx/credentials/exceptions/GetCredentialException;->Companion:Landroidx/credentials/exceptions/GetCredentialException$Companion;

    .line 453
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 452
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/credentials/exceptions/GetCredentialException$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final extractGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    sget-object v0, Landroidx/credentials/GetCredentialResponse;->Companion:Landroidx/credentials/GetCredentialResponse$Companion;

    .line 414
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 413
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/credentials/GetCredentialResponse$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p1

    return-object p1
.end method
