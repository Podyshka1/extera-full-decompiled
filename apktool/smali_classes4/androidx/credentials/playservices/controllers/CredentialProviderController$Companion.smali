.class public final Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/playservices/controllers/CredentialProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$L3A61OiqsxEKaG1rAmKPE4eGsQY(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->maybeReportErrorResultCodeGet$lambda$1(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gJXSR3NACyPlTRlP79kwjKj4Ji4(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->maybeReportErrorResultCodeCreate$lambda$0(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;-><init>()V

    return-void
.end method

.method private static final maybeReportErrorResultCodeCreate$lambda$0(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 78
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final maybeReportErrorResultCodeGet$lambda$1(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    .line 110
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final cancelOrCallbackExceptionOrResult$credentials_play_services_auth_release(Landroid/os/CancellationSignal;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "onResultOrException"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->Companion:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;->cancellationReviewer$credentials_play_services_auth_release(Landroid/os/CancellationSignal;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final generateErrorStringCanceled$credentials_play_services_auth_release()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "activity is cancelled by the user."

    return-object v0
.end method

.method public final generateErrorStringUnknown$credentials_play_services_auth_release(I)Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity with result code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " indicating not RESULT_OK"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final maybeReportErrorResultCodeCreate(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/os/CancellationSignal;)Z
    .locals 3

    const-string v0, "cancelOnError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 73
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 74
    new-instance v1, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->generateErrorStringUnknown$credentials_play_services_auth_release(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Landroidx/credentials/exceptions/CreateCredentialCancellationException;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->generateErrorStringCanceled$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/credentials/exceptions/CreateCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    :cond_0
    new-instance p1, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p2, p4, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeReportErrorResultCodeGet$credentials_play_services_auth_release(ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroid/os/CancellationSignal;)Z
    .locals 3

    const-string v0, "cancelOnError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 105
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 106
    new-instance v1, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-virtual {p0, p1}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->generateErrorStringUnknown$credentials_play_services_auth_release(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 108
    new-instance p1, Landroidx/credentials/exceptions/GetCredentialCancellationException;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;->generateErrorStringCanceled$credentials_play_services_auth_release()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/credentials/exceptions/GetCredentialCancellationException;-><init>(Ljava/lang/CharSequence;)V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    :cond_0
    new-instance p1, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3, v0}, Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {p2, p4, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
