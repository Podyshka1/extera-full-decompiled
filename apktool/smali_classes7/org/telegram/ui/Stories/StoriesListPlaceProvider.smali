.class public Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;,
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;,
        Lorg/telegram/ui/Stories/StoriesListPlaceProvider$AvatarOverlaysView;
    }
.end annotation


# instance fields
.field public addBottomClip:I

.field clipPoint:[I

.field public hasPaginationParams:Z

.field public hiddedStories:Z

.field private isHiddenArchive:Z

.field loadNextInterface:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;

.field public onlySelfStories:Z

.field public onlyUnreadStories:Z

.field private final profileChannelCell:Lorg/telegram/ui/Cells/ProfileChannelCell;

.field private final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public static synthetic $r8$lambda$DVGIpiWkCMGnkOFEE2Al1jnXguk(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[ILandroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V
    .locals 7

    .line 202
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 203
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 204
    iget-boolean p6, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    if-eqz p6, :cond_0

    .line 205
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawAuthor(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawPrivacy(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    :goto_0
    if-eqz p1, :cond_1

    .line 209
    iget-boolean p0, p1, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->isVisible:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    .line 210
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p0

    int-to-float v3, p0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p0

    int-to-float v4, p0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p5, p0

    float-to-int v5, p5

    const/16 v6, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 p0, 0x0

    .line 211
    aget p0, p2, p0

    int-to-float p0, p0

    const/4 p3, 0x1

    aget p2, p2, p3

    int-to-float p2, p2

    invoke-virtual {v0, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$dVvQM61LLLmGehYO5ae62iOJhMA(Landroid/graphics/Path;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZ)V
    .locals 3

    if-eqz p4, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->rewind()V

    float-to-double p3, p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 133
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    double-to-float p3, p3

    .line 134
    iget p4, p2, Landroid/graphics/RectF;->right:F

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p4, v1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr p4, v2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    const/high16 p3, 0x41300000    # 11.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p4, p2, p3, v0}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 135
    sget-object p2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Cells/ProfileChannelCell;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->profileChannelCell:Lorg/telegram/ui/Cells/ProfileChannelCell;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    .line 67
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 68
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->profileChannelCell:Lorg/telegram/ui/Cells/ProfileChannelCell;

    return-void
.end method

.method public static of(Lorg/telegram/ui/Cells/ProfileChannelCell;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    .line 58
    new-instance v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;-><init>(Lorg/telegram/ui/Cells/ProfileChannelCell;)V

    return-object v0
.end method

.method public static of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lorg/telegram/ui/Components/RecyclerListView;Z)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    .line 54
    new-instance v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    return-object v0
.end method

.method private updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V
    .locals 2

    .line 300
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    instance-of v1, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;

    if-eqz v1, :cond_1

    .line 304
    check-cast v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$ClippedView;->updateClip([I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->clipPoint:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    const/4 v1, 0x1

    .line 306
    aget v0, v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->addBottomClip:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    return-void

    .line 307
    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    if-eqz v1, :cond_2

    .line 308
    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/Components/BlurredRecyclerView;

    iget v1, v1, Lorg/telegram/ui/Components/BlurredRecyclerView;->blurTopPadding:I

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->addBottomClip:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    return-void

    .line 311
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 312
    iget-object v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->addBottomClip:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    return-void
.end method


# virtual methods
.method public addBottomClip(I)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 1

    .line 44
    iget v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->addBottomClip:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->addBottomClip:I

    return-object p0
.end method

.method public findView(JIIILorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x0

    .line 95
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 96
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 97
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 98
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 101
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v6, :cond_0

    .line 102
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/DialogStoriesCell;

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 104
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v6, :cond_1

    .line 105
    invoke-virtual {v6}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v8

    if-nez v8, :cond_1

    .line 106
    iget-object v7, v6, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    .line 108
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->profileChannelCell:Lorg/telegram/ui/Cells/ProfileChannelCell;

    if-eqz v6, :cond_2

    move-object v7, v6

    :cond_2
    const/4 v6, 0x0

    if-nez v7, :cond_3

    return v6

    :cond_3
    move v8, v6

    .line 113
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_1c

    .line 114
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 116
    instance-of v10, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    if-eqz v10, :cond_5

    .line 117
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 119
    iget-wide v13, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v13, v13, p1

    if-nez v13, :cond_1b

    .line 120
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 121
    iget-object v1, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 122
    iget-object v1, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 123
    iget-object v1, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->radialProgressUpload:Lorg/telegram/ui/Components/RadialProgress;

    .line 124
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 125
    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    const/4 v2, 0x0

    .line 126
    iput v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipBottom:F

    iput v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipTop:F

    .line 127
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 128
    iget-boolean v2, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFail:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 130
    new-instance v2, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    iput-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    goto :goto_2

    .line 138
    :cond_4
    iput-object v5, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawClip:Lorg/telegram/ui/Stories/StoryViewer$HolderClip;

    :goto_2
    return v12

    .line 143
    :cond_5
    instance-of v10, v9, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v10, :cond_9

    .line 144
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/DialogCell;

    .line 145
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v13

    cmp-long v13, v13, p1

    if-nez v13, :cond_6

    iget-boolean v13, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v13, :cond_7

    :cond_6
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v13, :cond_1b

    invoke-virtual {v10}, Lorg/telegram/ui/Cells/DialogCell;->isDialogFolder()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 146
    :cond_7
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 147
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 148
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 149
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 150
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz v1, :cond_8

    .line 151
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->crossfadeToAvatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 152
    iget-object v1, v10, Lorg/telegram/ui/Cells/DialogCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawnLive:Z

    iput-boolean v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->isLive:Z

    .line 154
    :cond_8
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 155
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 158
    :cond_9
    instance-of v10, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v13, 0x2

    if-eqz v10, :cond_c

    .line 159
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 160
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v14, v1, :cond_1b

    .line 161
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    if-eq v3, v12, :cond_b

    if-ne v3, v13, :cond_a

    goto :goto_3

    .line 165
    :cond_a
    iget-object v1, v10, Lorg/telegram/ui/Cells/ChatMessageCell;->replyImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_4

    .line 163
    :cond_b
    :goto_3
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 167
    :goto_4
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 168
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 169
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 172
    :cond_c
    instance-of v10, v9, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v10, :cond_e

    .line 173
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 174
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    if-ne v13, v1, :cond_1b

    .line 175
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 176
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 177
    iget-boolean v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->noforwards:Z

    if-eqz v1, :cond_d

    .line 178
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_5

    .line 180
    :cond_d
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/ChatActionCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 182
    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 183
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 184
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 187
    :cond_e
    instance-of v10, v9, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v10, :cond_12

    iget-object v10, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v10, :cond_12

    .line 188
    move-object v10, v9

    check-cast v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 189
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v14

    .line 191
    invoke-virtual {v10}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getStyle()I

    move-result v15

    if-ne v15, v12, :cond_f

    iget v15, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->storyId:I

    if-eq v15, v2, :cond_10

    :cond_f
    if-eqz v14, :cond_1b

    .line 192
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    if-ne v15, v2, :cond_1b

    iget-object v14, v14, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v14, v14, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v14, v14, p1

    if-nez v14, :cond_1b

    .line 194
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    .line 195
    new-array v2, v13, [I

    if-eqz v1, :cond_11

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 199
    :cond_11
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 200
    iget-object v3, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object v3, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 201
    new-instance v3, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, v10, v1, v2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/ui/Components/RecyclerListView$FastScroll;[I)V

    iput-object v3, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->drawAbove:Lorg/telegram/ui/Stories/StoryViewer$HolderDrawAbove;

    .line 216
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 217
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 218
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 221
    :cond_12
    instance-of v10, v9, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v10, :cond_13

    .line 222
    check-cast v9, Lorg/telegram/ui/Cells/UserCell;

    .line 223
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/UserCell;->getDialogId()J

    move-result-wide v13

    cmp-long v10, v13, p1

    if-nez v10, :cond_1b

    .line 224
    iget-object v1, v9, Lorg/telegram/ui/Cells/UserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 225
    iget-object v2, v9, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 226
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 227
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 228
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 229
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 232
    :cond_13
    instance-of v10, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    if-eqz v10, :cond_18

    .line 233
    check-cast v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    .line 234
    iget-wide v13, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->dialogId:J

    cmp-long v10, v13, p1

    if-nez v10, :cond_1b

    .line 235
    iget-object v10, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->storyPreviewView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    if-eqz v10, :cond_14

    iget-object v10, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->storyPreviewView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_14

    move v10, v12

    goto :goto_6

    :cond_14
    move v10, v6

    .line 236
    :goto_6
    iget v13, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->storyId:I

    if-ne v13, v2, :cond_16

    if-eqz v10, :cond_16

    .line 237
    iget-object v1, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->storyPreviewView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 238
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 239
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 240
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->getAlphaInternal()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_15

    .line 242
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    .line 243
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    :cond_15
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    :cond_16
    if-nez v10, :cond_1b

    .line 248
    iget-object v1, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 249
    iget-object v2, v9, Lorg/telegram/ui/Cells/ReactedUserHolderView;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v2, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 250
    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 251
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 252
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->getAlphaInternal()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_17

    .line 254
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->bgPaint:Landroid/graphics/Paint;

    .line 255
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    :cond_17
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 261
    :cond_18
    instance-of v10, v9, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v10, :cond_19

    .line 262
    check-cast v9, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 263
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v13

    cmp-long v10, v13, p1

    if-nez v10, :cond_1b

    .line 264
    iput-object v9, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 265
    iget-object v1, v9, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarStoryParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 266
    iget-object v1, v9, Lorg/telegram/ui/Cells/ProfileSearchCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 267
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 268
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 269
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 272
    :cond_19
    instance-of v10, v9, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    if-eqz v10, :cond_1a

    .line 273
    check-cast v9, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    .line 274
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->getPostInfo()Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->getId()I

    move-result v10

    if-ne v10, v2, :cond_1b

    .line 275
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 276
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->getStoryAvatarParams()Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 277
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->storyImage:Lorg/telegram/messenger/ImageReceiver;

    .line 278
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 279
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 280
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    .line 283
    :cond_1a
    instance-of v10, v9, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v10, :cond_1b

    .line 284
    check-cast v9, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 285
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getStoryItem()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v10

    if-eqz v10, :cond_1b

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getStoryItem()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v10

    iget-wide v13, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    cmp-long v10, v13, p1

    if-nez v10, :cond_1b

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getStoryItem()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v10

    iget v10, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    if-ne v10, v1, :cond_1b

    .line 286
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->view:Landroid/view/View;

    .line 287
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getStoryAvatarParams()Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->params:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    .line 288
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 289
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->clipParent:Landroid/view/View;

    .line 290
    iput v11, v4, Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;->alpha:F

    .line 291
    invoke-direct {v0, v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->updateClip(Lorg/telegram/ui/Stories/StoryViewer$TransitionViewHolder;)V

    return v12

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_1c
    return v6
.end method

.method public loadNext(Z)V
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->loadNextInterface:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;->loadNext(Z)V

    :cond_0
    return-void
.end method

.method public preLayout(JILjava/lang/Runnable;)V
    .locals 0

    .line 79
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz p3, :cond_1

    .line 80
    iget-object p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Stories/DialogStoriesCell;

    .line 81
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->scrollTo(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout(Ljava/lang/Runnable;)V

    return-void

    .line 84
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void

    .line 87
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->isHiddenArchive:Z

    if-eqz p1, :cond_2

    .line 88
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->sortHiddenStories()V

    .line 90
    :cond_2
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setPaginationParaments(ZZZ)Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;
    .locals 0

    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hiddedStories:Z

    .line 325
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlyUnreadStories:Z

    .line 326
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->onlySelfStories:Z

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->hasPaginationParams:Z

    return-object p0
.end method

.method public with(Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->loadNextInterface:Lorg/telegram/ui/Stories/StoriesListPlaceProvider$LoadNextInterface;

    return-object p0
.end method
