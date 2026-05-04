.class public final Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/controllers/ResponseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1W9AKfFmVOqptUyD--1gpYOiEGI(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$6$lambda$5(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2hPUcRRLnLX8WPITG566SK6PERA(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$2(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4xDG5tuFzF9vPvJ3Fz0XD1ZPNoc(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$0(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AF3nPH-AhwX6-zHzHvSxj-X1PBI(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$8(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Bu7Ve_NkPtKJ_JSK5NOh4ur2G5U(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$4$lambda$3(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SWK9b7N3FEhm4fs9MTvk8QmNFOc(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$8$lambda$7(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVfR8zP8KRUovgGI-_JoJr82HRY(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$4(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YEK_rua2T4JzD4b95RKPXSnoHjQ(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$2$lambda$1(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YP4ZQ9JLCp3HyecrcwWw0iX1oz8(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;->handleGetCredentialResponse$lambda$6(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion;-><init>()V

    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$0(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$2(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 1

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda8;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$2$lambda$1(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 61
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$4(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 70
    new-instance v0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda5;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$4$lambda$3(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 72
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    const-string v1, "No provider data returned."

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$6(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;
    .locals 1

    .line 80
    new-instance v0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda7;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$6$lambda$5(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    .line 80
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleGetCredentialResponse$lambda$8(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 1

    .line 86
    new-instance v0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda6;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleGetCredentialResponse$lambda$8$lambda$7(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 1

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    const-string v0, "No provider data returned"

    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final handleGetCredentialResponse(IILandroid/content/Intent;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)V
    .locals 2

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Returned request code "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " which  does not match what was given "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    const-string p2, "GetCredentialController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 59
    new-instance v0, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 58
    new-instance v1, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, p4, p5}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, p2, v0, v1, p6}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->maybeReportErrorResultCodeGet$credentials_play_services_auth_release(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/os/CancellationSignal;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 69
    new-instance p2, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4, p5}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, p6, p2}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 77
    :cond_2
    sget-object p2, Landroidx/credentials/provider/PendingIntentHandler;->Companion:Landroidx/credentials/provider/PendingIntentHandler$Companion;

    invoke-virtual {p2, p3}, Landroidx/credentials/provider/PendingIntentHandler$Companion;->retrieveGetCredentialResponse(Landroid/content/Intent;)Landroidx/credentials/GetCredentialResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    new-instance p2, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;

    invoke-direct {p2, p4, p5, v0}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/GetCredentialResponse;)V

    invoke-virtual {p1, p6, p2}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 84
    :cond_3
    invoke-virtual {p2, p3}, Landroidx/credentials/provider/PendingIntentHandler$Companion;->retrieveGetCredentialException(Landroid/content/Intent;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p2

    .line 85
    new-instance p3, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda4;

    invoke-direct {p3, p4, p5, p2}, Landroidx/credentials/playservices/controllers/ResponseUtils$Companion$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-virtual {p1, p6, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
