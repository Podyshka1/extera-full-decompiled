.class public final Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;


# direct methods
.method constructor <init>(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    .line 78
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7

    const-string v0, "resultData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    .line 83
    new-instance v3, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1$onReceiveResult$1;

    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-direct {v3, v0}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1$onReceiveResult$1;-><init>(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 86
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object v5

    .line 87
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-static {v0}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v2, p2

    .line 81
    invoke-static/range {v1 .. v6}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 91
    :cond_0
    sget-object v0, Landroidx/credentials/playservices/controllers/ResponseUtils;->Companion:Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;

    .line 92
    const-string p2, "ACTIVITY_REQUEST_CODE"

    invoke-virtual {v2, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 94
    const-string p2, "RESULT_DATA"

    const-class v3, Landroid/content/Intent;

    invoke-static {v2, p2, v3}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/Intent;

    .line 95
    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-virtual {p2}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 96
    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-virtual {p2}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object v5

    .line 97
    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;->this$0:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-static {p2}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;)Landroid/os/CancellationSignal;

    move-result-object v6

    move v2, p1

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse(IILandroid/content/Intent;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)V

    return-void
.end method
