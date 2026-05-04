.class public final Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/credentials/CredentialProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

.field public static final MIN_GMS_APK_VERSION:I = 0xdc1f545

.field public static final MIN_GMS_APK_VERSION_DIGITAL_CRED:I = 0xe7d6960

.field public static final MIN_GMS_APK_VERSION_RESTORE_CRED:I = 0xe6fadc0

.field public static final PRE_U_MIN_GMS_APK_VERSION:I = 0xf0b5180

.field private static final TAG:Ljava/lang/String; = "PlayServicesImpl"


# instance fields
.field private final context:Landroid/content/Context;

.field private googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method public static synthetic $r8$lambda$-0vlfD6MY-ldsWwXllSvmEfvq4E(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/ClearCredentialStateResponse;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$17(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/ClearCredentialStateResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$33t67ADGbdHQ3I8DmDG2pssxk8c(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$10$lambda$9$lambda$8(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jXvrTRoERmCISXRfwXYkLdVeEA(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$22$lambda$21$lambda$20(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5b_NZniORttBMkbFQZx_nT7Z9tM(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$1$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6hgEWG45v25sqOSwyxD9AA8BabI(Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$14$lambda$13$lambda$12(Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZFGKvilATWIY5wUZ9wYqBrHTpU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9dU4ecS1lr3_qO62mrUUM7zGmhM(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$7(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AHEPAGD45-gIS5fVQxoF8ULId-Y(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onCreateCredential$lambda$5$lambda$4(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CzTvhVIglA1BRk85Mc5RmIPn-9A(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$3$lambda$2(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DfT1zIu2fR0eiSNwtnuBSJy7kq8(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$7$lambda$6(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J32sPMz85cxGkBJwfxnJCAq067Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JZ7-F9FVJO3n2WcYQPDVrrhw-bM(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$10$lambda$9(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jp6F_38VqvEs6gDaslAQ8y_YdwY(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$14$lambda$13(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$McATJhcckTZ1GXTTotrMY9ugoKk(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$22(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Void;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MiksCaiwjpjIlIYDBOYHqFL7e0U(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$3(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NtY9OuW7eKpnH_d74UfVq3kORa4(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$22$lambda$21(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ow8hVi4afpOteiCBRVfO5iOWPfQ(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$10(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QvOelUGELUhdbebsz0JNQi0EPSQ(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$17$lambda$16(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VaWGKHMq8i7-ItapkC-lFK107fk(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$17$lambda$16$lambda$15(Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YStfLpvTYNV4aBlhmDn-sDCQbtg(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$27$lambda$26$lambda$25$lambda$24(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZTOmcSIYlhRw0U7DeRTc4rOhVj0(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$27$lambda$26$lambda$25(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZiuN7M7j6nhSxISGIiu1ycEfVYw(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow$lambda$27(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eVaj6yutp5b8RJaCjG_XQir2E_g(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onCreateCredential$lambda$5(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ghKlOJ2C3-eb2a7qz75wiFvx2qs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tIQ-94nlPLWxMFpmDORzVOSqrss(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$14(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xgrl6ZZEG6yNGAU_HQNbfaxXN8I(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onGetCredential$lambda$1(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xkC7fgGfodJKtmFaQIa3aFn5f5k(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->onClearCredential$lambda$19(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    const-string v0, "getInstance(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method public static synthetic getGoogleApiAvailability$annotations()V
    .locals 0

    return-void
.end method

.method private final isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private static final onClearCredential$lambda$10(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 258
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p3, p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 262
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClearCredential$lambda$10$lambda$9(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 2

    .line 259
    const-string v0, "PlayServicesImpl"

    const-string v1, "Cleared restore credential successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClearCredential$lambda$10$lambda$9$lambda$8(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 260
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onClearCredential$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 257
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onClearCredential$lambda$14(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-string v0, "PlayServicesImpl"

    const-string v1, "Clearing restore credential failed"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 266
    new-instance v1, Landroidx/credentials/exceptions/ClearCredentialUnknownException;

    .line 267
    const-string v2, "Clear restore credential failed for unknown reason."

    .line 266
    invoke-direct {v1, v2}, Landroidx/credentials/exceptions/ClearCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 265
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 269
    instance-of v1, p3, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_0

    .line 270
    check-cast p3, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p3

    const v1, 0x9d09

    if-ne p3, v1, :cond_0

    .line 273
    new-instance p3, Landroidx/credentials/exceptions/ClearCredentialUnknownException;

    .line 274
    const-string v1, "The restore credential internal service had a failure."

    .line 273
    invoke-direct {p3, v1}, Landroidx/credentials/exceptions/ClearCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 272
    iput-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 279
    :cond_0
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    new-instance v1, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p3, p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final onClearCredential$lambda$14$lambda$13(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 1

    .line 280
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda15;-><init>(Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClearCredential$lambda$14$lambda$13$lambda$12(Landroidx/credentials/CredentialManagerCallback;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 280
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onClearCredential$lambda$17(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Lcom/google/android/gms/identitycredentials/ClearCredentialStateResponse;)Lkotlin/Unit;
    .locals 1

    .line 287
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p3, p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 294
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClearCredential$lambda$17$lambda$16(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 2

    .line 290
    const-string v0, "PlayServicesImpl"

    const-string v1, "During clear credential, signed out successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda10;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 292
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClearCredential$lambda$17$lambda$16$lambda$15(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onClearCredential$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 286
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onClearCredential$lambda$19(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    const-string p5, "PlayServicesImpl"

    const-string v0, "GMS Clear credential flow failed, calling fallback"

    invoke-static {p5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->runFallbackClearCredFlow(Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method private static final onClearCredential$lambda$7(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 241
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda12;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onClearCredential$lambda$7$lambda$6(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 243
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;

    .line 244
    const-string v1, "clearCredentialStateAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 243
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/ClearCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    .line 242
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onCreateCredential$lambda$5(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 172
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreateCredential$lambda$5$lambda$4(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 174
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;

    .line 175
    const-string v1, "createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 174
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onGetCredential$lambda$1(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 96
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda9;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onGetCredential$lambda$1$lambda$0(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 98
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    .line 99
    const-string v1, "this device requires a Google Play Services update for the given feature to be supported"

    .line 98
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onGetCredential$lambda$3(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 1

    .line 112
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda7;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 120
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onGetCredential$lambda$3$lambda$2(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2

    .line 114
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;

    .line 115
    const-string v1, "getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"

    .line 114
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialProviderConfigurationException;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method

.method private final runFallbackClearCredFlow(Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/credentials/CredentialManagerCallback;",
            ")V"
        }
    .end annotation

    .line 320
    iget-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object p1

    .line 321
    invoke-interface {p1}, Lcom/google/android/gms/auth/api/identity/SignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 322
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p2, p3, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda16;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    new-instance v1, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda17;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 331
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda18;-><init>(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$22(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Void;)Lkotlin/Unit;
    .locals 1

    .line 323
    sget-object p3, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda8;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p3, p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    .line 330
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runFallbackClearCredFlow$lambda$22$lambda$21(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 2

    .line 326
    const-string v0, "PlayServicesImpl"

    const-string v1, "During clear credential, signed out successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda13;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 328
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runFallbackClearCredFlow$lambda$22$lambda$21$lambda$20(Landroidx/credentials/CredentialManagerCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$23(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 322
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$27(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "e"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    sget-object p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p4, p2, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {p0, p1, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final runFallbackClearCredFlow$lambda$27$lambda$26$lambda$25(Ljava/lang/Exception;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "During clear credential sign out failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayServicesImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2, p0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda6;-><init>(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runFallbackClearCredFlow$lambda$27$lambda$26$lambda$25$lambda$24(Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V
    .locals 1

    .line 338
    new-instance v0, Landroidx/credentials/exceptions/ClearCredentialUnknownException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/exceptions/ClearCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method public isAvailableOnDevice()Z
    .locals 1

    const v0, 0xdc1f545

    .line 200
    invoke-virtual {p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    move-result v0

    return v0
.end method

.method public final isAvailableOnDevice(I)Z
    .locals 3

    .line 204
    iget-object v0, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 207
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection with Google Play Services was not successful. Connection result is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    const-string v1, "PlayServicesImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public onClearCredential(Landroidx/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/credentials/CredentialManagerCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "executor"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object p1, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {p1, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 238
    throw p1
.end method

.method public onCreateCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/credentials/CreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/credentials/CredentialManagerCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    instance-of v0, p2, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    if-eqz v0, :cond_3

    const v0, 0xf0b5180

    .line 160
    invoke-virtual {p0, v0}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    invoke-virtual {v0}, Landroidx/credentials/CreatePublicKeyCredentialRequest;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    sget-object p2, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController$Companion;

    invoke-virtual {p2, p1}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController$Companion;->getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;

    move-result-object p1

    .line 165
    invoke-virtual {p1, v0, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identityauth/createpublickeycredential/CredentialProviderCreatePublicKeyCredentialController;->invokePlayServices(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    .line 161
    :cond_2
    :goto_0
    sget-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;->getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;

    move-result-object p1

    .line 162
    check-cast p2, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    invoke-virtual {p1, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;->invokePlayServices(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    .line 191
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 192
    const-string p2, "Create Credential request is unsupported, not password or publickeycredential"

    .line 191
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onGetCredential(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/credentials/CredentialManagerCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p3}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isDigitalCredentialRequest$credentials_play_services_auth_release(Landroidx/credentials/GetCredentialRequest;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0xe7d6960

    .line 94
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    new-instance p1, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4, p5}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {v0, p3, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 107
    :cond_1
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/getdigitalcredential/CredentialProviderGetDigitalCredentialController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    .line 109
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isGetRestoreCredentialRequest$credentials_play_services_auth_release(Landroidx/credentials/GetCredentialRequest;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0xe6fadc0

    .line 110
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 111
    new-instance p1, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p4, p5}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    invoke-virtual {v0, p3, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewerWithCallback$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 123
    :cond_3
    new-instance v0, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    :cond_4
    const v1, 0xf0b5180

    .line 125
    invoke-virtual {p0, v1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->isAvailableOnDevice(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    new-instance v0, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    .line 128
    :cond_5
    invoke-virtual {v0, p2}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->isGetSignInIntentRequest$credentials_play_services_auth_release(Landroidx/credentials/GetCredentialRequest;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void

    .line 132
    :cond_6
    new-instance v0, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;

    invoke-direct {v0, p1}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, p2, p5, p4, p3}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->invokePlayServices(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V

    return-void
.end method

.method public bridge synthetic onGetCredential(Landroid/content/Context;Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/credentials/CredentialProvider$-CC;->$default$onGetCredential(Landroidx/credentials/CredentialProvider;Landroid/content/Context;Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public bridge synthetic onPrepareCredential(Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/credentials/CredentialProvider$-CC;->$default$onPrepareCredential(Landroidx/credentials/CredentialProvider;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V

    return-void
.end method

.method public onSignalCredentialState(Landroidx/credentials/SignalCredentialStateRequest;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/SignalCredentialStateRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/credentials/CredentialManagerCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;->Companion:Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;

    iget-object v1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController$Companion;->getInstance(Landroid/content/Context;)Landroidx/credentials/playservices/controllers/identitycredentials/signalcredentialstate/SignalCredentialStateController;

    move-result-object v2

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    .line 311
    invoke-static/range {v2 .. v8}, Landroidx/credentials/playservices/controllers/CredentialProviderController;->invokePlayServices$default(Landroidx/credentials/playservices/controllers/CredentialProviderController;Ljava/lang/Object;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;ILjava/lang/Object;)V

    return-void
.end method

.method public final setGoogleApiAvailability(Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method
