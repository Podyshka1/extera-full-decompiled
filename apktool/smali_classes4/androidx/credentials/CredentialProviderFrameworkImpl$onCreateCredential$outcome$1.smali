.class public final Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialProviderFrameworkImpl;->onCreateCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/credentials/CredentialManagerCallback;

.field final synthetic $request:Landroidx/credentials/CreateCredentialRequest;

.field final synthetic this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;


# direct methods
.method constructor <init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/CredentialProviderFrameworkImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iput-object p2, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$request:Landroidx/credentials/CreateCredentialRequest;

    iput-object p3, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/CreateCredentialException;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const-string v0, "CredManProvService"

    const-string v1, "CreateCredentialResponse error returned from framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    invoke-virtual {v1, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertToJetpackCreateException$credentials_release(Landroid/credentials/CreateCredentialException;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 201
    invoke-static {p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/credentials/CreateCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->onError(Landroid/credentials/CreateCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/CreateCredentialResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    const-string v0, "CredManProvService"

    const-string v1, "Create Result returned from framework: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$callback:Landroidx/credentials/CredentialManagerCallback;

    .line 209
    sget-object v1, Landroidx/credentials/CreateCredentialResponse;->Companion:Landroidx/credentials/CreateCredentialResponse$Companion;

    iget-object v2, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->$request:Landroidx/credentials/CreateCredentialRequest;

    invoke-virtual {v2}, Landroidx/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialResponse;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "getData(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Landroidx/credentials/CreateCredentialResponse$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    .line 208
    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 201
    invoke-static {p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/credentials/CreateCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;->onResult(Landroid/credentials/CreateCredentialResponse;)V

    return-void
.end method
