.class Lorg/telegram/ui/Components/StarRatingView$Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StarRatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Colors"
.end annotation


# instance fields
.field public backgroundColor:I

.field public fillingColor:I

.field private parentExpanded:F

.field public peerColor:Lorg/telegram/messenger/MessagesController$PeerColor;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method static bridge synthetic -$$Nest$fputresourcesProvider(Lorg/telegram/ui/Components/StarRatingView$Colors;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 144
    iput v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/StarRatingView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/StarRatingView$Colors;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .line 165
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    .line 166
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    .line 168
    iget v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    const/high16 v1, 0x24000000

    iget v2, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->parentExpanded:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    .line 169
    iget v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    const/4 v1, -0x1

    iget v2, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->parentExpanded:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    return-void
.end method

.method public setParentExpanded(F)V
    .locals 0

    .line 173
    iput p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->parentExpanded:F

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->peerColor:Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/StarRatingView$Colors;->update(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    return-void
.end method

.method public update(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 3

    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->peerColor:Lorg/telegram/messenger/MessagesController$PeerColor;

    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lorg/telegram/ui/Components/StarRatingView$Colors;->reset()V

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor1(Z)I

    move-result v0

    .line 156
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getBgColor2(Z)I

    move-result p1

    .line 157
    iget-object v1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/Components/StarRatingView;->getTabsViewBackgroundColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    .line 158
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v0, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v0

    const/4 v0, -0x1

    if-lez p1, :cond_1

    const/high16 p1, -0x1000000

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    .line 160
    iget p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    const/high16 v1, 0x24000000

    iget v2, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->parentExpanded:F

    invoke-static {p1, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->backgroundColor:I

    .line 161
    iget p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    iget v1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->parentExpanded:F

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StarRatingView$Colors;->fillingColor:I

    return-void
.end method
