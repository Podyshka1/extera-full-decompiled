.class public final Landroidx/credentials/CredentialManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/credentials/CredentialManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CredentialManagerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CredentialManagerImpl$Companion;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CredentialManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CredentialManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CredentialManagerImpl;->Companion:Landroidx/credentials/CredentialManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/CredentialManagerImpl;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic createCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/CredentialManager$-CC;->$default$createCredential(Landroidx/credentials/CredentialManager;Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createCredentialAsync(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroidx/credentials/CredentialProviderFactory;

    iget-object v1, p0, Landroidx/credentials/CredentialManagerImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/credentials/CredentialProviderFactory;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p2, v3, v1, v2}, Landroidx/credentials/CredentialProviderFactory;->getBestAvailableProvider$default(Landroidx/credentials/CredentialProviderFactory;Ljava/lang/Object;ZILjava/lang/Object;)Landroidx/credentials/CredentialProvider;

    move-result-object v4

    if-nez v4, :cond_0

    .line 245
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;

    .line 246
    const-string p2, "createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 245
    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    .line 244
    invoke-interface {p5, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void

    .line 254
    :cond_0
    invoke-static {p1}, Landroidx/credentials/internal/FormFactorHelper;->isWear(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    .line 257
    const-string p2, "createCredential is not supported on this device"

    .line 256
    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    invoke-interface {p5, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 263
    invoke-interface/range {v4 .. v9}, Landroidx/credentials/CredentialProvider;->onCreateCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public createSettingsPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CREDENTIAL_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/credentials/CredentialManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Landroidx/credentials/CredentialManagerImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "getActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCredentialAsync(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Landroidx/credentials/CredentialProviderFactory;

    invoke-direct {v0, p1}, Landroidx/credentials/CredentialProviderFactory;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p2, v3, v1, v2}, Landroidx/credentials/CredentialProviderFactory;->getBestAvailableProvider$default(Landroidx/credentials/CredentialProviderFactory;Ljava/lang/Object;ZILjava/lang/Object;)Landroidx/credentials/CredentialProvider;

    move-result-object v4

    if-nez v4, :cond_0

    .line 126
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    .line 127
    const-string p2, "getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 126
    invoke-direct {p1, p2}, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    invoke-interface {p5, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 133
    invoke-interface/range {v4 .. v9}, Landroidx/credentials/CredentialProvider;->onGetCredential(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method
