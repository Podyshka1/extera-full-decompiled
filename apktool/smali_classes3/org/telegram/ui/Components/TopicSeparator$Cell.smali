.class public abstract Lorg/telegram/ui/Components/TopicSeparator$Cell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TopicSeparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# instance fields
.field private onClickListener:Lorg/telegram/messenger/Utilities$Callback;

.field public final separator:Lorg/telegram/ui/Components/TopicSeparator;


# direct methods
.method public static synthetic $r8$lambda$F8v7rcmfIfWuRl3SvIB2yHH_E9A(Lorg/telegram/ui/Components/TopicSeparator$Cell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TopicSeparator$Cell;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 243
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance p1, Lorg/telegram/ui/Components/TopicSeparator;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, p3, v0}, Lorg/telegram/ui/Components/TopicSeparator;-><init>(ILandroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    .line 245
    new-instance p2, Lorg/telegram/ui/Components/TopicSeparator$Cell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/TopicSeparator$Cell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TopicSeparator$Cell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TopicSeparator;->setOnClickListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->onClickListener:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    iget-wide v1, v1, Lorg/telegram/ui/Components/TopicSeparator;->topicId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 290
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/TopicSeparator;->draw(Landroid/graphics/Canvas;IFFFFZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 270
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TopicSeparator;->attach()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 276
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TopicSeparator;->detach()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/high16 v0, 0x42040000    # 33.0f

    .line 284
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 282
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/TopicSeparator;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public set(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TopicSeparator;->update(Lorg/telegram/messenger/MessageObject;)Z

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->separator:Lorg/telegram/ui/Components/TopicSeparator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TopicSeparator;->attach()V

    :cond_0
    return-void
.end method

.method public setOnTopicClickListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicSeparator$Cell;->onClickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method
