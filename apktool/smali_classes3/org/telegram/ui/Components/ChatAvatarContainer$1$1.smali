.class Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;
.super Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAvatarContainer$1;


# direct methods
.method public static synthetic $r8$lambda$E2s2UmrNRv50CyunegdIgyBNRCI(Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->lambda$openStory$0(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer$1;Z)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->this$1:Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;-><init>(Z)V

    return-void
.end method

.method private synthetic lambda$openStory$0(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z
    .locals 0

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->this$1:Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    iget-object p2, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 190
    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 191
    iget-boolean p2, p2, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    iput-boolean p2, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->isLive:Z

    .line 192
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAvatarContainer;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    const/4 p1, 0x0

    .line 194
    iput p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 195
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iput p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->this$1:Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p6, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public openStory(JLjava/lang/Runnable;)V
    .locals 2

    .line 188
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->this$1:Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAvatarContainer$1;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;->this$1:Lorg/telegram/ui/Components/ChatAvatarContainer$1;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAvatarContainer$1$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAvatarContainer$1$1;)V

    invoke-virtual {p3, v0, p1, p2, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;JLorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void
.end method
