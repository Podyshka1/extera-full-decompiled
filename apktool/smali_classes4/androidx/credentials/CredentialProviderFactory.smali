.class public final Landroidx/credentials/CredentialProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CredentialProviderFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CredentialProviderFactory$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private testMode:Z

.field private testPostUProvider:Landroidx/credentials/CredentialProvider;

.field private testPreUProvider:Landroidx/credentials/CredentialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CredentialProviderFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CredentialProviderFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CredentialProviderFactory;->Companion:Landroidx/credentials/CredentialProviderFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/CredentialProviderFactory;->context:Landroid/content/Context;

    return-void
.end method

.method private final getAllowedProvidersFromManifest(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x84

    .line 184
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz p1, :cond_1

    .line 191
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 192
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 193
    const-string v4, "androidx.credentials.CREDENTIAL_PROVIDER_KEY"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getBestAvailableProvider$default(Landroidx/credentials/CredentialProviderFactory;Ljava/lang/Object;ZILjava/lang/Object;)Landroidx/credentials/CredentialProvider;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 72
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/credentials/CredentialProviderFactory;->getBestAvailableProvider(Ljava/lang/Object;Z)Landroidx/credentials/CredentialProvider;

    move-result-object p0

    return-object p0
.end method

.method private final instantiatePreUProvider(Ljava/util/List;Landroid/content/Context;)Landroidx/credentials/CredentialProvider;
    .locals 7

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    .line 167
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.credentials.CredentialProvider"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/credentials/CredentialProvider;

    .line 169
    invoke-interface {v2}, Landroidx/credentials/CredentialProvider;->isAvailableOnDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_1

    .line 171
    const-string v2, "CredProviderFactory"

    const-string v3, "Only one active OEM CredentialProvider allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private final tryCreateClosedSourceProviderFromManifest()Landroidx/credentials/CredentialProvider;
    .locals 3

    .line 119
    iget-boolean v0, p0, Landroidx/credentials/CredentialProviderFactory;->testMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->testPreUProvider:Landroidx/credentials/CredentialProvider;

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/credentials/CredentialProvider;->isAvailableOnDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->testPreUProvider:Landroidx/credentials/CredentialProvider;

    return-object v0

    :cond_1
    return-object v1

    .line 130
    :cond_2
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/credentials/CredentialProviderFactory;->getAllowedProvidersFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    .line 134
    :cond_3
    iget-object v1, p0, Landroidx/credentials/CredentialProviderFactory;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Landroidx/credentials/CredentialProviderFactory;->instantiatePreUProvider(Ljava/util/List;Landroid/content/Context;)Landroidx/credentials/CredentialProvider;

    move-result-object v0

    return-object v0
.end method

.method private final tryCreatePostUProvider()Landroidx/credentials/CredentialProvider;
    .locals 3

    .line 140
    iget-boolean v0, p0, Landroidx/credentials/CredentialProviderFactory;->testMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->testPostUProvider:Landroidx/credentials/CredentialProvider;

    if-nez v0, :cond_0

    return-object v1

    .line 144
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroidx/credentials/CredentialProvider;->isAvailableOnDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->testPostUProvider:Landroidx/credentials/CredentialProvider;

    return-object v0

    :cond_1
    return-object v1

    .line 151
    :cond_2
    new-instance v0, Landroidx/credentials/CredentialProviderFrameworkImpl;

    iget-object v2, p0, Landroidx/credentials/CredentialProviderFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/credentials/CredentialProviderFrameworkImpl;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0}, Landroidx/credentials/CredentialProviderFrameworkImpl;->isAvailableOnDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final getBestAvailableProvider(Ljava/lang/Object;Z)Landroidx/credentials/CredentialProvider;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v0, "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Landroidx/credentials/CredentialProviderFactory;->tryCreateClosedSourceProviderFromManifest()Landroidx/credentials/CredentialProvider;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    instance-of v0, p1, Landroidx/credentials/GetCredentialRequest;

    if-eqz v0, :cond_1

    .line 79
    check-cast p1, Landroidx/credentials/GetCredentialRequest;

    invoke-virtual {p1}, Landroidx/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/CredentialOption;

    goto :goto_0

    .line 86
    :cond_1
    instance-of v0, p1, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    invoke-virtual {p1}, Landroidx/credentials/CreatePublicKeyCredentialRequest;->isConditional()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    invoke-direct {p0}, Landroidx/credentials/CredentialProviderFactory;->tryCreateClosedSourceProviderFromManifest()Landroidx/credentials/CredentialProvider;

    move-result-object p1

    return-object p1

    .line 92
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/credentials/CredentialProviderFactory;->getBestAvailableProvider(Z)Landroidx/credentials/CredentialProvider;

    move-result-object p1

    return-object p1
.end method

.method public final getBestAvailableProvider(Z)Landroidx/credentials/CredentialProvider;
    .locals 2

    .line 101
    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/credentials/internal/FormFactorHelper;->isTV(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/credentials/CredentialProviderFactory;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/credentials/internal/FormFactorHelper;->isAuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    .line 106
    invoke-direct {p0}, Landroidx/credentials/CredentialProviderFactory;->tryCreatePostUProvider()Landroidx/credentials/CredentialProvider;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 108
    invoke-direct {p0}, Landroidx/credentials/CredentialProviderFactory;->tryCreateClosedSourceProviderFromManifest()Landroidx/credentials/CredentialProvider;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    const/16 p1, 0x21

    if-gt v0, p1, :cond_3

    .line 112
    invoke-direct {p0}, Landroidx/credentials/CredentialProviderFactory;->tryCreateClosedSourceProviderFromManifest()Landroidx/credentials/CredentialProvider;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_4
    :goto_0
    invoke-direct {p0}, Landroidx/credentials/CredentialProviderFactory;->tryCreateClosedSourceProviderFromManifest()Landroidx/credentials/CredentialProvider;

    move-result-object p1

    return-object p1
.end method
