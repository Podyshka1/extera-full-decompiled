.class Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field final synthetic val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic val$finalAnimatableAdapter:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

.field final synthetic val$oldViews:Ljava/util/ArrayList;

.field final synthetic val$scrollDown:Z


# direct methods
.method public static synthetic $r8$lambda$9T1ZXwceH73WmQ9KucH0H5e2P98(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;Ljava/util/ArrayList;ZIILjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->lambda$onLayoutChange$0(Ljava/util/ArrayList;ZIILjava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$scrollDown:Z

    iput-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$finalAnimatableAdapter:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0(Ljava/util/ArrayList;ZIILjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 224
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 227
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 230
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    neg-int v4, p3

    int-to-float v4, v4

    mul-float/2addr v4, p6

    .line 234
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_1
    int-to-float v4, p3

    mul-float/2addr v4, p6

    .line 236
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p4, p1

    .line 241
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v1, p1, :cond_5

    .line 243
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    int-to-float v3, p3

    sub-float/2addr v2, p6

    mul-float/2addr v3, v2

    int-to-float v2, p4

    add-float/2addr v3, v2

    .line 245
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_4
    neg-int v3, p3

    int-to-float v3, v3

    sub-float/2addr v2, p6

    mul-float/2addr v3, v2

    .line 247
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetscrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetscrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;->onScroll()V

    :cond_6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 136
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 140
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v4, v2, :cond_8

    .line 146
    iget-object v10, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v10}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 147
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v11, v5, :cond_0

    .line 149
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    .line 150
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v11, v6, :cond_1

    .line 151
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 153
    :cond_1
    instance-of v11, v10, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_2

    .line 154
    move-object v11, v10

    check-cast v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11, v9, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    .line 157
    :cond_2
    iget-object v11, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-boolean v11, v11, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->forceUseStableId:Z

    if-eqz v11, :cond_7

    .line 158
    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v12, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v12}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v11

    .line 159
    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v13}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetoldStableIds(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 160
    iget-object v13, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v13}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetoldStableIds(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Ljava/util/HashMap;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_7

    .line 163
    instance-of v8, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v8, :cond_4

    .line 164
    move-object v8, v11

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v8, v3, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    .line 166
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v8}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 168
    iget-object v8, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v8}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->recycleView(Landroid/view/View;)V

    .line 170
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v8, v10

    if-eqz v8, :cond_6

    move v7, v8

    :cond_6
    move v8, v9

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 179
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetoldStableIds(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 184
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const v10, 0x7fffffff

    move v12, v3

    move v13, v12

    move v11, v10

    :goto_1
    if-ge v13, v4, :cond_d

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroid/view/View;

    .line 185
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 186
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    if-le v15, v12, :cond_9

    move v12, v15

    :cond_9
    if-ge v3, v11, :cond_a

    move v11, v3

    .line 190
    :cond_a
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_b

    .line 191
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->ignoreView(Landroid/view/View;)V

    .line 193
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 194
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v3

    invoke-virtual {v3, v14, v9}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->ignoreView(Landroid/view/View;Z)V

    .line 197
    :cond_b
    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_c

    .line 198
    check-cast v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v14, v9, v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_c
    const/4 v3, 0x0

    goto :goto_1

    :cond_d
    if-ne v11, v10, :cond_e

    const/4 v3, 0x0

    goto :goto_2

    :cond_e
    move v3, v11

    .line 206
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 207
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onPreAnimation()V

    .line 211
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 212
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_5

    .line 214
    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$scrollDown:Z

    if-eqz v2, :cond_11

    goto :goto_3

    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v12, v2, v3

    .line 215
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$scrollDown:Z

    if-eqz v2, :cond_12

    neg-int v2, v5

    goto :goto_4

    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v6, v2

    :goto_4
    add-int/2addr v2, v12

    .line 217
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 218
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 219
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 220
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 222
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fputanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroid/animation/ValueAnimator;)V

    .line 223
    iget-object v4, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$oldViews:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->val$scrollDown:Z

    new-instance v7, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$$ExternalSyntheticLambda0;

    move-object/from16 p2, v0

    move-object/from16 p7, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p3, v5

    move/from16 p4, v6

    move-object/from16 p1, v7

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;Ljava/util/ArrayList;ZIILjava/util/ArrayList;)V

    move-object/from16 v3, p1

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1$1;-><init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-boolean v3, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->isDialogs:Z

    const-wide/16 v4, 0x514

    const/high16 v6, 0x43480000    # 200.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const-wide/16 v9, 0x12c

    if-eqz v3, :cond_16

    if-eqz v8, :cond_14

    const-wide/16 v2, 0x96

    .line 323
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_9

    :cond_14
    int-to-float v2, v2

    .line 326
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v2, v7

    mul-float/2addr v2, v6

    float-to-long v1, v2

    cmp-long v3, v1, v9

    if-gez v3, :cond_15

    goto :goto_6

    :cond_15
    move-wide v9, v1

    .line 330
    :goto_6
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 331
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 332
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_9

    :cond_16
    if-eqz v8, :cond_17

    const-wide/16 v1, 0x258

    goto :goto_8

    :cond_17
    int-to-float v2, v2

    .line 338
    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v2, v7

    mul-float/2addr v2, v6

    float-to-long v1, v2

    cmp-long v3, v1, v9

    if-gez v3, :cond_18

    goto :goto_7

    :cond_18
    move-wide v9, v1

    .line 342
    :goto_7
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 345
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;->this$0:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-static {v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->-$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
