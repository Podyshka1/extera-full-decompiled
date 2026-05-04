.class public final Landroidx/credentials/CredentialManager$createCredential$2$callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialManager$-CC;->createCredential$suspendImpl(Landroidx/credentials/CredentialManager;Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Landroidx/credentials/exceptions/CreateCredentialException;

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->onError(Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroidx/credentials/CreateCredentialResponse;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Landroidx/credentials/CreateCredentialResponse;

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialManager$createCredential$2$callback$1;->onResult(Landroidx/credentials/CreateCredentialResponse;)V

    return-void
.end method
