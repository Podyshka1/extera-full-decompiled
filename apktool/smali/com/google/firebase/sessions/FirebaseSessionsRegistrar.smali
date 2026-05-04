.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;

.field public static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final appContext:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field

.field private static final backgroundDispatcher:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field

.field private static final blockingDispatcher:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field

.field private static final firebaseApp:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field

.field private static final firebaseSessionsComponent:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field

.field private static final transportFactory:Lcom/google/firebase/components/Qualified;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Qualified;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5nhYzR4AQ6vcZtGeFQH3WHqD5EY(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/FirebaseSessionsComponent;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r7-PKYXSbWzr9mCtWMP1_jMCi4s(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/FirebaseSessions;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$Companion;

    .line 77
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    const-string/jumbo v1, "unqualified(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lcom/google/firebase/components/Qualified;

    .line 78
    const-class v0, Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/Qualified;

    .line 79
    const-class v0, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-static {v0}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/Qualified;

    .line 80
    const-class v0, Lcom/google/firebase/annotations/concurrent/Background;

    const-class v2, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, v2}, Lcom/google/firebase/components/Qualified;->qualified(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    const-string/jumbo v3, "qualified(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/Qualified;

    .line 81
    const-class v0, Lcom/google/firebase/annotations/concurrent/Blocking;

    invoke-static {v0, v2}, Lcom/google/firebase/components/Qualified;->qualified(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/Qualified;

    .line 82
    const-class v0, Lcom/google/android/datatransport/TransportFactory;

    invoke-static {v0}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/Qualified;

    .line 83
    const-class v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    invoke-static {v0}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lcom/google/firebase/components/Qualified;

    .line 87
    :try_start_0
    sget-object v0, Landroidx/datastore/core/MultiProcessDataStoreFactory;->INSTANCE:Landroidx/datastore/core/MultiProcessDataStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 90
    :catch_0
    const-string v0, "FirebaseSessions"

    .line 104
    const-string v1, "Your app is experiencing a known issue in the Android Gradle plugin, see https://issuetracker.google.com/328687152\n\nIt affects Java-only apps using AGP version 8.3.2 and under. To avoid the issue, either:\n\n1. Upgrade Android Gradle plugin to 8.4.0+\n   Follow the guide at https://developer.android.com/build/agp-upgrade-assistant\n\n2. Or, add the Kotlin plugin to your app\n   Follow the guide at https://developer.android.com/kotlin/add-kotlin\n\n3. Or, do the technical workaround described in https://issuetracker.google.com/issues/328687152#comment3"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppContext$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method public static final synthetic access$getBackgroundDispatcher$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method public static final synthetic access$getBlockingDispatcher$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseApp$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseInstallationsApi$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method public static final synthetic access$getFirebaseSessionsComponent$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method public static final synthetic access$getTransportFactory$cp()Lcom/google/firebase/components/Qualified;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/Qualified;

    return-object v0
.end method

.method private static final getComponents$lambda$0(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/FirebaseSessions;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    invoke-interface {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent;->getFirebaseSessions()Lcom/google/firebase/sessions/FirebaseSessions;

    move-result-object p0

    return-object p0
.end method

.method private static final getComponents$lambda$1(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/FirebaseSessionsComponent;
    .locals 3

    .line 61
    invoke-static {}, Lcom/google/firebase/sessions/DaggerFirebaseSessionsComponent;->builder()Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->appContext(Landroid/content/Context;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->backgroundDispatcher(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->blockingDispatcher(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->firebaseApp(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->firebaseInstallationsApi(Lcom/google/firebase/installations/FirebaseInstallationsApi;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/Qualified;

    invoke-interface {p0, v1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    const-string v1, "getProvider(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->transportFactoryProvider(Lcom/google/firebase/inject/Provider;)Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$Builder;->build()Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/google/firebase/sessions/FirebaseSessions;

    invoke-static {v0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 47
    const-string v1, "fire-sessions"

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/Component$Builder;->name(Ljava/lang/String;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 48
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lcom/google/firebase/components/Qualified;

    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 49
    new-instance v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v0

    .line 52
    const-class v2, Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    invoke-static {v2}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 53
    const-string v3, "fire-sessions-component"

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->name(Ljava/lang/String;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 54
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lcom/google/firebase/components/Qualified;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 55
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lcom/google/firebase/components/Qualified;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lcom/google/firebase/components/Qualified;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 57
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lcom/google/firebase/components/Qualified;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 58
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lcom/google/firebase/components/Qualified;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->required(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lcom/google/firebase/components/Qualified;

    invoke-static {v3}, Lcom/google/firebase/components/Dependency;->requiredProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/components/Dependency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 60
    new-instance v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v2

    .line 71
    const-string v3, "3.0.3"

    invoke-static {v1, v3}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/firebase/components/Component;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 45
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
