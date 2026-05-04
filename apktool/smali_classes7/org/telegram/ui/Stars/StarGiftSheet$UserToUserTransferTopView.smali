.class public Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserToUserTransferTopView"
.end annotation


# instance fields
.field private final arrowPaint:Landroid/graphics/Paint;

.field private final arrowPath:Landroid/graphics/Path;

.field private final fromUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final toUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 7170
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7166
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->arrowPath:Landroid/graphics/Path;

    .line 7167
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->arrowPaint:Landroid/graphics/Paint;

    .line 7172
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 7173
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 7174
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->fromUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v3, 0x41f00000    # 30.0f

    .line 7175
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 7176
    invoke-virtual {v2, p2, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 7178
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 7179
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 7180
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->toUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 7181
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 7182
    invoke-virtual {v1, p3, p2}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 7184
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7185
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7186
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 7187
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 7188
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7190
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    const/high16 p2, 0x41000000    # 8.0f

    .line 7191
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    const p3, 0x40c54fdf    # 6.166f

    .line 7192
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7193
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 7222
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 7223
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->fromUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 7224
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->toUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 7229
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 7230
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->fromUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 7231
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->toUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v0, 0x431c0000    # 156.0f

    .line 7206
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 7207
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    .line 7208
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->fromUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v3, v1

    int-to-float v0, v0

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v0, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 7209
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->fromUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 7211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7212
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v5, 0x40c54fdf    # 6.166f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7213
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->arrowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->arrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7216
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->toUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 7217
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$UserToUserTransferTopView;->toUserImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 7199
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    .line 7200
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 7198
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
