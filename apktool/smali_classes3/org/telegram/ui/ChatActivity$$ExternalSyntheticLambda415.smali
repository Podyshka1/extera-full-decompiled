.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda415;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda415;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda415;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$dIu17jjRo6MM4lFnlgVzuHdlE7M(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
