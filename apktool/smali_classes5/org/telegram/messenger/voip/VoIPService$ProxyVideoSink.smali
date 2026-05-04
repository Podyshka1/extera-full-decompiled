.class public Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/voip/VoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyVideoSink"
.end annotation


# instance fields
.field private background:Lorg/webrtc/VideoSink;

.field private nativeInstance:J

.field private target:Lorg/webrtc/VideoSink;


# direct methods
.method static bridge synthetic -$$Nest$fgetnativeInstance(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->nativeInstance:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettarget(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)Lorg/webrtc/VideoSink;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputnativeInstance(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->nativeInstance:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 1

    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    .line 693
    invoke-interface {v0, p1}, Lorg/webrtc/VideoSink;->onFrame(Lorg/webrtc/VideoFrame;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 695
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_1

    .line 696
    invoke-interface {v0, p1}, Lorg/webrtc/VideoSink;->onFrame(Lorg/webrtc/VideoFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeBackground(Lorg/webrtc/VideoSink;)V
    .locals 1

    monitor-enter p0

    .line 729
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 730
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 732
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeTarget(Lorg/webrtc/VideoSink;)V
    .locals 1

    monitor-enter p0

    .line 723
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 724
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 726
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setBackground(Lorg/webrtc/VideoSink;)V
    .locals 2

    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 714
    invoke-interface {v0, v1}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 716
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz p1, :cond_1

    .line 718
    invoke-interface {p1, p0}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic setParentSink(Lorg/webrtc/VideoSink;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/webrtc/VideoSink$-CC;->$default$setParentSink(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public declared-synchronized setTarget(Lorg/webrtc/VideoSink;)V
    .locals 2

    monitor-enter p0

    .line 701
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 703
    invoke-interface {v0, v1}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 705
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eqz p1, :cond_1

    .line 707
    invoke-interface {p1, p0}, Lorg/webrtc/VideoSink;->setParentSink(Lorg/webrtc/VideoSink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized swap()V
    .locals 1

    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;

    if-eqz v0, :cond_0

    .line 736
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->target:Lorg/webrtc/VideoSink;

    const/4 v0, 0x0

    .line 737
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->background:Lorg/webrtc/VideoSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 739
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
