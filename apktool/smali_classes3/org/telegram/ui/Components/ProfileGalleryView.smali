.class public Lorg/telegram/ui/Components/ProfileGalleryView;
.super Lorg/telegram/ui/Components/CircularViewPager;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;,
        Lorg/telegram/ui/Components/ProfileGalleryView$Callback;,
        Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;,
        Lorg/telegram/ui/Components/ProfileGalleryView$Item;,
        Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

.field private blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

.field private final callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

.field private chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private createThumbFromParent:Z

.field curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private currentAccount:I

.field currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private customAvatarIndex:I

.field private dialogId:J

.field private dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

.field private final downPoint:Landroid/graphics/PointF;

.field private fallbackPhotoIndex:I

.field private forceResetPosition:Z

.field private hasActiveVideo:Z

.field private imagesLayerNum:I

.field private imagesLocations:Ljava/util/ArrayList;

.field private imagesLocationsSizes:Ljava/util/ArrayList;

.field private imagesUploadProgress:Ljava/util/ArrayList;

.field private invalidateWithParent:Z

.field private isDownReleased:Z

.field private final isProfileFragment:Z

.field private isScrollingListView:Z

.field private isSwipingViewPager:Z

.field private final parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private final parentClassGuid:I

.field private final parentListView:Lorg/telegram/ui/Components/RecyclerListView;

.field path:Landroid/graphics/Path;

.field private photos:Ljava/util/ArrayList;

.field pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field private prevImageLocation:Lorg/telegram/messenger/ImageLocation;

.field prevPage:I

.field private prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

.field private prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

.field private final radialProgresses:Landroid/util/SparseArray;

.field radii:[F

.field rect:Landroid/graphics/RectF;

.field private roundBottomRadius:I

.field private roundTopRadius:I

.field public scrolledByUser:Z

.field selectedPage:I

.field private settingMainPhoto:I

.field private thumbsFileNames:Ljava/util/ArrayList;

.field private thumbsLocations:Ljava/util/ArrayList;

.field private final touchSlop:I

.field private uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

.field private vectorAvatars:Ljava/util/ArrayList;

.field private videoFileNames:Ljava/util/ArrayList;

.field private videoLocations:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/Components/ProfileGalleryView$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateThumbFromParent(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogId(Lorg/telegram/ui/Components/ProfileGalleryView;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdialogPhotos(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/MessagesController$DialogPhotos;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasActiveVideo(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimagesLayerNum(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLayerNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimagesLocationsSizes(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimagesUploadProgress(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinvalidateWithParent(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->invalidateWithParent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisProfileFragment(Lorg/telegram/ui/Components/ProfileGalleryView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActionBar(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetradialProgresses(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetroundBottomRadius(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetroundTopRadius(Lorg/telegram/ui/Components/ProfileGalleryView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthumbsLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuploadingImageLocation(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckCustomAvatar(Lorg/telegram/ui/Components/ProfileGalleryView;IF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ProfileActivity$AvatarImageView;ILorg/telegram/ui/Components/ProfileGalleryView$Callback;Lorg/telegram/ui/Components/ProfileGalleryBlurView;)V
    .locals 4

    .line 274
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 52
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 65
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    .line 69
    new-array v2, v1, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    .line 88
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    const/4 v2, -0x1

    .line 96
    iput v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    .line 97
    iput v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 275
    iput-object p9, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    const/4 v2, 0x0

    if-nez p9, :cond_0

    move v3, v2

    goto :goto_0

    .line 276
    :cond_0
    iget v3, p9, Lorg/telegram/ui/Components/ProfileGalleryBlurView;->actionSize:I

    :goto_0
    invoke-virtual {p0, v2, v2, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    if-eqz p9, :cond_1

    .line 278
    invoke-virtual {p9, p0}, Lorg/telegram/ui/Components/ProfileGalleryBlurView;->setView(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    .line 281
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setVisibility(I)V

    const/4 p9, 0x2

    .line 282
    invoke-virtual {p0, p9}, Landroid/view/View;->setOverScrollMode(I)V

    .line 283
    invoke-virtual {p0, p9}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 285
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    .line 286
    iput-wide p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    .line 287
    iput-object p5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 288
    iput p7, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    .line 289
    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 290
    new-instance p5, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-direct {p5, p0, p7, p6, p4}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    .line 291
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    .line 292
    iput-object p8, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    .line 294
    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$2;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 358
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 359
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 360
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 361
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 362
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p4, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {p1, p0, p4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 364
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    .line 365
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadCache()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/Components/ProfileGalleryView$Callback;)V
    .locals 2

    .line 147
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 52
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 65
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->path:Landroid/graphics/Path;

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->rect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    .line 69
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radii:[F

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    .line 90
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    .line 97
    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    const/4 v0, 0x2

    .line 148
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    .line 152
    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 153
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentClassGuid:I

    .line 154
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 155
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    .line 156
    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    .line 158
    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ProfileGalleryView$1;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 229
    new-instance p1, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p0, p3, v0, p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager;->setAdapter(Lorg/telegram/ui/Components/CircularViewPager$Adapter;)V

    .line 231
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 232
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 233
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 234
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 235
    iget p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 237
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    return-void
.end method

.method private checkCustomAvatar(IF)V
    .locals 5

    .line 242
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    if-ltz v2, :cond_7

    :cond_0
    if-ltz v0, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 244
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    .line 245
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    if-eqz v2, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_3

    sub-float p1, v2, p2

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v4

    rem-int/2addr v3, v4

    if-ne v3, v0, :cond_4

    sub-float p1, v2, p2

    sub-float/2addr p1, v2

    goto :goto_1

    .line 252
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    if-lez v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    rem-int/2addr p1, v3

    if-ne p1, v0, :cond_5

    sub-float p1, v2, p2

    add-float/2addr p1, v2

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    cmpl-float p2, p1, v2

    if-lez p2, :cond_6

    const/high16 p2, 0x40000000    # 2.0f

    sub-float p1, p2, p1

    .line 260
    :cond_6
    invoke-static {p1, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 262
    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->setCustomAvatarProgress(F)V

    return-void
.end method

.method private getCurrentAvatarPage()I
    .locals 2

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 795
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentAvatarPhotoIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 800
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    return v1

    .line 805
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    return v0
.end method

.method private getCurrentAvatarPhoto()Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 5

    .line 825
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    return-object v0

    :cond_0
    return-object v1

    .line 829
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 830
    iget-wide v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 831
    iget-wide v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 836
    :cond_2
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_3

    return-object v1

    .line 840
    :cond_3
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private getCurrentAvatarPhotoIndex()I
    .locals 7

    .line 809
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentAvatarPhoto()Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 814
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 815
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v3, :cond_1

    .line 816
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private loadNeighboringThumbs()V
    .locals 11

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v0, -0x1

    .line 980
    :goto_2
    iget v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/telegram/messenger/ImageLocation;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1455
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 1462
    invoke-virtual {p0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1463
    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->selectedPage:I

    const/4 v0, 0x0

    .line 1464
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 1465
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method


# virtual methods
.method public addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V
    .locals 3

    .line 627
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 638
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 640
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 641
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method public commitMoveToBegin()V
    .locals 1

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 932
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    .line 1043
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 988
    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v4, :cond_1f

    .line 989
    aget-object v1, p3, v7

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;

    .line 990
    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-ne v4, v1, :cond_2a

    .line 991
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->photos:Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 992
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController$DialogPhotos;->fromCache:Z

    if-eqz v1, :cond_0

    goto/16 :goto_15

    .line 996
    :cond_0
    iput v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    .line 997
    iput v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 998
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 999
    iget v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-virtual {v2, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1000
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->personal_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v8, :cond_1

    .line 1001
    invoke-virtual {v4, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1002
    iput v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    :cond_1
    if-eqz v1, :cond_2

    .line 1004
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v8, :cond_2

    .line 1005
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->hasFallbackPhoto(Lorg/telegram/tgnet/TLRPC$UserFull;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1006
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->fallback_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v6

    iput v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    .line 1010
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1011
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1012
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1013
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1014
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1015
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1016
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1017
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1018
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1020
    iget-wide v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    .line 1021
    iget v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1022
    invoke-static {v2, v7}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1024
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_4

    iget-object v11, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v11, v2}, Lorg/telegram/messenger/FileLoader;->isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1029
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1031
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {v2, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v2

    .line 1032
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v2, v12}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1039
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v10, v9

    :cond_6
    :goto_1
    move v2, v7

    .line 1047
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_18

    .line 1048
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v11, :cond_17

    .line 1049
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v12, :cond_17

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v12, :cond_7

    goto/16 :goto_e

    :cond_7
    const/16 v13, 0x32

    .line 1061
    invoke-static {v12, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    .line 1062
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v7

    :goto_3
    if-ge v14, v13, :cond_9

    .line 1063
    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1064
    instance-of v6, v15, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v6, :cond_8

    move-object v12, v15

    goto :goto_4

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v10, :cond_c

    .line 1071
    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v13, v7

    :goto_5
    if-ge v13, v6, :cond_c

    .line 1072
    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1073
    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v14, :cond_b

    iget v15, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v5, v10, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v15, v9, :cond_b

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v5, v14, v8

    if-nez v5, :cond_b

    .line 1074
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, v7, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1076
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v8, 0x3e8

    invoke-static {v6, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v6

    invoke-static {v6, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/16 v8, 0x3e8

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    goto :goto_5

    .line 1086
    :cond_c
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v6, 0x280

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1088
    iget v6, v11, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    if-eqz v6, :cond_d

    .line 1089
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v6, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 1090
    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v6, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->file_reference:[B

    .line 1092
    :cond_d
    invoke-static {v5, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 1094
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v8, :cond_12

    iget-wide v8, v8, Lorg/telegram/messenger/ImageLocation;->photoId:J

    iget-wide v13, v6, Lorg/telegram/messenger/ImageLocation;->photoId:J

    cmp-long v8, v8, v13

    if-nez v8, :cond_12

    iget-boolean v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    if-nez v8, :cond_12

    iget-wide v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    iget v13, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v8, v8, v13

    if-eqz v8, :cond_12

    .line 1095
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v5, :cond_e

    .line 1100
    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    .line 1102
    :cond_e
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1105
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v8, 0x3e8

    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v5

    .line 1106
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 1108
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v1, :cond_f

    iget-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    :goto_6
    const/4 v11, 0x2

    goto :goto_7

    :cond_f
    move v9, v7

    goto :goto_6

    :goto_7
    invoke-direct {v8, v6, v9, v11}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    .line 1112
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-static {v5, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    const/4 v6, 0x0

    goto :goto_9

    .line 1117
    :cond_11
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v9, v6

    const/16 v8, 0x3e8

    goto/16 :goto_f

    .line 1125
    :cond_12
    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    instance-of v8, v12, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v8, :cond_13

    move-object v8, v5

    goto :goto_a

    :cond_13
    move-object v8, v12

    :goto_a
    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-static {v12, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    .line 1130
    iget-object v6, v11, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v8, 0x3e8

    invoke-static {v6, v8}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v6

    .line 1131
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getVectorMarkupVideoSize(Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 1133
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    new-instance v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    if-eqz v1, :cond_14

    iget-boolean v13, v1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    :goto_b
    const/4 v14, 0x2

    goto :goto_c

    :cond_14
    move v13, v7

    goto :goto_b

    :goto_c
    invoke-direct {v12, v9, v13, v14}, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$VideoSize;ZI)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    .line 1137
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-static {v6, v11}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    const/16 v8, 0x3e8

    const/4 v9, 0x0

    .line 1142
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    :goto_d
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1050
    :cond_17
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 1153
    :cond_18
    invoke-direct {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->loadNeighboringThumbs()V

    .line 1154
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1155
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->isProfileFragment:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 1156
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v1, :cond_1c

    .line 1157
    :cond_19
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    goto :goto_10

    .line 1160
    :cond_1a
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    if-eqz v1, :cond_1c

    .line 1161
    :cond_1b
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 1162
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1163
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    .line 1167
    :cond_1c
    :goto_10
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->fallbackPhotoIndex:I

    if-gez v1, :cond_1d

    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->customAvatarIndex:I

    if-gez v1, :cond_1d

    .line 1168
    invoke-direct {v0, v7, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->checkCustomAvatar(IF)V

    .line 1171
    :cond_1d
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    .line 1173
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v1, :cond_1e

    .line 1174
    invoke-interface {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onPhotosLoaded()V

    .line 1176
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz v1, :cond_2a

    .line 1177
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->addUploadingImage(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)V

    return-void

    .line 1180
    :cond_1f
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v1, v2, :cond_23

    .line 1181
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/String;

    .line 1182
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_2a

    .line 1183
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_20

    .line 1185
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_20
    if-eqz v2, :cond_22

    .line 1187
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1188
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_21

    const/4 v4, 0x1

    .line 1190
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 1192
    :cond_21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 1195
    :cond_23
    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne v1, v2, :cond_27

    .line 1196
    aget-object v1, p3, v7

    check-cast v1, Ljava/lang/String;

    .line 1197
    :goto_12
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_2a

    .line 1198
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_24

    .line 1200
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_24
    if-eqz v2, :cond_26

    .line 1202
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1203
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RadialProgress2;

    if-eqz v2, :cond_25

    const/4 v4, 0x1

    .line 1205
    aget-object v5, p3, v4

    check-cast v5, Ljava/lang/Long;

    const/16 v16, 0x2

    .line 1206
    aget-object v6, p3, v16

    check-cast v6, Ljava/lang/Long;

    .line 1207
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v5, v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v6, v8

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1208
    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_13

    :cond_25
    const/16 v16, 0x2

    .line 1210
    :goto_13
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_14

    :cond_26
    const/16 v16, 0x2

    :goto_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 1213
    :cond_27
    sget v2, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    if-ne v1, v2, :cond_2a

    .line 1214
    iget v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    if-eqz v1, :cond_28

    goto :goto_15

    .line 1217
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v1, :cond_2a

    .line 1218
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    .line 1219
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v7

    :cond_29
    sub-int/2addr v2, v7

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadAfter(IZ)V

    :cond_2a
    :goto_15
    return-void
.end method

.method public findVideoActiveView()Landroid/view/View;
    .locals 4

    .line 107
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 112
    instance-of v3, v2, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public finishSettingMainPhoto()V
    .locals 1

    .line 878
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    return-void
.end method

.method public getBlurDrawer()Lorg/telegram/ui/Components/ProfileGalleryBlurView;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    return-object v0
.end method

.method public getCurrentAvatarImageLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 662
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentAvatarPhotoIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 664
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getImageLocation(I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    return-object v0

    .line 667
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 669
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getImageLocation(I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentItemProgress()F
    .locals 2

    .line 727
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 731
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 735
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getCurrentProgress()F

    move-result v0

    return v0
.end method

.method public getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 2

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVideoLocation(Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;)Lorg/telegram/messenger/ImageLocation;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_7

    if-nez v2, :cond_1

    .line 757
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    .line 758
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_6

    .line 759
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ImageLocation;

    if-eqz v6, :cond_5

    .line 760
    iget-object v7, v6, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    if-nez v7, :cond_2

    goto :goto_3

    .line 763
    :cond_2
    iget v6, v6, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    iget v8, p1, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    if-ne v6, v8, :cond_3

    iget v8, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v9, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v10, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v8, v10, :cond_3

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v8, v10, v8

    if-eqz v8, :cond_4

    :cond_3
    iget v8, p2, Lorg/telegram/messenger/ImageLocation;->dc_id:I

    if-ne v6, v8, :cond_5

    iget v6, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v8, p2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v6, v9, :cond_5

    iget-wide v6, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 765
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public getDialogId()J
    .locals 2

    .line 1449
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    return-wide v0
.end method

.method public getImageLocation(I)Lorg/telegram/messenger/ImageLocation;
    .locals 1

    if-ltz p1, :cond_2

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    if-eqz v0, :cond_1

    return-object v0

    .line 658
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewAt(I)Landroid/view/View;
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 704
    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 706
    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhoto(I)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1

    if-ltz p1, :cond_1

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealCount()I
    .locals 2

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 845
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getRealImageLocation(I)Lorg/telegram/messenger/ImageLocation;
    .locals 1

    if-ltz p1, :cond_1

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealPosition()I
    .locals 2

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v0

    return v0
.end method

.method public getRealPosition(I)I
    .locals 1

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    return p1
.end method

.method public hasImages()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initIfEmpty(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/messenger/ImageLocation;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    .line 585
    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 588
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v3, p2, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v1, v3, :cond_6

    .line 589
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 590
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    if-eqz p4, :cond_3

    .line 591
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz p1, :cond_3

    .line 592
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    :cond_2
    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadAfter(IZ)V

    :cond_3
    return v2

    :cond_4
    if-eqz p4, :cond_6

    .line 597
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz p4, :cond_6

    .line 598
    invoke-virtual {p4}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->reset()V

    .line 599
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v3

    goto :goto_0

    :cond_5
    move v3, v0

    :goto_0
    sub-int/2addr v1, v3

    invoke-virtual {p4, v1, v2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadAfter(IZ)V

    .line 603
    :cond_6
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_7

    return v0

    .line 606
    :cond_7
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 607
    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 608
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 609
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 619
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public isCurrentItemVideo()Z
    .locals 3

    .line 739
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v0

    .line 740
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-ltz v0, :cond_3

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 749
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public isLoadingCurrentVideo()Z
    .locals 3

    .line 715
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 718
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 722
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public isZooming()Z
    .locals 1

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 5

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    .line 399
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 400
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 401
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 402
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadDialogPhotos:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 403
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 405
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 407
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 408
    instance-of v3, v2, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v3, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    .line 412
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 414
    instance-of v4, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v4, :cond_1

    .line 415
    check-cast v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 969
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 972
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 386
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    move-object p1, p0

    .line 387
    iget-object p2, p1, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    iget-object p4, p1, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1514
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/ViewPager;->onSizeChanged(IIII)V

    .line 1515
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    if-eqz p1, :cond_0

    .line 1516
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryBlurView;->notifyUpdateSize()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v2, p0

    .line 452
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    const/4 v7, 0x0

    if-nez v0, :cond_0

    return v7

    .line 455
    :cond_0
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v8, 0x3

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-nez v0, :cond_1

    iget-boolean v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v0, :cond_1

    .line 456
    iput-boolean v7, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 457
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 458
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 459
    invoke-super {v2, v0}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 460
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v7

    .line 463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 465
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    const/4 v10, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v9, :cond_2

    .line 466
    iget-boolean v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-eqz v0, :cond_2

    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentItemView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/View;Landroid/view/View;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 469
    iget-boolean v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-nez v0, :cond_3

    .line 470
    iput-boolean v10, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    .line 471
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v0, :cond_3

    .line 472
    invoke-interface {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    :cond_3
    return v10

    :cond_4
    :goto_0
    const/high16 v0, 0x40400000    # 3.0f

    if-nez v9, :cond_7

    .line 481
    iput-boolean v10, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 482
    iput-boolean v10, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 483
    iput-boolean v10, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->scrolledByUser:Z

    .line 484
    iget-object v1, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 485
    iget-object v1, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getCount()I

    move-result v1

    if-le v1, v10, :cond_6

    iget-object v1, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v1, :cond_6

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    cmpg-float v0, v3, v4

    if-gez v0, :cond_5

    move v0, v10

    goto :goto_1

    :cond_5
    move v0, v7

    :goto_1
    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onDown(Z)V

    .line 488
    :cond_6
    iput-boolean v7, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    goto/16 :goto_5

    :cond_7
    const/4 v1, -0x1

    if-ne v9, v10, :cond_c

    .line 490
    iget-boolean v3, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    if-nez v3, :cond_12

    .line 491
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v3

    .line 492
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    if-le v3, v10, :cond_12

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v0

    cmpl-float v0, v5, v6

    if-lez v0, :cond_9

    .line 495
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    add-int/2addr v4, v10

    add-int/2addr v3, v0

    if-lt v4, v3, :cond_8

    goto :goto_2

    :cond_8
    move v0, v4

    goto :goto_2

    .line 500
    :cond_9
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v0

    add-int/2addr v1, v4

    if-ge v1, v0, :cond_a

    add-int/2addr v3, v0

    add-int/lit8 v0, v3, -0x1

    goto :goto_2

    :cond_a
    move v0, v1

    .line 505
    :goto_2
    iget-object v1, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v1, :cond_b

    .line 506
    invoke-interface {v1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    .line 508
    :cond_b
    invoke-virtual {v2, v0, v7}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_5

    :cond_c
    const/4 v0, 0x2

    if-ne v9, v0, :cond_12

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->downPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 514
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gez v4, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_d

    goto :goto_3

    :cond_d
    move v4, v7

    goto :goto_4

    :cond_e
    :goto_3
    move v4, v10

    :goto_4
    if-eqz v4, :cond_f

    .line 516
    iput-boolean v10, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isDownReleased:Z

    .line 517
    iget-object v5, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz v5, :cond_f

    .line 518
    invoke-interface {v5}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onRelease()V

    .line 521
    :cond_f
    iget-boolean v5, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v5, :cond_11

    iget-boolean v6, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-eqz v6, :cond_11

    if-eqz v4, :cond_12

    .line 523
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_10

    .line 524
    iput-boolean v7, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    .line 525
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 526
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 527
    invoke-super {v2, v0}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 528
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5

    .line 530
    :cond_10
    iput-boolean v7, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 531
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 533
    iget-object v1, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 534
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_5

    :cond_11
    if-eqz v5, :cond_12

    .line 537
    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->touchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    return v7

    .line 544
    :cond_12
    :goto_5
    iget-boolean v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    if-eqz v0, :cond_13

    .line 545
    iget-object v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->parentListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    move v3, v0

    goto :goto_6

    :cond_13
    move-object/from16 v1, p1

    move v3, v7

    .line 548
    :goto_6
    iget-boolean v0, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    if-eqz v0, :cond_14

    .line 550
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v3, v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 552
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_14
    :goto_7
    if-eq v9, v10, :cond_15

    if-ne v9, v8, :cond_16

    .line 557
    :cond_15
    iput-boolean v7, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isScrollingListView:Z

    .line 558
    iput-boolean v7, v2, Lorg/telegram/ui/Components/ProfileGalleryView;->isSwipingViewPager:Z

    :cond_16
    return v3
.end method

.method public removePhotoAtIndex(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 936
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_1

    .line 940
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v2, :cond_1

    .line 941
    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->removePhoto(J)V

    const/4 p1, 0x1

    return p1

    .line 944
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 945
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 946
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 947
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 948
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 949
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 950
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 951
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 952
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 953
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 p1, 0x0

    .line 956
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevThumbLocation:Lorg/telegram/messenger/ImageLocation;

    .line 957
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevVectorAvatarThumbDrawable:Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 959
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public removeUploadingImage(Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->uploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    const/4 p1, 0x0

    .line 646
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentUploadingImageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 647
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->curreantUploadingThumbLocation:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method

.method public replaceFirstPhoto(Lorg/telegram/tgnet/TLRPC$Photo;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetCurrentItem()V
    .locals 2

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getCurrentAvatarPage()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollToLastItem()V
    .locals 4

    const/4 v0, 0x0

    .line 1682
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    :cond_0
    invoke-virtual {p0, v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 378
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ProfileGalleryBlurView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAnimatedFileMaybe(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    .line 425
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 427
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 428
    instance-of v3, v2, Lorg/telegram/ui/Components/BackupImageView;

    if-nez v3, :cond_1

    goto :goto_1

    .line 431
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetimageViews(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 435
    :cond_2
    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    .line 436
    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v3

    if-ne v3, p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 442
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 444
    :cond_4
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 446
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 4

    .line 565
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 566
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iget-object p1, p1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->isSamePhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$Photo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 567
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 569
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v2, 0x3e8

    invoke-static {p1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object p1

    .line 570
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {p1, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->callback:Lorg/telegram/ui/Components/ProfileGalleryView$Callback;

    if-eqz p1, :cond_1

    .line 573
    invoke-interface {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$Callback;->onPhotosLoaded()V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 579
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setCreateThumbFromParent(Z)V
    .locals 0

    .line 1505
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->createThumbFromParent:Z

    return-void
.end method

.method protected setCustomAvatarProgress(F)V
    .locals 0

    return-void
.end method

.method public setData(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1433
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->setData(JZ)V

    return-void
.end method

.method public setData(JZ)V
    .locals 2

    .line 1437
    iget-wide v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 1438
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1441
    iput-boolean p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->forceResetPosition:Z

    .line 1442
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileGalleryView;->reset()V

    .line 1443
    iput-wide p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogId:J

    .line 1444
    iget p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    .line 1445
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->loadCache()V

    return-void
.end method

.method public setHasActiveVideo(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->hasActiveVideo:Z

    return-void
.end method

.method public setImagesLayerNum(I)V
    .locals 0

    .line 270
    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLayerNum:I

    return-void
.end method

.method public setInvalidateWithParent(Z)V
    .locals 0

    .line 1671
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->invalidateWithParent:Z

    return-void
.end method

.method public setParentAvatarImage(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 1482
    invoke-static {v0, p1}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fputparentAvatarImageView(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;Lorg/telegram/ui/Components/BackupImageView;)V

    :cond_0
    return-void
.end method

.method public setPinchToZoomHelper(Lorg/telegram/ui/PinchToZoomHelper;)V
    .locals 0

    .line 1667
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    return-void
.end method

.method public setRoundRadius(II)V
    .locals 2

    .line 1469
    iput p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    .line 1470
    iput p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    .line 1471
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1472
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 1473
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1474
    iget-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->adapter:Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->-$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundTopRadius:I

    iget v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->roundBottomRadius:I

    invoke-virtual {p2, v0, v0, v1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(IIII)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUploadProgress(Lorg/telegram/messenger/ImageLocation;F)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1490
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1491
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1492
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1493
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->radialProgresses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 1500
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 370
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->blurView:Lorg/telegram/ui/Components/ProfileGalleryBlurView;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startMovePhotoToBegin(I)V
    .locals 3

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->dialogPhotos:Lorg/telegram/messenger/MessagesController$DialogPhotos;

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->moveToStart(I)V

    return-void

    :cond_0
    if-lez p1, :cond_2

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto/16 :goto_0

    .line 891
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->settingMainPhoto:I

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 894
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 895
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 899
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsFileNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 901
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoFileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 904
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 905
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->videoLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 908
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ImageLocation;

    .line 912
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 913
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->thumbsLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    .line 916
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 917
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->vectorAvatars:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 920
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 921
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 924
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 925
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesUploadProgress:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 927
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->imagesLocations:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ImageLocation;

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView;->prevImageLocation:Lorg/telegram/messenger/ImageLocation;

    :cond_2
    :goto_0
    return-void
.end method
