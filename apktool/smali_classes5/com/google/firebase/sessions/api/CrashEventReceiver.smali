.class public final Lcom/google/firebase/sessions/api/CrashEventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/api/CrashEventReceiver;

.field public static sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/api/CrashEventReceiver;

    invoke-direct {v0}, Lcom/google/firebase/sessions/api/CrashEventReceiver;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/api/CrashEventReceiver;->INSTANCE:Lcom/google/firebase/sessions/api/CrashEventReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final notifyCrashOccurred()V
    .locals 2

    .line 43
    :try_start_0
    sget-object v0, Lcom/google/firebase/sessions/api/CrashEventReceiver;->sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/google/firebase/sessions/api/CrashEventReceiver;->INSTANCE:Lcom/google/firebase/sessions/api/CrashEventReceiver;

    sget-object v1, Lcom/google/firebase/sessions/SharedSessionRepository;->Companion:Lcom/google/firebase/sessions/SharedSessionRepository$Companion;

    invoke-virtual {v1}, Lcom/google/firebase/sessions/SharedSessionRepository$Companion;->getInstance()Lcom/google/firebase/sessions/SharedSessionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/sessions/api/CrashEventReceiver;->setSharedSessionRepository$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SharedSessionRepository;)V

    .line 47
    :cond_0
    sget-object v0, Lcom/google/firebase/sessions/api/CrashEventReceiver;->INSTANCE:Lcom/google/firebase/sessions/api/CrashEventReceiver;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/api/CrashEventReceiver;->getSharedSessionRepository$com_google_firebase_firebase_sessions()Lcom/google/firebase/sessions/SharedSessionRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/sessions/SharedSessionRepository;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v0}, Lcom/google/firebase/sessions/api/CrashEventReceiver;->getSharedSessionRepository$com_google_firebase_firebase_sessions()Lcom/google/firebase/sessions/SharedSessionRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/sessions/SharedSessionRepository;->appBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public final getSharedSessionRepository$com_google_firebase_firebase_sessions()Lcom/google/firebase/sessions/SharedSessionRepository;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/sessions/api/CrashEventReceiver;->sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sharedSessionRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setSharedSessionRepository$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SharedSessionRepository;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sput-object p1, Lcom/google/firebase/sessions/api/CrashEventReceiver;->sharedSessionRepository:Lcom/google/firebase/sessions/SharedSessionRepository;

    return-void
.end method
