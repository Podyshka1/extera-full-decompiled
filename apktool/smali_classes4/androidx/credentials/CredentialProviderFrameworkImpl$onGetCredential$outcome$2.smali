.class public final Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/CredentialProviderFrameworkImpl;->onGetCredential(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/credentials/CredentialManagerCallback;

.field final synthetic this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;


# direct methods
.method constructor <init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CredentialProviderFrameworkImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iput-object p2, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/credentials/GetCredentialException;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string v0, "CredManProvService"

    const-string v1, "GetCredentialResponse error returned from framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    invoke-virtual {v1, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertToJetpackGetException$credentials_release(Landroid/credentials/GetCredentialException;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 150
    invoke-static {p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->onError(Landroid/credentials/GetCredentialException;)V

    return-void
.end method

.method public onResult(Landroid/credentials/GetCredentialResponse;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    const-string v0, "CredManProvService"

    const-string v1, "GetCredentialResponse returned from framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->$callback:Landroidx/credentials/CredentialManagerCallback;

    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->this$0:Landroidx/credentials/CredentialProviderFrameworkImpl;

    invoke-virtual {v1, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertGetResponseToJetpackClass$credentials_release(Landroid/credentials/GetCredentialResponse;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 150
    invoke-static {p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/credentials/GetCredentialResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;->onResult(Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method
