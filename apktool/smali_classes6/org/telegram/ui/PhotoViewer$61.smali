.class Lorg/telegram/ui/PhotoViewer$61;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method public static synthetic $r8$lambda$bLYJOh0Iw7l4qC41QZqrhL7vPbU(Lorg/telegram/ui/PhotoViewer$61;Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$61;->lambda$onAnimationEnd$0(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    .line 12427
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$61;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V
    .locals 1

    .line 12457
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->shutdown()V

    .line 12459
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12461
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12

    .line 12431
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    .line 12432
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 12433
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onHide()V

    .line 12434
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditorDoneLayout(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12435
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12436
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/PhotoCropView;->cropView:Lorg/telegram/ui/Components/Crop/CropView;

    iget-object p1, p1, Lorg/telegram/ui/Components/Crop/CropView;->areaView:Lorg/telegram/ui/Components/Crop/CropAreaView;

    invoke-virtual {p1, v6, v5, v6, v6}, Lorg/telegram/ui/Components/Crop/CropAreaView;->setRotationScaleTranslation(FFFF)V

    goto/16 :goto_2

    .line 12437
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 12439
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoFilterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12441
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 12443
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputphotoFilterView(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)V

    goto/16 :goto_2

    .line 12444
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 12445
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoPaintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onAnimationStateChanged(Z)V

    .line 12447
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoPaintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12449
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 12451
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputphotoPaintView(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)V

    goto :goto_2

    .line 12452
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 12453
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmaskPaintViewShuttingDown(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12454
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12455
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmaskPaintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    move-result-object p1

    .line 12456
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/PhotoViewer$61$$ExternalSyntheticLambda0;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/PhotoViewer$61$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$61;Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12464
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputmaskPaintView(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;)V

    .line 12465
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteraseBtn(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$BlurButton;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Lorg/telegram/ui/PhotoViewer$BlurButton;->setActive(ZZ)V

    .line 12466
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetrestoreBtn(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$BlurButton;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Lorg/telegram/ui/PhotoViewer$BlurButton;->setActive(ZZ)V

    goto :goto_2

    .line 12467
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v9, 0x5

    if-ne p1, v9, :cond_4

    .line 12468
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer;->coverEditor:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12469
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer;->coverEditor:Lorg/telegram/ui/Components/PhotoViewerCoverEditor;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoViewerCoverEditor;->destroy()V

    .line 12471
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    .line 12472
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    .line 12473
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v10, p0, Lorg/telegram/ui/PhotoViewer$61;->val$mode:I

    invoke-static {v9, v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentEditMode(Lorg/telegram/ui/PhotoViewer;I)V

    .line 12474
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCaptionView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    if-eqz v10, :cond_5

    move v10, v8

    goto :goto_3

    :cond_5
    move v10, v7

    :goto_3
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 12475
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 12476
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v10

    if-eq v10, v2, :cond_6

    move v10, v8

    goto :goto_4

    :cond_6
    move v10, v7

    :goto_4
    invoke-virtual {v9, v10}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 12478
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    if-eq v9, v2, :cond_8

    .line 12479
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputtranslateY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12481
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9, v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputapplying(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12482
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    if-ne v9, v8, :cond_9

    .line 12483
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 12485
    :cond_9
    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v0, :cond_a

    if-eq p1, v8, :cond_a

    if-ne p1, v1, :cond_b

    .line 12486
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsavedTx(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToX(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12487
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsavedTy(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12488
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsavedScale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToScale(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12489
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsavedRotation(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToRotate(Lorg/telegram/ui/PhotoViewer;F)V

    goto :goto_5

    .line 12491
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v7}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mscale1(Lorg/telegram/ui/PhotoViewer;Z)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToScale(Lorg/telegram/ui/PhotoViewer;F)V

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputscale(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12492
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateMinMax(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12493
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToX(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12494
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12496
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputswitchingToMode(Lorg/telegram/ui/PhotoViewer;I)V

    .line 12497
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 12499
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsavedState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SavedState;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 12500
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsavedState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SavedState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer$SavedState;->restore()V

    .line 12501
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputsavedState(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$SavedState;)V

    .line 12502
    new-instance p1, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;

    invoke-direct {p1}, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;-><init>()V

    invoke-virtual {p1, v7}, Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;->enableStatusBarAnimation(Z)Lorg/telegram/ui/PhotoViewer$ActionBarToggleParams;

    move-result-object p1

    .line 12503
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v7, v7, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mtoggleActionBar(Lorg/telegram/ui/PhotoViewer;ZZLorg/telegram/ui/PhotoViewer$ActionBarToggleParams;)V

    .line 12504
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v8, v8, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mtoggleActionBar(Lorg/telegram/ui/PhotoViewer;ZZLorg/telegram/ui/PhotoViewer$ActionBarToggleParams;)V

    return-void

    .line 12508
    :cond_c
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12509
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12510
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v8, [F

    aput v6, v10, v7

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12511
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v8, [F

    aput v5, v11, v7

    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12512
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    if-eqz v3, :cond_d

    .line 12513
    new-array v11, v8, [F

    aput v5, v11, v7

    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12515
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 12516
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetstickerMakerBackgroundView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/StickerMakerBackgroundView;

    move-result-object v3

    new-array v11, v8, [F

    aput v5, v11, v7

    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12518
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerViewSendButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v3

    new-array v11, v8, [F

    aput v6, v11, v7

    invoke-static {v3, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12519
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-eq v3, v8, :cond_f

    .line 12520
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetactionBar(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    new-array v11, v8, [F

    aput v6, v11, v7

    invoke-static {v3, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12522
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetneedCaptionLayout(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 12523
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v3

    new-array v11, v8, [F

    aput v6, v11, v7

    invoke-static {v3, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12525
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-ne v3, v1, :cond_11

    goto :goto_6

    .line 12528
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-ne v1, v8, :cond_13

    .line 12529
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v1

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 12526
    :cond_12
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12527
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotosCounterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12531
    :cond_13
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 12532
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoTypeIsGif(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v4

    goto :goto_8

    :cond_14
    move v3, v7

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12533
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12535
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditCoverButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/EditCoverButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 12536
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditCoverButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/EditCoverButton;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoTypeIsGif(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_16
    move v4, v7

    :goto_9
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12537
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditCoverButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/EditCoverButton;

    move-result-object v1

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12539
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 12540
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 12541
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetnavigationBar(Lorg/telegram/ui/PhotoViewer;)Landroid/view/View;

    move-result-object v1

    new-array v3, v8, [F

    aput v5, v3, v7

    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12543
    :cond_18
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0xc8

    .line 12544
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12545
    new-instance v1, Lorg/telegram/ui/PhotoViewer$61$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$61$1;-><init>(Lorg/telegram/ui/PhotoViewer$61;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12573
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
