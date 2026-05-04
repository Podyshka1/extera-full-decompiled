.class Lorg/telegram/ui/Components/SharedMediaLayout$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 1215
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 1219
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    if-eq v2, v4, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    .line 1222
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    .line 1225
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, -0x1

    move v7, v3

    move v8, v6

    move v9, v8

    :goto_0
    if-ge v7, v5, :cond_13

    .line 1226
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1227
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1228
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_1

    .line 1230
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 1231
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v13, v12

    sub-int/2addr v11, v13

    .line 1235
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    if-lt v12, v11, :cond_2

    goto/16 :goto_3

    .line 1238
    :cond_2
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v11

    if-lt v11, v8, :cond_3

    if-ne v8, v6, :cond_4

    :cond_3
    move v8, v11

    :cond_4
    if-gt v11, v9, :cond_5

    if-ne v9, v6, :cond_6

    :cond_5
    move v9, v11

    :cond_6
    const/4 v11, 0x2

    .line 1245
    new-array v11, v11, [I

    .line 1247
    instance-of v12, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v12, :cond_8

    .line 1248
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 1249
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    if-nez v13, :cond_7

    goto/16 :goto_3

    .line 1253
    :cond_7
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1254
    iget-object v13, v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1255
    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1256
    aget v14, v11, v3

    iget-object v15, v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    add-int/2addr v14, v15

    aput v14, v11, v3

    .line 1257
    aget v14, v11, v4

    iget-object v12, v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v14, v12

    aput v14, v11, v4

    goto :goto_1

    .line 1259
    :cond_8
    instance-of v12, v10, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v12, :cond_9

    .line 1260
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1261
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    .line 1262
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1263
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v12

    .line 1264
    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    .line 1265
    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1

    .line 1267
    :cond_9
    instance-of v12, v10, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v12, :cond_a

    .line 1268
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 1269
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ContextLinkCell;->getParentObject()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    if-eqz v13, :cond_b

    .line 1270
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1271
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    .line 1272
    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1

    .line 1274
    :cond_a
    instance-of v12, v10, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v12, :cond_b

    .line 1275
    move-object v12, v10

    check-cast v12, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 1276
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 1277
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    if-ne v13, v14, :cond_b

    .line 1278
    invoke-virtual {v12}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLinkImageView()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v13

    .line 1279
    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_1

    :cond_b
    move-object v13, v1

    :goto_1
    if-eqz v13, :cond_12

    .line 1283
    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 1284
    aget v5, v11, v3

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 1285
    aget v5, v11, v4

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 1286
    iput-object v2, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 1287
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    .line 1288
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1289
    aget v5, v11, v4

    neg-int v5, v5

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->animatingImageViewYOffset:I

    .line 1290
    iput-object v13, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 1291
    iput-boolean v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->allowTakeAnimation:Z

    .line 1292
    invoke-virtual {v13, v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius(Z)[I

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 1293
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 1294
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1295
    iput v3, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    .line 1296
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->-$$Nest$fgetstartOffset(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->starOffset:I

    .line 1297
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetfragmentContextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetfragmentContextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    .line 1298
    iget v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    .line 1301
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1302
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 1305
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetfragmentContextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetfragmentContextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    .line 1306
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetfragmentContextView(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/high16 v6, 0x40200000    # 2.5f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2

    :cond_d
    move v5, v3

    .line 1308
    :goto_2
    instance-of v6, v10, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/high16 v7, 0x41000000    # 8.0f

    if-eqz v6, :cond_e

    .line 1309
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    .line 1311
    :cond_e
    iget v8, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    sub-int/2addr v5, v8

    .line 1312
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v8

    if-le v5, v8, :cond_f

    .line 1313
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v5, v4

    neg-int v4, v5

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-object v1

    .line 1315
    :cond_f
    iget v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v6, :cond_10

    .line 1317
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    :cond_10
    if-ltz v4, :cond_11

    .line 1320
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_11
    return-object v1

    :cond_12
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1329
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    if-nez v2, :cond_15

    if-ltz v8, :cond_15

    if-ltz v9, :cond_15

    .line 1330
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetphotoVideoAdapter(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getPositionForIndex(I)I

    move-result v2

    if-gt v2, v8, :cond_14

    .line 1333
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1334
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->scrollToSharedMedia()V

    goto :goto_4

    :cond_14
    if-lt v2, v9, :cond_15

    if-ltz v9, :cond_15

    .line 1336
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    .line 1337
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$1;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->delegate:Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;

    invoke-interface {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;->scrollToSharedMedia()V

    :cond_15
    :goto_4
    return-object v1
.end method
