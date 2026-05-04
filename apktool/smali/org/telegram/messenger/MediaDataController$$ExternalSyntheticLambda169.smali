.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda169;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda169;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda169;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda169;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda169;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$lU7a55H8t7sfZrkFlEvyiY9ATDc(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V

    return-void
.end method
