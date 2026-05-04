.class public final Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;
.super Landroidx/credentials/playservices/controllers/CredentialProviderController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$Companion;


# instance fields
.field public callback:Landroidx/credentials/CredentialManagerCallback;

.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final context:Landroid/content/Context;

.field public executor:Ljava/util/concurrent/Executor;

.field private final resultReceiver:Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1;


# direct methods
.method public static synthetic $r8$lambda$21NoDOAhFWcAHQsVBZ3r00la6Hc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2JnOX4lfJWytLDIv3mbXNALxy-g(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$9(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$43r6UtMr8cIQW8tOXhqhWkZwL04(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$1(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5D9f9PohM44uRSA42RP1a6h4iPg(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$17$lambda$16(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfWvUBGX6CDBQJtrHxlCM73YpL0(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$13$lambda$12(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PVEmdFj7qU_mbWl4KztPqfStrUs(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$15$lambda$14(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QPX-DipItrrQ_inK_NfNriD98-c(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$11$lambda$10(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UhSDzM0pmdaeVGZqWxINriEQ7eY(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$13(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W9zSQAv2ooKVGHqYjCiLS7ZYHsQ(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$19$lambda$18(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XbXs1L3_IL1wmmz_tSWVkjmkfYI(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/app/PendingIntent;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$4(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/app/PendingIntent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YGaSs0XA5hmoYSmLeIfzhFZjZ_Q(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$19(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cDcGJWr9HISL5DoZVFkbND_fzX0(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$17(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dLxNKnQqoASPS7_-Q4717ihVyag(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$11(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$deumbtr2y4tq2e7uB5Y3WAL8NXs(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$8$lambda$7$lambda$6(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJWI_MrR4gVa12yiZg2esLoQGk0(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->handleResponse$lambda$15(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eicjRucHM1p86ebaK2NUe6QrYw4(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$4$lambda$3$lambda$2(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$husfLskjWZzxNCAZMKb19-QXv10(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$8(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qp4JwB_m2Xo-E4Vo6w-MytuYAVw(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$8$lambda$7(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tWAsHQ_t-fdZQR_2nA_y1yDIxeU(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$1$lambda$0(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7wv2kswaBWXEwBpH6EydosU28g(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices$lambda$4$lambda$3(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->Companion:Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->context:Landroid/content/Context;

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->resultReceiver:Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1;

    return-void
.end method

.method public static final synthetic access$getCancellationSignal$p(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)Landroid/os/CancellationSignal;
    .locals 0

    .line 58
    iget-object p0, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method public static final synthetic access$maybeReportErrorFromResultReceiver(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z
    .locals 0

    .line 58
    invoke-virtual/range {p0 .. p5}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->maybeReportErrorFromResultReceiver(Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z

    move-result p0

    return p0
.end method

.method private final fromGmsException(Ljava/lang/Throwable;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 4

    .line 157
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getRetryables()Ljava/util/Set;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "GET_INTERRUPTED"

    goto :goto_0

    .line 160
    :cond_0
    const-string v0, "GET_NO_CREDENTIALS"

    :goto_0
    sget-object v1, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During get sign-in intent, failure response from one tap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {v1, v0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    return-object p1
.end method

.method private static final handleResponse$lambda$11(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda12;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$11$lambda$10(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 247
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$13(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)Lkotlin/Unit;
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda13;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$13$lambda$12(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$15(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 2

    .line 267
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda14;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 268
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$15$lambda$14(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 267
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$17(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 2

    .line 272
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda10;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 273
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$17$lambda$16(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 272
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$19(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)Lkotlin/Unit;
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda15;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 278
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleResponse$lambda$19$lambda$18(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V
    .locals 0

    .line 277
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final handleResponse$lambda$9(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$1(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)Lkotlin/Unit;
    .locals 2

    .line 121
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda11;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$1$lambda$0(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)V
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$4(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/app/PendingIntent;)Lkotlin/Unit;
    .locals 3

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 132
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->context:Landroid/content/Context;

    const-class v2, Landroidx/credentials/playservices/controllers/identityauth/HiddenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    iget-object v1, p1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->resultReceiver:Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1;

    const-string v2, "SIGN_IN_INTENT"

    invoke-virtual {p1, v1, v0, v2}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->generateHiddenActivityIntent(Landroid/os/ResultReceiver;Landroid/content/Intent;Ljava/lang/String;)V

    .line 134
    const-string v1, "EXTRA_FLOW_PENDING_INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    :try_start_0
    iget-object p2, p1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    sget-object p2, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda16;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V

    invoke-virtual {p2, p0, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 146
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$4$lambda$3(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)Lkotlin/Unit;
    .locals 2

    .line 139
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda19;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$4$lambda$3$lambda$2(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    .line 141
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    const-string v1, "Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 128
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final invokePlayServices$lambda$8(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/os/CancellationSignal;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->fromGmsException(Ljava/lang/Throwable;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p2

    .line 149
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda17;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-virtual {v0, p1, v1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final invokePlayServices$lambda$8$lambda$7(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)Lkotlin/Unit;
    .locals 2

    .line 150
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda18;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokePlayServices$lambda$8$lambda$7$lambda$6(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->getCallback()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public convertRequestToPlayServices(Landroidx/credentials/GetCredentialRequest;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 171
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    .line 172
    const-string v0, "GetSignInWithGoogleOption cannot be combined with other options."

    .line 171
    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    throw p1

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.google.android.libraries.identity.googleid.GetSignInWithGoogleOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/appcompat/app/WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;->builder()Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder;

    const/4 p1, 0x0

    .line 177
    throw p1
.end method

.method protected convertResponseToCredentialManager(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Landroidx/credentials/GetCredentialResponse;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getGoogleIdToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->createGoogleIdCredential(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    goto :goto_0

    .line 190
    :cond_0
    const-string p1, "GetSignInIntent"

    const-string v0, "Credential returned but no google Id found"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 197
    new-instance v0, Landroidx/credentials/GetCredentialResponse;

    invoke-direct {v0, p1}, Landroidx/credentials/GetCredentialResponse;-><init>(Landroidx/credentials/Credential;)V

    return-object v0

    .line 193
    :cond_1
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    .line 194
    const-string v0, "When attempting to convert get response, null credential found"

    .line 193
    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    throw p1
.end method

.method public final createGoogleIdCredential(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setId(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    move-result-object v0

    .line 204
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getGoogleIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setIdToken(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setDisplayName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getGivenName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getGivenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setGivenName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setFamilyName(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    .line 223
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    .line 227
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SignInCredential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;

    .line 231
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential$Builder;->build()Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;

    move-result-object p1

    return-object p1

    .line 206
    :catch_0
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    .line 207
    const-string v0, "When attempting to convert get response, null Google ID Token found"

    .line 206
    invoke-direct {p1, v0}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    throw p1
.end method

.method public final getCallback()Landroidx/credentials/CredentialManagerCallback;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->callback:Landroidx/credentials/CredentialManagerCallback;

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

    .line 72
    iget-object v0, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "executor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleResponse$credentials_play_services_auth_release(IILandroid/content/Intent;)V
    .locals 3

    .line 235
    sget-object v0, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {v0}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getCONTROLLER_REQUEST_CODE$credentials_play_services_auth_release()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 238
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

    .line 236
    const-string p2, "GetSignInIntent"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 244
    :cond_0
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    .line 245
    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda4;-><init>()V

    .line 244
    new-instance v1, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda5;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V

    .line 248
    iget-object v2, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 244
    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->maybeReportErrorResultCodeGet$credentials_play_services_auth_release(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/os/CancellationSignal;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    .line 254
    :cond_1
    :try_start_0
    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getSignInCredentialFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/SignInCredential;

    move-result-object p2

    const-string p3, "getSignInCredentialFromIntent(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->convertResponseToCredentialManager(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Landroidx/credentials/GetCredentialResponse;

    move-result-object p2

    .line 256
    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda6;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/GetCredentialResponse;)V

    invoke-virtual {p1, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/credentials/exceptions/GetCredentialException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    .line 275
    :goto_0
    new-instance p2, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 276
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda9;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnknownException;)V

    invoke-virtual {p1, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 271
    :goto_1
    sget-object p2, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda8;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialException;)V

    invoke-virtual {p2, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    return-void

    .line 260
    :goto_3
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance p3, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 261
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p3

    const/16 v0, 0x10

    if-ne p3, v0, :cond_2

    .line 262
    new-instance p3, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/credentials/exceptions/GetCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    .line 263
    :cond_2
    sget-object p3, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;

    invoke-virtual {p3}, Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;->getRetryables()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 264
    new-instance p3, Landroidx/credentials/exceptions/GetCredentialInterruptedException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/credentials/exceptions/GetCredentialInterruptedException;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 266
    :cond_3
    :goto_4
    sget-object p1, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    iget-object p3, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda7;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p4, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 109
    invoke-virtual {p0, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->setCallback(Landroidx/credentials/CredentialManagerCallback;)V

    .line 110
    invoke-virtual {p0, p3}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 112
    sget-object p2, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {p2, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->convertRequestToPlayServices(Landroidx/credentials/GetCredentialRequest;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    move-result-object p1
    :try_end_0
    .catch Landroidx/credentials/exceptions/GetCredentialUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    iget-object p2, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object p2

    .line 127
    invoke-interface {p2, p1}, Lcom/google/android/gms/auth/api/identity/SignInClient;->getSignInIntent(Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 128
    new-instance p2, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p4, p0}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda1;-><init>(Landroid/os/CancellationSignal;Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;)V

    new-instance p3, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 147
    new-instance p2, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p4}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda3;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroid/os/CancellationSignal;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :catch_0
    move-exception p1

    .line 120
    sget-object p2, Landroidx/credentials/playservices/controllers/CredentialProviderController;->Companion:Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;

    new-instance p3, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda0;-><init>(Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;Landroidx/credentials/exceptions/GetCredentialUnsupportedException;)V

    invoke-virtual {p2, p4, p3}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic invokePlayServices(Ljava/lang/Object;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V
    .locals 0

    .line 58
    check-cast p1, Landroidx/credentials/GetCredentialRequest;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public final setCallback(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->callback:Landroidx/credentials/CredentialManagerCallback;

    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
