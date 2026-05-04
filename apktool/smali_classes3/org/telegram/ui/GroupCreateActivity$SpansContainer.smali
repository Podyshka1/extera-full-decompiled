.class Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpansContainer"
.end annotation


# instance fields
.field private addingSpan:Landroid/view/View;

.field private animationIndex:I

.field private animationStarted:Z

.field private final animators:Ljava/util/ArrayList;

.field private containerHeight:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private final removingSpans:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimationIndex(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetremovingSpans(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaddingSpan(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputanimationStarted(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentAnimation(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    .line 246
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    .line 241
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 242
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    return-void
.end method


# virtual methods
.method public addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 5

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetallSpans(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-boolean v0, p1, Lorg/telegram/ui/Components/GroupCreateSpan;->isFlag:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 355
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 356
    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$2;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 365
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addingSpan:Landroid/view/View;

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mupdateButtonsVisibility(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void

    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public endAnimation()V
    .locals 1

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 339
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 340
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 252
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x41d00000    # 26.0f

    .line 253
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    const/high16 v4, 0x41200000    # 10.0f

    .line 255
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 257
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v7, v1, :cond_9

    .line 261
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 262
    instance-of v13, v12, Lorg/telegram/ui/Components/GroupCreateSpan;

    if-nez v13, :cond_0

    const/16 p1, 0x0

    goto/16 :goto_2

    :cond_0
    const/high16 v13, -0x80000000

    .line 265
    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v14, 0x42000000    # 32.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/view/View;->measure(II)V

    .line 266
    iget-object v13, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    const/high16 v14, 0x41000000    # 8.0f

    if-nez v13, :cond_1

    .line 267
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v8

    if-le v15, v3, :cond_1

    .line 268
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v8, v15

    add-int/2addr v5, v8

    const/4 v8, 0x0

    .line 271
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v9

    if-le v15, v3, :cond_2

    .line 272
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    add-int/2addr v9, v14

    add-int/2addr v4, v9

    const/4 v9, 0x0

    :cond_2
    const/high16 v14, 0x41500000    # 13.0f

    .line 275
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    add-int/2addr v15, v8

    const/16 p1, 0x0

    .line 276
    iget-boolean v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    if-nez v6, :cond_7

    if-eqz v13, :cond_3

    .line 278
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v6, v4

    .line 279
    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 280
    :cond_3
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 281
    invoke-virtual {v12}, Landroid/view/View;->getTranslationX()F

    move-result v6

    int-to-float v14, v15

    cmpl-float v6, v6, v14

    if-eqz v6, :cond_4

    .line 282
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v15, v11, [F

    aput v14, v15, p1

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v6

    int-to-float v14, v5

    cmpl-float v6, v6, v14

    if-eqz v6, :cond_5

    .line 285
    iget-object v6, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v11, v11, [F

    aput v14, v11, p1

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v12, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_5
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    :cond_6
    int-to-float v6, v15

    .line 289
    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v6, v5

    .line 290
    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 291
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_7
    :goto_1
    const/high16 v6, 0x41100000    # 9.0f

    if-nez v13, :cond_8

    .line 295
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v11, v13

    add-int/2addr v8, v11

    .line 297
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v11, v6

    add-int/2addr v9, v11

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0x0

    .line 300
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    const/high16 v1, 0x43ba0000    # 372.0f

    .line 301
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_3

    .line 303
    :cond_a
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v6, 0x431e0000    # 158.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x3

    :goto_3
    sub-int v6, v3, v8

    const/high16 v7, 0x42200000    # 40.0f

    if-ge v6, v1, :cond_b

    .line 307
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    :cond_b
    sub-int/2addr v3, v9

    if-ge v3, v1, :cond_c

    .line 310
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v4, v1

    .line 312
    :cond_c
    iget-boolean v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    if-nez v1, :cond_e

    const/high16 v1, 0x42280000    # 42.0f

    .line 313
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    .line 314
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputfieldY(Lorg/telegram/ui/GroupCreateActivity;I)V

    .line 315
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_d

    .line 316
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->containerHeight:I

    .line 317
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 318
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$1;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 325
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationIndex:I

    .line 326
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 327
    iput-boolean v11, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    goto :goto_4

    .line 329
    :cond_d
    iput v4, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->containerHeight:I

    .line 332
    :cond_e
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetanimatorSelectorContainerHeight(Lorg/telegram/ui/GroupCreateActivity;)Lme/vkryl/android/animator/FactorAnimator;

    move-result-object v1

    if-lez v10, :cond_f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v6, v10, v3

    goto :goto_5

    :cond_f
    move/from16 v6, p1

    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    iget v3, v3, Lorg/telegram/ui/GroupCreateActivity;->maxSize:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lme/vkryl/android/animator/FactorAnimator;->animateTo(F)V

    .line 333
    iget v1, v0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->containerHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllSpans(Z)V
    .locals 6

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputignoreScrollEvent(Lorg/telegram/ui/GroupCreateActivity;Z)V

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetallSpans(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetallSpans(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 429
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 432
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->endAnimation()V

    if-eqz p1, :cond_1

    .line 438
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 439
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 440
    new-instance v2, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$4;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 452
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 453
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 454
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 459
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 460
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 462
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 463
    iput-object v4, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 464
    iput-boolean v1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 466
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mupdateButtonsVisibility(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputignoreScrollEvent(Lorg/telegram/ui/GroupCreateActivity;Z)V

    .line 384
    iget-boolean v0, p1, Lorg/telegram/ui/Components/GroupCreateSpan;->isFlag:Z

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedContacts(Lorg/telegram/ui/GroupCreateActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedPremium(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 388
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputselectedPremium(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetselectedMiniApps(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputselectedMiniApps(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 393
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetallSpans(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animationStarted:Z

    .line 401
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 402
    new-instance v1, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer$3;-><init>(Lorg/telegram/ui/GroupCreateActivity$SpansContainer;Lorg/telegram/ui/Components/GroupCreateSpan;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removingSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->animators:Ljava/util/ArrayList;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mupdateButtonsVisibility(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
