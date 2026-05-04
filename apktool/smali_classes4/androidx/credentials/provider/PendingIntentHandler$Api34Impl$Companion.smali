.class public final Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PendingIntentHandler$Api34Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    .line 688
    const-class v1, Landroid/credentials/CreateCredentialException;

    .line 686
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/credentials/CreateCredentialException;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 690
    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/credentials/internal/ConversionUtilsKt;->toJetpackCreateException(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final extractCreateCredentialResponse(Ljava/lang/String;Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    .line 644
    const-class v1, Landroid/credentials/CreateCredentialResponse;

    .line 642
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/credentials/CreateCredentialResponse;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 646
    :cond_0
    sget-object v0, Landroidx/credentials/CreateCredentialResponse;->Companion:Landroidx/credentials/CreateCredentialResponse$Companion;

    invoke-virtual {p2}, Landroid/credentials/CreateCredentialResponse;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "getData(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroidx/credentials/CreateCredentialResponse$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public final extractGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 698
    const-class v1, Landroid/credentials/GetCredentialException;

    .line 696
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialException;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 700
    :cond_0
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/credentials/internal/ConversionUtilsKt;->toJetpackGetException(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final extractGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 654
    const-class v1, Landroid/credentials/GetCredentialResponse;

    .line 652
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialResponse;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 656
    :cond_0
    new-instance v0, Landroidx/credentials/GetCredentialResponse;

    sget-object v1, Landroidx/credentials/Credential;->Companion:Landroidx/credentials/Credential$Companion;

    invoke-virtual {p1}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    move-result-object p1

    const-string v2, "getCredential(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroidx/credentials/Credential$Companion;->createFrom(Landroid/credentials/Credential;)Landroidx/credentials/Credential;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/GetCredentialResponse;-><init>(Landroidx/credentials/Credential;)V

    return-object v0
.end method
