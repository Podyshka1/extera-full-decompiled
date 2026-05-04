.class public Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;
.super Lorg/telegram/ui/Components/CircularViewPager$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ProfileGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageViews:Ljava/util/ArrayList;

.field private final objects:Ljava/util/ArrayList;

.field private final parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private final placeholderPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ProfileGalleryView;


# direct methods
.method static bridge synthetic -$$Nest$fgetimageViews(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobjects(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputparentAvatarImageView(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;Lorg/telegram/ui/ProfileActivity$AvatarImageView;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;-><init>()V

    .line 1226
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    .line 1227
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    .line 1235
    iput-object p2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->context:Landroid/content/Context;

    .line 1236
    iput-object p3, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 1237
    iput-object p4, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1238
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->placeholderPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 1239
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1373
    check-cast p3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 1374
    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1375
    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1377
    :cond_0
    iget-boolean p2, p3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    if-eqz p2, :cond_1

    return-void

    .line 1380
    :cond_1
    invoke-static {p3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    .line 1381
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/ImageReceiver;->hasStaticThumb()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1382
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 1383
    instance-of v0, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_2

    .line 1384
    check-cast p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    :cond_2
    const/4 p3, 0x0

    .line 1387
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1388
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1389
    invoke-virtual {p2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtraCount()I
    .locals 2

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1421
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgethasActiveVideo(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1425
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getOffscreenPageLimit()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    check-cast p1, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    :cond_0
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetdialogPhotos(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetdialogPhotos(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->getCount()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1224
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/ProfileGalleryView$Item;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1264
    iget-object v3, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 1265
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CircularViewPager$Adapter;->getRealPosition(I)I

    move-result v4

    .line 1267
    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgethasActiveVideo(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 1268
    iput-boolean v6, v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    .line 1269
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1270
    new-instance v2, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;

    iget-object v4, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v5}, Lorg/telegram/ui/Components/ProfileGalleryView$TextureStubView;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;)V

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fputtextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;Landroid/view/View;)V

    .line 1272
    :cond_0
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1273
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-object v3

    :cond_2
    const/4 v5, 0x0

    .line 1277
    iput-boolean v5, v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    .line 1280
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1281
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1283
    :cond_3
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1284
    new-instance v7, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    iget-object v8, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    iget-object v9, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->context:Landroid/content/Context;

    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->placeholderPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v8, v9, v2, v10}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView;Landroid/content/Context;ILandroid/graphics/Paint;)V

    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fputimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)V

    .line 1285
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1288
    :cond_4
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1289
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1292
    :cond_5
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/ImageReceiver;->setAllowDecodeSingleFrame(Z)V

    .line 1293
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgethasActiveVideo(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    :cond_6
    move v1, v4

    .line 1295
    :goto_0
    const-string v2, "b"

    const-string v7, "avatar_"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v1, :cond_11

    .line 1296
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v10, :cond_7

    move-object v10, v9

    goto :goto_1

    :cond_7
    invoke-virtual {v10}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1297
    :goto_1
    instance-of v11, v10, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v11, :cond_8

    move-object v11, v10

    check-cast v11, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1299
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1300
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    .line 1301
    invoke-virtual {v11, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    goto/16 :goto_b

    :cond_8
    if-ltz v1, :cond_15

    .line 1302
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_15

    .line 1303
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lorg/telegram/messenger/ImageLocation;

    .line 1304
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v10

    if-eqz v13, :cond_9

    move v11, v6

    goto :goto_2

    :cond_9
    move v11, v5

    :goto_2
    iput-boolean v11, v10, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->isVideo:Z

    .line 1305
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_a

    move v10, v6

    goto :goto_3

    :cond_a
    move v10, v5

    .line 1307
    :goto_3
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetisProfileFragment(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v13, :cond_b

    iget v11, v13, Lorg/telegram/messenger/ImageLocation;->imageType:I

    if-ne v11, v8, :cond_b

    .line 1308
    const-string v11, "avatar"

    move-object/from16 v16, v11

    goto :goto_4

    :cond_b
    move-object/from16 v16, v9

    .line 1312
    :goto_4
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetthumbsLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ImageLocation;

    .line 1313
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v12, :cond_d

    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetcreateThumbFromParent(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_5

    :cond_c
    iget-object v12, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->parentAvatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v19, v12

    goto :goto_6

    :cond_d
    :goto_5
    move-object/from16 v19, v9

    .line 1314
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Components/ProfileGalleryView;)J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    if-eqz v19, :cond_e

    .line 1315
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    .line 1316
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v14

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocationsSizes(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v22}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/Bitmap;IILjava/lang/Object;)V

    goto/16 :goto_c

    .line 1317
    :cond_e
    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetuploadingImageLocation(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 1318
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v14

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageLocation;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Lorg/telegram/messenger/ImageLocation;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetuploadingImageLocation(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocationsSizes(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v25, v22

    const/16 v22, 0x0

    move-object/from16 v17, v16

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v25}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_f
    if-eqz v11, :cond_10

    .line 1320
    iget-object v7, v11, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v7, :cond_10

    move-object/from16 v18, v2

    goto :goto_7

    :cond_10
    move-object/from16 v18, v9

    .line 1321
    :goto_7
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v11

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetthumbsLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocationsSizes(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v22}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_11
    if-ltz v1, :cond_15

    .line 1324
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_15

    .line 1325
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvideoLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lorg/telegram/messenger/ImageLocation;

    .line 1326
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v10

    if-eqz v13, :cond_12

    move v11, v6

    goto :goto_8

    :cond_12
    move v11, v5

    :goto_8
    iput-boolean v11, v10, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->isVideo:Z

    .line 1327
    iget-object v10, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_13

    move v10, v6

    goto :goto_9

    :cond_13
    move v10, v5

    .line 1328
    :goto_9
    iget-object v11, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetthumbsLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ImageLocation;

    if-eqz v11, :cond_14

    .line 1329
    iget-object v11, v11, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v11, v11, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v11, :cond_14

    move-object/from16 v18, v2

    goto :goto_a

    :cond_14
    move-object/from16 v18, v9

    .line 1330
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Components/ProfileGalleryView;)J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1331
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v11

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetvectorAvatars(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetthumbsLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocationsSizes(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v22}, Lorg/telegram/ui/Components/BackupImageView;->setImageMedia(Lorg/telegram/ui/Components/VectorAvatarThumbDrawable;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_c

    :cond_15
    :goto_b
    move v10, v5

    :goto_c
    if-ltz v1, :cond_16

    .line 1333
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesUploadProgress(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesUploadProgress(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_16

    goto :goto_d

    :cond_16
    move v6, v10

    :goto_d
    if-eqz v6, :cond_19

    .line 1337
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetradialProgresses(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fputradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;Lorg/telegram/ui/Components/RadialProgress2;)V

    .line 1338
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    if-nez v2, :cond_17

    .line 1339
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    invoke-static {v2, v6}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fputradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;Lorg/telegram/ui/Components/RadialProgress2;)V

    .line 1340
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/RadialProgress2;->setOverrideAlpha(F)V

    .line 1341
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v5, v5}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 1342
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v2

    const/high16 v5, 0x42000000    # 32.0f

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v5, v6, v6}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    .line 1343
    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetradialProgresses(Lorg/telegram/ui/Components/ProfileGalleryView;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;->-$$Nest$fgetradialProgress(Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;)Lorg/telegram/ui/Components/RadialProgress2;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1345
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetinvalidateWithParent(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1346
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_e

    .line 1348
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1351
    :cond_19
    :goto_e
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter$1;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1364
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 1366
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetroundTopRadius(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetroundTopRadius(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetroundBottomRadius(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetroundBottomRadius(Lorg/telegram/ui/Components/ProfileGalleryView;)I

    move-result v7

    invoke-virtual {v1, v2, v5, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(IIII)V

    .line 1367
    invoke-static {v3}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 3

    .line 1249
    check-cast p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    .line 1250
    iget-boolean v0, p2, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->isActiveVideo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1251
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgettextureViewStubView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return v2

    :cond_0
    return v1

    .line 1253
    :cond_1
    invoke-static {p2}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;->-$$Nest$fgetimageView(Lorg/telegram/ui/Components/ProfileGalleryView$Item;)Lorg/telegram/ui/Components/ProfileGalleryView$AvatarImageView;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1400
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1401
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1402
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1406
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1407
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetimagesLocations(Lorg/telegram/ui/Components/ProfileGalleryView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1408
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgethasActiveVideo(Lorg/telegram/ui/Components/ProfileGalleryView;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 1411
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetdialogPhotos(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->this$0:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileGalleryView;->-$$Nest$fgetdialogPhotos(Lorg/telegram/ui/Components/ProfileGalleryView;)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->getCount()I

    move-result v2

    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->getExtraCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :goto_2
    if-ge v0, v1, :cond_4

    .line 1412
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->objects:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Components/ProfileGalleryView$Item;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ProfileGalleryView$Item;-><init>(Lorg/telegram/ui/Components/ProfileGalleryView-IA;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileGalleryView$ViewPagerAdapter;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1415
    :cond_4
    invoke-super {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
