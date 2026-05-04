.class Lorg/telegram/ui/Components/EmojiView$EmojiGridView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmojiGridView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;
    }
.end annotation


# instance fields
.field private headerWidthsCache:Landroid/util/SparseIntArray;

.field private ignoreLayout:Z

.field private lastChildCount:I

.field lineDrawables:Ljava/util/ArrayList;

.field lineDrawablesTmp:Ljava/util/ArrayList;

.field private premiumT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private touches:Landroid/util/SparseArray;

.field unusedArrays:Ljava/util/ArrayList;

.field unusedLineDrawables:Ljava/util/ArrayList;

.field viewsGroupedByLines:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 2

    .line 2958
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 2959
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 2970
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 2971
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    .line 2972
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 2973
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    .line 2974
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3106
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    .line 3497
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->headerWidthsCache:Landroid/util/SparseIntArray;

    .line 3498
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v0, 0x15e

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->premiumT:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method private getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 4

    .line 2977
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v1, 0x0

    .line 2978
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2979
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2980
    instance-of v3, v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v3, :cond_0

    .line 2981
    check-cast v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public animateExpandAppearDuration()J
    .locals 4

    .line 3278
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x37

    .line 3279
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x28

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x258

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandCrossfadeDuration()J
    .locals 4

    .line 3283
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandToPosition(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x2d

    .line 3284
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x23

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x190

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandDuration()J
    .locals 4

    .line 3274
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandAppearDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandCrossfadeDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clearAllTouches()V
    .locals 4

    .line 3256
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 3257
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3258
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    .line 3259
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz v0, :cond_0

    .line 3262
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 3263
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-array v3, v1, [I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3265
    :cond_1
    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3266
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearTouchesFor(Landroid/view/View;)V
    .locals 5

    .line 3237
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 3238
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3239
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    .line 3240
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 3241
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    .line 3244
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 3245
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-array v4, v0, [I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3247
    :cond_0
    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3248
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 3110
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3112
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3113
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    .line 3114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    :cond_0
    const/4 v7, 0x0

    move v0, v7

    .line 3118
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3119
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3120
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3121
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3123
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3124
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v8, 0x1

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 3125
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    if-ltz v0, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v7

    .line 3126
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    if-eqz v0, :cond_7

    move v10, v7

    .line 3127
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 3128
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiGridView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 3129
    instance-of v0, v11, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v0, :cond_5

    .line 3130
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3131
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 3133
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3134
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_3

    .line 3136
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3140
    :cond_4
    move-object v0, v11

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v9, :cond_6

    if-eqz v11, :cond_6

    .line 3143
    invoke-virtual {p0, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 3144
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandFromPosition(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v1, v8

    if-ne v0, v1, :cond_6

    .line 3145
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandStartTime(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x430c0000    # 140.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_6

    .line 3147
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v12, v3, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v12

    float-to-int v0, v0

    const/16 v6, 0x1f

    move v3, v4

    move v4, v5

    move v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3148
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v12, v1

    add-float/2addr v12, v1

    .line 3150
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v12, v12, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3151
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimateExpandFromButton(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_6
    move-object v0, p1

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_7
    move-object v0, p1

    .line 3159
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3160
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3161
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v9, v7

    .line 3164
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    if-ge v9, v1, :cond_d

    .line 3165
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3166
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3167
    iget v6, v5, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    move v10, v7

    .line 3169
    :goto_6
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 3170
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    iget v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->position:I

    if-ne v11, v6, :cond_8

    .line 3171
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    .line 3172
    iget-object v11, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-nez v4, :cond_b

    .line 3177
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3178
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    goto :goto_8

    .line 3180
    :cond_a
    new-instance v4, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    .line 3182
    :goto_8
    iput v6, v4, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->position:I

    .line 3183
    invoke-virtual {v4}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 3185
    :cond_b
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3186
    iput-object v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3188
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3189
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v4, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->startOffset:I

    .line 3190
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 3191
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v5, v6, v5

    if-lez v1, :cond_c

    if-lez v5, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    move v13, v1

    move-object v1, v0

    move-object v0, v4

    move v4, v13

    .line 3193
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 3195
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v9, v9, 0x1

    move-object v0, p1

    goto/16 :goto_5

    .line 3198
    :cond_d
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_f

    .line 3199
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_e

    .line 3200
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3201
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    iput-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3202
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_a

    .line 3204
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 3207
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 3429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 3430
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    .line 3431
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-eqz v4, :cond_e

    .line 3433
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 3434
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 3435
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    .line 3436
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    .line 3439
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 3440
    invoke-virtual {p0, v7, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v8

    if-eqz v0, :cond_8

    if-eqz v8, :cond_e

    .line 3445
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    .line 3446
    iput v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->x:F

    .line 3447
    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->y:F

    .line 3448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->time:J

    .line 3449
    iput-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    .line 3450
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_7

    .line 3451
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v5, 0x10100a7

    const v7, 0x101009e

    filled-new-array {v5, v7}, [I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3453
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 3454
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3455
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    goto/16 :goto_6

    .line 3458
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    .line 3459
    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v8, :cond_c

    if-eqz v0, :cond_c

    .line 3460
    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->x:F

    sub-float/2addr v7, v6

    float-to-double v6, v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 3462
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v10, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->y:F

    sub-float/2addr v1, v10

    float-to-double v10, v1

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v1, v8

    float-to-double v8, v1

    cmpg-double v1, v6, v8

    if-gez v1, :cond_c

    if-nez v4, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v1

    .line 3465
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->time:J

    sub-long/2addr v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-gez v1, :cond_c

    .line 3467
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    .line 3468
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 3469
    instance-of v7, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v7, :cond_a

    .line 3470
    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3471
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$msendEmoji(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3473
    :try_start_0
    invoke-static {v5}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 3475
    :cond_a
    instance-of v7, v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    if-eqz v7, :cond_b

    .line 3476
    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    .line 3477
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v7

    invoke-virtual {v7, v6, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->expand(ILandroid/view/View;)V

    .line 3479
    :try_start_1
    invoke-static {v5}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    .line 3482
    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    :catch_0
    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 3485
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_d

    .line 3486
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-array v5, v2, [I

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_d
    if-eqz v0, :cond_e

    .line 3488
    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 3489
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3493
    :cond_e
    :goto_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_f

    if-nez v4, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_10

    :cond_f
    move v2, v3

    :cond_10
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 3212
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 3213
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 3218
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 3219
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Landroid/util/LongSparseArray;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3220
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3221
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3223
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3224
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3226
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3227
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2964
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcontentPreviewViewerDelegate(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result p1

    .line 2965
    invoke-super {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

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

.method protected onLayout(ZIIII)V
    .locals 3

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetneedEmojiSearch(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetfirstEmojiAttach(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3003
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3004
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3005
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputfirstEmojiAttach(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3006
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3008
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 3009
    iget-object p2, p1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckEmojiSearchFieldScroll(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3010
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x1

    .line 2989
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 2990
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2991
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 2992
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v4, 0x42340000    # 45.0f

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    div-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x0

    .line 2993
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 2994
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 2995
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiLayoutManager(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 2996
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiAdapter(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .line 3095
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 3097
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3098
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mshowBottomTab(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3100
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3101
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mcheckTabsY(Lorg/telegram/ui/Components/EmojiView;II)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 3023
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3024
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, -0x39e3c000    # -10000.0f

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 3062
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 3064
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedX(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 3065
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedX(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v5

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedY(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 3066
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiTouchedX(Lorg/telegram/ui/Components/EmojiView;F)V

    .line 3067
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiTouchedY(Lorg/telegram/ui/Components/EmojiView;F)V

    .line 3073
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3074
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v0

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 3075
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->pickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3076
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlocation(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v1

    aget v1, v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3077
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->onTouchMove(I)V

    goto/16 :goto_3

    .line 3025
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3026
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->dismiss()V

    .line 3028
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSkinTone(I)Ljava/lang/String;

    move-result-object v0

    .line 3029
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3030
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_4

    .line 3032
    sget-object v6, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3035
    :cond_4
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v0

    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->-$$Nest$fgetisRecent(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v6

    invoke-virtual {v0, v2, v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 3038
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v2

    invoke-static {v0, v2, v5}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$msendEmoji(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3040
    :try_start_0
    invoke-static {v1}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3043
    :catch_0
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveEmojiColors()V

    goto :goto_2

    .line 3045
    :cond_5
    const-string v1, "\ud83c\udffb"

    const-string v6, ""

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ud83c\udffc"

    .line 3046
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ud83c\udffd"

    .line 3047
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ud83c\udffe"

    .line 3048
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ud83c\udfff"

    .line 3049
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    .line 3051
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v6

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v6, v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$msendEmoji(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    goto :goto_2

    .line 3053
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$msendEmoji(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3057
    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3058
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiTouchedView(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)V

    .line 3060
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiTouchedX(Lorg/telegram/ui/Components/EmojiView;F)V

    .line 3061
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiTouchedY(Lorg/telegram/ui/Components/EmojiView;F)V

    .line 3080
    :cond_a
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetcolorPickerView(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    return v3

    .line 3084
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiLastX(Lorg/telegram/ui/Components/EmojiView;F)V

    .line 3085
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputemojiLastY(Lorg/telegram/ui/Components/EmojiView;F)V

    .line 3086
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 3015
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3018
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public updateEmojiDrawables()V
    .locals 4

    .line 3090
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetanimatedEmojiDrawables(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fputanimatedEmojiDrawables(Lorg/telegram/ui/Components/EmojiView;Landroid/util/LongSparseArray;)V

    return-void
.end method
