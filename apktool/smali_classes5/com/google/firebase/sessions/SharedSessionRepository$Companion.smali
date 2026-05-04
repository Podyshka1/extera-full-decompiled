.class public final Lcom/google/firebase/sessions/SharedSessionRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SharedSessionRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/google/firebase/sessions/SharedSessionRepository$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepository$Companion;

    invoke-direct {v0}, Lcom/google/firebase/sessions/SharedSessionRepository$Companion;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/SharedSessionRepository$Companion;->$$INSTANCE:Lcom/google/firebase/sessions/SharedSessionRepository$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/google/firebase/sessions/SharedSessionRepository;
    .locals 2

    .line 45
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/FirebaseKt;->getApp(Lcom/google/firebase/Firebase;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v1, Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent;

    invoke-interface {v0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent;->getSharedSessionRepository()Lcom/google/firebase/sessions/SharedSessionRepository;

    move-result-object v0

    return-object v0
.end method
