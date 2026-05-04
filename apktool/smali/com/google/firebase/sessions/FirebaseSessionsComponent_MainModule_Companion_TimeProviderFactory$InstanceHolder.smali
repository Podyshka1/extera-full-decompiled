.class abstract Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;

    invoke-direct {v0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory$InstanceHolder;->INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory$InstanceHolder;->INSTANCE:Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_TimeProviderFactory;

    return-object v0
.end method
