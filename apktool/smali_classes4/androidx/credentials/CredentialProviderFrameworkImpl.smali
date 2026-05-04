.class public final Landroidx/credentials/CredentialProviderFrameworkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/credentials/CredentialProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;


# instance fields
.field private final credentialManager:Landroid/credentials/CredentialManager;


# direct methods
.method public static synthetic $r8$lambda$aAOwS_sFkwUMIv-_JgcnH96lhvw(Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/CredentialProviderFrameworkImpl;->onCreateCredential$lambda$3(Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rM6AWz6YbKE1Dcr6ARwvmJ_WElo(Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/credentials/CredentialProviderFrameworkImpl;->onGetCredential$lambda$2(Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CredentialProviderFrameworkImpl;->Companion:Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "credential"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Landroid/credentials/CredentialManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl;->credentialManager:Landroid/credentials/CredentialManager;

    return-void
.end method

.method private final convertCreateRequestToFrameworkClass(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/credentials/CreateCredentialRequest;
    .locals 2

    .line 233
    invoke-static {}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline5;->m()V

    .line 234
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {p1, p2}, Landroidx/credentials/internal/ConversionUtilsKt;->getFinalCreateCredentialData(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    .line 236
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v1

    .line 233
    invoke-static {v0, p2, v1}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline4;->m(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/credentials/CreateCredentialRequest$Builder;

    move-result-object p2

    .line 238
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->isSystemProviderRequired()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/credentials/CreateCredentialRequest$Builder;->setIsSystemProviderRequired(Z)Landroid/credentials/CreateCredentialRequest$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p2, v0}, Landroid/credentials/CreateCredentialRequest$Builder;->setAlwaysSendAppInfoToProvider(Z)Landroid/credentials/CreateCredentialRequest$Builder;

    move-result-object p2

    const-string v0, "setAlwaysSendAppInfoToProvider(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, p1, p2}, Landroidx/credentials/CredentialProviderFrameworkImpl;->setOriginForCreateRequest(Landroidx/credentials/CreateCredentialRequest;Landroid/credentials/CreateCredentialRequest$Builder;)V

    .line 241
    invoke-virtual {p2}, Landroid/credentials/CreateCredentialRequest$Builder;->build()Landroid/credentials/CreateCredentialRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final convertGetRequestToFrameworkClass(Landroidx/credentials/GetCredentialRequest;)Landroid/credentials/GetCredentialRequest;
    .locals 6

    .line 258
    invoke-static {}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline2;->m()V

    .line 259
    sget-object v0, Landroidx/credentials/GetCredentialRequest;->Companion:Landroidx/credentials/GetCredentialRequest$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/GetCredentialRequest$Companion;->getRequestMetadataBundle(Landroidx/credentials/GetCredentialRequest;)Landroid/os/Bundle;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Bundle;)Landroid/credentials/GetCredentialRequest$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/credentials/CredentialOption;

    .line 263
    invoke-static {}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline3;->m()V

    .line 264
    invoke-virtual {v2}, Landroidx/credentials/CredentialOption;->getType()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v2}, Landroidx/credentials/CredentialOption;->getRequestData()Landroid/os/Bundle;

    move-result-object v4

    .line 266
    invoke-virtual {v2}, Landroidx/credentials/CredentialOption;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v5

    .line 263
    invoke-static {v3, v4, v5}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/credentials/CredentialOption$Builder;

    move-result-object v3

    .line 268
    invoke-virtual {v2}, Landroidx/credentials/CredentialOption;->isSystemProviderRequired()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/credentials/CredentialOption$Builder;->setIsSystemProviderRequired(Z)Landroid/credentials/CredentialOption$Builder;

    move-result-object v3

    .line 269
    invoke-virtual {v2}, Landroidx/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/credentials/CredentialOption$Builder;->setAllowedProviders(Ljava/util/Set;)Landroid/credentials/CredentialOption$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Landroid/credentials/CredentialOption$Builder;->build()Landroid/credentials/CredentialOption;

    move-result-object v2

    .line 262
    invoke-virtual {v0, v2}, Landroid/credentials/GetCredentialRequest$Builder;->addCredentialOption(Landroid/credentials/CredentialOption;)Landroid/credentials/GetCredentialRequest$Builder;

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/credentials/CredentialProviderFrameworkImpl;->setOriginForGetRequest(Landroidx/credentials/GetCredentialRequest;Landroid/credentials/GetCredentialRequest$Builder;)V

    .line 274
    invoke-virtual {v0}, Landroid/credentials/GetCredentialRequest$Builder;->build()Landroid/credentials/GetCredentialRequest;

    move-result-object p1

    const-string v0, "build(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final isCredmanDisabled(Lkotlin/jvm/functions/Function0;)Z
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl;->credentialManager:Landroid/credentials/CredentialManager;

    if-nez v0, :cond_0

    .line 177
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static final onCreateCredential$lambda$3(Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 2

    .line 193
    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;

    .line 194
    const-string v1, "Your device doesn\'t support credential manager"

    .line 193
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/CreateCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    .line 192
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    .line 197
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onGetCredential$lambda$2(Landroidx/credentials/CredentialManagerCallback;)Lkotlin/Unit;
    .locals 2

    .line 141
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;

    .line 142
    const-string v1, "Your device doesn\'t support credential manager"

    .line 141
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialUnsupportedException;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->onError(Ljava/lang/Object;)V

    .line 145
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setOriginForCreateRequest(Landroidx/credentials/CreateCredentialRequest;Landroid/credentials/CreateCredentialRequest$Builder;)V
    .locals 1

    .line 249
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/credentials/CreateCredentialRequest$Builder;->setOrigin(Ljava/lang/String;)Landroid/credentials/CreateCredentialRequest$Builder;

    :cond_0
    return-void
.end method

.method private final setOriginForGetRequest(Landroidx/credentials/GetCredentialRequest;Landroid/credentials/GetCredentialRequest$Builder;)V
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/credentials/GetCredentialRequest$Builder;->setOrigin(Ljava/lang/String;)Landroid/credentials/GetCredentialRequest$Builder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final convertGetResponseToJetpackClass$credentials_release(Landroid/credentials/GetCredentialResponse;)Landroidx/credentials/GetCredentialResponse;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Landroid/credentials/GetCredentialResponse;->getCredential()Landroid/credentials/Credential;

    move-result-object p1

    const-string v0, "getCredential(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v0, Landroidx/credentials/GetCredentialResponse;

    sget-object v1, Landroidx/credentials/Credential;->Companion:Landroidx/credentials/Credential$Companion;

    invoke-virtual {p1}, Landroid/credentials/Credential;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getType(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/Credential;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "getData(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Landroidx/credentials/Credential$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;)Landroidx/credentials/Credential;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/credentials/GetCredentialResponse;-><init>(Landroidx/credentials/Credential;)V

    return-object v0
.end method

.method public final convertToJetpackCreateException$credentials_release(Landroid/credentials/CreateCredentialException;)Landroidx/credentials/exceptions/CreateCredentialException;
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/credentials/internal/ConversionUtilsKt;->toJetpackCreateException(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/credentials/exceptions/CreateCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public final convertToJetpackGetException$credentials_release(Landroid/credentials/GetCredentialException;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/credentials/internal/ConversionUtilsKt;->toJetpackGetException(Ljava/lang/String;Ljava/lang/CharSequence;)Landroidx/credentials/exceptions/GetCredentialException;

    move-result-object p1

    return-object p1
.end method

.method public isAvailableOnDevice()Z
    .locals 2

    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/credentials/CredentialProviderFrameworkImpl;->credentialManager:Landroid/credentials/CredentialManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateCredential(Landroid/content/Context;Landroidx/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p5}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticLambda8;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-direct {p0, v0}, Landroidx/credentials/CredentialProviderFrameworkImpl;->isCredmanDisabled(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v6, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;

    invoke-direct {v6, p5, p2, p0}, Landroidx/credentials/CredentialProviderFrameworkImpl$onCreateCredential$outcome$1;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/CredentialProviderFrameworkImpl;)V

    .line 219
    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl;->credentialManager:Landroid/credentials/CredentialManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    invoke-direct {p0, p2, p1}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertCreateRequestToFrameworkClass(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/credentials/CreateCredentialRequest;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 219
    invoke-virtual/range {v1 .. v6}, Landroid/credentials/CredentialManager;->createCredential(Landroid/content/Context;Landroid/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method public onGetCredential(Landroid/content/Context;Landroidx/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p5}, Landroidx/credentials/CredentialProviderFrameworkImpl$$ExternalSyntheticLambda7;-><init>(Landroidx/credentials/CredentialManagerCallback;)V

    invoke-direct {p0, v0}, Landroidx/credentials/CredentialProviderFrameworkImpl;->isCredmanDisabled(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance v6, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;

    invoke-direct {v6, p5, p0}, Landroidx/credentials/CredentialProviderFrameworkImpl$onGetCredential$outcome$2;-><init>(Landroidx/credentials/CredentialManagerCallback;Landroidx/credentials/CredentialProviderFrameworkImpl;)V

    .line 166
    iget-object v1, p0, Landroidx/credentials/CredentialProviderFrameworkImpl;->credentialManager:Landroid/credentials/CredentialManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 168
    invoke-direct {p0, p2}, Landroidx/credentials/CredentialProviderFrameworkImpl;->convertGetRequestToFrameworkClass(Landroidx/credentials/GetCredentialRequest;)Landroid/credentials/GetCredentialRequest;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 166
    invoke-virtual/range {v1 .. v6}, Landroid/credentials/CredentialManager;->getCredential(Landroid/content/Context;Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method
