.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraViewItemDecoration"
.end annotation


# instance fields
.field private final cameraDrawable:Landroid/graphics/drawable/Drawable;

.field private final clipPath:Landroid/graphics/Path;

.field private final parent:Landroidx/recyclerview/widget/RecyclerView;

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 4718
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4714
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->clipPath:Landroid/graphics/Path;

    .line 4719
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 4720
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->camera:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4740
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetcameraAnimationInProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-boolean v6, v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v6, :cond_f

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgethasCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v5

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v5, 0x0

    .line 4748
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_1

    .line 4750
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 4752
    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 4754
    iget-object v2, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v2, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v8

    sub-int/2addr v2, v8

    .line 4763
    :goto_0
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 4764
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v8

    add-int/2addr v8, v6

    .line 4765
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v9, v7

    if-eqz v3, :cond_2

    int-to-long v10, v6

    .line 4768
    invoke-interface {v3, v10, v11}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(J)V

    int-to-long v10, v2

    .line 4769
    invoke-interface {v3, v10, v11}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(J)V

    int-to-long v10, v8

    .line 4770
    invoke-interface {v3, v10, v11}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(J)V

    int-to-long v10, v9

    .line 4771
    invoke-interface {v3, v10, v11}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(J)V

    :cond_2
    if-eqz v4, :cond_3

    int-to-float v7, v6

    int-to-float v10, v2

    int-to-float v11, v8

    int-to-float v12, v9

    .line 4774
    invoke-virtual {v4, v7, v10, v11, v12}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_5

    :cond_3
    const/4 v4, 0x1

    if-eqz v3, :cond_8

    .line 4779
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetisHidden(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move v7, v4

    goto :goto_1

    :cond_5
    move v7, v5

    :goto_1
    invoke-interface {v3, v7}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(Z)V

    .line 4780
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v5

    :goto_2
    invoke-interface {v3, v7}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(Z)V

    .line 4781
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    move v7, v4

    goto :goto_3

    :cond_7
    move v7, v5

    :goto_3
    invoke-interface {v3, v7}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->add(Z)V

    :cond_8
    if-nez v1, :cond_9

    goto/16 :goto_5

    .line 4788
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    const/high16 v7, 0x41300000    # 11.0f

    mul-float/2addr v3, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v15, v3

    .line 4789
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 4790
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->clipPath:Landroid/graphics/Path;

    int-to-float v11, v6

    int-to-float v12, v2

    int-to-float v3, v8

    add-float v13, v3, v15

    int-to-float v3, v9

    add-float v14, v3, v15

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v16, v15

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4791
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4792
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4794
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetisHidden(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4795
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6, v2, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4796
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4799
    :cond_b
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v3, :cond_c

    .line 4800
    iput-boolean v4, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->drawInDecoration:Z

    .line 4801
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 4802
    invoke-virtual {v1, v6, v2, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4803
    invoke-virtual {v1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4804
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v3, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4805
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4806
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iput-boolean v5, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->drawInDecoration:Z

    .line 4809
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_d

    const/high16 v3, 0x41c00000    # 24.0f

    .line 4810
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x40e00000    # 7.0f

    .line 4811
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v8, v5

    sub-int/2addr v8, v3

    .line 4812
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 4813
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    add-int v5, v8, v3

    add-int/2addr v3, v2

    invoke-virtual {v4, v8, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4814
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->cameraDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4817
    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 4819
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_e
    if-eqz v3, :cond_10

    .line 4757
    invoke-interface {v3}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->unsupported()V

    return-void

    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    .line 4742
    invoke-interface {v3}, Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;->unsupported()V

    :cond_10
    :goto_5
    return-void
.end method


# virtual methods
.method public capture(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    .line 4726
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->draw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    return-void
.end method

.method public captureCalculateHash(Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V
    .locals 2

    const/4 v0, 0x0

    .line 4736
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->draw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    const/4 p3, 0x0

    .line 4731
    invoke-direct {p0, p1, p2, p3, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->draw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Lorg/telegram/ui/Components/blur3/capture/IBlur3Hash;Landroid/graphics/RectF;)V

    return-void
.end method

.method public updateBitmap()V
    .locals 3

    .line 4826
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4827
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 4832
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 4834
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->icplaceholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 4837
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 4838
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
