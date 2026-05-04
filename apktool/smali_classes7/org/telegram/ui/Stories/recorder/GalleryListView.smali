.class public abstract Lorg/telegram/ui/Stories/recorder/GalleryListView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;,
        Lorg/telegram/ui/Stories/recorder/GalleryListView$EmptyView;
    }
.end annotation


# static fields
.field private static final draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;


# instance fields
.field private final ASPECT_RATIO:F

.field public final actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field public actionBarShown:Z

.field private final actionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final button1View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final button2View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final buttonsLayout:Landroid/widget/LinearLayout;

.field private buttonsLayoutVisible:Z

.field public final collaging:Z

.field private containsDraftFolder:Z

.field private containsDrafts:Z

.field private final currentAccount:I

.field private final drafts:Ljava/util/ArrayList;

.field private final dropDown:Landroid/widget/TextView;

.field private dropDownAlbums:Ljava/util/ArrayList;

.field private final dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field public firstLayout:Z

.field private headerView:Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

.field public ignoreScroll:Z

.field private final keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

.field public final layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxCount:I

.field private multipleOnClick:Z

.field private onBackClickListener:Ljava/lang/Runnable;

.field private onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

.field private onSelectMultipleListener:Lorg/telegram/messenger/Utilities$Callback3;

.field public final onlyCollaging:Z

.field public final onlyPhotos:Z

.field public photos:Ljava/util/ArrayList;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final searchAdapterImages:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

.field private final searchContainer:Landroid/widget/FrameLayout;

.field private final searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private final searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private final searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final selectButton:Landroid/widget/ImageView;

.field public selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field public final selectedPhotos:Ljava/util/ArrayList;

.field private shiftDp:I


# direct methods
.method public static synthetic $r8$lambda$-dnBWtsp_CxyReYe2UyoZtU0t9A(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2D3TF-0v4cC5od0ibWiu93FJAwY(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VhAxl82Z-yter1ysClwp4XDtIOk(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$2(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Y-IzJghPru2PrsNB7WdeqSg5ePo(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5LfqtDHbK9yIUUZsK3iBeCrj6o(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$updateAlbumsDropDown$10(Lorg/telegram/messenger/MediaController$AlbumEntry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hAV_pIipD4P-a7H1B-5IHRHUEIM(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$loNHKpXmiTQFIt6B9vuy9b9fjLQ(Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)I
    .locals 2

    .line 830
    iget v0, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_0

    iget v1, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 832
    iget v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 836
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

.method public static synthetic $r8$lambda$qwEs0WkW6Jc89nYShr6UHBCr87c(Lorg/telegram/ui/Stories/recorder/GalleryListView;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$4(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uLAsecyXFA9lyftb5vhN6LSElps(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xEj88bSN5jREzDz5BAFvfb2-dbk(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNUVv3ysojog5lVoOmCEfD37_sY(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetASPECT_RATIO(Lorg/telegram/ui/Stories/recorder/GalleryListView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ASPECT_RATIO:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttonsLayout(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainsDraftFolder(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainsDrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/GalleryListView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdrafts(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdropDown(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdropDownAlbums(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdropDownContainer(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxCount(Lorg/telegram/ui/Stories/recorder/GalleryListView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->maxCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonBackClickListener(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onBackClickListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdapterImages(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchAdapterImages:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchContainer(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchEmptyView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchItem(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchListView(Lorg/telegram/ui/Stories/recorder/GalleryListView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshiftDp(Lorg/telegram/ui/Stories/recorder/GalleryListView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputheaderView(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->headerView:Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshiftDp(Lorg/telegram/ui/Stories/recorder/GalleryListView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectAlbum(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdraftsAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 815
    new-instance v0, Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/messenger/MediaController$AlbumEntry;-><init>(ILjava/lang/String;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MediaController$AlbumEntry;ZFZZ)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    move/from16 v12, p8

    .line 148
    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v13, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v15, -0x2

    .line 133
    iput v15, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    .line 681
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 795
    iput-boolean v14, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->firstLayout:Z

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    .line 823
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    move/from16 v2, p6

    .line 150
    iput v2, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->ASPECT_RATIO:F

    move/from16 v2, p1

    .line 151
    iput v2, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    .line 152
    iput-object v8, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 153
    iput-boolean v10, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    .line 154
    iput-boolean v11, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->collaging:Z

    .line 155
    iput-boolean v12, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyCollaging:Z

    const v3, -0xe0e0e1

    .line 157
    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x40151eb8    # 2.33f

    .line 158
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const v5, -0x41333333    # -0.4f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x8000000

    const/4 v15, 0x0

    invoke-virtual {v13, v4, v15, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 160
    new-instance v4, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;

    invoke-direct {v4, v1, v7, v8}, Lorg/telegram/ui/Stories/recorder/GalleryListView$1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 177
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemSelectorColorProvider(Lorg/telegram/messenger/GenericProvider;)V

    .line 178
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    const/4 v13, 0x0

    invoke-direct {v5, v1, v13}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/ui/Stories/recorder/GalleryListView-IA;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$2;

    const/4 v6, 0x3

    invoke-direct {v5, v1, v7, v6}, Lorg/telegram/ui/Stories/recorder/GalleryListView$2;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;I)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 189
    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 190
    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 191
    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v6

    invoke-virtual {v6, v15}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setAlpha(F)V

    .line 193
    new-instance v6, Lorg/telegram/ui/Stories/recorder/GalleryListView$3;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$3;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 199
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$4;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$4;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v5, 0x0

    .line 205
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 v6, -0x1

    const/16 v13, 0x77

    .line 206
    invoke-static {v6, v6, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v14, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda1;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 248
    new-instance v14, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda2;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 285
    new-instance v14, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$5;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 293
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v14, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 294
    invoke-virtual {v14, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 295
    invoke-virtual {v14, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 296
    invoke-virtual {v14, v15}, Landroid/view/View;->setAlpha(F)V

    const/16 v3, 0x8

    .line 297
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v14, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const v4, 0x19ffffff

    .line 299
    invoke-virtual {v14, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 300
    invoke-virtual {v14, v6, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const/4 v4, 0x1

    .line 301
    invoke-virtual {v14, v6, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    const/16 v4, 0x37

    const/4 v3, -0x2

    .line 302
    invoke-static {v6, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    new-instance v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$6;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v14, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 316
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    move-object v4, v0

    .line 317
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$7;

    move-object/from16 v16, v4

    const/4 v4, 0x0

    move/from16 v18, v5

    move v13, v6

    move-object v2, v7

    move-object v6, v8

    move/from16 v7, v18

    const/4 v8, 0x3

    const/16 v15, 0x8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Stories/recorder/GalleryListView$7;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x1

    .line 324
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 325
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x42800000    # 64.0f

    move/from16 v21, v4

    goto :goto_0

    :cond_0
    const/high16 v21, 0x42600000    # 56.0f

    :goto_0
    const/high16 v23, 0x42200000    # 40.0f

    const/16 v24, 0x0

    const/16 v18, -0x2

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x33

    const/16 v22, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v14, v0, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 326
    new-instance v4, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    const/4 v14, 0x2

    .line 329
    invoke-virtual {v4, v14}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 330
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x1

    const/high16 v18, 0x42600000    # 56.0f

    .line 331
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 332
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 333
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 334
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 335
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 337
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v14, Lorg/telegram/messenger/R$drawable;->ic_arrow_drop_down:I

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v13, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v5, 0x40800000    # 4.0f

    .line 339
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 340
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v4, v7, v5, v14, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, -0x2

    const/high16 v22, -0x40000000    # -2.0f

    const/16 v23, 0x10

    const/high16 v24, 0x41800000    # 16.0f

    const/16 v25, 0x0

    .line 341
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchContainer:Landroid/widget/FrameLayout;

    .line 344
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    .line 345
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    const/16 v4, 0x77

    .line 346
    invoke-static {v13, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v4, v2, v6}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 349
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v14, 0x3

    invoke-direct {v5, v2, v14}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 350
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$8;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchAdapterImages:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 371
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$9;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$9;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v5, 0x1

    .line 379
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 380
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$10;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$10;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/16 v5, 0x77

    .line 391
    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    new-instance v14, Lorg/telegram/ui/Stories/recorder/GalleryListView$11;

    invoke-direct {v14, v1, v2, v6}, Lorg/telegram/ui/Stories/recorder/GalleryListView$11;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move/from16 v20, v8

    const/4 v8, 0x2

    .line 399
    invoke-virtual {v14, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/4 v8, 0x0

    .line 400
    invoke-virtual {v14, v8}, Landroid/view/View;->setAlpha(F)V

    .line 401
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 402
    invoke-static {v13, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance v5, Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v8, 0xb

    invoke-direct {v5, v2, v14, v8, v6}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 405
    iget-object v8, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v14, 0x41800000    # 16.0f

    const/4 v15, 0x1

    invoke-virtual {v8, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 406
    iget-object v8, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v14, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v14

    invoke-virtual {v8, v14}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 407
    iget-object v8, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 408
    iget-object v8, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v14, Lorg/telegram/messenger/R$string;->SearchImagesType:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v8, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    new-instance v14, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda4;

    invoke-direct {v14, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-direct {v8, v1, v14}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;-><init>(Landroid/view/View;Lorg/telegram/messenger/Utilities$Callback;)V

    iput-object v8, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    const/16 v8, 0x77

    .line 410
    invoke-static {v13, v13, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 413
    sget v0, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v3, v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$12;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v15, 0x8

    .line 511
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 512
    sget v3, Lorg/telegram/messenger/R$string;->SearchImagesTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 514
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 526
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    if-nez v10, :cond_2

    .line 528
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v7

    :cond_1
    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 530
    iget-boolean v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v8, :cond_1

    iget-boolean v8, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    if-nez v8, :cond_1

    .line 531
    iget-object v8, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_5

    const/4 v14, 0x0

    .line 537
    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectButton:Landroid/widget/ImageView;

    .line 539
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    .line 540
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 541
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 542
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v8, :cond_3

    const/16 v20, 0x0

    :cond_3
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v8, v10

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, -0x1

    const/high16 v21, -0x40000000    # -2.0f

    const/16 v22, 0x57

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 543
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    .line 544
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    const/high16 v3, 0x42000000    # 32.0f

    .line 545
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    const/16 v15, 0x8

    .line 546
    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 548
    new-instance v3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->button1View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 549
    const-string v4, "StoriesCreate"

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    if-nez v12, :cond_4

    const/16 v21, 0x0

    const/high16 v22, 0x41000000    # 8.0f

    const/16 v17, -0x1

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 551
    invoke-static/range {v17 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    new-instance v4, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    :cond_4
    new-instance v3, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v3, v2, v12, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->button2View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 559
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, "v"

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 560
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->mini_collage:I

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const v5, 0x3faa3d71    # 1.33f

    .line 561
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const v6, 0x3f28f5c3    # 0.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/16 v5, 0x21

    const/4 v15, 0x1

    .line 562
    invoke-virtual {v2, v4, v7, v15, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 563
    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->StoriesCollage:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 564
    invoke-virtual {v3, v2, v7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 565
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    .line 572
    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    .line 573
    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->button1View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 574
    iput-object v14, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->button2View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 576
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectButton:Landroid/widget/ImageView;

    .line 577
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 578
    sget v2, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 579
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 580
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    const/high16 v15, 0x41600000    # 14.0f

    const/high16 v16, 0x41600000    # 14.0f

    const/4 v10, -0x2

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x55

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 581
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v8, 0x0

    .line 583
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3f333333    # 0.7f

    .line 584
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 585
    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 588
    :goto_2
    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateAlbumsDropDown()V

    if-eqz v9, :cond_7

    .line 589
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v9, v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 590
    :cond_6
    iput-object v9, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_4

    .line 592
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 595
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_4

    .line 593
    :cond_9
    :goto_3
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 598
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    .line 599
    invoke-direct {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 600
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget-object v2, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v2, :cond_a

    .line 601
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 602
    :cond_a
    sget-object v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v2, :cond_b

    .line 603
    iget-object v0, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->StoryDraftsAlbum:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 605
    :cond_b
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private findCell(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;
    .locals 3

    const/4 v0, 0x0

    .line 776
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 778
    instance-of v2, v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->-$$Nest$fgetcurrentObject(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;
    .locals 4

    if-nez p1, :cond_0

    .line 630
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 632
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    if-nez v0, :cond_1

    .line 633
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    return-object p1

    .line 635
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 636
    :goto_0
    iget-object v2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 637
    iget-object v2, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 638
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v3, :cond_2

    .line 639
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_a

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_a

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 211
    :cond_0
    check-cast p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    add-int/lit8 v0, p2, -0x2

    .line 213
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 215
    sget-object p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    return-void

    :cond_1
    add-int/lit8 v0, p2, -0x3

    goto :goto_0

    .line 219
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    if-eqz p2, :cond_5

    if-ltz v0, :cond_4

    .line 220
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 221
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    iget-boolean v1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    invoke-interface {v0, p2, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 225
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr v0, p2

    :cond_5
    :goto_0
    if-ltz v0, :cond_a

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_a

    .line 229
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 230
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->isMultiple()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v3

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->maxCount:I

    if-le v0, v1, :cond_7

    .line 235
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    neg-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 236
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 239
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateSelectButtonVisible()V

    return-void

    .line 244
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    iget-boolean v1, p2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_9

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_9
    invoke-interface {v0, p2, v2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p2, v0, :cond_7

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz v0, :cond_7

    instance-of v0, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v0, p2, -0x2

    .line 253
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, p2, -0x3

    goto :goto_0

    .line 258
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    if-eqz p2, :cond_4

    if-ltz v0, :cond_3

    .line 259
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    return v1

    .line 262
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr v0, p2

    :cond_4
    :goto_0
    if-ltz v0, :cond_7

    .line 265
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_7

    .line 266
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->multipleOnClick:Z

    if-nez v0, :cond_7

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 271
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->maxCount:I

    if-le v0, v2, :cond_6

    .line 272
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    neg-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->shiftDp:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 273
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return v1

    .line 276
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateSelectButtonVisible()V

    :cond_7
    :goto_2
    return v1
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$4(Ljava/lang/Integer;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchEmptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->keyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;I)V
    .locals 1

    .line 515
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchContainer()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    if-ltz p2, :cond_2

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchAdapterImages:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_1

    goto :goto_0

    .line 521
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    if-eqz p1, :cond_2

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchAdapterImages:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 1

    .line 553
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 554
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectMultiple(Z)V

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 1

    .line 567
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 568
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectMultiple(Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 582
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectMultiple(Z)V

    return-void
.end method

.method private synthetic lambda$updateAlbumsDropDown$10(Lorg/telegram/messenger/MediaController$AlbumEntry;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 866
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    return-void
.end method

.method private prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 788
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->-$$Nest$fgetbitmap(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 790
    invoke-static {p1, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapWithScaleFactor(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private selectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;Z)V
    .locals 3

    .line 874
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 875
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    .line 876
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 877
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v0, :cond_0

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ChatGallery:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 880
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne p1, v0, :cond_1

    .line 881
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->StoryDraftsAlbum:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 883
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    iget-object p1, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/high16 p1, 0x41800000    # 16.0f

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 887
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p2, v1, v2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;I)V

    .line 888
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 889
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 890
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void

    .line 892
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    neg-int v1, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private selectMultiple(Z)V
    .locals 7

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectMultipleListener:Lorg/telegram/messenger/Utilities$Callback3;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 671
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 673
    iget-boolean v6, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v6, :cond_2

    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->findCell(Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->prepareBlurredThumb(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectMultipleListener:Lorg/telegram/messenger/Utilities$Callback3;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2, v0}, Lorg/telegram/messenger/Utilities$Callback3;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 678
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateSelectButtonVisible()V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateAlbumsDropDown()V
    .locals 11

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 827
    sget-object v0, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    .line 828
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    .line 829
    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda9;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 845
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 848
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 851
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 853
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 855
    sget-object v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v2, v3, :cond_2

    .line 856
    new-instance v4, Lorg/telegram/ui/Stories/recorder/AlbumButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-string v3, "StoryDraftsAlbum"

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Stories/recorder/AlbumButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/lang/CharSequence;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    .line 858
    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object v3

    .line 859
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 862
    :cond_3
    new-instance v5, Lorg/telegram/ui/Stories/recorder/AlbumButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v8, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/AlbumButton;-><init>(Landroid/content/Context;Lorg/telegram/messenger/MediaController$PhotoEntry;Ljava/lang/CharSequence;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v4, v5

    .line 864
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getPopupLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 865
    new-instance v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateContainsDrafts()V
    .locals 4

    .line 1760
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDraftFolder:Z

    if-nez v0, :cond_1

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    sget-object v3, Lorg/telegram/ui/Stories/recorder/GalleryListView;->draftsAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->containsDrafts:Z

    return-void
.end method


# virtual methods
.method public allowSearch(Z)V
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1714
    sget p2, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    if-ne p1, p2, :cond_5

    .line 1715
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateAlbumsDropDown()V

    .line 1716
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1720
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDownAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    .line 1718
    :cond_1
    :goto_0
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    .line 1723
    :cond_2
    :goto_1
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 1724
    sget-object p1, Lorg/telegram/messenger/MediaController;->allMediaAlbums:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 1725
    iget p3, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget v1, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketId:I

    if-ne p3, v1, :cond_3

    iget-boolean p3, p1, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->videoOnly:Z

    if-ne p3, v0, :cond_3

    .line 1726
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1731
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPhotoEntries(Lorg/telegram/messenger/MediaController$AlbumEntry;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->photos:Ljava/util/ArrayList;

    .line 1732
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1733
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    if-eqz p1, :cond_6

    .line 1735
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 1737
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    if-ne p1, p2, :cond_6

    .line 1738
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateDrafts()V

    :cond_6
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 685
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v0

    int-to-float v0, v0

    .line 686
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 687
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    .line 688
    invoke-static {v0, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 689
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v1, v5, :cond_2

    .line 690
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onFullScreen(Z)V

    .line 691
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBarShown:Z

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 693
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_4

    .line 694
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    cmpg-float v1, v3, v4

    if-gtz v1, :cond_3

    const/16 v2, 0x8

    .line 696
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 697
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->headerView:Lorg/telegram/ui/Stories/recorder/GalleryListView$HeaderView;

    if-eqz v1, :cond_5

    sub-float/2addr v6, v3

    .line 701
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 703
    :cond_5
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 704
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 705
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 707
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected firstLayout()V
    .locals 0

    return-void
.end method

.method public getPadding()I
    .locals 2

    .line 1670
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getSelectedAlbum()Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1492
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->AddImage:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->ChoosePhotoOrVideo:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultiple()Z
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->multipleOnClick:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1698
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1699
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1700
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->keyboardVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 653
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return v2

    .line 656
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSearch(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchFieldVisibilityChanged(Z)V

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1705
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1706
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1707
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesDraftsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1709
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->cleanupQueues()V

    return-void
.end method

.method protected onFullScreen(Z)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 718
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    :goto_0
    add-int/lit8 v4, v4, 0x72

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_1
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 719
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 720
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 722
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_4

    .line 723
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 725
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 726
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 727
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 728
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 729
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v5, v2, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->dropDown:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v2, v1, :cond_5

    const/high16 v1, 0x41900000    # 18.0f

    goto :goto_3

    :cond_5
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 732
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onScroll()V
    .locals 0

    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .line 618
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->maxCount:I

    return-void
.end method

.method public setMultipleOnClick(Z)V
    .locals 1

    .line 612
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->multipleOnClick:Z

    if-eq v0, p1, :cond_0

    .line 613
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->multipleOnClick:Z

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    :cond_0
    return-void
.end method

.method public setOnBackClickListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onBackClickListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnSelectListener(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback2<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 807
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectListener:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method

.method public setOnSelectMultipleListener(Lorg/telegram/messenger/Utilities$Callback3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback3<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 812
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onSelectMultipleListener:Lorg/telegram/messenger/Utilities$Callback3;

    return-void
.end method

.method public top()I
    .locals 5

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1679
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v2, 0x7fffffff

    if-eqz v0, :cond_2

    move v0, v1

    .line 1680
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1681
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1682
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1684
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1688
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1676
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result v0

    .line 1690
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_4

    return v0

    .line 1693
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v0

    return v0
.end method

.method public updateDrafts()V
    .locals 5

    .line 1743
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1744
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->onlyPhotos:Z

    if-nez v0, :cond_1

    .line 1745
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/DraftsController;->drafts:Ljava/util/ArrayList;

    .line 1746
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    .line 1747
    iget-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEdit:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isError:Z

    if-nez v4, :cond_0

    .line 1748
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->drafts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1752
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateAlbumsDropDown()V

    .line 1753
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->updateContainsDrafts()V

    .line 1754
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->adapter:Lorg/telegram/ui/Stories/recorder/GalleryListView$Adapter;

    if-eqz v0, :cond_2

    .line 1755
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public updateSelectButtonVisible()V
    .locals 12

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 738
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectButton:Landroid/widget/ImageView;

    const-wide/16 v3, 0x140

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    .line 739
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v0, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    .line 740
    :goto_0
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v7, 0x3f333333    # 0.7f

    if-nez v0, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    .line 741
    :goto_1
    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v0, :cond_2

    move v7, v6

    .line 742
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v0, :cond_3

    .line 743
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    neg-int v7, v7

    :goto_2
    int-to-float v7, v7

    goto :goto_3

    :cond_3
    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_2

    :goto_3
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 744
    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 745
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 746
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 748
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_9

    .line 749
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->button1View:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v2, :cond_5

    .line 750
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->selectedPhotos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const-string v9, "StoriesCreate"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 753
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    if-lez v11, :cond_6

    move v7, v5

    :cond_6
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v7, v11

    invoke-virtual {v2, v8, v9, v10, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 754
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayoutVisible:Z

    if-eq v2, v1, :cond_9

    .line 755
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayoutVisible:Z

    .line 756
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->buttonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v6, v5

    .line 758
    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    const/high16 v0, 0x42000000    # 32.0f

    .line 759
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v5, v0

    :goto_5
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 760
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/GalleryListView$13;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$13;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView;Z)V

    .line 762
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    return-void
.end method
