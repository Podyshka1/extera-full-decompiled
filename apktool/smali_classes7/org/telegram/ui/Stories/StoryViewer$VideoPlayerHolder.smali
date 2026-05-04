.class public Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;
.super Lorg/telegram/messenger/video/VideoPlayerHolderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoryViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoPlayerHolder"
.end annotation


# instance fields
.field logBuffering:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method public static synthetic $r8$lambda$9jdGF2ToQ723DQQAyIOPWnwhwgg(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$onStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lD12POQRC8v5mxNs1MX06MUvyRw(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->lambda$onStateChanged$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/SurfaceView;Landroid/view/TextureView;)V
    .locals 0

    .line 3149
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;-><init>()V

    .line 3150
    iget-boolean p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->USE_SURFACE_VIEW:Z

    if-eqz p1, :cond_0

    .line 3151
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->with(Landroid/view/SurfaceView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    return-void

    .line 3153
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->with(Landroid/view/TextureView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    return-void
.end method

.method private synthetic lambda$onStateChanged$0()V
    .locals 4

    .line 3181
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3182
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_0

    .line 3183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story buffering dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStateChanged$1()V
    .locals 4

    .line 3190
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3191
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_0

    .line 3192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoryViewer displayed story playing dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getCurrentPeer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " storyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public needRepeat()Z
    .locals 1

    .line 3160
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetisCaptionPartVisible(Lorg/telegram/ui/Stories/StoryViewer;)Z

    move-result v0

    return v0
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 3165
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3168
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    iput-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    .line 3169
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    .line 3170
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->paused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoryViewer;->-$$Nest$fgetsurfaceView(Lorg/telegram/ui/Stories/StoryViewer;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3171
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->prepareStub()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 2

    const/4 p1, 0x2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-ne p2, p1, :cond_2

    .line 3178
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-eqz v1, :cond_1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    .line 3179
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->logBuffering:Z

    .line 3180
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3187
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->logBuffering:Z

    if-eqz p1, :cond_2

    if-ne p2, v0, :cond_2

    const/4 p1, 0x0

    .line 3188
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;->logBuffering:Z

    .line 3189
    new-instance p1, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
