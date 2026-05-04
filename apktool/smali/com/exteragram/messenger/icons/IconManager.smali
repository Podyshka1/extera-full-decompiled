.class public final Lcom/exteragram/messenger/icons/IconManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

.field private static final activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static final blacklistedIcons:Ljava/util/Set;

.field private static final cacheSize:I

.field private static final iconOwnerMap:Lj$/util/concurrent/ConcurrentHashMap;

.field private static initializationJob:Lkotlinx/coroutines/Job;

.field private static final maxMemory:I

.field private static resolvedCache:Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

.field private static final resultCallbacks:Landroid/util/SparseArray;

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;

.field private static sourceCache:Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

.field private static final systemIcons:Lj$/util/concurrent/ConcurrentHashMap;

.field private static final systemNames:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 93

    new-instance v0, Lcom/exteragram/messenger/icons/IconManager;

    invoke-direct {v0}, Lcom/exteragram/messenger/icons/IconManager;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    .line 49
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 77
    const-string/jumbo v91, "wait"

    const-string/jumbo v92, "videopreview"

    const-string v4, "blockpanel"

    const-string/jumbo v5, "vd_flip"

    const-string/jumbo v6, "system"

    const-string/jumbo v7, "smiles_popup"

    const-string v8, "camera_btn"

    const-string v9, "cancel_big"

    const-string v10, "chats_archive_box"

    const-string v11, "chats_archive_arrow"

    const-string v12, "chats_archive_muted"

    const-string v13, "chats_archive_pin"

    const-string v14, "chats_widget_preview"

    const-string v15, "circle_big"

    const-string v16, "clone"

    const-string v17, "contacts_widget_preview"

    const-string v18, "equals"

    const-string v19, "etg_splash"

    const-string v20, "ev_minus"

    const-string v21, "ev_plus"

    const-string v22, "fast_scroll_empty"

    const-string v23, "filled_chatlink_large"

    const-string v24, "field_carret_empty"

    const-string v25, "finalize"

    const-string v26, "dice"

    const-string v27, "dino_pic"

    const-string v28, "circle"

    const-string/jumbo v29, "widgets_light_badgebg"

    const-string v30, "greydivider"

    const-string v31, "greydivider_bottom"

    const-string v32, "greydivider_top"

    const-string v33, "groups_limit1"

    const-string v34, "ic_ab_new"

    const-string v35, "ic_ab_reply_2"

    const-string v36, "ic_chatlist_add_2"

    const-string v37, "ic_foreground"

    const-string v38, "ic_foreground_monet"

    const-string v39, "ic_player"

    const-string v40, "ic_reply_icon"

    const-string v41, "icon_background_clip"

    const-string v42, "icon_background_clip_round"

    const-string v43, "icon_plane"

    const-string v44, "icplaceholder"

    const-string/jumbo v45, "large_ads_info"

    const-string/jumbo v46, "large_away"

    const-string/jumbo v47, "large_greeting"

    const-string/jumbo v48, "large_log_actions"

    const-string/jumbo v49, "large_monetize"

    const-string/jumbo v50, "large_quickreplies"

    const-string/jumbo v51, "list_selector_ex"

    const-string/jumbo v52, "livepin"

    const-string/jumbo v53, "load_big"

    const-string/jumbo v54, "location_empty"

    const-string/jumbo v55, "login_arrow1"

    const-string/jumbo v56, "login_phone1"

    const-string/jumbo v57, "logo_middle"

    const-string/jumbo v58, "map_pin3"

    const-string/jumbo v59, "map_pin_photo"

    const-string/jumbo v60, "msg_media_gallery"

    const-string/jumbo v61, "music_empty"

    const-string/jumbo v62, "no_passport"

    const-string/jumbo v63, "no_password"

    const-string/jumbo v64, "nophotos"

    const-string/jumbo v65, "notify"

    const-string/jumbo v66, "paint_elliptical_brush"

    const-string/jumbo v67, "paint_neon_brush"

    const-string/jumbo v68, "paint_radial_brush"

    const-string/jumbo v69, "phone_activate"

    const-string/jumbo v70, "photo_placeholder_in"

    const-string/jumbo v71, "photo_tooltip2"

    const-string/jumbo v72, "photoview_placeholder"

    const-string/jumbo v73, "screencast_big"

    const-string/jumbo v74, "screencast_big_remix"

    const-string/jumbo v75, "screencast_solar"

    const-string/jumbo v76, "scrollbar_vertical_thumb"

    const-string/jumbo v77, "scrollbar_vertical_thumb_inset"

    const-string/jumbo v78, "places_btn"

    const-string/jumbo v79, "newmsg_divider"

    const-string v80, "ic_launcher_dr"

    const-string/jumbo v81, "smiles_info"

    const-string/jumbo v82, "sms_bubble"

    const-string/jumbo v83, "sms_devices"

    const-string/jumbo v84, "stats_tooltip"

    const-string/jumbo v85, "sticker"

    const-string/jumbo v86, "story_camera"

    const-string/jumbo v87, "theme_preview_image"

    const-string/jumbo v88, "ton"

    const-string/jumbo v89, "transparent"

    const-string/jumbo v90, "venue_tooltip"

    filled-new-array/range {v4 .. v92}, [Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/icons/IconManager;->blacklistedIcons:Ljava/util/Set;

    .line 107
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/icons/IconManager;->systemIcons:Lj$/util/concurrent/ConcurrentHashMap;

    .line 108
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/icons/IconManager;->systemNames:Lj$/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const/16 v1, 0x400

    int-to-long v6, v1

    div-long/2addr v4, v6

    long-to-int v4, v4

    sput v4, Lcom/exteragram/messenger/icons/IconManager;->maxMemory:I

    .line 111
    div-int/lit8 v4, v4, 0x8

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/exteragram/messenger/icons/IconManager;->cacheSize:I

    .line 113
    div-int/lit8 v4, v1, 0x2

    new-instance v5, Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    invoke-direct {v5, v4}, Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;-><init>(I)V

    sput-object v5, Lcom/exteragram/messenger/icons/IconManager;->resolvedCache:Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    .line 119
    div-int/lit8 v1, v1, 0x2

    new-instance v4, Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    invoke-direct {v4, v1}, Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;-><init>(I)V

    sput-object v4, Lcom/exteragram/messenger/icons/IconManager;->sourceCache:Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    .line 125
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/exteragram/messenger/icons/IconManager;->iconOwnerMap:Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    .line 130
    invoke-static {v0, v1, v3, v2}, Lcom/exteragram/messenger/icons/IconManager;->initialize$default(Lcom/exteragram/messenger/icons/IconManager;ZILjava/lang/Object;)V

    .line 564
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/icons/IconManager;->resultCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getActivePacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 48
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic access$getResolvedCache$p()Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;
    .locals 1

    .line 48
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->resolvedCache:Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    return-object v0
.end method

.method public static final synthetic access$getScope$p()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 48
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final synthetic access$getSourceCache$p()Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;
    .locals 1

    .line 48
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->sourceCache:Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    return-object v0
.end method

.method public static final synthetic access$rebuildOwnerMap(Lcom/exteragram/messenger/icons/IconManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/exteragram/messenger/icons/IconManager;->rebuildOwnerMap()V

    return-void
.end method

.method private final getPackIconBitmap(Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 184
    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getLocation()Ljava/io/File;

    move-result-object v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getLocation()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 185
    :goto_1
    sget-object v1, Lcom/exteragram/messenger/icons/IconManager;->sourceCache:Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    if-nez p5, :cond_2

    .line 188
    sget-object p5, Lcom/exteragram/messenger/icons/IconManager;->systemNames:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p5, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    if-nez p5, :cond_2

    .line 189
    :try_start_0
    sget-object p5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    return-object v1

    .line 194
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    if-nez p5, :cond_3

    return-object v1

    .line 195
    :cond_3
    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getLocation()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 196
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getLocation()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_4
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v2}, Lcom/exteragram/messenger/icons/IconPackStorage;->getIconPacksDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p5, "getAbsolutePath(...)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/exteragram/messenger/icons/IconManager;->createBitmapFromFile(Ljava/lang/String;IILandroid/content/res/Resources$Theme;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 203
    sget-object p2, Lcom/exteragram/messenger/icons/IconManager;->sourceCache:Lcom/exteragram/messenger/icons/IconManager$sourceCache$1;

    invoke-virtual {p2, v0, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p1
.end method

.method static synthetic getPackIconBitmap$default(Lcom/exteragram/messenger/icons/IconManager;Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/exteragram/messenger/icons/IconManager;->getPackIconBitmap(Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic initialize$default(Lcom/exteragram/messenger/icons/IconManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V

    return-void
.end method

.method private final rebuildOwnerMap()V
    .locals 5

    .line 134
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->iconOwnerMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 135
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 136
    sget-object v2, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    .line 137
    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    sget-object v4, Lcom/exteragram/messenger/icons/IconManager;->iconOwnerMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static synthetic showReplaceAlert$default(Lcom/exteragram/messenger/icons/IconManager;Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 596
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/exteragram/messenger/icons/IconManager;->showReplaceAlert(Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method


# virtual methods
.method public final bundlePackBlocking(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string/jumbo v0, "packId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    sget-object v0, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/IconPackStorage;->bundlePackBlocking(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final createBitmapFromFile(Ljava/lang/String;IILandroid/content/res/Resources$Theme;)Landroid/graphics/Bitmap;
    .locals 7

    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 216
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v2, v1, Lcom/exteragram/messenger/icons/ExteraResources;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/exteragram/messenger/icons/ExteraResources;

    goto :goto_0

    :catch_0
    move-exception p2

    goto/16 :goto_5

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/exteragram/messenger/icons/ExteraResources;->getOriginalDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 220
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 219
    invoke-static {v1, p2, p3, p4}, Landroidx/core/content/res/ResourcesCompat;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    const/high16 p2, 0x41c00000    # 24.0f

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    :goto_1
    if-eqz v1, :cond_4

    .line 227
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    .line 229
    :goto_2
    const-string v1, ".svg"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 230
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 86
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 88
    invoke-static {p4, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p4, p4

    .line 233
    invoke-virtual {v2, p4}, Lcom/caverock/androidsvg/SVG;->setDocumentWidth(F)V

    int-to-float p2, p2

    .line 234
    invoke-virtual {v2, p2}, Lcom/caverock/androidsvg/SVG;->setDocumentHeight(F)V

    .line 235
    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;)V

    .line 236
    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception p2

    .line 230
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 240
    :cond_5
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 244
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 245
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, p2, :cond_6

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v4, p4, :cond_7

    .line 246
    :cond_6
    div-int/lit8 v3, v3, 0x2

    .line 247
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v4, v4, 0x2

    .line 248
    :goto_3
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v3, v5

    if-lt v6, p2, :cond_7

    div-int v6, v4, v5

    if-lt v6, p4, :cond_7

    mul-int/lit8 v5, v5, 0x2

    .line 249
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 252
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 253
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 255
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    .line 257
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p4, :cond_a

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_9

    goto :goto_4

    .line 265
    :cond_9
    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    return-object v1

    .line 71
    :cond_a
    :goto_4
    invoke-static {v1, p4, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 259
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    .line 260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    :cond_b
    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    .line 269
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error loading icon bitmap: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final deletePack(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "packId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    sget-object v1, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/exteragram/messenger/icons/IconManager$deletePack$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/exteragram/messenger/icons/IconManager$deletePack$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;
    .locals 1

    const-string/jumbo v0, "packId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/IconPackStorage;->findPackById(Ljava/lang/String;)Lcom/exteragram/messenger/icons/IconPack;

    move-result-object p1

    return-object p1
.end method

.method public final getCustomPacks()Ljava/util/List;
    .locals 1

    .line 496
    sget-object v0, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPackStorage;->getCustomPacks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDrawable(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 145
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->resolvedCache:Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 146
    const-string v1, "getResources(...)"

    if-eqz v0, :cond_0

    .line 147
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    .line 150
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->systemNames:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 151
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v8, v0

    goto :goto_0

    :catch_0
    return-object v2

    .line 156
    :goto_0
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->iconOwnerMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/exteragram/messenger/icons/IconPack;

    if-eqz v4, :cond_2

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    .line 158
    invoke-direct/range {v3 .. v8}, Lcom/exteragram/messenger/icons/IconManager;->getPackIconBitmap(Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    sget-object p2, Lcom/exteragram/messenger/icons/IconManager;->resolvedCache:Lcom/exteragram/messenger/icons/IconManager$resolvedCache$1;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3

    :cond_2
    return-object v2
.end method

.method public final getIcon(I)I
    .locals 3

    .line 378
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string/jumbo v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/icons/IconPack;

    .line 379
    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconPack;->getPreinstalledMap()Landroid/util/SparseIntArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/exteragram/messenger/icons/IconPack;->getPreinstalledMap()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    return v1

    :cond_1
    return p1
.end method

.method public final getPackIconDrawable(Lcom/exteragram/messenger/icons/IconPack;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const-string/jumbo v0, "pack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/exteragram/messenger/icons/IconManager;->getPackIconBitmap$default(Lcom/exteragram/messenger/icons/IconManager;Lcom/exteragram/messenger/icons/IconPack;IILandroid/content/res/Resources$Theme;Ljava/lang/String;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "getResources(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSystemIcons()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 107
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->systemIcons:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getSystemNames()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 108
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->systemNames:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final handleIconPack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    const-string v0, "baseFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "messageObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object p2

    .line 522
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;

    const/4 v1, 0x0

    invoke-direct {v3, p2, p1, v1}, Lcom/exteragram/messenger/icons/IconManager$handleIconPack$1;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final declared-synchronized initialize(Z)V
    .locals 6

    monitor-enter p0

    .line 389
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->initializationJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 391
    :cond_0
    :try_start_1
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/exteragram/messenger/icons/IconManager$initialize$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Lcom/exteragram/messenger/icons/IconManager$initialize$1;-><init>(ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    sput-object p1, Lcom/exteragram/messenger/icons/IconManager;->initializationJob:Lkotlinx/coroutines/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final isBasePackOnly(I)Z
    .locals 1

    .line 608
    sget v0, Lcom/exteragram/messenger/ExteraConfig;->iconPack:I

    if-ne v0, p1, :cond_3

    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2746
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2747
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    .line 608
    invoke-virtual {v0}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isBlacklisted(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->blacklistedIcons:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "avd"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "_solar"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const-string v0, "_remix"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const-string v0, "$"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string v0, "animationpin"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const-string v0, "googlepay"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string/jumbo v0, "shadow"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const-string v0, "ic_monochrome"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const-string/jumbo v0, "nocover"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "gradient_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, "stickers_back_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string/jumbo v0, "media_doc_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string/jumbo v0, "loading_animation"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const-string v0, "intro_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string/jumbo v0, "minibubble_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "book_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const-string v0, "call_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const-string v0, "groupsintro"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const-string/jumbo v0, "profile_level"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string/jumbo v0, "widget_"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string/jumbo v0, "zoom_slide"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string/jumbo v0, "zoom_round"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string/jumbo v0, "popup_fixed_alert"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string/jumbo v0, "search_dark"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string v0, "bar_selector"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isIconPack(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 515
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getPathToMessage(Lorg/telegram/messenger/MessageObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x2

    const/4 v2, 0x0

    const-string v3, ".icons"

    invoke-static {v0, v3, v1, p1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 567
    sget-object p2, Lcom/exteragram/messenger/icons/IconManager;->resultCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 568
    :cond_0
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p3, :cond_1

    .line 569
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final resetCustomIcon(Ljava/lang/String;I)V
    .locals 12

    const-string/jumbo v0, "packId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/exteragram/messenger/icons/IconPack;

    .line 334
    invoke-virtual {v2}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    if-nez v3, :cond_2

    goto :goto_1

    .line 335
    :cond_2
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->systemNames:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    .line 336
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v4, p1

    .line 341
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 342
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getIcons()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 344
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v2, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;

    const/4 v7, 0x0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/exteragram/messenger/icons/IconManager$resetCustomIcon$1;-><init>(Lcom/exteragram/messenger/icons/IconPack;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, v0

    move-object v9, v2

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method public final saveCustomIcon(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v0, "packId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tempFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/exteragram/messenger/icons/IconPack;

    .line 275
    invoke-virtual {v3}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    check-cast v5, Lcom/exteragram/messenger/icons/IconPack;

    if-nez v5, :cond_2

    goto :goto_1

    .line 276
    :cond_2
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->systemNames:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    .line 277
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v3, p1

    goto :goto_2

    :catch_0
    :goto_1
    return-void

    .line 282
    :goto_2
    sget-object p1, Lcom/exteragram/messenger/icons/IconManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;

    const/4 v7, 0x0

    move v6, p2

    move-object v2, p3

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v7}, Lcom/exteragram/messenger/icons/IconManager$saveCustomIcon$1;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/icons/IconPack;ILkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, v0

    move-object v9, v1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final saveIconPackMetadata(Lcom/exteragram/messenger/icons/IconPack;)V
    .locals 1

    const-string v0, "iconPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/exteragram/messenger/icons/IconPackStorage;->INSTANCE:Lcom/exteragram/messenger/icons/IconPackStorage;

    invoke-virtual {v0, p1}, Lcom/exteragram/messenger/icons/IconPackStorage;->saveIconPackMetadata(Lcom/exteragram/messenger/icons/IconPack;)V

    return-void
.end method

.method public final setActiveCustomPack(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->iconPacksHidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 487
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->saveIconPacksLayout()V

    const/4 p1, 0x1

    .line 488
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/icons/IconManager;->initialize(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showReplaceAlert(Landroid/content/Context;I)V
    .locals 7

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/exteragram/messenger/icons/IconManager;->showReplaceAlert$default(Lcom/exteragram/messenger/icons/IconManager;Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;ILjava/lang/Object;)V

    return-void
.end method

.method public final showReplaceAlert(Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_5

    .line 597
    sget-object p3, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 598
    sget-object p3, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 295
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/exteragram/messenger/icons/IconPack;

    .line 598
    invoke-virtual {v2}, Lcom/exteragram/messenger/icons/IconPack;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/exteragram/messenger/ExteraConfig;->editingIconPackId:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    :goto_0
    move-object p3, v0

    goto :goto_1

    .line 600
    :cond_2
    sget-object p3, Lcom/exteragram/messenger/icons/IconManager;->activePacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 295
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/exteragram/messenger/icons/IconPack;

    .line 600
    invoke-virtual {v2}, Lcom/exteragram/messenger/icons/IconPack;->isBase()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_4
    check-cast v0, Lcom/exteragram/messenger/icons/IconPack;

    goto :goto_0

    :goto_1
    if-nez p3, :cond_5

    goto :goto_2

    .line 603
    :cond_5
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_2
    return-void

    .line 604
    :cond_6
    new-instance v1, Lcom/exteragram/messenger/icons/ui/components/ReplaceIconBottomSheet;

    invoke-direct {v1, p1, p2, p3}, Lcom/exteragram/messenger/icons/ui/components/ReplaceIconBottomSheet;-><init>(Landroid/content/Context;ILcom/exteragram/messenger/icons/IconPack;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public final startIconPicker(Landroid/app/Activity;ZLkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    sget-object v0, Lcom/exteragram/messenger/icons/IconManager;->resultCallbacks:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    sget-object p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;

    invoke-virtual {p3, p1}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$Companion;->isPhotoPickerAvailable(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 578
    new-instance p2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;

    invoke-direct {p2}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;-><init>()V

    .line 580
    sget-object p3, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;->INSTANCE:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageOnly;

    invoke-static {p3}, Landroidx/activity/result/PickVisualMediaRequestKt;->PickVisualMediaRequest(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;

    move-result-object p3

    .line 578
    invoke-virtual {p2, p1, p3}, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia;->createIntent(Landroid/content/Context;Landroidx/activity/result/PickVisualMediaRequest;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 583
    const-string p3, "android.intent.action.OPEN_DOCUMENT"

    goto :goto_0

    :cond_1
    const-string p3, "android.intent.action.GET_CONTENT"

    .line 584
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    const-string p3, "*/*"

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string p3, "image/*"

    const-string v2, "image/svg+xml"

    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object p3

    const-string v2, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2

    .line 588
    const-string p2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    move-object p2, v0

    .line 592
    :goto_1
    invoke-virtual {p1, p2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
