.class Lorg/telegram/ui/Stories/StoryViewer$6;
.super Lorg/telegram/ui/Stories/HwTextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/StoryViewer;->open(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/tl/TL_stories$PeerStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoryViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoryViewer;Landroid/content/Context;)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryViewer$6;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/HwTextureView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 1731
    invoke-super {p0}, Lorg/telegram/ui/Stories/HwTextureView;->invalidate()V

    .line 1732
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryViewer$6;->this$0:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->currentPlayerScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz v0, :cond_0

    .line 1733
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->invalidate()V

    :cond_0
    return-void
.end method
