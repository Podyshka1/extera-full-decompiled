.class public final Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;
.super Landroidx/credentials/playservices/controllers/CredentialProviderController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$3IC1EYs9Ov-yyEaKpI5mGVp9EFo(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$5$lambda$4(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LyVrnyBYtPtLnZ6t5-z5jjmrUmY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvlpUGCw7Sf2FZdJz4gwYbpL5Uo(Ljava/util/concurrent/Executor;Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$2(Ljava/util/concurrent/Executor;Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U3ILLa3_hc1ZtJAGyY4cPI9wWZM(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/SignalCredentialStateResponse;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$2$lambda$1(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/SignalCredentialStateResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqP5xvfMWXofaHXV9xd1sTYiplA(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$2$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kiw3Dt_EfC98K3mPMJfv7B7kjyA(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices$lambda$5(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->context:Landroid/content/Context;

    return-void
.end method

.method private static final invokePlayServices$lambda$2(Ljava/util/concurrent/Executor;Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;)Lkotlin/Unit;
    .locals 0

    if-nez p3, :cond_0

    .line 53
    new-instance p1, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda4;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->convertResponseToCredentialManager(Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;)Landroidx/credentials/SignalCredentialStateResponse;

    move-result-object p1

    .line 62
    new-instance p3, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda5;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/SignalCredentialStateResponse;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$2$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 55
    sget-object v0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;->Companion:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;

    .line 56
    const-string v1, "No SignalCredentialStateResponse received"

    .line 55
    invoke-virtual {v0, v1}, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;->createFrom(Ljava/lang/String;)Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;

    move-result-object v0

    .line 54
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$2$lambda$1(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/SignalCredentialStateResponse;)V
    .locals 0

    .line 62
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final invokePlayServices$lambda$5(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;->Companion:Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException$Companion;->createFrom(Ljava/lang/String;)Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;

    move-result-object p2

    .line 68
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda3;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$5$lambda$4(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;)V
    .locals 0

    .line 68
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public convertRequestToPlayServices(Landroidx/credentials/SignalCredentialStateRequest;)Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 75
    throw p1
.end method

.method protected convertResponseToCredentialManager(Lcom/google/android/gms/identitycredentials/SignalCredentialStateResponse;)Landroidx/credentials/SignalCredentialStateResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance p1, Landroidx/credentials/SignalCredentialStateResponse;

    invoke-direct {p1}, Landroidx/credentials/SignalCredentialStateResponse;-><init>()V

    return-object p1
.end method

.method public invokePlayServices(Landroidx/credentials/SignalCredentialStateRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 1

    const-string p4, "request"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callback"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "executor"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->convertRequestToPlayServices(Landroidx/credentials/SignalCredentialStateRequest;)Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;

    move-result-object p1

    .line 49
    sget-object p4, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager;->Companion:Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;

    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->context:Landroid/content/Context;

    invoke-virtual {p4, v0}, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;->getClient(Landroid/content/Context;)Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;

    move-result-object p4

    .line 50
    invoke-interface {p4, p1}, Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;->signalCredentialState(Lcom/google/android/gms/identitycredentials/SignalCredentialStateRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 51
    new-instance p4, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p0, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;Landroidx/credentials/CredentialManagerCallback;)V

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 66
    new-instance p4, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda2;

    invoke-direct {p4, p3, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, p4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic invokePlayServices(Ljava/lang/Object;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 29
    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->invokePlayServices(Landroidx/credentials/SignalCredentialStateRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void
.end method
