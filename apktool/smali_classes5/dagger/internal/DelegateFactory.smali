.class public final Ldagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field private delegate:Ldagger/internal/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0

    .line 64
    check-cast p0, Ldagger/internal/DelegateFactory;

    .line 65
    invoke-static {p0, p1}, Ldagger/internal/DelegateFactory;->setDelegateInternal(Ldagger/internal/DelegateFactory;Ldagger/internal/Provider;)V

    return-void
.end method

.method private static setDelegateInternal(Ldagger/internal/DelegateFactory;Ldagger/internal/Provider;)V
    .locals 1

    .line 81
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ldagger/internal/Provider;

    if-nez v0, :cond_0

    .line 85
    iput-object p1, p0, Ldagger/internal/DelegateFactory;->delegate:Ldagger/internal/Provider;

    return-void

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ldagger/internal/Provider;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
