.class public final Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;
.super Landroidx/credentials/playservices/controllers/CredentialProviderController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;


# instance fields
.field private callback:Landroidx/credentials/CredentialManagerCallback;

.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/Executor;

.field private final resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1;


# direct methods
.method public static synthetic $r8$lambda$0rmiB0H5LCLbrg7-ZGARZic3eUk(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$21$lambda$20(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2dXEBSpVvPiss1fLB-Tru1342Gs(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$7(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5eAfHzadQGveufyO3aKVWVJxnYA(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$12(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$615JIZZeJmSMnz2njL4toqi7rog(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$19(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6M0KRaoH119jhRKh3psRrc4csUI(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$7$lambda$6(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gx9sRBD-Cy2dKjJt_8Cw6w3dDKs(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$17$lambda$16(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IPLVZqHlSmNyl-gf-Zx7pGb8mrc(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$5(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JzPp6u0vFxBT7amXBQo7hAjU7hk(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$1(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N-UvU9uLBbaGpCZFwQwd4VskAiE(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$3(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ObdFZZ3D_CJFqKkg7sDONVZu9P0(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$15(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UsDz_Mw_Yskl8U5QoYxghXxpPQg(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$12$lambda$11$lambda$10(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZxA4XUaVneeT9O9flSi4-X8CIcU(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$5$lambda$4(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_GN4umxeS5F6UHRnHcrIXy5uhhE(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$1$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e613CcXJ6TEnsbz_m_GuRuqaJgU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fZhp8rUum252ivA4WJjz0cUhUx8(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$19$lambda$18(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ftRDfJ-8N7BXl9x_ciHrzaRfy2s(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$12$lambda$11(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hnxZblAxHH-ESnQ0JXMns8VNWfk(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$15$lambda$14(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oAVvz2dwj65mZsOK5sLt_UgC_xU(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8$lambda$3$lambda$2(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r_aF5l0yXxsXyuQlxgDu1EBP3Cc(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$17(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$skHTYU_vuxjQrrcALbabCnXI5-w(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices$lambda$8(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uGGeNf4DTEBnyzCV8wtOed3bel4(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$21(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uNYywg7u0Ju2PbfZaAH3uLb-Bsk(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->handleResponse$lambda$13(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->context:Landroid/content/Context;

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1;

    return-void
.end method

.method public static final synthetic access$getCallback$p(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Landroidx/credentials/CredentialManagerCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    return-object p0
.end method

.method public static final synthetic access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Landroid/os/CancellationSignal;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z
    .locals 0

    .line 55
    invoke-virtual/range {p0 .. p5}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->maybeReportErrorFromResultReceiver(Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z

    move-result p0

    return p0
.end method

.method private static final handleResponse$lambda$13(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$15(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)Lkotlin/Unit;
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda12;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$15$lambda$14(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    if-nez p0, :cond_0

    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$17(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lkotlin/Unit;
    .locals 2

    .line 199
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda14;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$17$lambda$16(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V
    .locals 2

    .line 200
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    if-nez p0, :cond_0

    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    const-string v1, "No provider data returned."

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$19(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)Lkotlin/Unit;
    .locals 2

    .line 211
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda13;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 212
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$19$lambda$18(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)V
    .locals 0

    .line 211
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    if-nez p0, :cond_0

    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$21(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)Lkotlin/Unit;
    .locals 2

    .line 216
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda16;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 222
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$21$lambda$20(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 1

    .line 217
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    if-nez p0, :cond_0

    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 219
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    const-string v0, "No provider data returned"

    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$12(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p1, p4, p2, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda15;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {v0, p0, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$12$lambda$11(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->fromGmsException(Ljava/lang/Throwable;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p0

    .line 173
    new-instance p1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;

    invoke-direct {p1, p3, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda17;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/CreateCredentialException;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 174
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$12$lambda$11$lambda$10(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/CreateCredentialException;)V
    .locals 0

    .line 173
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$8(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;)Lkotlin/Unit;
    .locals 4

    .line 124
    invoke-virtual {p4}, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 126
    invoke-virtual {p4}, Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;->getCreateCredentialResponse()Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;

    move-result-object p4

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    .line 128
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance p4, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda8;

    invoke-direct {p4, p2, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, p0, p4}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 131
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    .line 134
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->context:Landroid/content/Context;

    const-class v3, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    iget-object v2, p1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->resultReceiver:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1;

    .line 138
    const-string v3, "CREATE_PUBLIC_KEY_CREDENTIAL"

    .line 135
    invoke-virtual {p1, v2, v1, v3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->generateHiddenActivityIntent(Landroid/os/ResultReceiver;Landroid/content/Intent;Ljava/lang/String;)V

    .line 140
    const-string v2, "EXTRA_FLOW_PENDING_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    :try_start_0
    iget-object v2, p1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance v2, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda9;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    invoke-virtual {v1, p0, v2}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 156
    invoke-virtual {p1, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->convertResponseToCredentialManager(Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    .line 157
    instance-of p4, p1, Landroidx/credentials/CreatePublicKeyCredentialResponse;

    if-eqz p4, :cond_2

    .line 158
    sget-object p4, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p3, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda10;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)V

    invoke-virtual {p4, p0, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 161
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    if-nez v0, :cond_3

    .line 165
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance p4, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda11;

    invoke-direct {p4, p2, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, p0, p4}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 169
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$8$lambda$1(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 129
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda19;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 130
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$8$lambda$1$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 3

    .line 129
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$8$lambda$3(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)Lkotlin/Unit;
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda20;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$8$lambda$3$lambda$2(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V
    .locals 2

    .line 146
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    if-nez p0, :cond_0

    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 147
    :cond_0
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    .line 148
    const-string v1, "Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."

    .line 147
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$8$lambda$5(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)Lkotlin/Unit;
    .locals 1

    .line 159
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda21;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$8$lambda$5$lambda$4(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialResponse;)V
    .locals 0

    .line 159
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$8$lambda$7(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 166
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda18;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 167
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$8$lambda$7$lambda$6(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 3

    .line 166
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 123
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public convertRequestToPlayServices(Landroidx/credentials/CreatePublicKeyCredentialRequest;)Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;
    .locals 8

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;

    .line 263
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    move-result-object v3

    .line 265
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v4

    .line 266
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-virtual {p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest;->getRequestJson()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 262
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-object v1
.end method

.method protected convertResponseToCredentialManager(Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;)Landroidx/credentials/CreateCredentialResponse;
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object v0, Landroidx/credentials/CreateCredentialResponse;->Companion:Landroidx/credentials/CreateCredentialResponse$Companion;

    .line 276
    invoke-virtual {p1}, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->getType()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {p1}, Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 275
    invoke-virtual {v0, v1, p1}, Landroidx/credentials/CreateCredentialResponse$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method public final fromGmsException(Ljava/lang/Throwable;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    const-string v1, "Conditional create failed, failure: "

    if-eqz v0, :cond_4

    .line 230
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 232
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    .line 235
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "API is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 240
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialNoCreateOptionException;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 242
    :cond_2
    sget-object v2, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v2}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getRetryables()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 246
    :cond_3
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 252
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    if-eqz v0, :cond_5

    .line 253
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    const-string v0, "API is unsupported"

    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    .line 256
    :cond_5
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final handleResponse$credentials_play_services_auth_release(IILandroid/content/Intent;)V
    .locals 2

    .line 179
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returned request code "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I

    move-result p3

    .line 182
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string p3, " does not match what was given "

    .line 182
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    const-string p2, "CreatePublicKey"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_0
    new-instance p1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda0;-><init>()V

    .line 188
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda1;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    .line 192
    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 188
    invoke-static {p2, p1, v0, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->maybeReportErrorResultCodeCreate(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/os/CancellationSignal;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 198
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance p3, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda2;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;)V

    invoke-virtual {p1, p2, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 205
    :cond_2
    sget-object p1, Landroidx/credentials/provider/PendingIntentHandler;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Companion;

    .line 206
    const-string p2, "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"

    .line 205
    invoke-virtual {p1, p2, p3}, Landroidx/credentials/provider/PendingIntentHandler$Companion;->retrieveCreateCredentialResponse(Ljava/lang/String;Landroid/content/Intent;)Landroidx/credentials/CreateCredentialResponse;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 210
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda3;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/CreateCredentialResponse;)V

    invoke-virtual {p1, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 214
    :cond_3
    invoke-virtual {p1, p3}, Landroidx/credentials/provider/PendingIntentHandler$Companion;->retrieveCreateCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    .line 215
    sget-object p2, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda4;-><init>(Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Landroidx/credentials/exceptions/CreateCredentialException;)V

    invoke-virtual {p2, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public invokePlayServices(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p4, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 114
    iput-object p2, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->callback:Landroidx/credentials/CredentialManagerCallback;

    .line 115
    iput-object p3, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->executor:Ljava/util/concurrent/Executor;

    .line 116
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->convertRequestToPlayServices(Landroidx/credentials/CreatePublicKeyCredentialRequest;)Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;

    move-result-object p1

    .line 121
    sget-object v0, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager;->Companion:Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;

    iget-object v1, p0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/identitycredentials/IdentityCredentialManager$Companion;->getClient(Landroid/content/Context;)Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;

    move-result-object v0

    .line 122
    invoke-interface {v0, p1}, Lcom/google/android/gms/identitycredentials/IdentityCredentialClient;->createCredential(Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 123
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p4, p0, p3, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda5;-><init>(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    new-instance v1, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 170
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p4, p0, p3, p2}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$$ExternalSyntheticLambda7;-><init>(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public bridge synthetic invokePlayServices(Ljava/lang/Object;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 55
    check-cast p1, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void
.end method
