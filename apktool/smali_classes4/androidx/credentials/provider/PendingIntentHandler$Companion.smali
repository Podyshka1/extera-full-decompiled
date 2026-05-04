.class public final Landroidx/credentials/provider/PendingIntentHandler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PendingIntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/provider/PendingIntentHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final retrieveCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 306
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;->extractCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    return-object p1

    .line 308
    :cond_0
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveCreateCredentialResponse(Ljava/lang/String;Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 134
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;->extractCreateCredentialResponse(Ljava/lang/String;Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    sget-object p1, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {p1, p2}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractCreateCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 260
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;->extractGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 188
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api34Impl$Companion;->extractGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    sget-object v0, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/PendingIntentHandler$Api23Impl$Companion;->extractGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p1

    return-object p1
.end method
