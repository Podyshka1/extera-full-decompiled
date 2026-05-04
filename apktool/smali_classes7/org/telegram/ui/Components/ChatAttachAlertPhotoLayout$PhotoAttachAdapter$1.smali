.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)V
    .locals 0

    .line 4316
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 14

    .line 4319
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 4320
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4323
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4324
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;

    move-result-object v2

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4327
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetshowAvatarConstructor(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/high16 v1, 0x41300000    # 11.0f

    if-nez v0, :cond_4

    .line 4331
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 4332
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v5, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int v6, p1, v0

    int-to-float v7, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 4333
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_5

    .line 4334
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->cornerRadius:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v9, v0

    .line 4335
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int v12, p1, v0

    int-to-float v13, v0

    const/4 v10, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void

    .line 4337
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v1, v0, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method
