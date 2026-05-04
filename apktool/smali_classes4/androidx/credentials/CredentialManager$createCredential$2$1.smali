.class final Landroidx/credentials/CredentialManager$createCredential$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialManager$-CC;->createCredential$suspendImpl(Landroidx/credentials/CredentialManager;Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $canceller:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Landroidx/credentials/CredentialManager$createCredential$2$1;->$canceller:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 265
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialManager$createCredential$2$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 265
    iget-object p1, p0, Landroidx/credentials/CredentialManager$createCredential$2$1;->$canceller:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method
