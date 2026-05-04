.class public Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordCircle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;
    }
.end annotation


# instance fields
.field private amplitude:F

.field private animateAmplitudeDiff:F

.field private animateToAmplitude:F

.field bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private circleRadius:F

.field private circleRadiusAmplitude:F

.field public drawingCircleRadius:F

.field public drawingCx:F

.field public drawingCy:F

.field public iconScale:F

.field incIdle:Z

.field private lastMovingX:F

.field private lastMovingY:F

.field private lastUpdateTime:J

.field private paintAlpha:I

.field public progressToSeekbarStep3:F

.field private progressToSendButton:F

.field rectF:Landroid/graphics/RectF;

.field private showWaves:Z

.field public skipDraw:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

.field private touchSlop:F

.field private virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

.field public voiceEnterTransitionInProgress:Z

.field private wavesEnterAnimation:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 3

    .line 1985
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 1986
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1959
    new-instance p1, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v0, 0xb

    const v1, 0x581e0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    .line 1960
    new-instance p1, Lorg/telegram/ui/Components/BlobDrawable;

    const/16 v0, 0xc

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/BlobDrawable;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 p1, 0x42240000    # 41.0f

    .line 1962
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadius:F

    const/high16 p1, 0x41f00000    # 30.0f

    .line 1963
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadiusAmplitude:F

    .line 1964
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 1976
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    const/4 p1, 0x1

    .line 1977
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    .line 1988
    new-instance p1, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    invoke-direct {p1, p0, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    .line 1989
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1991
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v0, 0x423c0000    # 47.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v1, 0x425c0000    # 55.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1993
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    .line 1995
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 1996
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 1997
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlobDrawable;->generateBlob()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1998
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->iconScale:F

    .line 2000
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 2001
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p1

    .line 2002
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    .line 2004
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->updateColors()V

    return-void
.end method

.method private checkDrawables()V
    .locals 5

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2011
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_mic_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)V

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoicePressed:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2014
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_video_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcameraDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)V

    .line 2015
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->attach_send:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)V

    .line 2018
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2020
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_mic:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputmicOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)V

    .line 2021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_glass_defaultIcon:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->input_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcameraOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/graphics/drawable/Drawable;)V

    .line 2024
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraOutline(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V
    .locals 3

    .line 2436
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->checkDrawables()V

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    cmpl-float v0, p4, v1

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2452
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2453
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p4, p4, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p5, p5

    mul-float v0, p5, p4

    float-to-int v0, v0

    .line 2454
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2455
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sub-float/2addr v1, p4

    .line 2459
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v1, v1, p4, p2}, Landroid/graphics/Canvas;->scale(FFFF)V

    mul-float/2addr p5, v1

    float-to-int p2, p5

    .line 2460
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2461
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 2438
    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p3

    cmpl-float p3, p3, v1

    if-nez p3, :cond_2

    .line 2439
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoSendButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    .line 2440
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x8

    .line 2441
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2444
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p3

    cmpg-float p3, p3, v1

    if-gez p3, :cond_3

    const/16 p3, 0xff

    .line 2445
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2446
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 2447
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 2448
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2449
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public canceledByGesture()V
    .locals 2

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2468
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->virtualViewHelper:Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle$VirtualViewHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public drawIcon(Landroid/graphics/Canvas;IIF)V
    .locals 8

    .line 2417
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->checkDrawables()V

    .line 2418
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2419
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 2420
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 2422
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2423
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v2, :cond_2

    .line 2425
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    :goto_2
    move-object v3, v2

    move-object v2, v1

    goto :goto_4

    .line 2428
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2429
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, p2, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, p3, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v7, p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 2431
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2432
    iget v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p4

    float-to-int v5, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method public drawWaves(Landroid/graphics/Canvas;FFF)V
    .locals 6

    .line 2509
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2510
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    div-float/2addr v1, v2

    .line 2511
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2512
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    sget v3, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v4, v4, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v5, 0x3fb33333    # 1.4f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, p4

    .line 2513
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2514
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v3, v2, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, p3, p1, v3}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2515
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2516
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr v2, v0

    sget v0, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v1, v1, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, p4

    .line 2517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2518
    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2519
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, p4, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, p1, v0}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getControlsScale()F
    .locals 1

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    return v0
.end method

.method public getTransformToSeekbarProgressStep3()F
    .locals 1

    .line 2477
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 2408
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 2409
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isSendButtonVisible()Z
    .locals 1

    .line 2060
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2165
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->skipDraw:Z

    if-eqz v2, :cond_0

    return-void

    .line 2172
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp2(F)I

    move-result v3

    sub-int v6, v2, v3

    const/high16 v2, 0x432a0000    # 170.0f

    .line 2173
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v7, 0x0

    add-float/2addr v2, v7

    float-to-int v2, v2

    .line 2182
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v3

    add-int/2addr v3, v6

    int-to-float v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCx:F

    int-to-float v8, v2

    .line 2183
    iput v8, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCy:F

    .line 2187
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v4

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v9, 0x3f800000    # 1.0f

    if-gtz v3, :cond_1

    .line 2188
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    div-float/2addr v3, v4

    goto :goto_0

    .line 2189
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const/high16 v10, 0x3f400000    # 0.75f

    cmpg-float v3, v3, v10

    const v11, 0x3dcccccd    # 0.1f

    if-gtz v3, :cond_2

    .line 2190
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    mul-float/2addr v3, v11

    sub-float v3, v9, v3

    goto :goto_0

    .line 2192
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    sub-float/2addr v3, v10

    div-float/2addr v3, v5

    mul-float/2addr v3, v11

    const v4, 0x3f666666    # 0.9f

    add-float/2addr v3, v4

    .line 2194
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    sub-long/2addr v10, v12

    .line 2195
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v13, v4, v12

    if-eqz v13, :cond_5

    .line 2196
    iget v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    long-to-float v14, v10

    mul-float/2addr v14, v13

    add-float/2addr v12, v14

    iput v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v13, v13, v7

    if-lez v13, :cond_3

    cmpl-float v12, v12, v4

    if-lez v12, :cond_4

    .line 2199
    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    goto :goto_1

    :cond_3
    cmpg-float v12, v12, v4

    if-gez v12, :cond_4

    .line 2203
    iput v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 2206
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 2210
    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    const v12, 0x3e99999a    # 0.3f

    const v13, 0x3f333333    # 0.7f

    if-eqz v4, :cond_6

    .line 2211
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v14

    sub-float v14, v9, v14

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v13

    goto :goto_2

    .line 2213
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    mul-float/2addr v4, v12

    add-float/2addr v4, v13

    .line 2215
    :goto_2
    iget v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadius:F

    iget v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->circleRadiusAmplitude:F

    move/from16 v16, v5

    iget v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    mul-float/2addr v14, v3

    mul-float/2addr v14, v4

    .line 2217
    iput v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 2221
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v7

    const v15, 0x3ecccccd    # 0.4f

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v17, 0x41800000    # 16.0f

    iget-object v4, v3, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz v4, :cond_9

    .line 2226
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const v4, 0x3ec28f5c    # 0.38f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    move v3, v9

    :goto_3
    move/from16 v18, v4

    goto :goto_4

    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    div-float/2addr v3, v4

    goto :goto_3

    .line 2227
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const v19, 0x3f2147ae    # 0.63f

    cmpl-float v4, v4, v19

    if-lez v4, :cond_8

    move v4, v9

    :goto_5
    const v19, 0x581e0

    goto :goto_6

    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v4, v4, v18

    div-float v4, v4, v16

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_5

    .line 2228
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    sub-float v5, v5, v18

    sub-float v5, v5, v16

    const v16, 0x3ebd70a4    # 0.37f

    div-float v5, v5, v16

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 2230
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    .line 2231
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    move/from16 v16, v12

    .line 2232
    iget v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    .line 2234
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v14, v5

    const/high16 v5, 0x41000000    # 8.0f

    .line 2236
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v14, v5

    sub-float v12, v9, v4

    mul-float/2addr v14, v12

    add-float/2addr v14, v5

    move v5, v4

    move v12, v7

    :goto_7
    move v4, v9

    :goto_8
    move/from16 v17, v13

    goto/16 :goto_d

    :cond_9
    :goto_9
    move/from16 v16, v12

    const v19, 0x581e0

    goto :goto_a

    :cond_a
    const/high16 v17, 0x41800000    # 16.0f

    goto :goto_9

    .line 2238
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_e

    .line 2242
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    move v3, v9

    goto :goto_b

    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    div-float/2addr v3, v4

    .line 2243
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v12, v5, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageTransitionIsRunning:Z

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v5

    if-eqz v12, :cond_c

    goto :goto_c

    :cond_c
    sub-float/2addr v5, v4

    div-float/2addr v5, v15

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2245
    :goto_c
    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v12, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    .line 2246
    invoke-virtual {v12, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    .line 2248
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    add-float/2addr v14, v12

    sub-float v12, v9, v5

    mul-float/2addr v14, v12

    .line 2251
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    cmpl-float v12, v12, v4

    if-lez v12, :cond_d

    .line 2252
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v12

    sub-float/2addr v12, v4

    div-float/2addr v12, v15

    sub-float v4, v9, v12

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v12, v5

    move v5, v7

    goto :goto_8

    :cond_d
    move v12, v5

    move v5, v7

    goto :goto_7

    :cond_e
    move v3, v7

    move v5, v3

    move v12, v5

    goto :goto_7

    .line 2256
    :goto_d
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v13

    cmpl-float v13, v13, v17

    if-lez v13, :cond_f

    .line 2257
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v13

    sub-float v13, v13, v17

    div-float v13, v13, v16

    sub-float v13, v9, v13

    mul-float/2addr v4, v13

    .line 2260
    :cond_f
    iget v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    cmpl-float v13, v13, v7

    if-lez v13, :cond_10

    .line 2261
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v13

    move/from16 v16, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move/from16 v18, v7

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-virtual {v15, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v7

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move/from16 v20, v9

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_recordedVoiceBackground:I

    invoke-virtual {v15, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v9

    iget v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v7, v9, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e

    :cond_10
    move/from16 v18, v7

    move/from16 v20, v9

    move/from16 v16, v15

    .line 2263
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v7

    iget-object v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-virtual {v9, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 2268
    :goto_e
    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->checkDrawables()V

    .line 2269
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->isSendButtonVisible()Z

    move-result v7

    const/4 v13, 0x0

    if-eqz v7, :cond_15

    .line 2270
    iget v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    cmpl-float v15, v7, v20

    if-eqz v15, :cond_13

    long-to-float v13, v10

    const/high16 v15, 0x43160000    # 150.0f

    div-float/2addr v13, v15

    add-float/2addr v7, v13

    .line 2271
    iput v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    cmpl-float v7, v7, v20

    if-lez v7, :cond_11

    move/from16 v7, v20

    .line 2273
    iput v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    .line 2275
    :cond_11
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_f
    move-object v13, v7

    goto :goto_10

    :cond_12
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_f

    .line 2277
    :cond_13
    :goto_10
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2278
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    const/high16 v22, 0x41400000    # 12.0f

    sub-int v9, v6, v21

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v23, v2

    sub-int v2, v23, v21

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v24, v3

    add-int v3, v6, v21

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v25, v4

    add-int v4, v23, v21

    invoke-virtual {v15, v9, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v13, :cond_14

    .line 2280
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v6, v2

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v23, v3

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v9, v23, v9

    invoke-virtual {v13, v2, v3, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_14
    :goto_11
    move-object v2, v7

    move-object v3, v13

    goto :goto_14

    :cond_15
    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    const/high16 v22, 0x41400000    # 12.0f

    .line 2283
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcameraDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_12
    move-object v7, v2

    goto :goto_13

    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetmicDrawable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_12

    .line 2284
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v6, v3

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v23, v4

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    add-int/2addr v9, v6

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int v15, v23, v15

    invoke-virtual {v2, v3, v4, v9, v15}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_11

    .line 2286
    :goto_14
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendRect(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2288
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    const v7, 0x3c23d70a    # 0.01f

    const/4 v9, 0x0

    if-eqz v4, :cond_17

    .line 2289
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v13, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    add-float/2addr v13, v7

    iput v13, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v7

    if-lez v13, :cond_18

    .line 2291
    iput-boolean v9, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    .line 2292
    iput v7, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    goto :goto_15

    .line 2295
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v13, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    sub-float/2addr v13, v7

    iput v13, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    cmpg-float v7, v13, v18

    if-gez v7, :cond_18

    const/4 v7, 0x1

    .line 2297
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->incIdle:Z

    move/from16 v7, v18

    .line 2298
    iput v7, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->idleProgress:F

    .line 2302
    :cond_18
    :goto_15
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2303
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iput v13, v4, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 2304
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sget v15, Lorg/telegram/ui/Components/BlobDrawable;->FORM_SMALL_MAX:F

    mul-float/2addr v13, v15

    add-float/2addr v7, v13

    iput v7, v4, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 2306
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iput v13, v4, Lorg/telegram/ui/Components/BlobDrawable;->minRadius:F

    .line 2307
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    sget v15, Lorg/telegram/ui/Components/BlobDrawable;->FORM_BIG_MAX:F

    mul-float/2addr v13, v15

    add-float/2addr v7, v13

    iput v7, v4, Lorg/telegram/ui/Components/BlobDrawable;->maxRadius:F

    .line 2309
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v4, v10, v11}, Lorg/telegram/ui/Components/BlobDrawable;->updateAmplitude(J)V

    .line 2310
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v7, v4, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v13, 0x3f8147ae    # 1.01f

    invoke-virtual {v4, v7, v13}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 2311
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-virtual {v4, v10, v11}, Lorg/telegram/ui/Components/BlobDrawable;->updateAmplitude(J)V

    .line 2312
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v7, v4, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v10, 0x3f828f5c    # 1.02f

    invoke-virtual {v4, v7, v10}, Lorg/telegram/ui/Components/BlobDrawable;->update(FF)V

    .line 2317
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 2318
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v17

    if-lez v4, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    div-float v4, v4, v17

    .line 2320
    :goto_16
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v20

    if-eqz v7, :cond_1c

    cmpg-float v7, v12, v16

    if-gez v7, :cond_1c

    const/16 v18, 0x0

    cmpl-float v7, v4, v18

    if-lez v7, :cond_1c

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 2321
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    if-eqz v7, :cond_1b

    iget v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v10

    if-eqz v11, :cond_1b

    const v11, 0x3d23d70a    # 0.04f

    add-float/2addr v7, v11

    .line 2322
    iput v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_1b

    .line 2324
    iput v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 2327
    :cond_1b
    iget-boolean v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    if-nez v7, :cond_1c

    .line 2328
    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    .line 2329
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2330
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v10

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v11, v20, v24

    mul-float/2addr v10, v11

    mul-float/2addr v10, v4

    mul-float/2addr v10, v7

    sget v13, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_BIG_MIN:F

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v15, v15, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    const v16, 0x3fb33333    # 1.4f

    mul-float v15, v15, v16

    add-float/2addr v13, v15

    mul-float/2addr v10, v13

    .line 2331
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v13

    add-int/2addr v13, v6

    int-to-float v13, v13

    invoke-virtual {v1, v10, v10, v13, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2332
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v13

    add-int/2addr v13, v6

    int-to-float v13, v13

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v15, v15, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10, v13, v8, v1, v15}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2333
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2334
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v10

    mul-float/2addr v10, v11

    mul-float/2addr v10, v4

    mul-float/2addr v10, v7

    sget v4, Lorg/telegram/ui/Components/BlobDrawable;->SCALE_SMALL_MIN:F

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget v7, v7, Lorg/telegram/ui/Components/BlobDrawable;->amplitude:F

    mul-float v7, v7, v16

    add-float/2addr v4, v7

    mul-float/2addr v10, v4

    .line 2335
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2336
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v10, v10, v4, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2337
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v7

    add-int/2addr v7, v6

    int-to-float v7, v7

    iget-object v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v10, v10, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7, v8, v1, v10}, Lorg/telegram/ui/Components/BlobDrawable;->draw(FFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2338
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2342
    :cond_1c
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v20

    if-gez v4, :cond_1d

    const/high16 v4, 0x41980000    # 19.0f

    .line 2343
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 2346
    :cond_1d
    iget-boolean v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->voiceEnterTransitionInProgress:Z

    if-nez v4, :cond_22

    .line 2347
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v4

    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintAlpha:I

    int-to-float v10, v10

    mul-float v10, v10, v25

    float-to-int v10, v10

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2348
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v20

    if-nez v4, :cond_22

    .line 2349
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/16 v18, 0x0

    cmpl-float v4, v4, v18

    if-eqz v4, :cond_21

    .line 2350
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisInVideoMode(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-nez v4, :cond_20

    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    cmpl-float v4, v4, v18

    if-lez v4, :cond_20

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v10, v4, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    if-eqz v10, :cond_20

    add-float v10, v8, v14

    sub-float v11, v8, v14

    .line 2353
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v14

    .line 2354
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v13

    add-int/2addr v13, v6

    int-to-float v13, v13

    sub-float/2addr v13, v14

    .line 2359
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v15, v15, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    .line 2360
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move v7, v9

    move-object/from16 v2, v16

    const/high16 v16, 0x437f0000    # 255.0f

    .line 2361
    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v2, v3, :cond_1e

    int-to-float v3, v9

    .line 2362
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v9

    add-float/2addr v3, v9

    float-to-int v9, v3

    int-to-float v3, v7

    .line 2363
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v3, v7

    float-to-int v7, v3

    .line 2364
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_17

    .line 2367
    :cond_1e
    invoke-virtual {v15}, Landroid/view/View;->getY()F

    move-result v2

    int-to-float v3, v9

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v9

    sub-float/2addr v2, v9

    .line 2368
    invoke-virtual {v15}, Landroid/view/View;->getY()F

    move-result v9

    move/from16 v21, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    add-float v9, v9, v21

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v9, v3

    .line 2369
    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v3

    move/from16 v21, v3

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v21, v3

    int-to-float v7, v7

    add-float/2addr v3, v7

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v21

    sub-float v3, v3, v21

    move/from16 v21, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethorizontalPadding(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v3

    sub-float v3, v21, v3

    .line 2370
    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v21

    add-float v21, v21, v7

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    sub-float v21, v21, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgethorizontalPadding(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v7

    add-float v7, v21, v7

    move/from16 v21, v5

    .line 2371
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x0

    goto :goto_18

    :cond_1f
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v5, v15

    .line 2373
    :goto_18
    iget v15, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v11, v2, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 2374
    iget v11, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v10, v9, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    .line 2375
    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v13, v7, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 2376
    iget v10, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v4, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 2377
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-static {v14, v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    .line 2379
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v7, v2, v3, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2380
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatActivityEnterView;->audioTimelineView:Lorg/telegram/ui/Components/RecordedAudioPlayerView;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/ui/Components/RecordedAudioPlayerView;->drawIn(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto :goto_19

    :cond_20
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v21, v5

    const/high16 v16, 0x437f0000    # 255.0f

    .line 2382
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSeekbarStep3:F

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v9, v20, v3

    mul-float/2addr v9, v14

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v9, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_19

    :cond_21
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move/from16 v21, v5

    const/high16 v16, 0x437f0000    # 255.0f

    .line 2385
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2387
    :goto_19
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v9, v20, v12

    .line 2389
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2390
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    sub-float v2, v20, v21

    mul-float/2addr v2, v9

    mul-float v2, v2, v16

    float-to-int v5, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 2391
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1a

    :cond_22
    const/high16 v16, 0x437f0000    # 255.0f

    const/high16 v20, 0x3f800000    # 1.0f

    .line 2395
    :goto_1a
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetscale(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v20

    if-eqz v4, :cond_24

    .line 2396
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    add-int/2addr v6, v4

    int-to-float v4, v6

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v4, v8, v14, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2397
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v9, v20, v4

    goto :goto_1b

    :cond_23
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v9, v20

    .line 2398
    :goto_1b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2399
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2400
    iget v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    mul-float v9, v9, v16

    float-to-int v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawIconInternal(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FI)V

    .line 2401
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2403
    :cond_24
    iput v14, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->drawingCircleRadius:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 2152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    const/high16 p2, 0x43420000    # 194.0f

    .line 2153
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 2154
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2156
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eb33333    # 0.35f

    mul-float/2addr p1, p2

    const/high16 p2, 0x430c0000    # 140.0f

    .line 2157
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2158
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 2160
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    neg-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideDelta(Lorg/telegram/ui/Components/ChatActivityEnterView;I)V

    return-void
.end method

.method public resetLockTranslation(Z)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 2073
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2074
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2076
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2077
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2081
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 2082
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2083
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isRecordingStateChanged()V

    .line 2084
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2085
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->iconScale:F

    .line 2086
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputscale(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2088
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2089
    iput v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2091
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz p1, :cond_1

    .line 2092
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setAmplitude(D)V
    .locals 5

    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    const-wide v1, 0x409c200000000000L    # 1800.0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BlobDrawable;->setValue(FZ)V

    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/BlobDrawable;->setValue(FZ)V

    .line 2031
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    div-double/2addr p1, v1

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    .line 2032
    iget p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    sub-float/2addr p1, p2

    const p2, 0x43bb8000    # 375.0f

    div-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    .line 2034
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    return-void
.end method

.method public setControlsScale(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcontrolsScale(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2054
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz p1, :cond_0

    .line 2055
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLockTranslation(F)I
    .locals 5

    const v0, 0x461c4000    # 10000.0f

    cmpl-float v0, p1, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 2098
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2099
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2100
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2101
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 2102
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2103
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2104
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputexitTransition(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2105
    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->iconScale:F

    .line 2106
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputscale(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2107
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2108
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2109
    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    .line 2110
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2111
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2112
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    return v2

    :cond_0
    const v0, 0x44268000    # 666.0f

    cmpl-float v0, p1, v0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 2115
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2116
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2117
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2118
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 2119
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsnapAnimationProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2120
    iput v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->progressToSendButton:F

    .line 2121
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2122
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;->setCancelToProgress(F)V

    .line 2124
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2125
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputslideToCancelLockProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    return v2

    .line 2128
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    return v2

    .line 2131
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 2132
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2134
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2135
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 2136
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcanceledByGesture(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideToCancelProgress(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    goto :goto_0

    .line 2139
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetstartTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetlockAnimatedTranslation(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42640000    # 57.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_7

    .line 2140
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2141
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz p1, :cond_6

    .line 2142
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;->showPauseHint()V

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v4
.end method

.method public setMovingCords(FF)V
    .locals 3

    .line 2493
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingX:F

    sub-float v1, p1, v0

    sub-float v0, p1, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingY:F

    sub-float v2, p2, v0

    sub-float v0, p2, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 2494
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingY:F

    .line 2495
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastMovingX:F

    .line 2496
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetshowTooltip(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgettooltipAlpha(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->touchSlop:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_0

    .line 2497
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputshowTooltipStartTime(Lorg/telegram/ui/Components/ChatActivityEnterView;J)V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2043
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputscale(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2044
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    return-void
.end method

.method public setSendButtonInvisible()V
    .locals 2

    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputsendButtonVisible(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 2065
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->controlsView:Lorg/telegram/ui/Components/ChatActivityEnterView$ControlsView;

    if-eqz v0, :cond_0

    .line 2067
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTransformToSeekbar(F)V
    .locals 1

    .line 2472
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputtransformToSeekbar(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 2473
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    return-void
.end method

.method public showWaves(ZZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f000000    # 0.5f

    .line 2503
    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->wavesEnterAnimation:F

    .line 2505
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves:Z

    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 2481
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelVoiceBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2482
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->tinyWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    const/16 v3, 0x26

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2483
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->bigWaveDrawable:Lorg/telegram/ui/Components/BlobDrawable;

    iget-object v0, v0, Lorg/telegram/ui/Components/BlobDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getThemedColor(I)I

    move-result v1

    const/16 v2, 0x4c

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2485
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetpaint(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintAlpha:I

    return-void
.end method
