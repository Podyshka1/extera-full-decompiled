.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;
.super Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;->setData(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2191
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;-><init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected getCacheType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected updateColors(F)V
    .locals 3

    .line 2194
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView$1;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ReactionFilterView;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$SearchFilterView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    .line 2195
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTagDotColor:I

    const v1, 0x5affffff

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTagDotColor:I

    return-void
.end method
