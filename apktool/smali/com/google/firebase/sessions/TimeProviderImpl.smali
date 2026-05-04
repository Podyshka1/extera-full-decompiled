.class public final Lcom/google/firebase/sessions/TimeProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/TimeProvider;


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/TimeProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/TimeProviderImpl;

    invoke-direct {v0}, Lcom/google/firebase/sessions/TimeProviderImpl;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/TimeProviderImpl;->INSTANCE:Lcom/google/firebase/sessions/TimeProviderImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTime()Lcom/google/firebase/sessions/Time;
    .locals 3

    .line 57
    new-instance v0, Lcom/google/firebase/sessions/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/sessions/Time;-><init>(J)V

    return-object v0
.end method
