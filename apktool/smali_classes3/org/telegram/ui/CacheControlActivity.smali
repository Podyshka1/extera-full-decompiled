.class public Lorg/telegram/ui/CacheControlActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CacheControlActivity$ItemInner;,
        Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;,
        Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;,
        Lorg/telegram/ui/CacheControlActivity$ListAdapter;,
        Lorg/telegram/ui/CacheControlActivity$FileEntities;,
        Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;,
        Lorg/telegram/ui/CacheControlActivity$UserCell;,
        Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;,
        Lorg/telegram/ui/CacheControlActivity$ClearingCacheView;
    }
.end annotation


# static fields
.field private static LISTDIR_DOCTYPE2_EMOJI:I = 0x3

.field private static LISTDIR_DOCTYPE2_OTHER:I = 0x5

.field private static LISTDIR_DOCTYPE2_TEMP:I = 0x4

.field private static LISTDIR_DOCTYPE_MUSIC:I = 0x2

.field private static LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I = 0x1

.field public static volatile canceled:Z = false

.field private static lastDeviceTotalFreeSize:Ljava/lang/Long;

.field private static lastDeviceTotalSize:Ljava/lang/Long;

.field private static lastTotalSizeCalculated:Ljava/lang/Long;

.field private static lastTotalSizeCalculatedTime:J


# instance fields
.field private actionBarAnimator:Landroid/animation/ValueAnimator;

.field private actionBarShadowAlpha:F

.field private actionBarShown:Z

.field private actionBarShownT:F

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeClearButton:Landroid/widget/TextView;

.field private actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

.field private actionTextView:Landroid/view/View;

.field private audioSize:J

.field private bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private bottomSheetView:Landroid/view/View;

.field private cacheChart:Lorg/telegram/ui/Components/CacheChart;

.field private cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

.field private cacheEmojiSize:J

.field cacheModel:Lorg/telegram/ui/Storage/CacheModel;

.field private cacheSize:J

.field private cacheTempSize:J

.field private cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

.field private calculating:Z

.field private changeStatusBar:Z

.field private clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

.field private clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private collapsed:Z

.field private databaseSize:J

.field private documentsSize:J

.field fragmentCreateTime:J

.field private itemInners:Ljava/util/ArrayList;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingDialogs:Z

.field private logsSize:J

.field private migrateOldFolderRow:J

.field private musicSize:J

.field private nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

.field private oldItems:Ljava/util/ArrayList;

.field private percents:[I

.field private photoSize:J

.field progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private sectionsEndRow:I

.field private sectionsStartRow:I

.field private selected:[Z

.field private stickersCacheSize:J

.field private storiesSize:J

.field private tempSizes:[F

.field private totalDeviceFreeSize:J

.field private totalDeviceSize:J

.field private totalSize:J

.field private updateDatabaseSize:Z

.field private videoSize:J


# direct methods
.method public static synthetic $r8$lambda$2FY2SgcX80W7mTC6XPwuE7aWzo8(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$getThemeDescriptions$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$2ePNjvfGiOSD6jg_QbTLX5RMf8Y(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Cc8Mdegz7SWXFH-3JUhV088FDE(Lorg/telegram/ui/CacheControlActivity;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$18(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$DteALnOkKovTEQO_Bh8QxAAwQwQ(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$createView$19(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$EBBcra-pyt3AtJvMCQ8LPyhTChE(Lorg/telegram/messenger/Utilities$Callback;J)V
    .locals 0

    .line 265
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GfHBaCjk8NKKW7gyA0DAG8-2eFI(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$H3h8uMq7DAEib02WcGFjpYjku3w(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$22(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I5aTkQfi8mZ4pln1Hu-y_E_vZ_g(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$11(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IdWc5CO7rxuAs1Jpx9IxM5ueG7I(Lorg/telegram/messenger/Utilities$Callback2;[IILjava/lang/Float;)V
    .locals 2

    const/4 v0, 0x0

    .line 955
    aget p1, p1, v0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ImYtktw0UQIsMW3jophDp7UYDxY(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$KUzywUVuCKXD_kfrFQdoO6Gx1-0(Lorg/telegram/ui/CacheControlActivity;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearDatabase$24(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KdMOqnRdy9q2Wn3ecDWB80n3ucc(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->lambda$onFragmentCreate$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$McYV9DSNm5gk3U2h_3xgIdWdumQ(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$7(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RqrFx06wc9E0AZr9SO9vAVjU2Gk(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)I
    .locals 2

    .line 553
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    iget-wide p0, p0, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$YnZ3smiJlyPWZmZdeJlPkHWuXDM(Lorg/telegram/ui/CacheControlActivity;ZJLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$16(ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YuDtCW7LlM10Tebxg0eXEKA3Rfs(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupDialogFiles$23(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bUnnJwTW1bNRfzdk641lAiszbCw(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFolders$12(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fNB1ypvT1aLKISN4x-QOCLaHAGk(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 23

    const/4 v0, 0x0

    .line 242
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    const/4 v1, 0x4

    .line 243
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    .line 244
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    .line 245
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    const/16 v2, 0x64

    .line 246
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    add-long/2addr v8, v10

    const/4 v2, 0x2

    .line 247
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-static {v10, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v10

    const/16 v12, 0x65

    .line 248
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v12

    invoke-static {v12, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/4 v12, 0x3

    .line 249
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v15

    .line 250
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 251
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-static {v13, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v17

    .line 252
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long v17, v17, v2

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v13, "acache"

    invoke-direct {v2, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    .line 254
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 255
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    const/4 v1, 0x6

    .line 256
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    move-wide/from16 v19, v0

    .line 257
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v14}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v0

    .line 258
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v14, :cond_0

    const-wide/32 v21, 0x10000000

    cmp-long v14, v0, v21

    if-gez v14, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    add-long/2addr v4, v6

    add-long/2addr v4, v10

    add-long/2addr v4, v12

    add-long/2addr v4, v8

    add-long/2addr v4, v15

    add-long v4, v4, v17

    add-long/2addr v4, v2

    add-long v4, v4, v19

    add-long/2addr v4, v0

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 263
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/Utilities$Callback;J)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$grxg2OghdSPw3knSzVegOKrV24A(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 10

    .line 286
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 288
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 291
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_1
    :goto_1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 300
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    .line 301
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    .line 303
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda15;-><init>(JJJLorg/telegram/messenger/Utilities$Callback2;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 311
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ivwrlQn3ABaDxM0KDHchsj8Y_c4(Lorg/telegram/ui/CacheControlActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$cleanupFoldersInternal$15(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$j86wjd84-2ZUtavpwPZS27j2fKc(Lorg/telegram/ui/CacheControlActivity$ItemInner;Lorg/telegram/ui/CacheControlActivity$ItemInner;)I
    .locals 2

    .line 719
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-wide p0, p0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lUCQY1FVKLfoB8YXalotnZNOkYA(JJJLorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    mul-long/2addr p0, p2

    .line 304
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    mul-long/2addr p4, p2

    .line 305
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz p6, :cond_0

    .line 307
    sget-object p1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    invoke-interface {p6, p1, p0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$qBw7DSsnu84m5OlzuNK7troImk0(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CacheControlActivity;->lambda$loadDialogEntities$6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZDN0MmSaWi9_7Sh_JPa0QlqyVA(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V
    .locals 3

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 959
    aget p1, p1, v2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sub-long/2addr v0, p3

    const-wide/16 p2, 0xfa

    cmp-long p2, v0, p2

    if-lez p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxzKXzbzVHt4STqlMiDJUVKmj6I(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->lambda$clearSelectedFiles$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjrzm28S63z4RoMEwv6xOlGHLVw(Lorg/telegram/ui/CacheControlActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->lambda$updateActionBar$21(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBarShadowAlpha(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetactionBarShownT(Lorg/telegram/ui/CacheControlActivity;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaudioSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetbottomSheet(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcacheChart(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/CacheChart;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcacheChartHeader(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcacheSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcacheTempSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcachedMediaLayout(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/CachedMediaLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcalculating(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcollapsed(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdatabaseSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdocumentsSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetitemInners(Lorg/telegram/ui/CacheControlActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/CacheControlActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlogsSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmigrateOldFolderRow(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmusicSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnestedSizeNotifierLayout(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/NestedSizeNotifierLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpercents(Lorg/telegram/ui/CacheControlActivity;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphotoSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetselected(Lorg/telegram/ui/CacheControlActivity;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersCacheSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetstoriesSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettotalDeviceFreeSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettotalDeviceSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettotalSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetvideoSize(Lorg/telegram/ui/CacheControlActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputactionBarShadowAlpha(Lorg/telegram/ui/CacheControlActivity;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcacheChart(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/Components/CacheChart;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcacheChartHeader(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcachedMediaLayout(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CachedMediaLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputclearCacheButton(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcollapsed(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupFolders(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupFolders(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDatabase(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->clearDatabase(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearSelectedFiles(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatPercent(Lorg/telegram/ui/CacheControlActivity;F)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->formatPercent(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCheckBoxTitle(Lorg/telegram/ui/CacheControlActivity;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->getCheckBoxTitle(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAllSectionsSelected(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isAllSectionsSelected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misOtherSelected(Lorg/telegram/ui/CacheControlActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowClearCacheDialog(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleOtherSelected(Lorg/telegram/ui/CacheControlActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActionBar(Lorg/telegram/ui/CacheControlActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->updateActionBar(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActionMode(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateActionMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateChart(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/CacheControlActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/16 v0, 0xb

    .line 159
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const-wide/16 v0, -0x1

    .line 160
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    .line 161
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 162
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 163
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    .line 164
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    .line 165
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 166
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 167
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 168
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    .line 169
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 170
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 171
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    .line 172
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 173
    iput-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->migrateOldFolderRow:J

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    .line 175
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 182
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1412
    iput v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShadowAlpha:F

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 127
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static calculateTotalSize(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    if-nez p0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    .line 241
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V
    .locals 11

    .line 897
    invoke-static {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->countDirJava(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 899
    new-array p2, v1, [I

    aput v2, p2, v2

    .line 901
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 903
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_8

    :cond_1
    move v4, v2

    .line 905
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_12

    .line 906
    aget-object v5, v3, v4

    .line 907
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 908
    const-string v7, "."

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_7

    :cond_2
    if-lez p1, :cond_e

    .line 912
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_e

    .line 913
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 914
    const-string v8, ".mp3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, ".m4a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v1

    .line 915
    :goto_2
    const-string v9, ".tgs"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, ".webm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    move v9, v2

    goto :goto_4

    :cond_6
    :goto_3
    move v9, v1

    .line 916
    :goto_4
    const-string v10, ".tmp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, ".temp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, ".preload"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    move v7, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v7, v1

    :goto_6
    if-eqz v8, :cond_9

    .line 918
    sget v10, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I

    if-eq p1, v10, :cond_11

    :cond_9
    if-nez v8, :cond_a

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_MUSIC:I

    if-eq p1, v8, :cond_11

    :cond_a
    if-eqz v9, :cond_b

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v8, :cond_11

    :cond_b
    if-nez v9, :cond_c

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_EMOJI:I

    if-eq p1, v8, :cond_11

    :cond_c
    if-eqz v7, :cond_d

    sget v8, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v8, :cond_11

    :cond_d
    if-nez v7, :cond_e

    sget v7, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_TEMP:I

    if-ne p1, v7, :cond_e

    goto :goto_7

    .line 930
    :cond_e
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 931
    const-string v7, "drafts"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    .line 934
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p2, p3}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_7

    .line 936
    :cond_10
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 938
    aget v5, p2, v2

    add-int/2addr v5, v1

    aput v5, p2, v2

    if-eqz p3, :cond_11

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 940
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {p3, v5}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_11
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_8
    return-void
.end method

.method private cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1459
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x0

    .line 1460
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    const-wide/16 v6, 0x1f4

    .line 1461
    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1463
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1464
    iget-wide v7, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    move v9, v4

    :goto_0
    const/16 v10, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v9, v10, :cond_e

    if-eqz p2, :cond_1

    .line 1467
    aget-object v10, p2, v9

    if-eqz v10, :cond_0

    iget-boolean v10, v10, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->clear:Z

    if-nez v10, :cond_1

    :cond_0
    :goto_1
    move/from16 v16, v4

    goto/16 :goto_4

    .line 1471
    :cond_1
    iget-object v10, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;

    if-nez v10, :cond_2

    goto :goto_1

    .line 1475
    :cond_2
    iget-object v14, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1476
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    move/from16 v16, v4

    iget-wide v4, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v14, v4

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    .line 1477
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1478
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1479
    iget-object v4, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->delete(I)V

    if-nez v9, :cond_3

    .line 1481
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto/16 :goto_4

    :cond_3
    if-ne v9, v13, :cond_4

    .line 1483
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto/16 :goto_4

    :cond_4
    if-ne v9, v12, :cond_5

    .line 1485
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto/16 :goto_4

    :cond_5
    const/4 v4, 0x3

    if-ne v9, v4, :cond_6

    .line 1487
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto/16 :goto_4

    :cond_6
    if-ne v9, v11, :cond_7

    .line 1489
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_4

    :cond_7
    const/4 v4, 0x5

    if-ne v9, v4, :cond_8

    .line 1491
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    goto :goto_4

    :cond_8
    const/4 v4, 0x7

    if-ne v9, v4, :cond_c

    move/from16 v5, v16

    .line 1493
    :goto_2
    iget-object v11, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_d

    .line 1494
    iget-object v11, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1495
    iget-object v12, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->files:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v12, v12, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/telegram/ui/CacheControlActivity;->getTypeByPath(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v4, :cond_9

    .line 1497
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    goto :goto_3

    :cond_9
    if-nez v12, :cond_a

    .line 1499
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    goto :goto_3

    :cond_a
    if-ne v12, v13, :cond_b

    .line 1501
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_3

    .line 1503
    :cond_b
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v11, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v11

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1508
    :cond_c
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v10, v10, Lorg/telegram/ui/CacheControlActivity$FileEntities;->totalSize:J

    sub-long/2addr v4, v10

    iput-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    :cond_d
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_e
    move/from16 v16, v4

    .line 1511
    iget-object v4, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->entitiesByType:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_f

    .line 1512
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Storage/CacheModel;->remove(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 1514
    :cond_f
    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    if-eqz v2, :cond_16

    .line 1516
    iget-object v2, v2, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1517
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1518
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    iget-wide v14, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v14

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1519
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    add-long/2addr v9, v14

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    .line 1520
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1521
    invoke-virtual {v1, v4}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->removeFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    .line 1522
    iget v5, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    if-nez v5, :cond_12

    .line 1523
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    :cond_11
    :goto_6
    const/4 v9, 0x3

    goto :goto_5

    :cond_12
    if-ne v5, v13, :cond_13

    .line 1525
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_6

    :cond_13
    if-ne v5, v12, :cond_14

    .line 1527
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v9, v4

    iput-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    goto :goto_6

    :cond_14
    const/4 v9, 0x3

    if-ne v5, v9, :cond_15

    .line 1529
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_5

    :cond_15
    if-ne v5, v11, :cond_10

    .line 1531
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    iget-wide v4, v4, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    sub-long/2addr v14, v4

    iput-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_5

    .line 1536
    :cond_16
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    .line 1537
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Storage/CacheModel;->onFileDeleted(Lorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    goto :goto_7

    .line 1540
    :cond_17
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->CacheWasCleared:I

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, v16

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    move/from16 v2, v16

    .line 1541
    iput-boolean v2, v1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 1542
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1545
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FilePathDatabase;->removeFiles(Ljava/util/List;)V

    .line 1546
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 1547
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4, v0, v1, v3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cleanupFolders(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 2

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {v0}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 838
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadAllFiles()V

    .line 839
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileLoaderQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 842
    invoke-virtual {p0, p1}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 p1, 0x1

    .line 843
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->loadingDialogs:Z

    return-void
.end method

.method private cleanupFoldersInternal(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 951
    new-array v5, v2, [I

    const/4 v9, 0x0

    aput v9, v5, v9

    .line 952
    iget-object v0, v1, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v3, v0, v9

    const/4 v10, 0x2

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    aget-boolean v4, v0, v2

    if-eqz v4, :cond_1

    move v4, v10

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    add-int/2addr v3, v4

    aget-boolean v4, v0, v10

    if-eqz v4, :cond_2

    move v4, v10

    goto :goto_2

    :cond_2
    move v4, v9

    :goto_2
    add-int/2addr v3, v4

    const/4 v11, 0x3

    aget-boolean v4, v0, v11

    if-eqz v4, :cond_3

    move v4, v10

    goto :goto_3

    :cond_3
    move v4, v9

    :goto_3
    add-int/2addr v3, v4

    const/4 v12, 0x4

    aget-boolean v4, v0, v12

    add-int/2addr v3, v4

    const/4 v13, 0x5

    aget-boolean v4, v0, v13

    if-eqz v4, :cond_4

    move v4, v10

    goto :goto_4

    :cond_4
    move v4, v9

    :goto_4
    add-int/2addr v3, v4

    const/4 v14, 0x6

    aget-boolean v4, v0, v14

    add-int/2addr v3, v4

    const/4 v15, 0x7

    aget-boolean v4, v0, v15

    add-int/2addr v3, v4

    const/16 v4, 0x8

    aget-boolean v6, v0, v4

    add-int/2addr v3, v6

    const/16 v6, 0x9

    aget-boolean v0, v0, v6

    add-int/2addr v3, v0

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 954
    new-instance v9, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda23;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5, v3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[II)V

    move/from16 v17, v6

    move v6, v3

    .line 957
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda24;

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/Utilities$Callback2;[IIJ)V

    const-wide/16 v6, 0x0

    move/from16 v17, v2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_5
    const/16 v0, 0xa

    if-ge v4, v0, :cond_26

    .line 962
    iget-object v0, v1, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5

    move v15, v12

    move/from16 v18, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_5
    const/4 v0, -0x1

    if-nez v4, :cond_6

    .line 970
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x0

    :goto_7
    const/16 v14, 0x9

    goto/16 :goto_9

    :cond_6
    if-ne v4, v2, :cond_7

    .line 973
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/4 v13, 0x0

    const/16 v14, 0x9

    move v12, v10

    goto/16 :goto_9

    :cond_7
    if-ne v4, v10, :cond_8

    .line 977
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/16 v14, 0x9

    move v13, v2

    :goto_8
    move v12, v11

    goto/16 :goto_9

    :cond_8
    if-ne v4, v11, :cond_9

    .line 981
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/16 v14, 0x9

    move v13, v10

    goto :goto_8

    :cond_9
    if-ne v4, v12, :cond_a

    .line 984
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/4 v13, 0x0

    const/16 v14, 0x9

    move v12, v2

    goto :goto_9

    :cond_a
    if-ne v4, v13, :cond_b

    .line 987
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/4 v12, 0x6

    goto :goto_6

    :cond_b
    const/4 v14, 0x6

    if-ne v4, v14, :cond_c

    .line 990
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/16 v12, 0x64

    goto :goto_6

    :cond_c
    const/4 v14, 0x7

    if-ne v4, v14, :cond_d

    .line 992
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    goto :goto_7

    :cond_d
    const/16 v14, 0x8

    if-ne v4, v14, :cond_e

    .line 996
    iget-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v6, v14

    move v15, v12

    move/from16 v18, v13

    const/16 v14, 0x9

    move v13, v15

    goto :goto_9

    :cond_e
    const/16 v14, 0x9

    move v15, v12

    move/from16 v18, v13

    if-ne v4, v14, :cond_f

    .line 1000
    iget-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    add-long/2addr v6, v12

    move v13, v2

    const/4 v12, 0x0

    goto :goto_9

    :cond_f
    move v12, v0

    const/4 v13, 0x0

    :goto_9
    if-ne v12, v0, :cond_10

    :goto_a
    const/16 v16, 0x0

    goto/16 :goto_13

    :cond_10
    move/from16 v19, v15

    const/4 v15, 0x0

    move/from16 v20, v2

    const/4 v2, 0x7

    if-ne v4, v2, :cond_11

    .line 1009
    :try_start_0
    const-string v0, "rasterized/wallpaper"

    invoke-static {v0}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v15, v15}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 1011
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1015
    :cond_11
    :goto_b
    const-string v0, "acache"

    if-ne v4, v14, :cond_12

    .line 1016
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v2

    goto :goto_c

    :cond_12
    const/16 v2, 0x64

    if-ne v12, v2, :cond_13

    .line 1018
    new-instance v2, Ljava/io/File;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-direct {v2, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c

    .line 1020
    :cond_13
    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    :goto_c
    if-eqz v2, :cond_14

    .line 1023
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13, v15, v9}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_14
    const/16 v16, 0x0

    .line 1025
    aget v2, v5, v16

    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v16

    .line 1026
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    const/16 v2, 0x64

    if-ne v12, v2, :cond_16

    .line 1028
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1030
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v15, v9}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1032
    :cond_15
    aget v2, v5, v16

    add-int/lit8 v2, v2, 0x1

    aput v2, v5, v16

    .line 1033
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_16
    if-eqz v12, :cond_18

    if-ne v12, v10, :cond_17

    goto :goto_d

    :cond_17
    const/16 v16, 0x0

    goto :goto_f

    :cond_18
    :goto_d
    if-nez v12, :cond_19

    const/16 v14, 0x64

    goto :goto_e

    :cond_19
    const/16 v14, 0x65

    .line 1042
    :goto_e
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_1a

    .line 1045
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13, v15, v9}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    :cond_1a
    const/16 v16, 0x0

    .line 1047
    aget v14, v5, v16

    add-int/lit8 v14, v14, 0x1

    aput v14, v5, v16

    .line 1048
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :goto_f
    if-ne v12, v11, :cond_1c

    .line 1051
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_1b

    .line 1053
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13, v15, v9}, Lorg/telegram/ui/CacheControlActivity;->cleanDirJava(Ljava/lang/String;I[ILorg/telegram/messenger/Utilities$Callback;)V

    .line 1055
    :cond_1b
    aget v14, v5, v16

    add-int/lit8 v14, v14, 0x1

    aput v14, v5, v16

    .line 1056
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_1c
    const/16 v14, 0x9

    if-ne v4, v14, :cond_1d

    .line 1060
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v0

    move/from16 v15, v20

    invoke-static {v0, v15}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    move/from16 v15, v19

    goto/16 :goto_a

    :cond_1d
    move/from16 v2, v19

    move/from16 v15, v20

    const/16 v21, 0x65

    if-ne v12, v2, :cond_1e

    .line 1062
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    move/from16 v8, v18

    invoke-static {v0, v8}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 1063
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    move v2, v15

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    move v8, v2

    :goto_10
    const/4 v15, 0x4

    const/16 v16, 0x0

    const/16 v18, 0x5

    goto/16 :goto_13

    :cond_1e
    move v2, v15

    if-ne v12, v2, :cond_1f

    .line 1066
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    goto :goto_10

    :cond_1f
    const/4 v14, 0x6

    if-ne v12, v14, :cond_20

    .line 1068
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    goto :goto_10

    :cond_20
    if-ne v12, v11, :cond_22

    if-ne v13, v2, :cond_21

    .line 1071
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    const/16 v18, 0x5

    .line 1072
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v14, v12

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    :goto_11
    const/4 v15, 0x4

    goto/16 :goto_a

    :cond_21
    const/16 v18, 0x5

    .line 1074
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 1075
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v14, v12

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    goto :goto_11

    :cond_22
    const/16 v18, 0x5

    if-nez v12, :cond_24

    const/16 v16, 0x0

    .line 1079
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v8, 0x64

    .line 1080
    invoke-static {v8}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v14, v12

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/4 v8, 0x1

    :cond_23
    :goto_12
    const/4 v15, 0x4

    goto :goto_13

    :cond_24
    const/16 v16, 0x0

    if-ne v12, v10, :cond_25

    .line 1082
    invoke-static {v10}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v14

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 1083
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    add-long/2addr v14, v12

    iput-wide v14, v1, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    goto :goto_12

    :cond_25
    const/16 v14, 0x64

    if-ne v12, v14, :cond_23

    .line 1086
    new-instance v8, Ljava/io/File;

    const/4 v15, 0x4

    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v8, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v13}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 1087
    invoke-static {v15}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v11}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v12

    iput-wide v12, v1, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 1088
    iget-wide v10, v1, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v10, v12

    iput-wide v10, v1, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    const/4 v8, 0x1

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move v12, v15

    move/from16 v13, v18

    const/4 v2, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v14, 0x6

    const/4 v15, 0x7

    goto/16 :goto_5

    .line 1092
    :cond_26
    iget-wide v2, v1, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    iput-wide v2, v1, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 1094
    iget-object v0, v1, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/4 v15, 0x1

    invoke-static {v0, v15}, Ljava/util/Arrays;->fill([ZZ)V

    .line 1096
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_27

    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    .line 1098
    :cond_27
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1099
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 1101
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v9

    .line 1102
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v11

    mul-long/2addr v11, v3

    .line 1104
    iput-wide v11, v1, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v9, v3

    .line 1105
    iput-wide v9, v1, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    if-eqz v17, :cond_28

    .line 1109
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->clearFilePaths()V

    .line 1111
    :cond_28
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1113
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda25;

    move-object/from16 v5, p2

    move-wide v3, v6

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/CacheControlActivity;ZJLjava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearDatabase(Z)V
    .locals 6

    .line 1596
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1597
    sget v1, Lorg/telegram/messenger/R$string;->LocalDatabaseClearTextTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1598
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1599
    sget v2, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1600
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1601
    sget v2, Lorg/telegram/messenger/R$string;->LocalDatabaseClearText2:I

    iget-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "LocalDatabaseClearText2"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1602
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1603
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1604
    sget v1, Lorg/telegram/messenger/R$string;->CacheClear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CacheControlActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1618
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1619
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 1620
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1622
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private clearSelectedFiles()V
    .locals 3

    .line 1381
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1384
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1385
    sget v1, Lorg/telegram/messenger/R$string;->ClearCache:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1386
    sget v1, Lorg/telegram/messenger/R$string;->ClearCacheForChats:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1387
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1400
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1401
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1402
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 1403
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1405
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static countDirJava(Ljava/lang/String;I)I
    .locals 11

    .line 857
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 859
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    move v1, v2

    move v3, v1

    .line 861
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_10

    .line 862
    aget-object v4, v0, v1

    .line 863
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 864
    const-string v6, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    if-lez p1, :cond_d

    .line 868
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_d

    .line 869
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 870
    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    const-string v7, ".m4a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v8

    .line 871
    :goto_2
    const-string v9, ".tgs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, ".webm"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    move v9, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v8

    .line 872
    :goto_4
    const-string v10, ".tmp"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ".temp"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, ".preload"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    move v8, v2

    :cond_7
    :goto_5
    if-eqz v7, :cond_8

    .line 874
    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_OTHER_THAN_MUSIC:I

    if-eq p1, v6, :cond_f

    :cond_8
    if-nez v7, :cond_9

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE_MUSIC:I

    if-eq p1, v6, :cond_f

    :cond_9
    if-eqz v9, :cond_a

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v6, :cond_f

    :cond_a
    if-nez v9, :cond_b

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_EMOJI:I

    if-eq p1, v6, :cond_f

    :cond_b
    if-eqz v8, :cond_c

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_OTHER:I

    if-eq p1, v6, :cond_f

    :cond_c
    if-nez v8, :cond_d

    sget v6, Lorg/telegram/ui/CacheControlActivity;->LISTDIR_DOCTYPE2_TEMP:I

    if-ne p1, v6, :cond_d

    goto :goto_6

    .line 886
    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/telegram/ui/CacheControlActivity;->countDirJava(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_6

    :cond_e
    add-int/lit8 v3, v3, 0x1

    :cond_f
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_10
    return v3

    :cond_11
    :goto_7
    return v2
.end method

.method private formatPercent(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 632
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/CacheControlActivity;->formatPercent(FZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatPercent(FZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    .line 637
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "<%.1f%%"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    .line 639
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    .line 641
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "<%d%%"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    float-to-int p1, p1

    .line 643
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%d%%"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCheckBoxTitle(Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 651
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, "<%.1f%%"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, "%d%%"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 652
    :goto_0
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 653
    new-instance p2, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f558106    # 0.834f

    invoke-direct {p2, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 654
    new-instance p2, Lorg/telegram/ui/Components/TypefaceSpan;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 655
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 656
    const-string p1, "  "

    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 657
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object p2
.end method

.method public static getDeviceTotalSize(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 2

    .line 278
    sget-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    .line 280
    invoke-interface {p0, v0, v1}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 284
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->cacheClearQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getDirectorySize(Ljava/io/File;I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 814
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/Utilities;->getDirSize(Ljava/lang/String;IZ)J

    move-result-wide p0

    return-wide p0

    .line 820
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 821
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private getTypeByPath(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x6

    .line 1565
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x7

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 1568
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    .line 1571
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x2

    .line 1574
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    const/16 v1, 0x65

    .line 1577
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/CacheControlActivity;->pathContains(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private isAllSectionsSelected()Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2043
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 2044
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2045
    iget v4, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 2048
    :cond_0
    iget v2, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v2, :cond_1

    .line 2050
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v2, v2

    sub-int/2addr v2, v3

    .line 2052
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private isOtherSelected()Z
    .locals 8

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    .line 2169
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2170
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2171
    iget v6, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    iget-boolean v6, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v6, :cond_0

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_0

    .line 2172
    aput-boolean v5, v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 2176
    aget-boolean v4, v1, v3

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v5
.end method

.method private synthetic lambda$cleanupDialogFiles$22(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 1553
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->checkCurrentDownloadsFiles()V

    .line 1555
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1557
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1559
    :goto_0
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->CACHE:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget p1, p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->notifySettingsChanged([I)V

    return-void
.end method

.method private synthetic lambda$cleanupDialogFiles$23(Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    const/4 v0, 0x0

    .line 1548
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1549
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    iget-object v1, v1, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1552
    :cond_0
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFolders$11(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupFoldersInternal(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$cleanupFolders$12(Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V
    .locals 2

    .line 839
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/messenger/Utilities$Callback2;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$15(J)V
    .locals 4

    .line 1128
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->CacheWasCleared:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, p2, v3

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1129
    iput-boolean v3, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 1130
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$cleanupFoldersInternal$16(ZJLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageLoader;->clearMemory()V

    .line 1118
    :cond_0
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 1119
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1120
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1123
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1126
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {p1}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->checkRingtoneSoundsLoaded()V

    .line 1127
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/CacheControlActivity;J)V

    const-wide/16 p2, 0x96

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1132
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->checkAllMedia(Z)V

    .line 1134
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    .line 1136
    sget-object p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->CACHE:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    iget p1, p1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig;->notifySettingsChanged([I)V

    if-eqz p4, :cond_2

    .line 1139
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$clearDatabase$24(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 1605
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1608
    :cond_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p3, 0x0

    .line 1609
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1611
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->clearQueryTime()V

    if-eqz p1, :cond_1

    .line 1613
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->fullReset()V

    return-void

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->clearLocalDatabase()V

    return-void
.end method

.method private synthetic lambda$clearSelectedFiles$20(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 4

    .line 1388
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->removeSelectedFiles()Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    move-result-object p1

    .line 1389
    iget-wide v0, p1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 1390
    invoke-direct {p0, p1, p2, p2}, Lorg/telegram/ui/CacheControlActivity;->cleanupDialogFiles(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 1392
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 1393
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz p1, :cond_1

    .line 1394
    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    .line 1395
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 1397
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1398
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;)V
    .locals 0

    .line 1256
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->clearSelectedFiles()V

    return-void
.end method

.method private synthetic lambda$createView$18(II)V
    .locals 0

    .line 1356
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/view/View;IFF)V
    .locals 3

    .line 1326
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_5

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 1332
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 1336
    iget v1, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    instance-of v1, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v1, :cond_3

    .line 1337
    iget p2, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_2

    .line 1338
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    .line 1339
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 1340
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void

    .line 1343
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/CacheControlActivity;->toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V

    return-void

    .line 1344
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->entities:Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-eqz v1, :cond_4

    .line 1349
    invoke-direct {p0, v1}, Lorg/telegram/ui/CacheControlActivity;->showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    return-void

    .line 1350
    :cond_4
    iget v0, v0, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    if-ltz v0, :cond_5

    .line 1351
    new-instance v0, Lorg/telegram/ui/KeepMediaPopupView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/KeepMediaPopupView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    .line 1352
    invoke-static {p0, v0, p1, p3, p4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimplePopup(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;Landroid/view/View;FF)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    .line 1353
    iget-object p3, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->keepMediaType:I

    invoke-virtual {v0, p2}, Lorg/telegram/ui/KeepMediaPopupView;->update(I)V

    .line 1354
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setParentWindow(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    .line 1355
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/KeepMediaPopupView;->setCallback(Lorg/telegram/ui/KeepMediaPopupView$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$25()V
    .locals 5

    .line 2665
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_0

    .line 2666
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 2669
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2670
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$6(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 7

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->loadingDialogs:Z

    .line 511
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 512
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    const/4 p1, 0x0

    move p2, v0

    .line 514
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 515
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 517
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    if-nez v3, :cond_1

    const-wide v3, 0x7fffffffffffffffL

    .line 518
    iput-wide v3, v1, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    if-eqz p1, :cond_0

    .line 521
    invoke-virtual {p1, v1}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->merge(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    .line 522
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    move v1, v2

    goto :goto_1

    :cond_0
    move-object p1, v1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 528
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    :cond_1
    add-int/2addr p2, v2

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p4, p3}, Lorg/telegram/ui/Storage/CacheModel;->setEntities(Ljava/util/ArrayList;)V

    .line 534
    sget-boolean p1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-nez p1, :cond_7

    .line 535
    invoke-virtual {p0, p4}, Lorg/telegram/ui/CacheControlActivity;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    .line 536
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    .line 537
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    .line 538
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez p1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x78

    cmp-long p1, p1, p3

    if-lez p1, :cond_7

    .line 539
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChartHeader:Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;

    iget-wide p2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v3, 0x0

    cmp-long p4, p2, v3

    if-lez p4, :cond_3

    move v0, v2

    .line 541
    :cond_3
    iget-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    cmp-long p4, v1, v3

    const/4 v5, 0x0

    if-gtz p4, :cond_4

    move p2, v5

    goto :goto_2

    :cond_4
    long-to-float p2, p2

    long-to-float p3, v1

    div-float/2addr p2, p3

    .line 542
    :goto_2
    iget-wide p3, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J

    cmp-long v6, p3, v3

    if-lez v6, :cond_6

    cmp-long v3, v1, v3

    if-gtz v3, :cond_5

    goto :goto_3

    :cond_5
    sub-long p3, v1, p3

    long-to-float p3, p3

    long-to-float p4, v1

    div-float v5, p3, p4

    .line 539
    :cond_6
    :goto_3
    invoke-virtual {p1, v0, p2, v5}, Lorg/telegram/ui/CacheControlActivity$CacheChartHeader;->setData(ZFF)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$loadDialogEntities$7(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 6

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 488
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 492
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 495
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 497
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const-string v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 499
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 502
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 503
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v0, p2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->totalSize:J

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gtz p2, :cond_2

    .line 504
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 508
    :cond_3
    invoke-direct {p0, p3}, Lorg/telegram/ui/CacheControlActivity;->sort(Ljava/util/ArrayList;)V

    .line 509
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadDialogEntities$8()V
    .locals 11

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->ensureDatabaseCreated()V

    .line 454
    new-instance v6, Lorg/telegram/ui/Storage/CacheModel;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lorg/telegram/ui/Storage/CacheModel;-><init>(Z)V

    .line 455
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x4

    .line 457
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {p0, v3, v4, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 459
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v3, 0x64

    .line 460
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v3, 0x2

    .line 462
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/16 v5, 0x65

    .line 463
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5, v7, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 465
    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {p0, v5, v2, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 466
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x3

    .line 467
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    const/4 v2, 0x5

    .line 468
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v1, v6}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    .line 470
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 473
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 474
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 475
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v8, v8, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v7

    if-nez v7, :cond_1

    .line 477
    iget-wide v7, v2, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-lez v2, :cond_0

    .line 478
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 480
    :cond_0
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/Storage/CacheModel;->sortBySize()V

    .line 485
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/CacheControlActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/Storage/CacheModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$4()V
    .locals 1

    .line 404
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v0, 0x1

    .line 407
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 408
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$5()V
    .locals 10

    const/4 v0, 0x4

    .line 325
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    .line 326
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 330
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    .line 331
    sget-boolean v1, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 335
    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    const/16 v5, 0x64

    .line 336
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    .line 337
    sget-boolean v3, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v3, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 340
    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    const/16 v6, 0x65

    .line 341
    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    .line 342
    sget-boolean v4, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v4, :cond_3

    goto/16 :goto_0

    .line 345
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getLogsDir()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    .line 346
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v4, :cond_4

    const-wide/32 v8, 0x10000000

    cmp-long v4, v6, v8

    if-gez v4, :cond_4

    const-wide/16 v6, 0x0

    .line 347
    iput-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    .line 349
    :cond_4
    sget-boolean v4, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v4, :cond_5

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x3

    .line 352
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 353
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v8

    invoke-static {v8, v5}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    .line 354
    sget-boolean v6, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v6, :cond_6

    goto :goto_0

    .line 357
    :cond_6
    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 358
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    add-long/2addr v6, v2

    iput-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    .line 359
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_7

    goto :goto_0

    .line 362
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v3

    const-string v6, "acache"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 363
    sget-boolean v2, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v2, :cond_8

    goto :goto_0

    .line 366
    :cond_8
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    .line 367
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_9

    goto :goto_0

    .line 370
    :cond_9
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    iget-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheEmojiSize:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    .line 371
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    const/4 v0, 0x6

    .line 372
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/telegram/ui/CacheControlActivity;->getDirectorySize(Ljava/io/File;I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    .line 373
    sget-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v0, :cond_a

    :goto_0
    return-void

    .line 376
    :cond_a
    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculatedTime:J

    .line 380
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 382
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_c

    .line 384
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 385
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v2, v4

    goto :goto_2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    :cond_c
    :goto_2
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 394
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    .line 395
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v5

    mul-long/2addr v5, v1

    .line 397
    iput-wide v5, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    mul-long/2addr v3, v1

    .line 398
    iput-wide v3, p0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 400
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 403
    :goto_3
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->loadDialogEntities()V

    return-void
.end method

.method private synthetic lambda$updateActionBar$21(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1421
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    .line 1422
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1423
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1424
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private loadDialogEntities()V
    .locals 2

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/FilePathDatabase;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pathContains(Ljava/lang/String;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1584
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1587
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->checkDirectory(I)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static resetCalculatedTotalSIze()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastTotalSizeCalculated:Ljava/lang/Long;

    .line 273
    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalSize:Ljava/lang/Long;

    .line 274
    sput-object v0, Lorg/telegram/ui/CacheControlActivity;->lastDeviceTotalFreeSize:Ljava/lang/Long;

    return-void
.end method

.method private sectionsSelected()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 1182
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->size(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private showClearCacheDialog(Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V
    .locals 4

    .line 1433
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1437
    :cond_0
    new-instance v0, Lorg/telegram/ui/DilogCacheBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->createCacheModel()Lorg/telegram/ui/Storage/CacheModel;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CacheControlActivity$6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CacheControlActivity$6;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/telegram/ui/DilogCacheBottomSheet;-><init>(Lorg/telegram/ui/CacheControlActivity;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;Lorg/telegram/ui/Storage/CacheModel;Lorg/telegram/ui/DilogCacheBottomSheet$Delegate;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->bottomSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1455
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private size(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1174
    :pswitch_0
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    return-wide v0

    .line 1173
    :pswitch_1
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    return-wide v0

    .line 1172
    :pswitch_2
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    return-wide v0

    .line 1171
    :pswitch_3
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    return-wide v0

    .line 1170
    :pswitch_4
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    return-wide v0

    .line 1169
    :pswitch_5
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    return-wide v0

    .line 1168
    :pswitch_6
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    return-wide v0

    .line 1167
    :pswitch_7
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    return-wide v0

    .line 1166
    :pswitch_8
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    return-wide v0

    .line 1165
    :pswitch_9
    iget-wide v0, p0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sort(Ljava/util/ArrayList;)V
    .locals 1

    .line 552
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private toggleOtherSelected(Landroid/view/View;)V
    .locals 8

    .line 2225
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    .line 2229
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2230
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2231
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_0

    iget-boolean v5, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v5, :cond_0

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2238
    :cond_1
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p1, :cond_2

    const/high16 v0, -0x3fc00000    # -3.0f

    .line 2240
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_2
    return-void

    .line 2246
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 2247
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    array-length p1, p1

    new-array v4, p1, [Z

    move v5, v2

    .line 2248
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2249
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2250
    iget v7, v6, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v7, v1, :cond_4

    iget-boolean v7, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-nez v7, :cond_4

    iget v6, v6, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v6, :cond_4

    .line 2251
    aput-boolean v3, v4, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_3
    if-ge v5, p1, :cond_9

    .line 2255
    aget-boolean v6, v4, v5

    if-nez v6, :cond_6

    .line 2256
    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v7, v0, 0x1

    aput-boolean v7, v6, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move p1, v2

    .line 2260
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_9

    .line 2261
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2262
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_8

    iget-boolean v5, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz v5, :cond_8

    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-ltz v4, :cond_8

    .line 2263
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    xor-int/lit8 v6, v0, 0x1

    aput-boolean v6, v5, v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 2268
    :cond_9
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_c

    .line 2269
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2270
    instance-of v4, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_b

    .line 2271
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_b

    .line 2273
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 2274
    iget v5, v4, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v5, v1, :cond_b

    .line 2275
    iget v4, v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v4, :cond_a

    .line 2276
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_6

    .line 2278
    :cond_a
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v4, v5, v4

    invoke-virtual {p1, v4, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_b
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2284
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private toggleSection(Lorg/telegram/ui/CacheControlActivity$ItemInner;Landroid/view/View;)V
    .locals 6

    .line 2184
    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v0, :cond_0

    .line 2185
    invoke-direct {p0, p2}, Lorg/telegram/ui/CacheControlActivity;->toggleOtherSelected(Landroid/view/View;)V

    return-void

    .line 2188
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v0, v1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->sectionsSelected()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 2189
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    if-eqz p2, :cond_1

    const/high16 p1, -0x3fc00000    # -3.0f

    .line 2191
    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    :cond_1
    return-void

    .line 2195
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2196
    check-cast p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v3, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v0, v3

    xor-int/2addr v4, v1

    aput-boolean v4, v0, v3

    invoke-virtual {p2, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_1

    .line 2198
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v0, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v3, p2, v0

    xor-int/2addr v3, v1

    aput-boolean v3, p2, v0

    .line 2199
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_5

    move v0, v2

    .line 2201
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2202
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2203
    instance-of v4, v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-ne p2, v4, :cond_4

    .line 2204
    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    iget v5, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2209
    :cond_5
    :goto_1
    iget-boolean p1, p1, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    if-eqz p1, :cond_7

    .line 2210
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 2211
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2212
    instance-of p2, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p2, :cond_6

    .line 2213
    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-ltz p2, :cond_6

    .line 2214
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez p2, :cond_6

    .line 2215
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->isOtherSelected()Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2221
    :cond_7
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return-void
.end method

.method private updateActionBar(Z)V
    .locals 3

    .line 1414
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShown:Z

    if-eq p1, v0, :cond_2

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1419
    :cond_0
    iget v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShownT:F

    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarShown:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    .line 1420
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1426
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1427
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x17c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->actionBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private updateActionMode()V
    .locals 11

    .line 2629
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 2630
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_4

    .line 2632
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v2, "Files"

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 2634
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    move v6, v5

    :cond_0
    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    .line 2635
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v8, v8, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v9, v7, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->dialogId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2636
    iget v7, v7, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->filesCount:I

    add-int/2addr v5, v7

    goto :goto_0

    .line 2639
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    sub-int/2addr v0, v5

    .line 2640
    const-string v4, "Chats"

    if-lez v0, :cond_2

    .line 2641
    iget-object v5, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v5, v5, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    .line 2642
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v6, v6, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v4, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2643
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v2, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    aput-object v0, v2, v3

    .line 2641
    const-string v0, "%s, %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2646
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    iget-object v2, v2, Lorg/telegram/ui/Storage/CacheModel;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2649
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v0}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v4}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFiles()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v2, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2651
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->getSelectedFilesSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    .line 2652
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v4, v3

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2653
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 2654
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    :cond_4
    return-void

    .line 2657
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    return-void
.end method

.method private updateChart()V
    .locals 8

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    if-eqz v0, :cond_6

    .line 422
    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_4

    const/16 v0, 0xb

    .line 423
    new-array v1, v0, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    .line 424
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 425
    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    .line 426
    iget v3, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v3, v0, :cond_1

    .line 427
    iget v3, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    if-gez v3, :cond_0

    .line 428
    iget-boolean v3, p0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-eqz v3, :cond_1

    .line 429
    iget-wide v2, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    const/16 v7, 0xa

    aget-boolean v6, v6, v7

    invoke-static {v2, v3, v6}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    move-result-object v2

    aput-object v2, v1, v7

    goto :goto_1

    .line 432
    :cond_0
    iget-wide v6, v2, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->selected:[Z

    aget-boolean v2, v2, v3

    invoke-static {v6, v7, v2}, Lorg/telegram/ui/Components/CacheChart$SegmentSize;->of(JZ)Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    move-result-object v2

    aput-object v2, v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x50

    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-object v0, v0, Lorg/telegram/ui/Components/CacheChart;->loadingFloat:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 439
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheChart:Lorg/telegram/ui/Components/CacheChart;

    iget-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->totalSize:J

    invoke-virtual {v0, v2, v3, v5, v1}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-wide/16 v1, -0x1

    .line 441
    new-array v3, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    goto :goto_2

    .line 443
    :cond_5
    new-array v1, v4, [Lorg/telegram/ui/Components/CacheChart$SegmentSize;

    invoke-virtual {v0, v2, v3, v5, v1}, Lorg/telegram/ui/Components/CacheChart;->setSegments(JZ[Lorg/telegram/ui/Components/CacheChart$SegmentSize;)V

    .line 446
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearCacheButton:Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    if-nez v1, :cond_7

    .line 447
    invoke-virtual {v0}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButtonInternal;->updateSize()V

    :cond_7
    return-void
.end method

.method private updateDatabaseItemSize()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 218
    sget v1, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 662
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x50

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    .line 670
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 671
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 673
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 674
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xa

    invoke-direct {v4, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsStartRow:I

    .line 679
    iget-boolean v3, v0, Lorg/telegram/ui/CacheControlActivity;->calculating:Z

    const/4 v4, -0x1

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/4 v12, 0x1

    if-eqz v3, :cond_1

    .line 680
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v7, 0xc

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v7, v6, v6}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v12

    const-wide/16 v18, 0x0

    goto/16 :goto_6

    .line 687
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v15, 0x0

    .line 688
    iget-wide v13, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    cmp-long v13, v13, v15

    if-lez v13, :cond_2

    .line 689
    sget v13, Lorg/telegram/messenger/R$string;->LocalPhotoCache:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    move v14, v7

    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->photoSize:J

    move/from16 v17, v14

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    invoke-static {v13, v1, v6, v7, v14}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move/from16 v17, v7

    .line 691
    :goto_1
    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    cmp-long v6, v6, v15

    if-lez v6, :cond_3

    .line 692
    sget v6, Lorg/telegram/messenger/R$string;->LocalVideoCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v13, v0, Lorg/telegram/ui/CacheControlActivity;->videoSize:J

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    invoke-static {v6, v12, v13, v14, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_3
    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    cmp-long v6, v6, v15

    if-lez v6, :cond_4

    .line 695
    sget v6, Lorg/telegram/messenger/R$string;->LocalDocumentCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v13, v0, Lorg/telegram/ui/CacheControlActivity;->documentsSize:J

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    invoke-static {v6, v9, v13, v14, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_4
    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    cmp-long v6, v6, v15

    if-lez v6, :cond_5

    .line 698
    sget v6, Lorg/telegram/messenger/R$string;->LocalMusicCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v13, v0, Lorg/telegram/ui/CacheControlActivity;->musicSize:J

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    invoke-static {v6, v10, v13, v14, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_5
    iget-wide v6, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    cmp-long v6, v6, v15

    const/4 v7, 0x4

    if-lez v6, :cond_6

    .line 701
    sget v6, Lorg/telegram/messenger/R$string;->LocalAudioCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v13, v0, Lorg/telegram/ui/CacheControlActivity;->audioSize:J

    move-wide/from16 v18, v15

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    invoke-static {v6, v7, v13, v14, v15}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-wide/from16 v18, v15

    .line 703
    :goto_2
    iget-wide v13, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    cmp-long v6, v13, v18

    const/4 v13, 0x5

    if-lez v6, :cond_7

    .line 704
    sget v6, Lorg/telegram/messenger/R$string;->LocalStoriesCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->storiesSize:J

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    invoke-static {v6, v13, v14, v15, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_7
    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    cmp-long v6, v14, v18

    if-lez v6, :cond_8

    .line 707
    sget v6, Lorg/telegram/messenger/R$string;->LocalStickersCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v14, v0, Lorg/telegram/ui/CacheControlActivity;->stickersCacheSize:J

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    const/4 v10, 0x6

    invoke-static {v6, v10, v14, v15, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_8
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    cmp-long v6, v9, v18

    if-lez v6, :cond_9

    .line 710
    sget v6, Lorg/telegram/messenger/R$string;->LocalProfilePhotosCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->cacheSize:J

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_cyan:I

    invoke-static {v6, v11, v9, v10, v14}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_9
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    cmp-long v6, v9, v18

    if-lez v6, :cond_a

    .line 713
    sget v6, Lorg/telegram/messenger/R$string;->LocalMiscellaneousCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->cacheTempSize:J

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_purple:I

    invoke-static {v6, v8, v9, v10, v14}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_a
    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    cmp-long v6, v9, v18

    if-lez v6, :cond_b

    .line 716
    sget v6, Lorg/telegram/messenger/R$string;->LocalLogsCache:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v9, v0, Lorg/telegram/ui/CacheControlActivity;->logsSize:J

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    invoke-static {v6, v5, v9, v10, v14}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 719
    new-instance v5, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 720
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v12

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v12, v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;->last:Z

    .line 723
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    const/16 v6, 0xb

    if-nez v5, :cond_c

    .line 724
    new-array v5, v6, [F

    iput-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    :cond_c
    move v5, v1

    .line 726
    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/CacheControlActivity;->tempSizes:[F

    array-length v10, v9

    if-ge v5, v10, :cond_d

    .line 727
    invoke-direct {v0, v5}, Lorg/telegram/ui/CacheControlActivity;->size(I)J

    move-result-wide v14

    long-to-float v10, v14

    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 729
    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    if-nez v5, :cond_e

    .line 730
    new-array v5, v6, [I

    iput-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    .line 732
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-static {v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->roundPercents([F[I)[I

    .line 735
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_10

    .line 736
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v6, v1

    move v5, v7

    move-wide/from16 v9, v18

    .line 739
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_f

    .line 740
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iput-boolean v12, v13, Lorg/telegram/ui/CacheControlActivity$ItemInner;->pad:Z

    .line 741
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget-wide v13, v13, Lorg/telegram/ui/CacheControlActivity$ItemInner;->size:J

    add-long/2addr v9, v13

    .line 742
    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    iget v14, v14, Lorg/telegram/ui/CacheControlActivity$ItemInner;->index:I

    aget v13, v13, v14

    add-int/2addr v6, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 744
    :cond_f
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->percents:[I

    aput v6, v5, v17

    .line 745
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->LocalOther:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    invoke-static {v6, v4, v9, v10, v13}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asCheckBox(Ljava/lang/CharSequence;IJI)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    iget-boolean v5, v0, Lorg/telegram/ui/CacheControlActivity;->collapsed:Z

    if-nez v5, :cond_11

    .line 747
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, v7, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 750
    :cond_10
    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    :goto_5
    move v3, v12

    goto :goto_6

    :cond_12
    move v3, v1

    :goto_6
    if-eqz v3, :cond_13

    .line 756
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 757
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v5, Lorg/telegram/messenger/R$string;->StorageUsageInfo:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 760
    :cond_13
    iput v4, v0, Lorg/telegram/ui/CacheControlActivity;->sectionsEndRow:I

    .line 763
    :goto_7
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    sget v6, Lorg/telegram/messenger/R$string;->AutoDeleteCachedMedia:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-direct {v5, v7, v6, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v5, v11, v1}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    invoke-direct {v4, v11, v12}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v5, 0x2

    invoke-direct {v4, v11, v5}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v7, 0x3

    invoke-direct {v4, v11, v7}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->KeepMediaInfoPart:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-wide v4, v0, Lorg/telegram/ui/CacheControlActivity;->totalDeviceSize:J

    cmp-long v1, v4, v18

    if-lez v1, :cond_14

    .line 771
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    sget v5, Lorg/telegram/messenger/R$string;->MaxCacheSize:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-direct {v4, v7, v5, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/16 v5, 0xe

    invoke-direct {v4, v5, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILorg/telegram/ui/CacheControlActivity-IA;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    sget v4, Lorg/telegram/messenger/R$string;->MaxCacheSizeInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/CacheControlActivity$ItemInner;->asInfo(Ljava/lang/String;)Lorg/telegram/ui/CacheControlActivity$ItemInner;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v3, :cond_15

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/telegram/ui/Storage/CacheModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 777
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/CacheControlActivity$ItemInner;

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9, v9}, Lorg/telegram/ui/CacheControlActivity$ItemInner;-><init>(ILjava/lang/String;Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz v1, :cond_17

    if-eqz v2, :cond_16

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->oldItems:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/CacheControlActivity;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_8

    .line 784
    :cond_16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 787
    :cond_17
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v1, :cond_18

    .line 788
    invoke-virtual {v1}, Lorg/telegram/ui/CachedMediaLayout;->update()V

    :cond_18
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1205
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 1232
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1233
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x48

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1235
    new-instance v6, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v6, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v6, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 1236
    sget-object v12, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v7, 0x3eb33333    # 0.35f

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x15e

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 1237
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1238
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1239
    iget-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1240
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeTitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v9, 0x41900000    # 18.0f

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x41900000    # 18.0f

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/high16 v8, -0x3ed00000    # -11.0f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    new-instance v7, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {v7, p1, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v7, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const-wide/16 v9, 0x0

    move-object v13, v12

    const-wide/16 v11, 0x15e

    const v8, 0x3eb33333    # 0.35f

    .line 1243
    invoke-virtual/range {v7 .. v13}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    move-object v12, v13

    .line 1244
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1245
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1246
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeSubtitle:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x41900000    # 18.0f

    const/16 v7, 0x13

    const/4 v8, 0x0

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1248
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    .line 1249
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1250
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v5, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1251
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1252
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v5, v2, [F

    const/high16 v6, 0x40c00000    # 6.0f

    aput v6, v5, v1

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1254
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1255
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->CacheClear:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_0

    .line 1258
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x41e00000    # 28.0f

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1260
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->actionModeClearButton:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x41e00000    # 28.0f

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 1264
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v5, Lorg/telegram/messenger/R$string;->ClearLocalDatabase:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1265
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1266
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1267
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->clearDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    const v8, 0x3df5c28f    # 0.12f

    invoke-static {v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1269
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v3, :cond_1

    .line 1270
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const-string v7, "Full Reset Database"

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1271
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->resetDatabaseItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1275
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1277
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    .line 1279
    new-instance v0, Lorg/telegram/ui/CacheControlActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CacheControlActivity$2;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    .line 1297
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1299
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1301
    new-instance v3, Lorg/telegram/ui/CacheControlActivity$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/CacheControlActivity$3;-><init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1307
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 1308
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1309
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v5, v6

    invoke-virtual {v3, v1, v5, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1310
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1311
    iget-object v3, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lorg/telegram/ui/CacheControlActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1314
    new-instance p1, Lorg/telegram/ui/CacheControlActivity$4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/CacheControlActivity$4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    const-wide/16 v4, 0x15e

    .line 1320
    invoke-virtual {p1, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1321
    invoke-virtual {p1, v12}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1322
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1323
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1324
    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1325
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1360
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/CacheControlActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CacheControlActivity$5;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1374
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-static {v3, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1376
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->nestedSizeNotifierLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout;

    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->setTargetListView(Landroid/view/View;)V

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1637
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    if-ne p1, p2, :cond_1

    .line 1639
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_0

    .line 1640
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1643
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 1645
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1646
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    if-eqz p1, :cond_1

    .line 1647
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    const/4 p1, 0x1

    .line 1648
    iput-boolean p1, p0, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseSize:Z

    .line 1649
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateDatabaseItemSize()V

    .line 1650
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateRows()V

    :cond_1
    return-void
.end method

.method public fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 18

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object/from16 v6, p0

    goto/16 :goto_5

    .line 575
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 579
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 580
    sget-boolean v6, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    if-eqz v6, :cond_3

    goto :goto_0

    .line 583
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 584
    invoke-virtual {v6, v5, v7, v0, v1}, Lorg/telegram/ui/CacheControlActivity;->fillDialogsEntitiesRecursive(Ljava/io/File;ILandroid/util/LongSparseArray;Lorg/telegram/ui/Storage/CacheModel;)V

    goto/16 :goto_4

    :cond_4
    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 586
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".nomedia"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_4

    .line 589
    :cond_5
    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/FileLoader;->getFileDatabase()Lorg/telegram/messenger/FilePathDatabase;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Lorg/telegram/messenger/FilePathDatabase;->getFileDialogId(Ljava/io/File;Lorg/telegram/messenger/FilePathDatabase$FileMeta;)Lorg/telegram/messenger/FilePathDatabase$FileMeta;

    move-result-object v8

    .line 591
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 592
    const-string v11, ".mp3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, ".m4a"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    move v10, v7

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v10, 0x3

    .line 595
    :goto_3
    new-instance v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;

    invoke-direct {v11, v5}, Lorg/telegram/ui/Storage/CacheModel$FileInfo;-><init>(Ljava/io/File;)V

    .line 596
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    iput-wide v12, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->size:J

    const-wide/16 v16, 0x0

    if-eqz v8, :cond_8

    .line 598
    iget-wide v14, v8, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->dialogId:J

    iput-wide v14, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    .line 599
    iget v5, v8, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageId:I

    iput v5, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageId:I

    .line 600
    iget v5, v8, Lorg/telegram/messenger/FilePathDatabase$FileMeta;->messageType:I

    iput v5, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->messageType:I

    const/16 v8, 0x17

    if-ne v5, v8, :cond_8

    cmp-long v5, v12, v16

    if-lez v5, :cond_8

    const/4 v10, 0x7

    .line 605
    :cond_8
    iput v10, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->type:I

    .line 607
    iget-wide v12, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    cmp-long v5, v12, v16

    if-eqz v5, :cond_a

    .line 608
    invoke-virtual {v0, v12, v13, v9}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    if-nez v5, :cond_9

    .line 610
    new-instance v5, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;

    iget-wide v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-direct {v5, v8, v9}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;-><init>(J)V

    .line 611
    iget-wide v8, v11, Lorg/telegram/ui/Storage/CacheModel$FileInfo;->dialogId:J

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 613
    :cond_9
    invoke-virtual {v5, v11, v10}, Lorg/telegram/ui/CacheControlActivity$DialogFileEntities;->addFile(Lorg/telegram/ui/Storage/CacheModel$FileInfo;I)V

    :cond_a
    if-eqz v1, :cond_b

    const/4 v5, 0x6

    if-eq v10, v5, :cond_b

    .line 616
    invoke-virtual {v1, v10, v11}, Lorg/telegram/ui/Storage/CacheModel;->add(ILorg/telegram/ui/Storage/CacheModel$FileInfo;)V

    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :goto_5
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 42

    move-object/from16 v0, p0

    .line 2664
    new-instance v7, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    .line 2673
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2675
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v1, 0x4

    new-array v13, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v2, v13, v1

    const/4 v3, 0x1

    const-class v4, Lorg/telegram/ui/Components/SlideChooseView;

    aput-object v4, v13, v3

    const/4 v5, 0x2

    const-class v6, Lorg/telegram/ui/Components/StorageUsageView;

    aput-object v6, v13, v5

    const/4 v5, 0x3

    const-class v8, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v8, v13, v5

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2676
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v16

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v3, [Ljava/lang/Class;

    aput-object v2, v13, v1

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v14

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v23

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v3, [Ljava/lang/Class;

    aput-object v2, v14, v1

    const-string/jumbo v2, "valueTextView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/4 v13, 0x0

    const/16 v18, 0x0

    move/from16 v19, v32

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v3, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v10, v15, v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2689
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v8, v10, v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v15, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2690
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v6, v8, v1

    const-string v10, "paintFill"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const/16 v16, 0x0

    move-object/from16 v17, v8

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v6, v10, v1

    const-string v11, "paintProgress"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v37

    const/16 v40, 0x0

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v8, v33

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v3, [Ljava/lang/Class;

    aput-object v6, v13, v1

    const-string/jumbo v8, "telegramCacheTextView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v14

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v22

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v6, v10, v1

    const-string v11, "freeSizeTextView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v41, v22

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v8, v33

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v6, v10, v1

    const-string v6, "calculationgTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v6, v33

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2696
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v3, [Ljava/lang/Class;

    aput-object v4, v13, v1

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v3, [Ljava/lang/Class;

    aput-object v4, v14, v1

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/4 v13, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v3, [Ljava/lang/Class;

    aput-object v4, v8, v1

    const/16 v17, 0x0

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/16 v18, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2701
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v6, v3, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v8, v6, v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v16, v4

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2702
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v8, v6, v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v4

    move-object/from16 v27, v6

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2703
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v13, v3, [Ljava/lang/Class;

    aput-object v8, v13, v1

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2704
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Components/StorageDiagramView;

    aput-object v6, v4, v1

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    move/from16 v22, v23

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2706
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v3, v2, v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v6, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2709
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2710
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    const/4 v7, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2711
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_golden:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightblue:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2714
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_lightgreen:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2715
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_orange:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2716
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity;->bottomSheetView:Landroid/view/View;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_indigo:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public isLightStatusBar()Z
    .locals 2

    .line 1157
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    .line 1158
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isLightStatusBar()Z

    move-result v0

    return v0

    .line 1160
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 3121
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 3122
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 3126
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    iget-object p1, p1, Lorg/telegram/ui/CachedMediaLayout;->viewPagerFixed:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->isCurrentTabFirst()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 3134
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Storage/CacheModel;->selectedFiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3136
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    invoke-virtual {p1}, Lorg/telegram/ui/Storage/CacheModel;->clearSelection()V

    .line 3137
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz p1, :cond_0

    .line 3138
    invoke-virtual {p1, v0}, Lorg/telegram/ui/CachedMediaLayout;->showActionMode(Z)V

    .line 3139
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/CachedMediaLayout;->updateVisibleRows()V

    :cond_0
    return v0

    .line 3144
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 318
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x0

    .line 319
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 321
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabaseSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/CacheControlActivity;->databaseSize:J

    const/4 v1, 0x1

    .line 322
    iput-boolean v1, p0, Lorg/telegram/ui/CacheControlActivity;->loadingDialogs:Z

    .line 324
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/CacheControlActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/CacheControlActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/CacheControlActivity;->fragmentCreateTime:J

    .line 415
    invoke-direct {p0, v0}, Lorg/telegram/ui/CacheControlActivity;->updateRows(Z)V

    .line 416
    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;->updateChart()V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 799
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 800
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didClearDatabase:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 802
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x1

    .line 810
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 3153
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 3154
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 2921
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_1

    .line 2922
    aget p2, p3, p1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2927
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_2

    sget-object p1, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    if-eqz p1, :cond_2

    .line 2928
    invoke-virtual {p1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->migrateOldFolder()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1628
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->listAdapter:Lorg/telegram/ui/CacheControlActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 1148
    iget-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1149
    iput-boolean v0, p0, Lorg/telegram/ui/CacheControlActivity;->changeStatusBar:Z

    .line 1150
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1152
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method public setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V
    .locals 1

    .line 565
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity;->cacheModel:Lorg/telegram/ui/Storage/CacheModel;

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity;->cachedMediaLayout:Lorg/telegram/ui/CachedMediaLayout;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Lorg/telegram/ui/CachedMediaLayout;->setCacheModel(Lorg/telegram/ui/Storage/CacheModel;)V

    :cond_0
    return-void
.end method
