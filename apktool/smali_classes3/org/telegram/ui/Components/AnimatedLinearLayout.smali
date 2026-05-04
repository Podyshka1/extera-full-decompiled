.class public abstract Lorg/telegram/ui/Components/AnimatedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;
    }
.end annotation


# static fields
.field private static final comparator:Ljava/util/Comparator;


# instance fields
.field private final callback:Lme/vkryl/android/animator/ListAnimator$Callback;

.field private lastAnimatedHeight:F

.field private final listAnimator:Lme/vkryl/android/animator/ListAnimator;

.field private onAnimatedHeightChanged:Ljava/lang/Runnable;

.field private skipNextAnimation:Z

.field private totalHeight:I

.field private totalWidth:I

.field private final viewHolders:Ljava/util/HashMap;

.field private final visibleHolders:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$XQxmrRbKZheFMgoel3bjqleu990(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)I
    .locals 0

    .line 221
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgetorder(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dv9EgLjAtJ_7fZUjlR4p9jhEXfM(Lorg/telegram/ui/Components/AnimatedLinearLayout;Lme/vkryl/android/animator/ListAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->lambda$new$0(Lme/vkryl/android/animator/ListAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrzkjOYEt3Pkxnx3Mv6lvfDyd9Q(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)I
    .locals 0

    .line 220
    invoke-static {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgetpriority(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 220
    new-instance v0, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda2;-><init>()V

    .line 221
    invoke-static {v0, v1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->visibleHolders:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AnimatedLinearLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->callback:Lme/vkryl/android/animator/ListAnimator$Callback;

    .line 30
    new-instance v0, Lme/vkryl/android/animator/ListAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x1a4

    invoke-direct {v0, p1, v1, v2, v3}, Lme/vkryl/android/animator/ListAnimator;-><init>(Lme/vkryl/android/animator/ListAnimator$Callback;Landroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->listAnimator:Lme/vkryl/android/animator/ListAnimator;

    return-void
.end method

.method private checkViewsVisibility()V
    .locals 6

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->listAnimator:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/vkryl/android/animator/ListAnimator$Entry;

    .line 176
    iget-object v2, v1, Lme/vkryl/android/animator/ListAnimator$Entry;->item:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->view:Landroid/view/View;

    .line 177
    invoke-virtual {v1}, Lme/vkryl/android/animator/ListAnimator$Entry;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 184
    :goto_1
    invoke-virtual {v1}, Lme/vkryl/android/animator/ListAnimator$Entry;->getVisibility()F

    move-result v1

    .line 185
    invoke-virtual {p0, v2, v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setChildVisibilityFactor(Landroid/view/View;F)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator$Metadata;->getTotalHeight()F

    move-result v0

    .line 189
    iget v1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->lastAnimatedHeight:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 190
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->lastAnimatedHeight:F

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onAnimatedHeightChanged:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$0(Lme/vkryl/android/animator/ListAnimator;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->checkViewsVisibility()V

    .line 27
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onItemsChanged()V

    return-void
.end method


# virtual methods
.method protected final calculateTotalSizesAfterMeasure()V
    .locals 5

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalHeight:I

    .line 92
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalWidth:I

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgetisVisible(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iget v3, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalWidth:I

    .line 99
    iget v3, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalHeight:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalHeight:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAnimatedHeightWithPadding()F
    .locals 2

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v0

    return v0
.end method

.method public getAnimatedHeightWithPadding(F)F
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator$Metadata;->getTotalHeight()F

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lme/vkryl/android/animator/ListAnimator$Metadata;->getTotalVisibility()F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method protected getEntriesCount()I
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->listAnimator:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator;->size()I

    move-result v0

    return v0
.end method

.method protected getEntry(I)Lme/vkryl/android/animator/ListAnimator$Entry;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->listAnimator:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0, p1}, Lme/vkryl/android/animator/ListAnimator;->getEntry(I)Lme/vkryl/android/animator/ListAnimator$Entry;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->listAnimator:Lme/vkryl/android/animator/ListAnimator;

    invoke-virtual {v0}, Lme/vkryl/android/animator/ListAnimator;->getMetadata()Lme/vkryl/android/animator/ListAnimator$Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getSumHeightOfAllVisibleChild()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalHeight:I

    return v0
.end method

.method public getSumWidthOfAllVisibleChild()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->totalWidth:I

    return v0
.end method

.method public isViewVisible(Landroid/view/View;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgetisVisible(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onItemsChanged()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 125
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 127
    const-string/jumbo p2, "start list: "

    const-string p3, "LIST_DEBUG"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p2, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->visibleHolders:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 130
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p2, :cond_2

    .line 131
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 132
    iget-object v1, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    if-nez v1, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-static {v1, p5}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fputorder(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;I)V

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgetisVisible(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->visibleHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgettag(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->visibleHolders:Ljava/util/ArrayList;

    sget-object p3, Lorg/telegram/ui/Components/AnimatedLinearLayout;->comparator:Ljava/util/Comparator;

    invoke-static {p2, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    iget-object p2, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->listAnimator:Lme/vkryl/android/animator/ListAnimator;

    iget-object p3, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->visibleHolders:Ljava/util/ArrayList;

    iget-boolean p5, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->skipNextAnimation:Z

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    invoke-virtual {p2, p3, p5}, Lme/vkryl/android/animator/ListAnimator;->reset(Ljava/util/List;Z)V

    .line 145
    iget-object p2, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->visibleHolders:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    move p5, p4

    :goto_2
    if-ge p5, p3, :cond_3

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p5, p5, 0x1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    .line 146
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fputhasInAnimator(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;Z)V

    goto :goto_2

    .line 149
    :cond_3
    iput-boolean p4, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout;->skipNextAnimation:Z

    .line 150
    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->checkViewsVisibility()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 87
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->calculateTotalSizesAfterMeasure()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setChildVisibilityFactor(Landroid/view/View;F)V
    .locals 2

    const v0, 0x3f733333    # 0.95f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 198
    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setDebugName(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    if-eqz p1, :cond_0

    .line 53
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fputtag(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnAnimatedHeightChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->onAnimatedHeightChanged:Ljava/lang/Runnable;

    return-void
.end method

.method public setPriority(Landroid/view/View;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    if-eqz p1, :cond_0

    .line 46
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fputpriority(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;I)V

    :cond_0
    return-void
.end method

.method public setViewVisible(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setViewVisible(Landroid/view/View;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;

    if-eqz p1, :cond_4

    .line 69
    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgetisVisible(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)Z

    move-result v0

    if-eq v0, p2, :cond_4

    .line 70
    invoke-static {p1, p2}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fputisVisible(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;Z)V

    if-eqz p2, :cond_1

    .line 72
    iget-object v0, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    .line 74
    invoke-static {p1}, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->-$$Nest$fgethasInAnimator(Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 75
    iget-object p1, p1, Lorg/telegram/ui/Components/AnimatedLinearLayout$Holder;->view:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-nez p3, :cond_3

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedLinearLayout;->skipNextAnimation:Z

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    :goto_0
    return-void
.end method
