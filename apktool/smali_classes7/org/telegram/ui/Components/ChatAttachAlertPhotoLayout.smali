.class public Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;,
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;,
        Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$BasePhotoProvider;
    }
.end annotation


# static fields
.field private static cameraPhotos:Ljava/util/ArrayList;

.field public static lastImageId:I

.field private static mediaFromExternalCamera:Z

.field public static selectedPhotos:Ljava/util/HashMap;

.field public static selectedPhotosOrder:Ljava/util/ArrayList;


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

.field additionCloseCameraY:F

.field private afterCameraInitRunnable:Ljava/lang/Runnable;

.field private alertOnlyOnce:I

.field private animateCameraValues:[I

.field animationClipBottom:F

.field animationClipLeft:F

.field animationClipRight:F

.field animationClipTop:F

.field private cameraAnimationInProgress:Z

.field private cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

.field cameraExpanded:Z

.field private cameraInitAnimation:Landroid/animation/AnimatorSet;

.field private cameraOpenProgress:F

.field public cameraOpened:Z

.field private cameraPanel:Landroid/widget/FrameLayout;

.field private cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private cameraPhotoRecyclerViewIgnoreLayout:Z

.field protected cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

.field private final cameraViewItemDecoration:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

.field private cameraViewLocation:[F

.field private cameraViewOffsetBottomY:F

.field private cameraViewOffsetX:F

.field private cameraViewOffsetY:F

.field private cameraZoom:F

.field private canSaveCameraPreview:Z

.field private cancelTakingPhotos:Z

.field public captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

.field private checkCameraWhenShown:Z

.field private compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private counterTextView:Landroid/widget/TextView;

.field public currentItemTop:I

.field private currentPanTranslationY:F

.field private currentSelectedCount:I

.field deviceHasGoodCamera:Z

.field private documentsEnabled:Z

.field private dragging:Z

.field public dropDown:Landroid/widget/TextView;

.field private dropDownAlbums:Ljava/util/ArrayList;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private flashAnimationInProgress:Z

.field private flashModeButton:[Landroid/widget/ImageView;

.field forceDarkTheme:Z

.field private galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private gridExtraSpace:I

.field public gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private headerAnimator:Landroid/view/ViewPropertyAnimator;

.field private hitRect:Landroid/graphics/Rect;

.field private ignoreLayout:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

.field private isHidden:Z

.field private itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

.field private itemSize:I

.field private itemsPerRow:I

.field private lastItemSize:I

.field private lastNotifyWidth:I

.field private lastY:F

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public listAdditionalH:I

.field private loading:Z

.field private maybeStartDraging:Z

.field private mediaEnabled:Z

.field private final needCamera:Z

.field private noCameraPermissions:Z

.field private noGalleryPermissions:Z

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private photoEnabled:Z

.field public photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private pinchStartDistance:F

.field private pressed:Z

.field protected previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private recordTime:Landroid/widget/TextView;

.field private requestingPermissions:Z

.field private selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private shouldSelect:Z

.field private showAvatarConstructor:Z

.field private shutterButton:Lorg/telegram/ui/Components/ShutterButton;

.field private spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private switchCameraButton:Landroid/widget/ImageView;

.field private takingPhoto:Z

.field private tooltipTextView:Landroid/widget/TextView;

.field private videoEnabled:Z

.field private videoRecordRunnable:Ljava/lang/Runnable;

.field private videoRecordTime:I

.field private viewPosition:[I

.field private zoomControlAnimation:Landroid/animation/AnimatorSet;

.field private zoomControlHideRunnable:Ljava/lang/Runnable;

.field private zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

.field private zoomWas:Z

.field private zooming:Z


# direct methods
.method public static synthetic $r8$lambda$3euXTjXQNfrQ-s-eS_2bNZduyQQ(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$22(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$72nP2Ex6HwTllcSymNJCEI6jG14(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onPreMeasure$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$8Ye_0IT4e3vimiHICjWzl3VsWrg(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$25(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9DDEwr9Sm2MvafG-zRPwaouRrms(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$3(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$AU-IMk3LpjOl63bBUfavYacv60U(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showAvatarConstructorFragment$10(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BH5VEaOqTNXlufm9ws-DERQmtbE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKQumWRRWo6CKf_6R3B2Z-ksHxo(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$23(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CgXEdtFwzBIVyapTg9P1ATwwR1E(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$setCurrentSpoilerVisible$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D1JvruG4gM6ILqznZl2OZg_A8jQ(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$20(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GQg-7L31KvldWhCi96qPcDzTIG8(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 2

    .line 1870
    iget v0, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_0

    iget v1, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1872
    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 1875
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1876
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-le p1, p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    if-ge p1, p0, :cond_3

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$GquF2NvxHXoNTnSlEzQQPPsrWcY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showCamera$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$Hyf4Uls-OlM2PTV0ElHfmvtmDto(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$6(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$LkpA_2BOvbk17-wsOcc-aC_zKHQ(Ljava/util/List;ZLandroid/view/View;)V
    .locals 1

    .line 3374
    instance-of v0, p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    .line 3375
    check-cast p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3376
    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$NTVFM-XHrJ3qObApNXs6JjxjOPg(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$applyCameraViewPosition$18(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NeszZNQa3cX0B-osKNJ4VS-uang(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showZoomControls$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$OVRP_zFYXE2yLAjfDrFtybrje1Y(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$4(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UhQaUVwNl6KHsOTMExryYiZoGbE(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$hideCamera$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$UnF-J1cPq7uJ6LQi-z2jc5aFYC8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ILandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$updateAlbumsDropDown$13(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VkbZQzNZGQHKFTS2QZwtbVxpK3w(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$21(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$VklzUSeZPvZpHOoLP0Rq5PldOfI(Landroid/view/View;I)V
    .locals 0

    .line 1489
    instance-of p1, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz p1, :cond_0

    .line 1490
    check-cast p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->callDelegate()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$YYch0eRH_sS6vchNFcP-oceILpg(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zybd87d3UpSKL-rzBOzsGXt-66A(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onShow$28(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aebbyfoc8e0MjhvL8heaLOuE_I0(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fWe3IniolEUY1TgwOud6G8oZxxA(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$showZoomControls$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$j7zm8n531tbC7FnGcqehqgZvv6o(Landroid/view/View;)V
    .locals 5

    .line 1821
    instance-of v0, p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_4

    .line 1822
    check-cast p0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1823
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    .line 1824
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    .line 1825
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-wide v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    :goto_2
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v3, v4, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    :cond_4
    return-void
.end method

.method public static synthetic $r8$lambda$kyh7rEFRW8ZIB_Uu9CopvTNjPqI(Ljava/util/List;ZLandroid/view/View;)V
    .locals 1

    .line 3326
    instance-of v0, p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    .line 3327
    check-cast p2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3328
    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$l4W3dk0VHKBXzPM1ZgK2Xdx0sms(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXM7PFZroQ_lklJIbp-7HUzdsoI(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$27(Ljava/lang/Long;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sD_QU3ik2Vl4yi144jym6wdREj8(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onHide$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$siyRT8aH5cLUKA5jtBoDDo4uuPY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$onMenuItemClick$19(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$yXWuVoXjwtHqO2sCUwgBHf8yioM(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalertOnlyOnce(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->alertOnlyOnce:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraAnimationInProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraAttachAdapter(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraInitAnimation(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraOpenProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraPanel(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraPhotoLayoutManager(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraPhotoRecyclerView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraPhotoRecyclerViewIgnoreLayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraViewItemDecoration(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewItemDecoration:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraViewOffsetX(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcameraViewOffsetY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcancelTakingPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcounterTextView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPanTranslationY(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetflashModeButton(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)[Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgalleryAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgridExtraSpace(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHidden(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemSize(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemsPerRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnoCameraPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnoGalleryPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationsLocker(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecordTime(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedAlbumEntry(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshouldSelect(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldSelect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshowAvatarConstructor(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshutterButton(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ShutterButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchCameraButton(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettakingPhoto(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettooltipTextView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoRecordRunnable(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoRecordTime(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetzoomControlView(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/ui/Components/ZoomControlView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputalertOnlyOnce(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->alertOnlyOnce:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraAnimationInProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraInitAnimation(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcameraZoom(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcanSaveCameraPreview(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcancelTakingPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputflashAnimationInProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestingPermissions(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtakingPhoto(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoRecordRunnable(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoRecordTime(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordTime:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputzoomControlAnimation(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToSelectedPhotos(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckSendMediaEnabled(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCellForIndex(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPhotoEntryAtPosition(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTopScrollOffset(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getTopScrollOffset()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaxCount(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maxCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monPhotoEditModeChanged(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onPhotoEditModeChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenCameraWithPermissionCheck(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCameraWithPermissionCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpauseCameraPreview(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCameraPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestGalleryPermission(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestGalleryPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetRecordState(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resetRecordState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresumeCameraPreview(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resumeCameraPreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentSpoilerVisible(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCurrentSpoilerVisible(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowZoomControls(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetcameraPhotos()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmediaFromExternalCamera()Z
    .locals 1

    .line 0
    sget-boolean v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmediaFromExternalCamera(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 194
    sput v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v7, p4

    move-object/from16 v0, p1

    move-object/from16 v6, p5

    .line 731
    invoke-direct {v1, v0, v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v8, 0x2

    .line 164
    new-array v3, v8, [Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    .line 166
    new-array v3, v8, [F

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    .line 167
    new-array v3, v8, [I

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    const/4 v9, 0x5

    .line 175
    new-array v3, v9, [I

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    .line 178
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 v10, 0x0

    .line 185
    iput-object v10, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

    .line 207
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    const/high16 v11, 0x42a00000    # 80.0f

    .line 216
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iput v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    .line 217
    iput v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    const/4 v12, 0x3

    .line 218
    iput v12, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    const/4 v13, 0x1

    .line 233
    iput-boolean v13, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    .line 255
    new-instance v3, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v3}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 379
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v14, 0x0

    .line 3668
    iput v14, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentItemTop:I

    move/from16 v3, p3

    .line 732
    iput-boolean v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    .line 733
    iput-boolean v7, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->needCamera:Z

    .line 734
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v3, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 735
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v3, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 736
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v15

    .line 737
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v3, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    move v3, v14

    :goto_0
    iput-boolean v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    .line 739
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 740
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v33, v1

    move-object v1, v0

    move-object/from16 v0, v33

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 747
    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 748
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x42800000    # 64.0f

    :goto_1
    move/from16 v19, v1

    goto :goto_2

    :cond_1
    const/high16 v1, 0x42600000    # 56.0f

    goto :goto_1

    :goto_2
    const/high16 v21, 0x42200000    # 40.0f

    const/16 v22, 0x0

    const/16 v16, -0x2

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x33

    const/16 v20, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 749
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 750
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    .line 754
    invoke-virtual {v1, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 755
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 756
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 757
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLines(I)V

    .line 758
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 759
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 760
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 761
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 763
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 764
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 765
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/high16 v16, 0x40800000    # 4.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/high16 v17, 0x41200000    # 10.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v14, v14, v3, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40000000    # -2.0f

    const/16 v20, 0x10

    const/high16 v21, 0x41800000    # 16.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 769
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 771
    new-instance v0, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    sget v2, Lorg/telegram/messenger/R$raw;->position_below:I

    sget v1, Lorg/telegram/messenger/R$string;->CaptionAbove:I

    .line 773
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$raw;->position_above:I

    sget v1, Lorg/telegram/messenger/R$string;->CaptionBelow:I

    .line 774
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v11, p0

    move-object/from16 v6, p5

    move-object/from16 v25, v5

    move-object v5, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v2, v1

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    .line 777
    iget-object v1, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr v1, v13

    invoke-virtual {v0, v1, v14}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    .line 779
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v3, Lorg/telegram/messenger/R$string;->AttachMediaPreviewButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->previewItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 781
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(I)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 782
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v3, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 783
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filehq:I

    sget v3, Lorg/telegram/messenger/R$string;->SendWithoutCompression:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 784
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_ungroup:I

    sget v3, Lorg/telegram/messenger/R$string;->SendWithoutGrouping:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 785
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(I)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 786
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_spoiler:I

    sget v3, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 787
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    sget v3, Lorg/telegram/messenger/R$string;->SendInHighQuality:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 788
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILandroid/view/View;)Landroid/view/View;

    .line 789
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_feature_paid:I

    sget v5, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x9

    invoke-virtual {v0, v9, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 790
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setFitSubItems(Z)V

    .line 792
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$3;

    invoke-direct {v0, v11, v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 815
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 816
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 817
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setAlpha(F)V

    .line 818
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->usePadding:Z

    .line 819
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->topOffset:I

    .line 820
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {v5, v11, v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 821
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

    invoke-direct {v5, v11, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewItemDecoration:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 822
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createCache()V

    .line 823
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 824
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 825
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 826
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 827
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v11, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 828
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v31, 0x0

    const/high16 v32, -0x3dc00000    # -48.0f

    const/16 v26, -0x1

    const/high16 v27, -0x40800000    # -1.0f

    const/16 v28, 0x77

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$4;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 866
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;

    iget v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v0, v11, v2, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;I)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 891
    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$6;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 903
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 904
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9;

    invoke-direct {v5, v11, v7, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1058
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1073
    new-instance v0, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;-><init>(Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector$RecyclerViewItemRangeSelectorDelegate;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    .line 1105
    iget-object v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 1107
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 1108
    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->iBlur3CaptureView:Landroid/view/View;

    .line 1109
    iput-boolean v13, v11, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->occupyNavigationBar:Z

    .line 1111
    new-instance v0, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v0, v2, v10, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 1112
    sget v5, Lorg/telegram/messenger/R$string;->NoPhotos:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1113
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1114
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 1115
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v7, -0x1

    invoke-static {v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-boolean v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_3

    .line 1120
    :cond_2
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 1123
    :goto_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v13}, Landroid/graphics/Paint;-><init>(I)V

    const v5, -0x25a9b3

    .line 1124
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1125
    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$8;

    invoke-direct {v5, v11, v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1153
    invoke-static {v5, v14, v0, v14}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1154
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$drawable;->system:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1155
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v9, 0x66000000

    move-object/from16 v12, v25

    invoke-direct {v5, v9, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1156
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v0, v13, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1157
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1158
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1159
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1160
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v9, v12, v10, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1161
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x2

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x31

    const/16 v23, 0x0

    const/high16 v24, 0x41800000    # 16.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$9;

    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    .line 1200
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1202
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v5, 0x7e

    const/16 v9, 0x53

    invoke-static {v7, v5, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1204
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    .line 1205
    sget v5, Lorg/telegram/messenger/R$drawable;->photos_rounded:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1206
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1209
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1210
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1211
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1212
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$drawable;->photos_arrow:I

    invoke-virtual {v0, v14, v14, v9, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1213
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1214
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-virtual {v0, v10, v14, v9, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1215
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 v26, 0x42e80000    # 116.0f

    const/high16 v21, 0x42180000    # 38.0f

    const/16 v22, 0x33

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v15, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1216
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11;

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    new-instance v0, Lorg/telegram/ui/Components/ZoomControlView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ZoomControlView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    .line 1225
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1227
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/high16 v21, 0x42480000    # 50.0f

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1228
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12;

    invoke-direct {v3, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ZoomControlView;->setDelegate(Lorg/telegram/ui/Components/ZoomControlView$ZoomControlViewDelegate;)V

    .line 1235
    new-instance v0, Lorg/telegram/ui/Components/ShutterButton;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/ShutterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    .line 1236
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v9, 0x54

    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;

    invoke-direct {v3, v11, v6, v15}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ShutterButton;->setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V

    .line 1388
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 1389
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrShutter:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1391
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    .line 1392
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1393
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v5, 0x15

    const/16 v9, 0x30

    invoke-static {v9, v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13;

    invoke-direct {v3, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1411
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move v0, v14

    :goto_4
    if-ge v0, v8, :cond_3

    .line 1414
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v3, v0

    .line 1415
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1416
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1417
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v5, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    const/16 v10, 0x33

    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1418
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14;

    invoke-direct {v5, v11}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1450
    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flash mode "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1453
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41700000    # 15.0f

    .line 1454
    invoke-virtual {v0, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1455
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1456
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->TapForVideo:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const v3, 0x40555547

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f2a7efa    # 0.666f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v9, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v0, v3, v1, v5, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1458
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v5, v14, v3, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1459
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    const/16 v25, 0x0

    const/high16 v26, 0x41800000    # 16.0f

    const/16 v20, -0x2

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x51

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$13;

    invoke-direct {v0, v11, v2, v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1470
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1471
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {v3, v11, v2, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;Z)V

    iput-object v3, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1472
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->createCache()V

    .line 1473
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1474
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v5, v14, v3, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1475
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1476
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1477
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1478
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1479
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1480
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v7, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$14;

    invoke-direct {v0, v11, v2, v14, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;IZ)V

    iput-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1487
    iget-object v1, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1488
    iget-object v0, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-void
.end method

.method private addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I
    .locals 7

    .line 1744
    iget v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1745
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1746
    iput-wide v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    .line 1747
    iput-boolean v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 1749
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1752
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1754
    :cond_0
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 1755
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotoIndices()V

    if-ltz p2, :cond_1

    .line 1757
    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    .line 1758
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {p1, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    :cond_1
    return v0

    .line 1762
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    iput-wide v5, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    .line 1763
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    cmp-long p2, v5, v2

    const/4 v1, 0x1

    if-lez p2, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    move p2, v4

    :goto_0
    iput-boolean p2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 1764
    iput-boolean v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 1765
    iput-boolean v4, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    .line 1767
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSelectedCount(Z)Z

    move-result p2

    .line 1768
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    .line 1771
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotos()V

    goto :goto_1

    .line 1773
    :cond_4
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private applyCameraViewPosition()V
    .locals 4

    .line 3126
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_2

    .line 3127
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v1, :cond_0

    .line 3128
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3131
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    mul-int/lit8 v1, v0, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    .line 3132
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 3135
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v2, :cond_2

    .line 3136
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    .line 3137
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/camera/CameraView;->setClipBottom(I)V

    .line 3138
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3139
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v1, :cond_1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v0, :cond_2

    .line 3140
    :cond_1
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3141
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3142
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3144
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private checkSelectedCount(Z)Z
    .locals 4

    .line 1781
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    move v0, v1

    .line 1782
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    rsub-int/lit8 v3, p1, 0xa

    if-le v2, v3, :cond_1

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1783
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1784
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1785
    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1788
    :cond_0
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    return v1
.end method

.method private checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z
    .locals 2

    .line 1716
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_1

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 1720
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GlobalAttachVideoRestricted:I

    .line 1721
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1720
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1722
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v1

    .line 1724
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    if-nez v0, :cond_3

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez p1, :cond_3

    .line 1725
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCanRemoveRestrictionsByBoosts()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 1728
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->GlobalAttachPhotoRestricted:I

    .line 1729
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1730
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 6

    .line 2341
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2343
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2344
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getClipLayoutBottom()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    goto :goto_1

    .line 2347
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_1

    .line 2348
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 2349
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 700
    :cond_0
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 702
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p1

    :cond_1
    sub-int/2addr p1, v1

    .line 705
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private getTopScrollOffset()I
    .locals 2

    const/high16 v0, 0x40e00000    # 7.0f

    .line 3438
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->listAdditionalH:I

    add-int/2addr v0, v1

    return v0
.end method

.method private isNoGalleryPermissions()Z
    .locals 4

    .line 3202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3204
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3206
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_3

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    .line 3209
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    .line 3210
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    if-ge v1, v2, :cond_2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3212
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$applyCameraViewPosition$18(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 3145
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_0

    .line 3146
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hideCamera$17()V
    .locals 2

    .line 2699
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2700
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 751
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$2(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V
    .locals 10

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-nez v0, :cond_0

    .line 1035
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1036
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    const/4 p1, 0x3

    :cond_0
    move v6, p1

    .line 1039
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoViewerProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-object v4, p3

    move v5, p4

    move-object v9, p5

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 1040
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 1041
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-nez p2, :cond_1

    .line 1042
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iput-boolean v2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelect:Z

    goto :goto_1

    .line 1043
    :cond_1
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p1, :cond_3

    .line 1044
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelect:Z

    .line 1045
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarWithBulletin:Lorg/telegram/messenger/Utilities$Callback0Return;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    iput-boolean p2, p1, Lorg/telegram/ui/PhotoViewer;->closePhotoAfterSelectWithAnimation:Z

    .line 1047
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz p1, :cond_4

    .line 1048
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, v2, p2}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    .line 1050
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionForAllMedia()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1051
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setCaption(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$new$3(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;IFF)V
    .locals 12

    move/from16 v1, p4

    .line 905
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v3, :cond_0

    goto/16 :goto_7

    .line 908
    :cond_0
    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v2, :cond_1

    .line 910
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    goto/16 :goto_7

    .line 915
    :cond_2
    instance-of v2, p3, Lorg/telegram/ui/Components/GalleryEmptyView;

    if-eqz v2, :cond_3

    return-void

    .line 919
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_4

    if-nez v1, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v2, :cond_4

    .line 921
    :try_start_0
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 926
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz v2, :cond_5

    .line 927
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestImagesAndVideoPermission(Landroid/app/Activity;)V

    return-void

    .line 931
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgethasCameraSpaceRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    if-ne v1, v2, :cond_6

    .line 932
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCameraByClick()V

    return-void

    :cond_6
    if-nez v1, :cond_8

    if-eqz p1, :cond_8

    .line 936
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_8

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v2, :cond_7

    goto :goto_0

    .line 1055
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCameraByClick()V

    return-void

    .line 937
    :cond_8
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgethasCameraSpaceRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    if-le v1, v2, :cond_9

    add-int/lit8 v1, v1, -0x1

    .line 940
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_b

    if-eqz p1, :cond_b

    sget-boolean p1, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz p1, :cond_b

    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 943
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    if-nez v1, :cond_d

    .line 945
    instance-of p1, p3, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;

    if-nez p1, :cond_c

    goto/16 :goto_7

    .line 948
    :cond_c
    move-object p1, p3

    check-cast p1, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;

    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    .line 949
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    :cond_d
    add-int/lit8 v1, v1, -0x1

    :cond_e
    move v8, v1

    .line 953
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getAllPhotosArray()Ljava/util/ArrayList;

    move-result-object v7

    if-ltz v8, :cond_20

    .line 954
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v8, p1, :cond_f

    goto/16 :goto_7

    .line 957
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->selectItemOnClicking()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_11

    .line 958
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 959
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_10

    const/4 v0, -0x1

    .line 961
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->addToSelectedPhotos(Lorg/telegram/messenger/MediaController$PhotoEntry;I)I

    .line 963
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    .line 965
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 966
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 967
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 968
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void

    .line 971
    :cond_11
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1, v6, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 972
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 973
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 976
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v0, :cond_13

    .line 978
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    const/16 v5, 0xb

    if-eqz v4, :cond_12

    .line 979
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    :cond_12
    :goto_1
    move-object v9, v2

    goto :goto_3

    .line 983
    :cond_13
    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v0, :cond_14

    move v5, v1

    goto :goto_1

    .line 986
    :cond_14
    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_15

    .line 987
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    :goto_2
    move-object v9, v2

    move v5, v3

    goto :goto_3

    .line 989
    :cond_15
    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowEnterCaption:Z

    if-eqz v0, :cond_16

    goto :goto_2

    :cond_16
    const/4 v5, 0x4

    goto :goto_1

    .line 996
    :goto_3
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->needEnterComment()Z

    move-result p1

    if-nez p1, :cond_17

    .line 997
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 998
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1000
    :cond_17
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_19

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_19

    .line 1001
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1002
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_18

    .line 1003
    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1004
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    .line 1006
    :cond_18
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_19

    .line 1007
    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 1011
    :cond_19
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 1013
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_1a

    .line 1014
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    goto :goto_4

    :cond_1a
    move p1, v3

    .line 1016
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v0

    iput-boolean p1, v0, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    .line 1019
    :cond_1b
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz p1, :cond_1c

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz p1, :cond_1c

    goto :goto_5

    :cond_1c
    move v1, v3

    .line 1020
    :goto_5
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1021
    instance-of v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_1d

    .line 1022
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1023
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSendMediaEnabled(Lorg/telegram/messenger/MediaController$PhotoEntry;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_7

    :cond_1d
    if-eqz v1, :cond_1e

    .line 1028
    invoke-direct {p0, v8, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCurrentSpoilerVisible(IZ)V

    .line 1032
    :cond_1e
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda28;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;ILorg/telegram/ui/ChatActivity;)V

    if-eqz v1, :cond_1f

    const-wide/16 v0, 0xfa

    goto :goto_6

    :cond_1f
    const-wide/16 v0, 0x0

    :goto_6
    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :catch_0
    :cond_20
    :goto_7
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;I)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1059
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 1062
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v6, v7, :cond_2

    sget-boolean v6, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-nez v6, :cond_2

    iget-boolean v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-nez v6, :cond_2

    .line 1063
    iget-object v7, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v7, :cond_1

    .line 1064
    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v15

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v7 .. v18}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    :cond_1
    return v4

    .line 1067
    :cond_2
    instance-of v3, v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_3

    .line 1068
    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 1069
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemRangeSelector:Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v4

    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldSelect:Z

    invoke-virtual {v6, v1, v4, v2, v3}, Lorg/telegram/ui/Components/RecyclerViewItemRangeSelector;->setIsActive(Landroid/view/View;ZIZ)Z

    :cond_3
    return v5
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 1

    .line 1217
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1220
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    .line 1221
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$6(F)V
    .locals 1

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_0

    .line 1230
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    :cond_0
    const/4 p1, 0x1

    .line 1232
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 3

    .line 1395
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1398
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, p1

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1401
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1408
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 10

    .line 1419
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1422
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1423
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getNextFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 1424
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1427
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->setCurrentFlashMode(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1428
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashAnimationInProgress:Z

    .line 1429
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-ne v4, p1, :cond_2

    aget-object v4, v2, v0

    .line 1430
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1431
    invoke-direct {p0, v4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1432
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v2, 0x42400000    # 48.0f

    .line 1434
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    aput v5, v7, v0

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {p1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1435
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    new-array v9, v6, [F

    aput v2, v9, v3

    aput v8, v9, v0

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    .line 1436
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {p1, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v9, v6, [F

    fill-array-data v9, :array_1

    .line 1437
    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v7, v9, v3

    aput-object v2, v9, v0

    aput-object v5, v9, v6

    const/4 v0, 0x3

    aput-object v8, v9, v0

    .line 1433
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xdc

    .line 1438
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1439
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1440
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;

    invoke-direct {v0, p0, p1, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1448
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$onHide$29()V
    .locals 2

    .line 3905
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$19(ZII)V
    .locals 12

    .line 3258
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 3259
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$20(Ljava/lang/Long;)V
    .locals 13

    .line 3263
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 3264
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v1 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$21(ZII)V
    .locals 12

    .line 3270
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 3271
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$22(Ljava/lang/Long;)V
    .locals 13

    .line 3275
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCaption()V

    .line 3276
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v1 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$23(Z)V
    .locals 2

    .line 3295
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->DisablePhotoSpoiler:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 3297
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_spoiler_off:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    goto :goto_1

    .line 3299
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    :goto_1
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3302
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3303
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result p1

    if-gt p1, v1, :cond_3

    .line 3304
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    return-void

    .line 3307
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3308
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result p1

    if-gt p1, v1, :cond_3

    .line 3309
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onMenuItemClick$25(Z)V
    .locals 2

    .line 3354
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz p1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->SendInStandardQuality:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->SendInHighQuality:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 3356
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_quality_sd:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    return-void

    .line 3358
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$27(Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 3421
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 3422
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setStarsPrice(J)V

    return-void
.end method

.method private synthetic lambda$onPreMeasure$30()V
    .locals 1

    .line 4021
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onShow$28(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 3849
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getCurrentItemTop()I

    move-result v0

    .line 3850
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getListTopPadding()I

    move-result p1

    .line 3851
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-le v0, v2, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method private synthetic lambda$setCurrentSpoilerVisible$0(Lorg/telegram/messenger/MediaController$PhotoEntry;ZLandroid/view/View;)V
    .locals 2

    .line 368
    instance-of v0, p3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_1

    .line 369
    check-cast p3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 370
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/high16 p1, 0x437a0000    # 250.0f

    .line 371
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(ZLjava/lang/Float;)V

    .line 372
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide p1

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, p1, p2, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setStarsPrice(JZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showAvatarConstructorFragment$10(Lorg/telegram/ui/Components/AvatarConstructorFragment;Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p6

    const/4 v3, -0x1

    .line 1703
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1548
    sget-object v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1549
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v6, 0x320

    invoke-static {v6, v6, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1550
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1551
    new-instance v8, Lorg/telegram/ui/Components/GradientTools;

    invoke-direct {v8}, Lorg/telegram/ui/Components/GradientTools;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    .line 1553
    iget v9, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    iget v10, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    iget v11, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    iget v0, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    invoke-virtual {v8, v9, v10, v11, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    goto :goto_0

    .line 1555
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->defaultColors:[[I

    aget-object v0, v0, v13

    aget v9, v0, v13

    aget v10, v0, v14

    const/4 v11, 0x2

    aget v11, v0, v11

    const/4 v12, 0x3

    aget v0, v0, v12

    invoke-virtual {v8, v9, v10, v11, v0}, Lorg/telegram/ui/Components/GradientTools;->setColors(IIII)V

    :goto_0
    const/4 v0, 0x0

    const/high16 v9, 0x44480000    # 800.0f

    .line 1557
    invoke-virtual {v8, v0, v0, v9, v9}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    const/high16 v11, 0x44480000    # 800.0f

    .line 1558
    iget-object v12, v8, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x44480000    # 800.0f

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1560
    new-instance v8, Ljava/io/File;

    const/4 v9, 0x4

    invoke-static {v9}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "avatar_background.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1562
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1565
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v10, v13, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1566
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1568
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1569
    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1570
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1571
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1573
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const v0, 0x42f00001    # 120.00001f

    float-to-int v0, v0

    const/high16 v10, 0x440c0000    # 560.0f

    float-to-int v10, v10

    .line 1581
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    .line 1582
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v15

    move/from16 p2, v9

    const/4 v9, 0x0

    if-eqz v15, :cond_1

    .line 1583
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v12

    invoke-virtual {v12, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFirstFrame(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1584
    new-instance v15, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v15}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 1585
    invoke-virtual {v15, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const v17, 0x3e051eb8    # 0.13f

    int-to-float v3, v10

    .line 1586
    invoke-virtual {v15, v0, v0, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    mul-float v3, v3, v17

    float-to-int v0, v3

    .line 1587
    invoke-virtual {v15, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1588
    invoke-virtual {v15, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1589
    invoke-virtual {v15}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 1590
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_1
    const v17, 0x3e051eb8    # 0.13f

    .line 1592
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1593
    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3, v13, v13, v14}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    :cond_2
    int-to-float v0, v0

    int-to-float v3, v10

    .line 1595
    invoke-virtual {v12, v0, v0, v3, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    mul-float v3, v3, v17

    float-to-int v0, v3

    .line 1596
    invoke-virtual {v12, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1597
    invoke-virtual {v12, v7}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1600
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1602
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1604
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1605
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v7, v13, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1606
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1608
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1609
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1610
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 1611
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1613
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1617
    :goto_3
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->hasAnimation()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1618
    new-instance v18, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v18 .. v29}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move-object/from16 v0, v18

    .line 1619
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 1621
    iget-wide v11, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    move v5, v10

    const-wide/16 v9, 0x0

    cmp-long v3, v11, v9

    if-eqz v3, :cond_7

    .line 1622
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;-><init>()V

    .line 1623
    iget-wide v11, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->documentId:J

    iput-wide v11, v3, Lorg/telegram/tgnet/TLRPC$TL_videoSizeEmojiMarkup;->emoji_id:J

    .line 1624
    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    iget-object v12, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v12, v12, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    iget-object v11, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v11, v11, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v11, :cond_3

    .line 1626
    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    :cond_3
    iget-object v11, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v11, v11, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v11, :cond_4

    .line 1629
    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    :cond_4
    iget-object v11, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v11, v11, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v11, :cond_5

    .line 1632
    iget-object v12, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    :cond_5
    iput-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    :cond_6
    move-object v12, v8

    goto :goto_4

    .line 1635
    :cond_7
    iget-object v3, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_6

    .line 1636
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;-><init>()V

    .line 1637
    iget-object v11, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v12, v8

    iget-wide v7, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v7, v3, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->sticker_id:J

    .line 1638
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_videoSizeStickerMarkup;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1639
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    iget-object v8, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v8, v8, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    iget-object v7, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v7, v7, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color2:I

    if-eqz v7, :cond_8

    .line 1641
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    :cond_8
    iget-object v7, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v7, v7, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color3:I

    if-eqz v7, :cond_9

    .line 1644
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    :cond_9
    iget-object v7, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->backgroundGradient:Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;

    iget v7, v7, Lorg/telegram/ui/Components/AvatarConstructorFragment$BackgroundGradient;->color4:I

    if-eqz v7, :cond_a

    .line 1647
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$VideoSize;->background_colors:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    :cond_a
    iput-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->emojiMarkup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 1652
    :goto_4
    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1653
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 1654
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 1655
    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 1656
    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 1657
    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 1658
    iput-boolean v14, v3, Lorg/telegram/messenger/VideoEditedInfo;->isPhoto:Z

    const/4 v6, -0x1

    .line 1659
    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 1660
    iput-boolean v14, v3, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    .line 1662
    iput-wide v9, v3, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    long-to-float v6, v9

    iput v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->start:F

    .line 1663
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AvatarConstructorFragment$PreviewView;->getDuration()J

    move-result-wide v6

    iput-wide v6, v3, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 1664
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/16 v3, 0x1e

    iput v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->framerate:I

    .line 1666
    iput-wide v9, v2, Lorg/telegram/messenger/VideoEditedInfo;->avatarStartTime:J

    .line 1667
    iget-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    long-to-float v3, v6

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v3, v8

    const/high16 v8, 0x47e10000    # 115200.0f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    int-to-long v8, v3

    iput-wide v8, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    .line 1668
    iput-wide v6, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedDuration:J

    .line 1670
    new-instance v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v2}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 1671
    iput-byte v13, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    if-nez p5, :cond_b

    .line 1674
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    move-wide/from16 v6, p3

    invoke-static {v3, v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object/from16 v3, p5

    :goto_5
    if-nez v3, :cond_c

    goto/16 :goto_8

    .line 1679
    :cond_c
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 1680
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    const v5, 0x3f333333    # 0.7f

    .line 1681
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 1682
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    const v5, 0x3e19999a    # 0.15f

    .line 1683
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 1684
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 1685
    iput-object v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x0

    .line 1686
    iput-object v15, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 1687
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v3, v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    move/from16 v5, v17

    .line 1688
    iput v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    .line 1689
    invoke-static {v3, v14}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1690
    :cond_d
    invoke-static {v3, v14}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v5

    .line 1691
    iget-byte v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    if-eqz v5, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v14, p2

    :goto_6
    or-int v5, v6, v14

    int-to-byte v5, v5

    iput-byte v5, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1693
    :cond_f
    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v6, -0x1

    .line 1694
    iput v6, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 1695
    iget-byte v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    iput-byte v3, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 1698
    :cond_10
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    .line 1699
    iget-object v3, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v3, v3, Lorg/telegram/messenger/VideoEditedInfo;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1701
    :cond_11
    new-instance v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v16}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move-object v0, v5

    .line 1703
    :goto_7
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-interface/range {v2 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    move-object/from16 v2, p1

    .line 1706
    iget-boolean v0, v2, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    if-nez v0, :cond_13

    .line 1707
    iget-object v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_12

    .line 1708
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 1710
    :cond_12
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_13
    :goto_8
    return-void
.end method

.method private synthetic lambda$showCamera$16()V
    .locals 7

    .line 2614
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2615
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getNextFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2617
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_4

    .line 2619
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2620
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2621
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2624
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_4

    .line 2626
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    if-nez v0, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2627
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    if-nez v0, :cond_3

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 2628
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2631
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/messenger/R$drawable;->camera_revert1:I

    goto :goto_4

    :cond_5
    sget v3, Lorg/telegram/messenger/R$drawable;->camera_revert2:I

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2632
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->hasFrontFaceCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v4

    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2633
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v0, :cond_7

    .line 2634
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    .line 2635
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 2636
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v4

    .line 2635
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2638
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2639
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2654
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2656
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->afterCameraInitRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 2657
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$showZoomControls$14()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2274
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 2275
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$showZoomControls$15()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2296
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    const/4 v0, 0x0

    .line 2297
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$updateAlbumsDropDown$13(ILandroid/view/View;)V
    .locals 0

    .line 1899
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    .line 1900
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private maxCount()I
    .locals 2

    .line 1737
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1738
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->quickReplyMessagesLimit:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method private onPhotoEditModeChanged(Z)V
    .locals 0

    return-void
.end method

.method private openCameraByClick()V
    .locals 13

    .line 1521
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1522
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V

    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    if-eqz v1, :cond_1

    .line 1525
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isCaptionAbove()Z

    move-result v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v1 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(IZZIIJZZJ)V

    :cond_1
    return-void
.end method

.method private openCameraWithPermissionCheck()V
    .locals 3

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1517
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCameraByClick()V

    return-void
.end method

.method private pauseCameraPreview()V
    .locals 2

    .line 3913
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_0

    .line 3914
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->stopPreview(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 3917
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1910
    :cond_0
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    .line 1911
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1912
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hitRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 1915
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v3, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-nez v3, :cond_10

    .line 1916
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1917
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    .line 1918
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    goto :goto_0

    .line 1920
    :cond_4
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    .line 1921
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    .line 1922
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    .line 1924
    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    .line 1925
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    goto/16 :goto_2

    .line 1927
    :cond_5
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    if-eqz v3, :cond_10

    .line 1928
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x6

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-ne v3, v4, :cond_c

    .line 1929
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    const v14, 0x3ecccccd    # 0.4f

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v4, :cond_9

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-nez v3, :cond_9

    .line 1930
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 1931
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    if-nez v3, :cond_6

    .line 1932
    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v2

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_10

    .line 1933
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    .line 1934
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    goto/16 :goto_2

    .line 1937
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v3, :cond_10

    .line 1938
    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    sub-float v3, v1, v3

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1939
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pinchStartDistance:F

    .line 1940
    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    add-float/2addr v1, v3

    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    cmpg-float v3, v1, v13

    if-gez v3, :cond_7

    .line 1942
    iput v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    goto :goto_1

    :cond_7
    cmpl-float v1, v1, v12

    if-lez v1, :cond_8

    .line 1944
    iput v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    .line 1946
    :cond_8
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 1947
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1948
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    .line 1949
    invoke-direct {v0, v5, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showZoomControls(ZZ)V

    goto/16 :goto_2

    .line 1953
    :cond_9
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1954
    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    sub-float v3, v1, v3

    .line 1955
    iget-boolean v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    if-eqz v12, :cond_a

    .line 1956
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_10

    .line 1957
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->maybeStartDraging:Z

    .line 1958
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    goto/16 :goto_2

    .line 1960
    :cond_a
    iget-boolean v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-eqz v12, :cond_10

    .line 1961
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v12, :cond_10

    sget-boolean v14, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-nez v14, :cond_10

    .line 1962
    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v14

    add-float/2addr v14, v3

    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 1963
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastY:F

    .line 1964
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1965
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_b

    .line 1966
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1967
    iput-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    .line 1969
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1970
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1971
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1972
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    new-array v11, v5, [F

    aput v13, v11, v2

    .line 1973
    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-array v12, v5, [F

    aput v13, v12, v2

    .line 1974
    invoke-static {v11, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v14, v5, [F

    aput v13, v14, v2

    .line 1975
    invoke-static {v12, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v14, v14, v2

    new-array v15, v5, [F

    aput v13, v15, v2

    .line 1976
    invoke-static {v14, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v15, v15, v5

    move/from16 v16, v4

    new-array v4, v5, [F

    aput v13, v4, v2

    .line 1977
    invoke-static {v15, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v17, v6

    new-array v6, v5, [F

    aput v13, v6, v2

    .line 1978
    invoke-static {v15, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v3, v9, v2

    aput-object v11, v9, v5

    aput-object v12, v9, v16

    aput-object v14, v9, v8

    aput-object v4, v9, v7

    aput-object v6, v9, v17

    .line 1972
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xdc

    .line 1979
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1980
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1981
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_c
    move/from16 v16, v4

    move/from16 v17, v6

    .line 1986
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v8, :cond_d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v5, :cond_d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v9, :cond_10

    .line 1987
    :cond_d
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pressed:Z

    .line 1988
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zooming:Z

    .line 1991
    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    if-eqz v3, :cond_f

    .line 1992
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dragging:Z

    .line 1993
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v1, :cond_10

    .line 1994
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_e

    .line 1995
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    goto/16 :goto_2

    .line 1997
    :cond_e
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1998
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    new-array v4, v5, [F

    aput v13, v4, v2

    .line 1999
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v3, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    new-array v6, v5, [F

    aput v12, v6, v2

    .line 2000
    invoke-static {v4, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v13, v5, [F

    aput v12, v13, v2

    .line 2001
    invoke-static {v6, v10, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v13, v13, v2

    new-array v14, v5, [F

    aput v12, v14, v2

    .line 2002
    invoke-static {v13, v10, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v14, v14, v5

    new-array v15, v5, [F

    aput v12, v15, v2

    .line 2003
    invoke-static {v14, v10, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v18, v2

    new-array v2, v5, [F

    aput v12, v2, v18

    .line 2004
    invoke-static {v15, v10, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v3, v9, v18

    aput-object v4, v9, v5

    aput-object v6, v9, v16

    aput-object v13, v9, v8

    aput-object v14, v9, v7

    aput-object v2, v9, v17

    .line 1998
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xfa

    .line 2005
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2006
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2007
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2008
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_f
    move/from16 v18, v2

    .line 2011
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v2, :cond_10

    iget-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomWas:Z

    if-nez v3, :cond_10

    .line 2012
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2013
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    aget v3, v3, v18

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 2014
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->viewPosition:[I

    aget v3, v3, v5

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 2015
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {v3, v2, v1}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    :cond_10
    :goto_2
    return v5
.end method

.method private requestGalleryPermission()V
    .locals 4

    .line 1499
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x4

    if-lt v0, v1, :cond_0

    .line 1500
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private resetRecordState()V
    .locals 7

    .line 2023
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const/high16 v6, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_1

    .line 2028
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2030
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2031
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2032
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 2034
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2035
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoRecordRunnable:Ljava/lang/Runnable;

    .line 2036
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    return-void
.end method

.method private resumeCameraPreview()V
    .locals 2

    const/4 v0, 0x0

    .line 3923
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    .line 3924
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_0

    .line 3925
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 3928
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private saveLastCameraBitmap()V
    .locals 10

    .line 2706
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2710
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 2711
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2713
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2714
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2716
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42a00000    # 80.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    const/16 v3, 0x50

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    .line 2719
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2721
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 2722
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v1

    const-string v2, "cthumb.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2723
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2724
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x57

    invoke-virtual {v4, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2725
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2726
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 2358
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    .line 2368
    :pswitch_0
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_auto:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2369
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashAuto:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 2360
    :pswitch_1
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_off:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2361
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOff:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 2364
    :pswitch_2
    sget p2, Lorg/telegram/messenger/R$drawable;->flash_on:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2365
    sget p2, Lorg/telegram/messenger/R$string;->AccDescrCameraFlashOn:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x2dddaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCurrentSpoilerVisible(IZ)V
    .locals 2

    .line 359
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 360
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getCurrentIndex()I

    move-result p1

    .line 361
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getImagesArrLocals()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 362
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v1, :cond_1

    .line 365
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    :cond_1
    return-void
.end method

.method private shouldLoadAllMedia()Z
    .locals 2

    .line 2574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-nez v1, :cond_0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private showZoomControls(ZZ)V
    .locals 7

    .line 2268
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    const-wide/16 v0, 0x7d0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    :cond_1
    if-eqz p1, :cond_7

    .line 2270
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 2271
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2273
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 2280
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_4

    .line 2281
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2283
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2284
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0xb4

    .line 2285
    invoke-virtual {p2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2286
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz p1, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    new-array v5, v2, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v3, v2, v6

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2287
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {p2, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2293
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-eqz p1, :cond_7

    .line 2295
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method private updateAlbumsDropDown()V
    .locals 9

    .line 1860
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 1861
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v0, :cond_1

    .line 1863
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    goto :goto_0

    .line 1866
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotoAlbums:Ljava/util/ArrayList;

    .line 1868
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    .line 1869
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 1887
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    .line 1889
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1890
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1892
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 1894
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 1895
    new-instance v3, Lorg/telegram/ui/Stories/recorder/AlbumButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v6, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Stories/recorder/AlbumButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/lang/CharSequence;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1896
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v1, 0xa

    .line 1898
    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private updatePhotoStarsPrice()V
    .locals 2

    .line 1820
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private updateStarsItem()V
    .locals 4

    .line 3564
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_0

    return-void

    .line 3565
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3567
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v3, Lorg/telegram/messenger/R$string;->PaidMediaPriceButton:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3568
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    long-to-int v0, v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Stars"

    invoke-static {v3, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    return-void

    .line 3570
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->PaidMediaButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->starsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public applyCaption(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 3577
    :goto_0
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    if-nez v1, :cond_2

    .line 3579
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3580
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3581
    instance-of v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 3582
    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3583
    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController$PhotoEntry;->clone()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v3

    .line 3584
    new-array v4, v5, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    .line 3585
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    .line 3586
    aget-object v4, v4, v0

    iput-object v4, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    .line 3588
    :cond_0
    instance-of v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_1

    .line 3589
    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3590
    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController$SearchImage;->clone()Lorg/telegram/messenger/MediaController$SearchImage;

    move-result-object v3

    .line 3591
    new-array v4, v5, [Ljava/lang/CharSequence;

    aput-object p1, v4, v0

    .line 3592
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lorg/telegram/messenger/MediaDataController;->getEntities([Ljava/lang/CharSequence;Z)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->entities:Ljava/util/ArrayList;

    .line 3593
    aget-object v4, v4, v0

    iput-object v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    .line 3596
    :cond_1
    :goto_1
    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public canDismissWithTouchOutside()Z
    .locals 1

    .line 4062
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canScheduleMessages()Z
    .locals 3

    .line 3775
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3776
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3777
    instance-of v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    .line 3778
    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3779
    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3783
    :cond_1
    instance-of v2, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_0

    .line 3784
    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3785
    iget v1, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->ttl:I

    if-eqz v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public captionForAllMedia()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3603
    :goto_0
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3604
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3606
    instance-of v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v4, :cond_0

    .line 3607
    check-cast v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3608
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$MediaEditState;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    .line 3609
    :cond_0
    instance-of v4, v3, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v4, :cond_1

    .line 3610
    check-cast v3, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3611
    iget-object v3, v3, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3613
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-gt v2, v1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public checkCamera(Z)V
    .locals 7

    .line 2375
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->needCamera:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2378
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    .line 2379
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    .line 2380
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_1

    .line 2382
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_d

    .line 2384
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 2387
    :cond_2
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 2388
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    goto :goto_2

    .line 2390
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2391
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const/16 p1, 0x21

    const/16 v0, 0x11

    if-lt v3, p1, :cond_5

    .line 2395
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const-string v6, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v5, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 2397
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    :catch_0
    :cond_6
    :goto_1
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 2405
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->hasCameraCache:Z

    if-eqz p1, :cond_9

    .line 2406
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    .line 2408
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    .line 2417
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-ne v1, p1, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eq v2, p1, :cond_b

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz p1, :cond_b

    .line 2418
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2420
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBackDrawable()Landroid/graphics/drawable/ColorDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez p1, :cond_c

    .line 2421
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V

    .line 2423
    :cond_c
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eq v1, p1, :cond_d

    .line 2424
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onCameraStateChanged()V

    :cond_d
    :goto_3
    return-void
.end method

.method protected checkCameraViewPosition()V
    .locals 10

    .line 3028
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer;->stickerMakerView:Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Paint/Views/StickerMakerView;->isThanosInProgress:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 3031
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_1

    .line 3032
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 3034
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3036
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 3038
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v3, :cond_3

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v0, :cond_4

    .line 3039
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3041
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 3044
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_5

    .line 3045
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    .line 3048
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->recordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 3049
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3050
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-nez v3, :cond_6

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3053
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v0, :cond_8

    goto/16 :goto_6

    .line 3056
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ge v3, v0, :cond_11

    .line 3058
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3059
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v6, :cond_10

    .line 3060
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_5

    .line 3064
    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v0, v3

    .line 3065
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v0

    .line 3066
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v6, v7

    .line 3068
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 3071
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->inBubbleMode:Z

    if-nez v7, :cond_a

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_a
    move v7, v1

    :goto_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatAttachAlert;->topCommentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 3072
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lorg/telegram/ui/Components/MentionsContainerView;->isReversed()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3073
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v9, v9, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/MentionsContainerView;->clipTop()F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v9, v9, Lorg/telegram/ui/Components/ChatAttachAlert;->currentPanTranslationY:F

    sub-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_b
    cmpg-float v8, v0, v7

    if-gez v8, :cond_c

    sub-float/2addr v7, v0

    goto :goto_3

    :cond_c
    move v7, v4

    .line 3082
    :goto_3
    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    cmpl-float v8, v7, v8

    if-eqz v8, :cond_d

    .line 3083
    iput v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    .line 3084
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v7, :cond_d

    .line 3085
    invoke-virtual {v7}, Landroid/view/View;->invalidateOutline()V

    .line 3086
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v7}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    .line 3090
    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 3091
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    .line 3092
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v8, :cond_e

    .line 3093
    invoke-virtual {v8}, Lorg/telegram/ui/Components/MentionsContainerView;->clipBottom()F

    move-result v8

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    .line 3096
    :cond_e
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v0

    cmpl-float v8, v8, v7

    if-lez v8, :cond_f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 3097
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v0, v7

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    goto :goto_4

    .line 3099
    :cond_f
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetBottomY:F

    .line 3102
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aput v6, v0, v1

    .line 3103
    aput v3, v0, v2

    .line 3104
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->applyCameraViewPosition()V

    return-void

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3110
    :cond_11
    :goto_5
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_13

    .line 3111
    :cond_12
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetX:F

    .line 3112
    iput v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewOffsetY:F

    .line 3113
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_13

    .line 3114
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    .line 3115
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    .line 3119
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/high16 v3, -0x3c380000    # -400.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aput v4, v0, v2

    .line 3122
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->applyCameraViewPosition()V

    :cond_14
    :goto_6
    return-void
.end method

.method public checkColors()V
    .locals 4

    .line 3701
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    .line 3702
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    .line 3703
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 3704
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3706
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3707
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    goto :goto_1

    :cond_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3708
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    goto :goto_2

    :cond_2
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    :goto_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 3709
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->forceDarkTheme:Z

    if-eqz v2, :cond_3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarUnscrolled:I

    goto :goto_3

    :cond_3
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    :goto_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 3710
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v0

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public checkStorage()V
    .locals 1

    .line 3217
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz v0, :cond_1

    .line 3218
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    .line 3220
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isNoGalleryPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-nez v0, :cond_0

    .line 3222
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loadGalleryPhotos()V

    .line 3224
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3225
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public clearSelectedPhotos()V
    .locals 5

    .line 1831
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1834
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1835
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1836
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1837
    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    goto :goto_0

    .line 1839
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1840
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1842
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1843
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 1844
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1845
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1846
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1847
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->imagePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1849
    :cond_2
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1850
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1853
    :cond_4
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1855
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 1856
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeCamera(Z)V
    .locals 8

    .line 2833
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->takingPhoto:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2836
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 2837
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    aput v1, v0, v3

    .line 2838
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2839
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2840
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlHideRunnable:Ljava/lang/Runnable;

    .line 2842
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-static {v0, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 2844
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    .line 2846
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    .line 2847
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_3

    .line 2848
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2850
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2851
    sget-boolean v4, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v4, :cond_4

    .line 2852
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    goto :goto_1

    .line 2854
    :cond_4
    new-array v4, v2, [F

    aput v0, v4, v5

    const-string v6, "cameraOpenProgress"

    invoke-static {p0, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2856
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    new-array v6, v2, [F

    aput v0, v6, v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    new-array v6, v2, [F

    aput v0, v6, v5

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2858
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v6, v2, [F

    aput v0, v6, v5

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v2, [F

    aput v0, v6, v5

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    :goto_2
    if-ge v4, v3, :cond_6

    .line 2861
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 2862
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v4

    new-array v2, v2, [F

    aput v0, v2, v5

    invoke-static {v3, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2867
    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 2868
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2869
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0xdc

    .line 2870
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2871
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2872
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2906
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    .line 2908
    :cond_7
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    .line 2909
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 2910
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2911
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    aput v5, v2, v5

    .line 2912
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2913
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2914
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2915
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2916
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2917
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2918
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2919
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2920
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    move v1, v5

    :goto_4
    if-ge v1, v3, :cond_9

    .line 2922
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 2923
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v2, v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2927
    :cond_9
    :goto_5
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    .line 2928
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_a

    const/16 v1, 0x1e

    .line 2929
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    .line 2930
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2932
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_b

    .line 2933
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2935
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onCameraStateChanged()V

    .line 2937
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_c

    .line 2938
    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2940
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v0, 0x581e0

    .line 2942
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_e

    .line 2943
    invoke-virtual {v0, v5, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->showTexture(ZZ)V

    :cond_e
    :goto_7
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 4245
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    const/4 p3, 0x0

    if-ne p1, p2, :cond_8

    .line 4246
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz p1, :cond_9

    .line 4247
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4248
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    .line 4250
    :cond_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4252
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz p1, :cond_1

    goto :goto_2

    .line 4254
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, p3

    .line 4255
    :goto_1
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 4256
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4257
    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v2, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne v0, v1, :cond_2

    .line 4258
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 4253
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 4263
    :cond_4
    :goto_3
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    .line 4264
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 4265
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 4266
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 4267
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_7

    .line 4268
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge p3, p1, :cond_7

    .line 4269
    sget-object p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 4270
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4271
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photosByIds:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_6

    .line 4273
    instance-of v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_5

    .line 4274
    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 4275
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->copyFrom(Lorg/telegram/messenger/MediaController$MediaEditState;)V

    .line 4277
    :cond_5
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 4281
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAlbumsDropDown()V

    return-void

    .line 4283
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    if-ne p1, p2, :cond_9

    .line 4284
    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_9
    return-void
.end method

.method protected getAllPhotosArray()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_1

    .line 715
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 718
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 720
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    return-object v0

    .line 722
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    return-object v0

    .line 725
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getButtonsHideOffset()I
    .locals 2

    .line 3691
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getButtonsHideOffset()I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCameraOpenProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3024
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 5

    .line 3672
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentItemTop:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 3674
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const v0, 0x7fffffff

    return v0

    .line 3677
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3678
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 3679
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->listAdditionalH:I

    sub-int/2addr v0, v2

    const/high16 v2, 0x40e00000    # 7.0f

    .line 3680
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    .line 3681
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-lt v0, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3684
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v0

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3685
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 3686
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentItemTop:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 3696
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 3665
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getSelectedItemsCount()I
    .locals 1

    .line 3443
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3155
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectedPhotosCount()I
    .locals 4

    .line 3448
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3449
    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_0

    .line 3450
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3451
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSelectedPhotosHighQualityCount()I
    .locals 4

    .line 3461
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3462
    instance-of v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_0

    .line 3463
    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3464
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_0

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->editedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSelectedPhotosOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3159
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStarsPrice()J
    .locals 2

    .line 1796
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1797
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1798
    iget-wide v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hideCamera(Z)V
    .locals 2

    .line 2688
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2691
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->saveLastCameraBitmap()V

    .line 2692
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewItemDecoration:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->updateBitmap()V

    .line 2693
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    .line 2694
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 2695
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2696
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    .line 2698
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    .line 2702
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->canSaveCameraPreview:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public loadGalleryPhotos()V
    .locals 1

    .line 2563
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2564
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_0

    .line 2566
    :cond_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2569
    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_1
    return-void
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResultFragment(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v7, p3

    .line 2735
    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->destroyed:Z

    if-eqz v2, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v14, 0x1

    .line 2738
    sput-boolean v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaFromExternalCamera:Z

    const/4 v15, 0x0

    if-nez v0, :cond_1

    .line 2740
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2741
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 2742
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 2745
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2746
    iput-boolean v14, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2747
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2748
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    :try_start_1
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v2

    :goto_0
    move v10, v3

    goto :goto_1

    :catch_0
    move v3, v15

    :catch_1
    move v11, v15

    goto :goto_0

    .line 2751
    :goto_1
    new-instance v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v3, v4, -0x1

    sput v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v2 .. v13}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MediaController$PhotoEntry;->setOrientation(Landroid/util/Pair;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    .line 2752
    iput-boolean v14, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->canDeleteAfter:Z

    .line 2753
    invoke-virtual {v1, v0, v15, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    goto/16 :goto_c

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 2756
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 2757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pic path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 2760
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object/from16 v0, p2

    :goto_2
    if-eqz v0, :cond_a

    .line 2765
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2767
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_4

    .line 2768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video record uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2770
    :cond_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2771
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_5

    .line 2772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolved path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 2774
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move-object v0, v7

    .line 2780
    :cond_7
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_8

    check-cast v3, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2781
    :cond_8
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Ljava/lang/String;)V

    :cond_9
    move-object v7, v2

    goto :goto_3

    :cond_a
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_b

    if-eqz v7, :cond_b

    .line 2786
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2787
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v7, v0

    :goto_4
    const-wide/16 v3, 0x0

    .line 2795
    :try_start_2
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2796
    :try_start_3
    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 2797
    invoke-virtual {v5, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2799
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-float v0, v8

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    double-to-int v0, v2

    int-to-long v3, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_5
    move-object v2, v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object v2, v5

    goto :goto_7

    .line 2806
    :cond_c
    :goto_6
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 2809
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v5, v2

    goto :goto_5

    :catch_4
    move-exception v0

    .line 2802
    :goto_7
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_d

    .line 2806
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2812
    :cond_d
    :goto_8
    invoke-static {v7, v14}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-2147483648_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLastLocalId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".jpg"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2814
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x4

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2816
    :try_start_7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2817
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x37

    invoke-virtual {v2, v6, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    .line 2819
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2821
    :goto_9
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 2823
    new-instance v16, Lorg/telegram/messenger/MediaController$PhotoEntry;

    sget v18, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    add-int/lit8 v0, v18, -0x1

    sput v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastImageId:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    const-wide/16 v26, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v27}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZIIJ)V

    move-object/from16 v0, v16

    long-to-int v2, v3

    .line 2824
    iput v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    .line 2825
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    .line 2826
    invoke-virtual {v1, v0, v15, v14}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V

    goto :goto_c

    :goto_a
    if-eqz v5, :cond_e

    .line 2806
    :try_start_8
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 2809
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2811
    :cond_e
    :goto_b
    throw v2

    :cond_f
    :goto_c
    return-void
.end method

.method public onButtonsTranslationYUpdated()V
    .locals 0

    .line 3799
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 3800
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    .line 4077
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentPanTranslationY:F

    .line 4078
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 4079
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p1, :cond_0

    .line 4080
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 4081
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    .line 4083
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4120
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4122
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_1

    .line 4123
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCustomLayout(Landroid/view/View;IIII)Z
    .locals 8

    sub-int v0, p4, p2

    sub-int p3, p5, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4178
    :goto_0
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    .line 4179
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/high16 v6, 0x42fc0000    # 126.0f

    const/high16 v7, 0x42c00000    # 96.0f

    if-ne p1, v5, :cond_4

    const/high16 p1, 0x435e0000    # 222.0f

    if-eqz v3, :cond_2

    .line 4181
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 4182
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p5, p1

    sub-int/2addr p1, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p5, v4

    invoke-virtual {p2, v2, p1, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 4184
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p5, p2

    sub-int/2addr p2, v4

    sub-int/2addr p5, v4

    invoke-virtual {p1, v2, p2, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 4187
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    .line 4188
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p4, p1

    sub-int/2addr p1, v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p3, v4

    invoke-virtual {p2, p1, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 4190
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p2, v4

    sub-int/2addr p3, v4

    invoke-virtual {p1, p2, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    :goto_1
    return v1

    .line 4194
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-ne p1, v5, :cond_8

    const/high16 p1, 0x43300000    # 176.0f

    const/high16 p2, 0x43820000    # 260.0f

    const/high16 v5, 0x439b0000    # 310.0f

    if-eqz v3, :cond_6

    .line 4196
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5

    .line 4197
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int p3, p5, p3

    sub-int/2addr p3, v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p5, p2

    sub-int/2addr p5, v4

    invoke-virtual {p1, v2, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 4199
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p5, p1

    sub-int/2addr p1, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p5, v4

    invoke-virtual {p2, v2, p1, v0, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 4202
    :cond_6
    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-nez p5, :cond_7

    .line 4203
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int p5, p4, p5

    sub-int/2addr p5, v4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p3, v4

    invoke-virtual {p1, p5, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 4205
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, p4, p1

    sub-int/2addr p1, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p3, v4

    invoke-virtual {p2, p1, v2, p4, p3}, Landroid/view/View;->layout(IIII)V

    :goto_2
    return v1

    .line 4209
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    if-ne p1, v5, :cond_c

    const/high16 p1, 0x43270000    # 167.0f

    if-eqz v3, :cond_a

    .line 4213
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 4214
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p5, p1

    .line 4215
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 4216
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 4217
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p5, p1

    :cond_9
    sub-int/2addr p5, v4

    goto :goto_3

    .line 4221
    :cond_a
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int v0, p4, p1

    .line 4222
    div-int/lit8 p3, p3, 0x2

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int p5, p3, p1

    .line 4223
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 4224
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 4225
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v0, p1

    .line 4228
    :cond_b
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v0

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p5

    invoke-virtual {p1, v0, p5, p2, p3}, Landroid/view/View;->layout(IIII)V

    return v1

    .line 4230
    :cond_c
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p1, p4, :cond_e

    const/high16 p4, 0x42b00000    # 88.0f

    if-eqz v3, :cond_d

    .line 4232
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p3, p2

    sub-int/2addr p3, v4

    .line 4233
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1, v2, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_d
    add-int/2addr p2, v0

    .line 4235
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    .line 4236
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :goto_4
    return v1

    :cond_e
    return v2
.end method

.method public onCustomMeasure(Landroid/view/View;II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4131
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_1

    .line 4132
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    if-nez p1, :cond_8

    .line 4133
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    return v1

    .line 4136
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_3

    const/high16 p1, 0x42fc0000    # 126.0f

    if-eqz v2, :cond_2

    .line 4138
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 4140
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_1
    return v1

    .line 4143
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-ne p1, v3, :cond_5

    const/high16 p1, 0x42480000    # 50.0f

    if-eqz v2, :cond_4

    .line 4145
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    .line 4147
    :cond_4
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_2
    return v1

    .line 4150
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    if-ne p1, v3, :cond_8

    .line 4151
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    const/high16 p1, 0x42a00000    # 80.0f

    const/high16 v5, 0x41000000    # 8.0f

    if-eqz v2, :cond_6

    .line 4153
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    .line 4154
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_7

    .line 4155
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4156
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 4157
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 4160
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 4161
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-eq p1, v1, :cond_7

    .line 4162
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p1, v0, p2, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 4163
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 4164
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 4167
    :cond_7
    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerViewIgnoreLayout:Z

    return v1

    :cond_8
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 3629
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3630
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 3622
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3624
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onDestroy()V

    return-void
.end method

.method public onDismiss()Z
    .locals 2

    .line 4098
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4101
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_1

    .line 4102
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    return v1

    .line 4105
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onDismissWithButtonClick(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4093
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return-void
.end method

.method public onHidden()V
    .locals 3

    .line 3970
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3971
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    .line 3973
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3974
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v2, :cond_1

    .line 3975
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    goto :goto_0

    .line 3978
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onHide()V
    .locals 3

    const/4 v0, 0x1

    .line 3891
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    .line 3892
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3894
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3895
    instance-of v2, v2, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v2, :cond_0

    .line 3896
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->saveLastCameraBitmap()V

    goto :goto_1

    .line 3899
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewItemDecoration:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewItemDecoration;->updateBitmap()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3902
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 3903
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3905
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3906
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3908
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->pauseCameraPreview()V

    return-void
.end method

.method public onHideShowProgress(F)V
    .locals 1

    .line 3879
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_1

    .line 3880
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 3881
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3882
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3883
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 3884
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onInit(ZZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 3715
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    .line 3716
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->videoEnabled:Z

    .line 3717
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->photoEnabled:Z

    .line 3718
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    .line 3719
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const p2, 0x3e4ccccd    # 0.2f

    .line 3720
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 3721
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 3723
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of p2, p2, Lorg/telegram/ui/ChatActivity;

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_8

    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget p2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez p2, :cond_8

    .line 3724
    sget-object p2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3725
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz p2, :cond_5

    .line 3726
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->NoPhotos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 3727
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {p1, v1, v1, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    goto :goto_3

    .line 3729
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 3730
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p3, Lorg/telegram/messenger/R$raw;->media_forbidden:I

    const/16 v2, 0x96

    invoke-virtual {p2, p3, v2, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setLottie(III)V

    const/4 p2, 0x7

    .line 3731
    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3732
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->GlobalAttachMediaRestricted:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 3733
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->isBannedForever(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3734
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p2, Lorg/telegram/messenger/R$string;->AttachMediaRestrictedForever:I

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "AttachMediaRestrictedForever"

    invoke-static {v0, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 3736
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget p3, Lorg/telegram/messenger/R$string;->AttachMediaRestricted:I

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "AttachMediaRestricted"

    invoke-static {p1, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 3740
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3741
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_3

    .line 3743
    :cond_9
    sget-object p1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3747
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isNoGalleryPermissions()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    .line 3749
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_a

    move p1, v1

    .line 3750
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 p3, 0x64

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 3751
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3752
    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController$PhotoEntry;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 3755
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    .line 3756
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 3757
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const p2, 0xf4240

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3758
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3760
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3762
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz p1, :cond_b

    .line 3764
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->loading:Z

    .line 3765
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz p1, :cond_b

    .line 3766
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 3769
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateAlbumsDropDown()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 3983
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 3984
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastNotifyWidth:I

    .line 3985
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    if-eqz v0, :cond_0

    .line 3986
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3989
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 3990
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 3242
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCaptionAbove(Z)V

    .line 3243
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->captionAbove:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;->setState(ZZ)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_2

    .line 3247
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    if-lez v0, :cond_2

    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 3248
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3249
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->slowmode_enabled:Z

    if-eqz v0, :cond_2

    .line 3250
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Slowmode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SlowmodeSendError:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_2
    if-nez p1, :cond_4

    .line 3256
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3257
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 3262
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v1

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v3

    add-int/2addr p1, v3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void

    :cond_4
    if-ne p1, v1, :cond_6

    .line 3268
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_5

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3269
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 3274
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getDialogId()J

    move-result-wide v1

    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAdditionalMessagesCount()I

    move-result v3

    add-int/2addr p1, v3

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {v0, v1, v2, p1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void

    :cond_6
    const-wide/16 v2, 0xc8

    const/4 v0, 0x3

    const/4 v4, 0x0

    if-eq p1, v0, :cond_18

    const/16 v5, 0xa

    if-ne p1, v5, :cond_7

    goto/16 :goto_7

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 3339
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 3340
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->startMediaCrossfade()V

    .line 3344
    :cond_8
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3346
    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v0, :cond_9

    move p1, v1

    goto :goto_0

    :cond_a
    move p1, v4

    :goto_0
    xor-int/2addr p1, v1

    .line 3353
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3363
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3364
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_b

    .line 3365
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3366
    iput-boolean p1, v2, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    .line 3367
    iput-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 3368
    iput-boolean v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    .line 3369
    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3373
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda23;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    .line 3379
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eq p1, p0, :cond_d

    .line 3380
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3383
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 3384
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->invalidateGroupsView()V

    return-void

    :cond_e
    const/4 v2, 0x4

    if-ne p1, v2, :cond_13

    .line 3388
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xe

    const-string v5, "image/*"

    const-string v6, "android.intent.action.PICK"

    if-nez v2, :cond_11

    :try_start_1
    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-ne p1, v0, :cond_f

    goto :goto_2

    .line 3405
    :cond_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3406
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_10

    .line 3408
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    .line 3410
    :cond_10
    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 3389
    :cond_11
    :goto_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3390
    const-string v0, "video/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3391
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3392
    const-string v0, "android.intent.extra.sizeLimit"

    const-wide/32 v7, 0x7d100000

    invoke-virtual {p1, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3395
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 3396
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 3397
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    new-array v5, v1, [Landroid/content/Intent;

    aput-object p1, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3399
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_12

    .line 3400
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 3402
    :cond_12
    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3413
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 3415
    :goto_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_13
    const/4 v0, 0x7

    if-ne p1, v0, :cond_15

    .line 3418
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v2

    if-eq v0, v2, :cond_14

    goto :goto_5

    :cond_14
    move v1, v4

    :goto_5
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotoPreview(Z)V

    return-void

    :cond_15
    const/16 v0, 0x9

    if-ne p1, v0, :cond_16

    .line 3420
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v7

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda24;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v9, 0x1

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Stars/StarsIntroActivity;->showMediaPriceSheet(Landroid/content/Context;JZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    :cond_16
    if-lt p1, v5, :cond_21

    .line 3425
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownAlbums:Ljava/util/ArrayList;

    sub-int/2addr p1, v5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 3426
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v0, :cond_17

    .line 3427
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 3429
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3431
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3432
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3433
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getTopScrollOffset()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    invoke-virtual {p1, v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 3280
    :cond_18
    :goto_7
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 3281
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->startMediaCrossfade()V

    .line 3285
    :cond_19
    sget-object v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3286
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 3287
    iget-boolean v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v6, :cond_1a

    goto :goto_8

    :cond_1b
    move v1, v4

    :goto_8
    if-ne p1, v0, :cond_1c

    xor-int/lit8 v1, v1, 0x1

    .line 3294
    :cond_1c
    new-instance v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    invoke-static {v5, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3315
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3316
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v6, :cond_1d

    .line 3317
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-ne p1, v0, :cond_1e

    .line 3318
    iput-boolean v1, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 3319
    :cond_1e
    iput-boolean v4, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 3320
    iput-boolean v4, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    .line 3321
    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3325
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    .line 3331
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCurrentAttachLayout()Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object p1

    if-eq p1, p0, :cond_20

    .line 3332
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 3335
    :cond_20
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 3336
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getPhotoPreviewLayout()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->invalidateGroupsView()V

    :cond_21
    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    .line 4088
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 0

    .line 4067
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onPanTransitionStart(ZI)V

    .line 4068
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 4069
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p1, :cond_0

    .line 4070
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 4071
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 3635
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    if-nez v0, :cond_0

    return-void

    .line 3638
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 3639
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_1

    .line 3640
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resetRecordState()V

    .line 3641
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;Z)V

    .line 3642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 3644
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_2

    .line 3645
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->closeCamera(Z)V

    .line 3647
    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return-void

    .line 3649
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_4

    .line 3650
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    .line 3652
    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->requestingPermissions:Z

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 6

    const/4 v0, 0x1

    .line 4000
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    .line 4001
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    .line 4002
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 4003
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    goto :goto_0

    .line 4004
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v4, v2, :cond_1

    .line 4005
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    .line 4007
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    .line 4013
    :goto_0
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->listAdditionalH:I

    .line 4014
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 4015
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->listAdditionalH:I

    neg-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x40800000    # 4.0f

    .line 4017
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr p1, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr p1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    div-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    .line 4019
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    if-ne v4, p1, :cond_2

    if-eq v1, v2, :cond_3

    .line 4020
    :cond_2
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->lastItemSize:I

    .line 4021
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4024
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    mul-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    sub-int/2addr v5, v0

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 4025
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 4027
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noGalleryPermissions:Z

    if-eqz v1, :cond_4

    const/high16 p1, 0x43c80000    # 400.0f

    .line 4028
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_1

    .line 4030
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    mul-int/2addr v1, p1

    sub-int/2addr p1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 4033
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    .line 4034
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    sub-int p1, p2, p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    const/high16 v1, 0x41400000    # 12.0f

    .line 4036
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4037
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    if-eq v4, p1, :cond_5

    .line 4038
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridExtraSpace:I

    .line 4039
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 4042
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v4, p1, :cond_6

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_2

    .line 4045
    :cond_6
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    :goto_2
    add-int/2addr p1, v0

    const/high16 p2, 0x42500000    # 52.0f

    .line 4048
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 4049
    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->listAdditionalH:I

    add-int/2addr p1, p2

    if-gez p1, :cond_7

    move p1, v1

    .line 4053
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    if-ne p2, p1, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->listPaddingBottom:I

    if-eq p2, v0, :cond_9

    .line 4054
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->listPaddingBottom:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p2, v0, p1, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 4056
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le v0, p2, :cond_a

    const/high16 p2, 0x41900000    # 18.0f

    goto :goto_3

    :cond_a
    const/high16 p2, 0x41a00000    # 20.0f

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 4057
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 3658
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3659
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_0
    return-void
.end method

.method public onSelectedItemsCountChanged(I)V
    .locals 9

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le p1, v4, :cond_3

    .line 3476
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_0

    goto :goto_2

    .line 3491
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gtz v5, :cond_1

    .line 3493
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    move v5, v4

    goto :goto_0

    .line 3496
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    move v5, v3

    .line 3498
    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gtz v6, :cond_2

    .line 3500
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_1
    move v6, v4

    goto :goto_4

    .line 3503
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    move v6, v3

    goto :goto_4

    .line 3478
    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    if-nez p1, :cond_4

    .line 3480
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3482
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :goto_3
    move v5, v3

    move v6, v5

    goto :goto_4

    .line 3483
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->documentsEnabled:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-gtz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v6, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v6, :cond_5

    .line 3485
    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    move v5, v3

    goto :goto_1

    .line 3488
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_3

    :goto_4
    if-eqz p1, :cond_6

    .line 3507
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_6
    const/4 v0, 0x7

    const/4 v7, 0x5

    if-le p1, v4, :cond_7

    .line 3510
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3511
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3512
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v7, Lorg/telegram/messenger/R$string;->SendAsFiles:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 3514
    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 3515
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    if-eqz p1, :cond_8

    .line 3517
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->compressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v7, Lorg/telegram/messenger/R$string;->SendAsFile:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_5
    if-lez p1, :cond_a

    .line 3520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getStarsPrice()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-gtz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_a

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move v0, v4

    goto :goto_6

    :cond_a
    move v0, v3

    :goto_6
    if-lez p1, :cond_b

    .line 3521
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->hasCaption()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_b

    move v1, v4

    goto :goto_7

    :cond_b
    move v1, v3

    :goto_7
    if-lez p1, :cond_c

    .line 3522
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_c

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v7, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_c

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getCurrentChatInfo()Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    move v4, v3

    :goto_8
    const/4 v2, 0x3

    if-nez v0, :cond_d

    .line 3524
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v8, Lorg/telegram/messenger/R$string;->EnablePhotoSpoiler:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3525
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->spoilerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v8, Lorg/telegram/messenger/R$raw;->photo_spoiler:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setAnimatedIcon(I)V

    .line 3526
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_9

    .line 3527
    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v7, :cond_e

    .line 3528
    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 3530
    :cond_e
    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v2, :cond_11

    .line 3531
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosCount()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, p1, :cond_10

    .line 3532
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedPhotosHighQualityCount()I

    move-result p1

    if-lez p1, :cond_f

    .line 3533
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->SendInStandardQuality:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3534
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_quality_sd:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    goto :goto_a

    .line 3536
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$string;->SendInHighQuality:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 3537
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->qualityItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_quality_hd:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(I)V

    .line 3539
    :goto_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_b

    .line 3541
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_11
    :goto_b
    if-eqz v1, :cond_12

    .line 3545
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 3547
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->captionItem:Lorg/telegram/ui/Components/MessagePreviewView$ToggleButton;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    const/4 p1, 0x6

    if-nez v0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    if-nez v6, :cond_15

    if-eqz v5, :cond_14

    goto :goto_d

    .line 3552
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_e

    .line 3550
    :cond_15
    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_e
    const/16 p1, 0x9

    if-eqz v4, :cond_16

    .line 3555
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateStarsItem()V

    .line 3556
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotoStarsPrice()V

    .line 3557
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    return-void

    .line 3559
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedMenuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    return-void
.end method

.method public onSheetKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 4111
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0x55

    if-ne p1, p2, :cond_1

    .line 4112
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ShutterButton;->getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 5

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3834
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3836
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3837
    instance-of v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    .line 3838
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->clearSelectedPhotos()V

    .line 3839
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3841
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->headerAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3842
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3844
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3846
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    if-eqz v0, :cond_2

    .line 3848
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V

    .line 3853
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3856
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 3858
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->resumeCameraPreview()V

    return-void
.end method

.method public onShown()V
    .locals 2

    const/4 v0, 0x0

    .line 3863
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    .line 3864
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v1, :cond_0

    .line 3865
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    .line 3867
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    if-eqz v1, :cond_1

    .line 3868
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    const/4 v0, 0x1

    .line 3869
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCamera(Z)V

    :cond_1
    return-void
.end method

.method public openCamera(Z)V
    .locals 10

    .line 2430
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraInitAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 2433
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    const v1, 0x581e0

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 2436
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_2

    .line 2438
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_14

    .line 2440
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_8

    .line 2444
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v0, :cond_4

    .line 2446
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2449
    :cond_4
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isImagesAndVideoPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2450
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/utils/system/SystemUtils;->requestImagesAndVideoPermission(Landroid/app/Activity;)V

    return-void

    .line 2454
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->initTexture()V

    .line 2455
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->shouldLoadAllMedia()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2458
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->tooltipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2460
    :goto_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_7

    .line 2461
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_1

    .line 2464
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2467
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2468
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCommentView()Lorg/telegram/ui/Components/EditTextEmoji;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 2470
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2472
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2474
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    aput v3, v0, v3

    .line 2475
    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    const/4 v6, 0x1

    aput v5, v0, v6

    const/4 v7, 0x2

    mul-int/2addr v5, v7

    const/high16 v8, 0x40000000    # 2.0f

    .line 2476
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v5, v8

    aput v5, v0, v7

    .line 2477
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    .line 2478
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    .line 2479
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_9

    const/4 v5, -0x1

    .line 2480
    invoke-virtual {v0, v5}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    .line 2482
    :cond_9
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2483
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/app/Dialog;Z)V

    .line 2484
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v5, 0x80

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    .line 2486
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2487
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAnimationInProgress:Z

    .line 2488
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_a

    .line 2489
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 2491
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 2492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2493
    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v5, :cond_b

    .line 2494
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    goto :goto_2

    .line 2496
    :cond_b
    new-array v5, v7, [F

    fill-array-data v5, :array_0

    const-string v8, "cameraOpenProgress"

    invoke-static {p0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    new-array v8, v6, [F

    aput v0, v8, v3

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2499
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    new-array v8, v6, [F

    aput v0, v8, v3

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v6, [F

    aput v0, v8, v3

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    :goto_3
    if-ge v5, v7, :cond_d

    .line 2502
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_c

    .line 2503
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v5, v8, v5

    new-array v8, v6, [F

    aput v0, v8, v3

    invoke-static {v5, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2507
    :cond_d
    :goto_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2508
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0x15e

    .line 2509
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2510
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2511
    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2531
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_7

    .line 2533
    :cond_e
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->setCameraOpenProgress(F)V

    .line 2534
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2535
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2536
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    if-ge v3, v7, :cond_10

    .line 2538
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_f

    .line 2539
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2543
    :cond_10
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->onCameraOpened()V

    .line 2544
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_11

    const/16 v2, 0x404

    .line 2545
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2548
    :cond_11
    :goto_7
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    .line 2549
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_12

    .line 2550
    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2552
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2553
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2554
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onCameraStateChanged()V

    .line 2556
    invoke-static {v1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2557
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0, v6, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->showTexture(ZZ)V

    :catch_0
    :cond_14
    :goto_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected openPhotoViewer(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZ)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2041
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateCountButton(I)V

    .line 2045
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2046
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 2048
    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p3, v1, :cond_1

    .line 2049
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 2050
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p1, :cond_a

    .line 2051
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 2052
    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    .line 2053
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraView;->setZoom(F)V

    .line 2054
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/camera/CameraController;->startPreview(Ljava/lang/Object;)V

    return-void

    .line 2058
    :cond_1
    sget-object p3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_5

    .line 2061
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cancelTakingPhotos:Z

    .line 2063
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p3, :cond_3

    .line 2065
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    :cond_3
    if-nez p3, :cond_4

    goto/16 :goto_5

    .line 2070
    :cond_4
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, p3, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2071
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3, v2}, Lorg/telegram/ui/PhotoViewer;->setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    .line 2072
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->maxSelectedPhotos:I

    iget-boolean v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    invoke-virtual {p3, v3, v2}, Lorg/telegram/ui/PhotoViewer;->setMaxSelectedPhotos(IZ)V

    .line 2076
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz v2, :cond_5

    .line 2078
    iget-object v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    const/16 v4, 0xb

    :goto_0
    move-object v11, v2

    :goto_1
    move v8, v4

    goto :goto_2

    .line 2079
    :cond_5
    iget v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_6

    move v8, v1

    move-object v11, v3

    goto :goto_2

    .line 2082
    :cond_6
    iget-object v2, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_7

    .line 2083
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x2

    goto :goto_0

    :cond_7
    const/4 v4, 0x5

    move-object v11, v3

    goto :goto_1

    .line 2091
    :goto_2
    iget p3, p3, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz p3, :cond_8

    .line 2092
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2093
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v0

    :goto_3
    move-object v6, p3

    goto :goto_4

    .line 2096
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getAllPhotosArray()Ljava/util/ArrayList;

    move-result-object p3

    .line 2097
    sget-object v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    move v7, v2

    goto :goto_3

    .line 2099
    :goto_4
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p3

    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    .line 2100
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p3

    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    iput-boolean p1, p3, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->isVideo:Z

    .line 2102
    :cond_9
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;

    invoke-direct {v10, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)V

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    .line 2260
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setAvatarFor(Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 2261
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->isStickerMode:Z

    if-eqz p1, :cond_a

    .line 2262
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert;->customStickerHandler:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-virtual {p1, v3, v3, v0, p2}, Lorg/telegram/ui/PhotoViewer;->enableStickerMode(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback2;)V

    .line 2263
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->prepareSegmentImage()V

    :cond_a
    :goto_5
    return-void
.end method

.method public pauseCamera(Z)V
    .locals 1

    .line 3951
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->needCamera:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3953
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz p1, :cond_1

    .line 3954
    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 3955
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->hideCamera(Z)V

    return-void

    .line 3963
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showCamera()V

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3823
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3826
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 3231
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setCameraOpenProgress(F)V
    .locals 19
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2954
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-nez v2, :cond_0

    return-void

    .line 2957
    :cond_0
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpenProgress:F

    .line 2958
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animateCameraValues:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    int-to-float v4, v4

    const/4 v5, 0x2

    .line 2959
    aget v2, v2, v5

    int-to-float v2, v2

    .line 2960
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 2961
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getRightInset()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 2962
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 2964
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    const/4 v8, 0x0

    aget v8, v7, v8

    .line 2965
    aget v3, v7, v3

    .line 2967
    iget v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->additionCloseCameraY:F

    .line 2970
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 2972
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v10, v4, v2}, Lorg/telegram/messenger/camera/CameraView;->getTextureHeight(FF)F

    move-result v10

    .line 2973
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v11, v5, v6}, Lorg/telegram/messenger/camera/CameraView;->getTextureHeight(FF)F

    move-result v11

    div-float/2addr v10, v11

    div-float v11, v2, v6

    div-float v12, v4, v5

    .line 2979
    iget-boolean v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraExpanded:Z

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v13, :cond_1

    float-to-int v13, v5

    const/16 v16, 0x0

    float-to-int v14, v6

    sub-float v17, v15, v1

    mul-float v10, v10, v17

    add-float/2addr v10, v1

    move/from16 v18, v15

    .line 2983
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v15}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/view/View;->setScaleX(F)V

    .line 2984
    iget-object v15, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v15}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/view/View;->setScaleY(F)V

    mul-float v12, v12, v17

    add-float/2addr v12, v1

    mul-float v11, v11, v17

    add-float/2addr v11, v1

    sub-float v15, v18, v11

    mul-float/2addr v15, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v15, v10

    sub-float v11, v18, v12

    mul-float/2addr v11, v5

    div-float/2addr v11, v10

    .line 2992
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    mul-float v12, v8, v17

    mul-float v16, v16, v1

    add-float v16, v12, v16

    sub-float v11, v16, v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 2993
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    mul-float v11, v3, v17

    mul-float/2addr v7, v1

    add-float/2addr v7, v11

    sub-float/2addr v7, v15

    invoke-virtual {v10, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2994
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v7

    sub-float/2addr v11, v7

    iput v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    add-float/2addr v3, v2

    mul-float v3, v3, v17

    .line 2995
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr v3, v2

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    .line 2997
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v12, v2

    iput v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    add-float/2addr v8, v4

    mul-float v8, v8, v17

    .line 2998
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v8, v2

    mul-float/2addr v5, v1

    add-float/2addr v8, v5

    iput v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    goto :goto_0

    :cond_1
    move/from16 v18, v15

    const/16 v16, 0x0

    float-to-int v13, v4

    float-to-int v14, v2

    .line 3002
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3003
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    move/from16 v1, v16

    .line 3004
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipTop:F

    .line 3005
    iput v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipBottom:F

    .line 3006
    iput v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipLeft:F

    .line 3007
    iput v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->animationClipRight:F

    .line 3009
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 3010
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3013
    :goto_0
    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, v13, :cond_2

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, v14, :cond_3

    .line 3014
    :cond_2
    iput v13, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3015
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3016
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 3018
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Landroid/view/View;->invalidateOutline()V

    .line 3019
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->invalidate()V

    return-void
.end method

.method public setCheckCameraWhenShown(Z)V
    .locals 0

    .line 3874
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraWhenShown:Z

    return-void
.end method

.method public setStarsPrice(J)V
    .locals 5

    .line 1804
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1805
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1806
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1807
    iput-wide p1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->starsAmount:J

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    .line 1808
    :goto_1
    iput-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    .line 1809
    iput-boolean v1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    .line 1810
    iput-boolean v1, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isAttachSpoilerRevealed:Z

    goto :goto_0

    .line 1813
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getSelectedItemsCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->onSelectedItemsCountChanged(I)V

    .line 1814
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkSelectedCount(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1815
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotos()V

    :cond_2
    return-void
.end method

.method public setTranslationY(F)V
    .locals 6

    .line 3805
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x42200000    # 40.0f

    div-float v0, p1, v0

    const v1, -0x42333333    # -0.1f

    mul-float/2addr v0, v1

    .line 3807
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3808
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3809
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_0

    .line 3810
    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 3811
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 3812
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3816
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3817
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3818
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1531
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;J)V

    return-void
.end method

.method public showAvatarConstructorFragment(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;Lorg/telegram/tgnet/TLRPC$VideoSize;J)V
    .locals 3

    .line 1535
    new-instance v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v2, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->parentImageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;-><init>(Lorg/telegram/ui/Components/ImageUpdater;Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;)V

    .line 1536
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getAvatarFor()Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ImageUpdater$AvatarFor;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/ui/Components/AvatarConstructorFragment;->finishOnDone:Z

    .line 1537
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    if-eqz p1, :cond_2

    .line 1539
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 1542
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(Lorg/telegram/tgnet/TLRPC$VideoSize;)V

    :cond_3
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-eqz p1, :cond_4

    .line 1545
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->forUser:Z

    invoke-virtual {v0, p3, p4, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->startFrom(JZ)V

    .line 1547
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Lorg/telegram/ui/Components/AvatarConstructorFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarConstructorFragment;->setDelegate(Lorg/telegram/ui/Components/AvatarConstructorFragment$Delegate;)V

    return-void
.end method

.method public showCamera()V
    .locals 6

    .line 2578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/camera/CameraView;->isCameraAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2581
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const v0, 0x581e0

    .line 2582
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2583
    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isCameraFrontfaceBeforeEnteringEditMode:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-boolean v5, v5, Lorg/telegram/ui/Components/ChatAttachAlert;->openWithFrontFaceCamera:Z

    :goto_2
    invoke-direct {v3, p0, v4, v5, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Landroid/content/Context;ZZ)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    .line 2587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v4, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_4

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath(Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/camera/CameraView;->setRecordFile(Ljava/io/File;)V

    .line 2588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 2589
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/camera/CameraView;->setFpsLimit(I)V

    .line 2590
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$18;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2610
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrInstantCamera:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2612
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemSize:I

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2613
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    .line 2661
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const v2, 0x3e4ccccd    # 0.2f

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2662
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->mediaEnabled:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 2663
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->isHidden:Z

    if-eqz v0, :cond_6

    .line 2664
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;->setVisibility(I)V

    .line 2667
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-eqz v0, :cond_7

    goto :goto_5

    .line 2670
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->checkCameraViewPosition()V

    .line 2672
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_8

    .line 2673
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2675
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2677
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->zoomControlView:Lorg/telegram/ui/Components/ZoomControlView;

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    .line 2678
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 2679
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraZoom:F

    .line 2681
    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraOpened:Z

    if-nez v0, :cond_b

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraViewLocation:[F

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_b
    :goto_6
    return-void
.end method

.method public updateAvatarPicker()V
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->isPhotoPicker:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->showAvatarConstructor:Z

    return-void
.end method

.method protected updateCheckedPhotoIndices()V
    .locals 6

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    goto :goto_2

    .line 622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 624
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 625
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_1

    .line 626
    check-cast v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 627
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 629
    sget-object v5, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 635
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 636
    instance-of v3, v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v3, :cond_3

    .line 637
    check-cast v2, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 638
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 640
    sget-object v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setNum(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method protected updateCheckedPhotos()V
    .locals 9

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v0, v0, Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 650
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_b

    .line 652
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 653
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v6, :cond_a

    .line 654
    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 655
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 656
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgethasCameraSpaceRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    if-le v5, v7, :cond_1

    add-int/lit8 v5, v5, -0x1

    .line 659
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v7, v8, :cond_3

    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v7, :cond_3

    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 662
    :cond_3
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 663
    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    if-eqz v5, :cond_5

    .line 664
    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_2

    :cond_5
    move v7, v1

    :goto_2
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    .line 665
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v8, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v8, :cond_8

    iget-boolean v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v7, :cond_8

    if-eqz v5, :cond_6

    .line 666
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v7, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :cond_6
    if-eqz v5, :cond_7

    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_3

    :cond_7
    move v5, v1

    :goto_3
    invoke-virtual {v6, v3, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    .line 668
    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v4

    goto :goto_4

    :cond_9
    move v5, v1

    :goto_4
    invoke-virtual {v6, v3, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 672
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_16

    .line 674
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 675
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v6, :cond_15

    .line 676
    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 677
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 678
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgethasCameraSpaceRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    if-le v5, v7, :cond_c

    add-int/lit8 v5, v5, -0x1

    .line 681
    :cond_c
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v7, v8, :cond_e

    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v7, :cond_e

    :cond_d
    add-int/lit8 v5, v5, -0x1

    .line 684
    :cond_e
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 685
    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v7, :cond_f

    move v7, v4

    goto :goto_7

    :cond_f
    move v7, v1

    :goto_7
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHasSpoiler(Z)V

    if-eqz v5, :cond_10

    .line 686
    iget-boolean v7, v5, Lorg/telegram/messenger/MediaController$MediaEditState;->highQuality:Z

    if-eqz v7, :cond_10

    move v7, v4

    goto :goto_8

    :cond_10
    move v7, v1

    :goto_8
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setHighQuality(Z)V

    .line 687
    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v8, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v8, v8, Lorg/telegram/ui/ChatActivity;

    if-eqz v8, :cond_13

    iget-boolean v7, v7, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v7, :cond_13

    if-eqz v5, :cond_11

    .line 688
    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    goto :goto_9

    :cond_11
    move v7, v3

    :goto_9
    if-eqz v5, :cond_12

    sget-object v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v4

    goto :goto_a

    :cond_12
    move v5, v1

    :goto_a
    invoke-virtual {v6, v7, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_c

    :cond_13
    if-eqz v5, :cond_14

    .line 690
    sget-object v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v5, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v4

    goto :goto_b

    :cond_14
    move v5, v1

    :goto_b
    invoke-virtual {v6, v3, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_15
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_16
    :goto_d
    return-void
.end method

.method protected updatePhotosCounter(Z)V
    .locals 7

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-nez v1, :cond_b

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->storyMediaPicker:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2308
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2309
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2310
    iget-boolean v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v4, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 2319
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 2321
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Media"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2322
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_4

    if-eqz p1, :cond_9

    .line 2323
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const-string v2, "MediaSelected"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    .line 2326
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Videos"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2327
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_6

    if-eqz p1, :cond_9

    .line 2328
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const-string v2, "VideosSelected"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2331
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->counterTextView:Landroid/widget/TextView;

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Photos"

    invoke-static {v6, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    if-ne v0, v2, :cond_8

    if-eqz p1, :cond_9

    .line 2333
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->selectedTextView:Landroid/widget/TextView;

    const-string v2, "PhotosSelected"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2336
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-le v0, v5, :cond_a

    move v1, v5

    :cond_a
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCanOpenPreview(Z)V

    .line 2337
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->currentSelectedCount:I

    :cond_b
    :goto_2
    return-void
.end method

.method public updateSelected(Ljava/util/HashMap;Ljava/util/ArrayList;Z)V
    .locals 7

    .line 3163
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3164
    sget-object v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3165
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3166
    sget-object p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_a

    const/4 p1, 0x0

    .line 3168
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updatePhotosCounter(Z)V

    .line 3169
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->updateCheckedPhotoIndices()V

    .line 3171
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, p1

    :goto_0
    if-ge p3, p2, :cond_a

    .line 3173
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3174
    instance-of v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v1, :cond_9

    .line 3175
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 3176
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgethasCameraSpaceRow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->itemsPerRow:I

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3179
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_2

    sget-boolean v2, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 3183
    :cond_2
    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 3184
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert;->avatarPicker:I

    if-eqz v2, :cond_3

    .line 3185
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3187
    :cond_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->getPhotoEntryAtPosition(I)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 3189
    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, p1

    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->-$$Nest$fgetneedCamera(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->galleryAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v5, v6, :cond_6

    sget-boolean v5, Lcom/exteragram/messenger/ExteraConfig;->hideCameraTile:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->noCameraPermissions:Z

    if-eqz v5, :cond_6

    :cond_5
    move v5, v4

    goto :goto_2

    :cond_6
    move v5, p1

    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->adapter:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v1, v6, :cond_7

    goto :goto_3

    :cond_7
    move v4, p1

    :goto_3
    invoke-virtual {v0, v2, v3, v5, v4}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;ZZZ)V

    .line 3190
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v3, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_8

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->allowOrder:Z

    if-eqz v1, :cond_8

    .line 3191
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotosOrder:Ljava/util/ArrayList;

    iget v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    goto :goto_4

    .line 3193
    :cond_8
    sget-object v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->selectedPhotos:Ljava/util/HashMap;

    iget v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(IZZ)V

    :cond_9
    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
