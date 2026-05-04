.class public Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReactionFilterView"
.end annotation


# instance fields
.field private attached:Z

.field private reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 0

    .line 2179
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 2180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p1, 0x0

    .line 2181
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 2183
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 2227
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2228
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    if-nez v0, :cond_1

    .line 2229
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 2230
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_0
    const/4 v0, 0x1

    .line 2232
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2238
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2239
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    :cond_0
    const/4 v0, 0x0

    .line 2243
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 2219
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 2220
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move v2, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZZF)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/high16 p1, 0x42440000    # 49.0f

    .line 2214
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 10

    .line 2187
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;-><init>()V

    const/4 v9, 0x1

    .line 2188
    iput v9, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    .line 2189
    iget-object p1, p1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object p1

    iput-object p1, v5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 2191
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    .line 2203
    iput-boolean v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isTag:Z

    const p1, 0x423151ec    # 44.33f

    .line 2204
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 2205
    iget-object p1, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    .line 2206
    iget-object p1, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iput-boolean v9, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    .line 2207
    iget-boolean v0, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->attached:Z

    if-eqz v0, :cond_0

    .line 2208
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_0
    return-void
.end method
