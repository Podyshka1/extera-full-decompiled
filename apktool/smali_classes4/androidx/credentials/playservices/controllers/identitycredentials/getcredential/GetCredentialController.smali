.class public final Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;
.super Landroidx/credentials/playservices/controllers/CredentialProviderController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$Companion;


# instance fields
.field public callback:Landroidx/credentials/CredentialManagerCallback;

.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final context:Landroid/content/Context;

.field public executor:Ljava/util/concurrent/Executor;

.field private final resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;


# direct methods
.method public static synthetic $r8$lambda$A5wmlNLcHNUTTt7tF-BpaFtIJOo(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices$lambda$2$lambda$1$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MkDa1DJWZwdVkIDQrgjITCQTKhw(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices$lambda$2(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TQX2ZrS59LpBRnV6cJA_BHM6Wp8(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices$lambda$4(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpJF6PIn2LL_Nif2d2D_uELSD0Y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rE6XMHZGxZyRyYgvwQx1lvROGmw(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices$lambda$2$lambda$1(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->context:Landroid/content/Context;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;

    return-void
.end method

.method public static final synthetic access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;)Landroid/os/CancellationSignal;
    .locals 0

    .line 50
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public static final synthetic access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z
    .locals 0

    .line 50
    invoke-virtual/range {p0 .. p5}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->maybeReportErrorFromResultReceiver(Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z

    move-result p0

    return p0
.end method

.method private final convertCredentialOptionToPlayServices(Landroidx/credentials/CredentialOption;)Lcom/google/android/gms/identitycredentials/CredentialOption;
    .locals 7

    .line 178
    new-instance v0, Lcom/google/android/gms/identitycredentials/CredentialOption;

    .line 179
    invoke-virtual {p1}, Landroidx/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Landroidx/credentials/CredentialOption;->getRequestData()Landroid/os/Bundle;

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Landroidx/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v3

    .line 183
    const-string v5, ""

    .line 184
    const-string v6, ""

    .line 178
    const-string v4, ""

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/identitycredentials/CredentialOption;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final invokePlayServices$lambda$2(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;)Lkotlin/Unit;
    .locals 3

    .line 122
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 125
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->context:Landroid/content/Context;

    const-class v2, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    iget-object v1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;

    const-string v2, "BEGIN_SIGN_IN"

    invoke-virtual {p1, v1, v0, v2}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->generateHiddenActivityIntent(Landroid/os/ResultReceiver;Landroid/content/Intent;Ljava/lang/String;)V

    .line 127
    const-string v1, "EXTRA_FLOW_PENDING_INTENT"

    invoke-virtual {p4}, Lcom/google/android/gms/identitycredentials/PendingGetCredentialHandle;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    :try_start_0
    iget-object p1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance p4, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda3;

    invoke-direct {p4, p2, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, p0, p4}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 139
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$2$lambda$1(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 132
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda4;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$2$lambda$1$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 134
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    const-string v1, "Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 121
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final invokePlayServices$lambda$4(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    sget-object p5, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {p5, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isGetSignInIntentRequest$credentials_play_services_auth_release(Landroidx/credentials/GetCredentialRequest;)Z

    move-result p5

    const-string v0, "GetCredentialController"

    if-eqz p5, :cond_0

    .line 144
    const-string p5, "Pre-u credman get flow failed for get sign in intent; retrying with gis flow"

    .line 142
    invoke-static {v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance p5, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    iget-object p1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->context:Landroid/content/Context;

    invoke-direct {p5, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p5, p0, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    .line 149
    :cond_0
    const-string p5, "Pre-u credman get flow failed; retrying with gis flow"

    invoke-static {v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance p5, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    iget-object p1, p1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->context:Landroid/content/Context;

    invoke-direct {p5, p1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p5, p0, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void
.end method


# virtual methods
.method public convertRequestToPlayServices(Landroidx/credentials/GetCredentialRequest;)Lcom/google/android/gms/identitycredentials/GetCredentialRequest;
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v0, Landroidx/credentials/GetCredentialRequest;->Companion:Landroidx/credentials/GetCredentialRequest$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/GetCredentialRequest$Companion;->getRequestMetadataBundle(Landroidx/credentials/GetCredentialRequest;)Landroid/os/Bundle;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Landroidx/credentials/CredentialOption;

    .line 161
    invoke-direct {p0, v3}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->convertCredentialOptionToPlayServices(Landroidx/credentials/CredentialOption;)Lcom/google/android/gms/identitycredentials/CredentialOption;

    move-result-object v3

    .line 1635
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance v1, Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 160
    new-instance v3, Lcom/google/android/gms/identitycredentials/GetCredentialRequest;

    invoke-direct {v3, v2, v0, p1, v1}, Lcom/google/android/gms/identitycredentials/GetCredentialRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-object v3
.end method

.method public final getCallback()Landroidx/credentials/CredentialManagerCallback;
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p4, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 113
    invoke-virtual {p0, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->setCallback(Landroidx/credentials/CredentialManagerCallback;)V

    .line 114
    invoke-virtual {p0, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 115
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->convertRequestToPlayServices(Landroidx/credentials/GetCredentialRequest;)Lcom/google/android/gms/identitycredentials/GetCredentialRequest;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager;->Companion:Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;

    iget-object v2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;->getClient(Landroid/content/Context;)Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;

    move-result-object v1

    .line 120
    invoke-interface {v1, v0}, Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;->getCredential(Lcom/google/android/gms/identitycredentials/GetCredentialRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 121
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4, p0, p3, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda0;-><init>(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    new-instance v2, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 140
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda2;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$$ExternalSyntheticLambda2;-><init>(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic invokePlayServices(Ljava/lang/Object;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 50
    check-cast p1, Landroidx/credentials/GetCredentialRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public final setCallback(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
