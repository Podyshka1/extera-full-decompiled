.class public final Lcom/google/firebase/sessions/FirebaseSessions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/FirebaseSessions$Companion;


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final settings:Lcom/google/firebase/sessions/settings/SessionsSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessions;->Companion:Lcom/google/firebase/sessions/FirebaseSessions$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/settings/SessionsSettings;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;)V
    .locals 6

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sessionsActivityLifecycleCallbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/sessions/FirebaseSessions;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/sessions/FirebaseSessions;->settings:Lcom/google/firebase/sessions/settings/SessionsSettings;

    .line 45
    const-string p2, "Initializing Firebase Sessions 3.0.3."

    const-string v0, "FirebaseSessions"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 47
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    .line 48
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    invoke-static {p3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/sessions/FirebaseSessions$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p4, p1}, Lcom/google/firebase/sessions/FirebaseSessions$1;-><init>(Lcom/google/firebase/sessions/FirebaseSessions;Lcom/google/firebase/sessions/SessionsActivityLifecycleCallbacks;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 72
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to register lifecycle callbacks, unexpected context "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final synthetic access$getFirebaseApp$p(Lcom/google/firebase/sessions/FirebaseSessions;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/sessions/FirebaseSessions;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method public static final synthetic access$getSettings$p(Lcom/google/firebase/sessions/FirebaseSessions;)Lcom/google/firebase/sessions/settings/SessionsSettings;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/firebase/sessions/FirebaseSessions;->settings:Lcom/google/firebase/sessions/settings/SessionsSettings;

    return-object p0
.end method
