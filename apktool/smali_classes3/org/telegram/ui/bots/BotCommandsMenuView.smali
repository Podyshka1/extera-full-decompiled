.class public Lorg/telegram/ui/bots/BotCommandsMenuView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;,
        Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;
    }
.end annotation


# instance fields
.field final backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field drawBackgroundDrawable:Z

.field expandProgress:F

.field public expanded:Z

.field isOpened:Z

.field public isWebView:Z

.field isWebViewOpened:Z

.field lastSize:I

.field private menuText:Ljava/lang/String;

.field menuTextLayout:Landroid/text/StaticLayout;

.field private menuTextWidth:F

.field final paint:Landroid/graphics/Paint;

.field final rectTmp:Landroid/graphics/RectF;

.field final textPaint:Landroid/text/TextPaint;

.field webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 84
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    .line 48
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    .line 49
    new-instance v1, Lorg/telegram/ui/bots/BotCommandsMenuView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/bots/BotCommandsMenuView$1;-><init>(Lorg/telegram/ui/bots/BotCommandsMenuView;)V

    iput-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 56
    new-instance v2, Lorg/telegram/ui/bots/BotCommandsMenuView$2;

    sget v4, Lorg/telegram/messenger/R$raw;->bot_webview_sheet_to_cross:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$raw;->bot_webview_sheet_to_cross:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/bots/BotCommandsMenuView$2;-><init>(Lorg/telegram/ui/bots/BotCommandsMenuView;ILjava/lang/String;II)V

    iput-object v2, v3, Lorg/telegram/ui/bots/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 72
    sget v2, Lorg/telegram/messenger/R$string;->BotsMenuTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuText:Ljava/lang/String;

    .line 81
    iput-boolean v0, v3, Lorg/telegram/ui/bots/BotCommandsMenuView;->drawBackgroundDrawable:Z

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/bots/BotCommandsMenuView;->updateColors()V

    .line 86
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setMiniIcon(Z)V

    const/4 v0, 0x0

    .line 87
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotateToBack(Z)V

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    const/high16 p1, 0x41800000    # 16.0f

    .line 92
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v3, Lorg/telegram/ui/bots/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 94
    const-string p1, "AccDescrBotMenu"

    sget v0, Lorg/telegram/messenger/R$string;->AccDescrBotMenu:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateColors()V
    .locals 4

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceDuration:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    .line 122
    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    .line 123
    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    .line 124
    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v1, :cond_0

    .line 125
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_9

    .line 157
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expanded:Z

    const/4 v1, 0x1

    const v2, 0x3dda740e

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v5, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_1

    add-float/2addr v5, v2

    .line 158
    iput v5, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    cmpl-float v0, v5, v6

    if-lez v0, :cond_0

    .line 160
    iput v6, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 165
    iget v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_3

    sub-float/2addr v0, v2

    .line 166
    iput v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    .line 168
    iput v4, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 175
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    if-eqz v1, :cond_4

    cmpl-float v2, v0, v4

    if-lez v2, :cond_4

    .line 177
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->drawBackgroundDrawable:Z

    const/high16 v5, 0x40800000    # 4.0f

    if-eqz v2, :cond_5

    .line 181
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextWidth:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v4, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 182
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->rectTmp:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v6, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, v6, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isWebView:Z

    if-eqz v2, :cond_6

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41180000    # 9.5f

    .line 189
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 191
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v2, v3, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 192
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 195
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 199
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x41000000    # 8.0f

    .line 200
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_1
    cmpl-float v2, v0, v4

    if-lez v2, :cond_8

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x42080000    # 34.0f

    .line 207
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    iget-object v2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    if-eqz v1, :cond_9

    .line 213
    iget v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextWidth:F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/bots/BotCommandsMenuView;->onTranslationChanged(F)V

    .line 216
    :cond_9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 368
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isOpened:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 374
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 135
    iget p2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->lastSize:I

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    if-nez p2, :cond_2

    .line 136
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object p2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iput p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->lastSize:I

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuText:Ljava/lang/String;

    iget-object p2, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 140
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p2

    float-to-int v5, p1

    .line 141
    iget-object v4, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->textPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v11, v5

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    .line 142
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextWidth:F

    .line 144
    :cond_2
    iget p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextWidth:F

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/bots/BotCommandsMenuView;->onTranslationChanged(F)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 145
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 146
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expanded:Z

    if-eqz v0, :cond_3

    .line 147
    iget v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextWidth:F

    float-to-int v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr v0, p2

    add-int/2addr p1, v0

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 150
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onTranslationChanged(F)V
    .locals 0

    return-void
.end method

.method public setDrawBackgroundDrawable(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->drawBackgroundDrawable:Z

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    .line 235
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expanded:Z

    if-eq v0, p1, :cond_2

    .line 236
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expanded:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 238
    :goto_0
    iput p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->expandProgress:F

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setMenuText(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 225
    sget p1, Lorg/telegram/messenger/R$string;->BotsMenuTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuText:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 228
    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->menuTextLayout:Landroid/text/StaticLayout;

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return v0
.end method

.method public setOpened(Z)V
    .locals 2

    .line 306
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isOpened:Z

    if-eq v0, p1, :cond_0

    .line 307
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isOpened:Z

    .line 309
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isWebView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 310
    iget-boolean v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isWebViewOpened:Z

    if-eq v0, p1, :cond_2

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->webViewAnimation:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 312
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 313
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    if-eqz p1, :cond_1

    .line 314
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 315
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 316
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isWebViewOpened:Z

    :cond_2
    return-void

    .line 319
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    return-void
.end method

.method public setWebView(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->isWebView:Z

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 363
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
