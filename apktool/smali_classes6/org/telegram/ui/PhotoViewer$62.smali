.class Lorg/telegram/ui/PhotoViewer$62;
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
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    .line 12628
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$62;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 19

    move-object/from16 v0, p0

    .line 12631
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputchangeModeAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    .line 12632
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12633
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpickerViewSendButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatActivityEnterView$SendButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12634
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetdoneButtonFullWidth(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12635
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmuteButton(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12636
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditCoverButton(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/EditCoverButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12637
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 12638
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 12639
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 12640
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotosCounterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/PhotoViewer$CounterView;->setRotationX(F)V

    .line 12641
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetselectedPhotosListView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$SelectedPhotosListView;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 12642
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v5}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputisPhotosListViewVisible(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12643
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetneedCaptionLayout(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_0

    .line 12644
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcaptionTextViewSwitcher(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/ui/PhotoViewer$CaptionTextViewSwitcher;->setVisibility(I)V

    .line 12646
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v7, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimagesArrLocals(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v8, :cond_3

    .line 12647
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcheckImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 12648
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotosCounterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$CounterView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12649
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateActionBarTitlePadding(Lorg/telegram/ui/PhotoViewer;)V

    .line 12651
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_4

    .line 12652
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettranslationY(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputsavedTy(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12653
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettranslationX(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputsavedTx(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12654
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputsavedScale(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12655
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetrotate(Lorg/telegram/ui/PhotoViewer;)F

    move-result v3

    invoke-static {v1, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputsavedRotation(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12656
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToRotate(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12659
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_5

    .line 12660
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 12661
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v11

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v1

    if-eq v1, v8, :cond_6

    move v12, v8

    goto :goto_0

    :cond_6
    move v12, v5

    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintingOverlay(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object v14

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcropTransform(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Crop/CropTransform;

    move-result-object v15

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisCurrentVideo(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoTextureView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_7
    move-object/from16 v16, v2

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    const/4 v13, 0x0

    move-object/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmap(Landroid/graphics/Bitmap;IZZLorg/telegram/ui/Components/PaintingOverlay;Lorg/telegram/ui/Components/Crop/CropTransform;Lorg/telegram/ui/Components/VideoEditTextureView;Lorg/telegram/messenger/MediaController$CropState;)V

    .line 12662
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    .line 12663
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v1

    .line 12664
    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v2, v2, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v2

    .line 12665
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v3, :cond_a

    .line 12666
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x5a

    if-eq v3, v6, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    const/16 v6, 0x10e

    if-ne v3, v6, :cond_9

    :cond_8
    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    :cond_9
    int-to-float v1, v1

    .line 12671
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    .line 12672
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditState(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$EditState;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$EditState;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    iget v3, v3, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 12675
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetContainerViewWidth(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 12676
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetContainerViewHeight(Lorg/telegram/ui/PhotoViewer;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float/2addr v6, v2

    .line 12677
    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9, v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetContainerViewWidth(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v1

    .line 12678
    iget-object v10, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v10, v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetContainerViewHeight(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v2

    .line 12679
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 12680
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 12681
    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetsendPhotoType(Lorg/telegram/ui/PhotoViewer;)I

    move-result v9

    if-ne v9, v8, :cond_b

    .line 12682
    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v6, v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetContainerViewWidth(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v6

    iget-object v9, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v9, v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetContainerViewHeight(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v6, v1

    div-float/2addr v6, v2

    .line 12685
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 12688
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    div-float/2addr v6, v3

    invoke-static {v1, v6}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToScale(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12689
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetLeftInset(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    div-int/2addr v2, v7

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetRightInset(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    div-int/2addr v3, v7

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToX(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12690
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$misStatusBarVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/2addr v3, v7

    goto :goto_1

    :cond_c
    move v3, v5

    :goto_1
    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12691
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimationStartTime(Lorg/telegram/ui/PhotoViewer;J)V

    .line 12692
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1, v8}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputzoomAnimation(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12695
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    .line 12696
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgeteditorDoneLayout(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/high16 v6, 0x42400000    # 48.0f

    .line 12697
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    new-array v9, v7, [F

    aput v6, v9, v5

    aput v4, v9, v8

    invoke-static {v2, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget-object v4, Lorg/telegram/ui/Components/AnimationProperties;->PHOTO_VIEWER_ANIMATION_VALUE:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    .line 12698
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoCropView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v4

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v7, [F

    fill-array-data v9, :array_1

    .line 12699
    invoke-static {v4, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v5

    aput-object v3, v6, v8

    aput-object v4, v6, v7

    .line 12696
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12701
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12702
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoViewer$62$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/PhotoViewer$62$1;-><init>(Lorg/telegram/ui/PhotoViewer$62;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12732
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$62;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
