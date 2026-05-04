.class public Lorg/telegram/ui/SettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
.implements Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;
.implements Lme/vkryl/android/animator/FactorAnimator$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SettingsActivity$SuggestionCell;,
        Lorg/telegram/ui/SettingsActivity$SettingCell;,
        Lorg/telegram/ui/SettingsActivity$AccountCell;
    }
.end annotation


# instance fields
.field private actionBarBackground:Landroid/view/View;

.field private actionBarVisible:Z

.field private actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

.field private additionNavigationBarHeight:I

.field private final animatorSearchPageVisible:Lme/vkryl/android/animator/BoolAnimator;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarContainer:Landroid/widget/FrameLayout;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field avatarUploadingRequest:I

.field private avatarView:Lorg/telegram/ui/Components/BackupImageView;

.field private cameraBackground:Landroid/widget/FrameLayout;

.field private cameraButton:Landroid/widget/FrameLayout;

.field private cameraImageView:Landroid/widget/ImageView;

.field private contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field public hasMainTabs:Z

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private iBlur3Invalidated:Z

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private ignoreClearViews:Z

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

.field private mainTabsHiddenByScroll:Z

.field private navigationBar:Landroid/view/View;

.field private navigationBarHeight:I

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private query:Ljava/lang/String;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private search:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private subtitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private topView:Landroid/widget/FrameLayout;

.field private versionView:Landroid/widget/TextView;

.field private versionViewPressCount:I


# direct methods
.method public static synthetic $r8$lambda$0XfwkgGFO7kMFRLjYBqi962PUl8()V
    .locals 2

    .line 1803
    sget-object v0, Lcom/exteragram/messenger/api/db/ExteraDatabase;->Companion:Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/db/ExteraDatabase$Companion;->getInstance()Lcom/exteragram/messenger/api/db/ExteraDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->clearAllTables()V

    .line 1804
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastSyncTimestamp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1805
    new-instance v0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda30;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0YgUeh6q6De4WWdKjoe84zuFJP8(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method public static synthetic $r8$lambda$0rCB1WINtsb_IxGwb5npEw_zImI(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/SettingsActivity;->lambda$didUploadPhoto$27(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8hhi2x4PD9f6hQcpVE0hX-HtuF4(Lorg/telegram/ui/SettingsActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$updateActionBarVisible$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Q7wC5GPsCEq5Sw13kZIXy2dYac(ILandroid/content/DialogInterface;I)V
    .locals 0

    rsub-int/lit8 p1, p2, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, -0x1

    .line 1714
    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass(I)V

    return-void

    .line 1716
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->overrideDevicePerformanceClass(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$A_AHllNO8ggUTSXh3-u_pZL8jYQ(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->lambda$openDebugMenu$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DEWFeIVXcPT74XSRr4Aj6B9tJ4g()V
    .locals 3

    .line 1806
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1808
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    const-string v2, "Succesfully cleared all tables."

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$E-Iunxmops8411FCreHyEW1-zYE(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->lambda$openDebugMenu$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FF_lUvV2JJuqs6JDH1StsK_LWfk(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$fillItems$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G3-DXYHX2NcLWEp3eGqimkckOo0(Lorg/telegram/ui/SettingsActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBri1lUwAY_zrYWb5OMF05pYP7s(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SettingsActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$HuJ13nlksXAZwiY916SP_bD8wgU(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->lambda$createView$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$IXBdIoAiIkTjki6t_2sbAKUTS54(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->lambda$onLongClick$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$MZGNAQP9Gk2X7SmO7VE2Uh6waug(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SettingsActivity;->lambda$didUploadPhoto$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UffchZ-kJStPtntoKL3OeU4Qq3Q(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$fillItems$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V12FTnnMx5G5k_wW_EKvPJ7QzZo(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$fillItems$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X86ksUErqcaOAuV82_IWiqeVcXM(Lorg/telegram/ui/SettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->lambda$openDebugMenu$24(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zr0Hrql_Ld4CLv0v_STFxwYwPZ8(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SettingsActivity;->lambda$didUploadPhoto$26(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-tiAlgFgKskjD8IqJo9rTTkaQ0(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bY74nDloMU376k4kE8vPWAn4ygE(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SettingsActivity;->lambda$onClick$15(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dkzya7ANpQJhkyUzT9wKNE_x-iQ(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/SettingsActivity;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eG-ZAiVz9ru-YPrIvPktXidXr74(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->lambda$loadSessionsCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hishHXE0W-JHsgIcZpIlK8zQkh0(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->lambda$fillItems$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$lrkxH2z-Mk_Vom-IfgeME6Q4QSc(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$fillItems$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$miwTLpjSZDL4_0hOntXMIqjV89Q(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->lambda$onClick$16(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oRgmyxcY_XMy2IoMSE1GC3ewhZw(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$p5nE7q5mv1ZsXbISNbHHvepggts(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$onLongClick$18(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qS3RyeU0Z3HL4DI9Dxk1Sc8y0jY(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$fillItems$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEss7fQXvchLU0IeLN81xcRLXN8(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->lambda$loadSessionsCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtPL8UshIYFGNSpFWbyovHZii1g(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SettingsActivity;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w4CL1gIVquG1EPi9FPGRA2W-2kY(Lorg/telegram/ui/SettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wP8owmPdSSGJetjE9FgLZBKzIqY(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$yAGU7DJZp0zRfL6pg-599vxn7zc(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/SettingsActivity;->lambda$onClick$14(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimatorSearchPageVisible(Lorg/telegram/ui/SettingsActivity;)Lme/vkryl/android/animator/BoolAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->animatorSearchPageVisible:Lme/vkryl/android/animator/BoolAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarAnimation(Lorg/telegram/ui/SettingsActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarProgressView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/SettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/SettingsActivity;->navigationBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearch(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ProfileActivity$SearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/SettingsActivity;->search:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputavatarAnimation(Lorg/telegram/ui/SettingsActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/SettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3Invalidated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/SettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/SettingsActivity;->mainTabsHiddenByScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputquery(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->query:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActionBarVisible(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateActionBarVisible()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMainTabsVisibility(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateMainTabsVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0}, Lorg/telegram/ui/SettingsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 223
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 161
    new-instance v0, Lme/vkryl/android/animator/BoolAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x15e

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lme/vkryl/android/animator/BoolAnimator;-><init>(ILme/vkryl/android/animator/FactorAnimator$Target;Landroid/view/animation/Interpolator;J)V

    iput-object v0, v2, Lorg/telegram/ui/SettingsActivity;->animatorSearchPageVisible:Lme/vkryl/android/animator/BoolAnimator;

    const/4 p1, 0x0

    .line 195
    iput p1, v2, Lorg/telegram/ui/SettingsActivity;->versionViewPressCount:I

    const/4 p1, -0x1

    .line 1898
    iput p1, v2, Lorg/telegram/ui/SettingsActivity;->avatarUploadingRequest:I

    .line 2085
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3Positions:Ljava/util/ArrayList;

    .line 2086
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 2087
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 2088
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 226
    new-instance p1, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object p1, v2, Lorg/telegram/ui/SettingsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 227
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 228
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-void

    .line 230
    :cond_0
    iput-object v1, v2, Lorg/telegram/ui/SettingsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 231
    iput-object v1, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 232
    iput-object v1, v2, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private blur3_InvalidateBlur()V
    .locals 8

    .line 2093
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 2097
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 2098
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/SettingsActivity;->navigationBarHeight:I

    sub-int/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42600000    # 56.0f

    .line 2099
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    .line 2101
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    neg-int v5, v1

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    int-to-float v1, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2102
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v1, v7, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2103
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    const/high16 v2, 0x40000

    invoke-static {v2}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v7, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3Positions:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->invalidateResultRenderNodes(Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;II)Z

    :cond_3
    :goto_2
    return-void
.end method

.method private checkUi_menuItems()V
    .locals 4

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->animatorSearchPageVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v1}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->animatorSearchPageVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {v3}, Lme/vkryl/android/animator/BoolAnimator;->getFloatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setAnimatedVisibility(Landroid/view/View;F)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 666
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible2()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asSpace(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->search:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->fillItems(Ljava/util/ArrayList;)V

    return-void

    .line 672
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->topView:Landroid/widget/FrameLayout;

    const/16 v3, 0xbc

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/UItem;->asCustomShadow(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    .line 675
    const-string v3, "PREMIUM_GRACE"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 676
    sget v2, Lorg/telegram/messenger/R$string;->GraceSuggestionTitle:I

    .line 677
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v2, Lorg/telegram/messenger/R$string;->GraceSuggestionMessage:I

    .line 678
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v2, Lorg/telegram/messenger/R$string;->GraceSuggestionButton:I

    .line 680
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda18;

    invoke-direct {v12, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 676
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;->of(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 686
    :cond_1
    const-string v3, "VALIDATE_PHONE_NUMBER"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 687
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 688
    sget v3, Lorg/telegram/messenger/R$string;->CheckPhoneNumber:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 690
    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    if-eqz v7, :cond_2

    .line 691
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 693
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 694
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v3}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 695
    iget v9, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 696
    new-instance v9, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v9, v3}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v7

    const/16 v3, 0x21

    invoke-virtual {v8, v9, v7, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v10, v8

    goto :goto_0

    :cond_2
    move-object v10, v3

    .line 700
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->CheckPhoneNumberInfo:I

    .line 702
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->CheckPhoneNumberNo:I

    .line 705
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v13, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    sget v2, Lorg/telegram/messenger/R$string;->CheckPhoneNumberYes2:I

    .line 708
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarGiftSheet;->replaceUnderstood(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v15, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    .line 700
    invoke-static/range {v10 .. v15}, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;->of(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 713
    :cond_3
    const-string v3, "VALIDATE_PASSWORD"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 714
    sget v2, Lorg/telegram/messenger/R$string;->YourPasswordHeader:I

    .line 715
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v2, Lorg/telegram/messenger/R$string;->YourPasswordRemember:I

    .line 716
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v2, Lorg/telegram/messenger/R$string;->YourPasswordRememberNo:I

    .line 717
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda22;

    invoke-direct {v10, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    sget v2, Lorg/telegram/messenger/R$string;->YourPasswordRememberYes:I

    .line 720
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda23;

    invoke-direct {v12, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    .line 714
    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;->of(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_4
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_foreground_solid:I

    goto :goto_2

    :cond_5
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_foreground:I

    :goto_2
    sget v3, Lorg/telegram/messenger/R$string;->Preferences:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    const v8, -0x17cfd0

    invoke-static {v7, v8, v8, v2, v3}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_account:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsAccountInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x1

    const v8, -0xe35a13

    const v9, -0xeb771f

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_chat:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsChatInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x2

    const v8, -0xf60e5

    const v9, -0x1e75ef

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_privacy:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsPrivacySecurity:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsPrivacySecurityInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x3

    const v8, -0xaa35b9

    const v9, -0xd84bcc

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_sounds:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsNotifications:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsNotificationsInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x5

    const v8, -0xbadab

    const v9, -0x20c6ab

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_data:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsData:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsDataInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x6

    const v8, -0xb07a0a

    const v9, -0xca9718

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_folders:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsFolders:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsFoldersInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v7, 0x7

    const v8, -0xe35a13

    const v9, -0xec781f

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_devices:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsDevices:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsDevicesInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0}, Lorg/telegram/ui/SettingsActivity;->getDevicesCount()Ljava/lang/String;

    move-result-object v13

    const/16 v7, 0x8

    const v8, -0xcd3f32

    const v9, -0xe2633a

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_power:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsPowerSaving:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v2, Lorg/telegram/messenger/R$string;->SettingsPowerSavingInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v7, 0x9

    const v8, -0xd74cf

    const v9, -0x1d9cec

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget v10, Lorg/telegram/messenger/R$drawable;->settings_language:I

    sget v2, Lorg/telegram/messenger/R$string;->SettingsLanguage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v13

    const/16 v7, 0xa

    const v8, -0x3b910c

    const v9, -0x60aa21

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v2

    if-nez v2, :cond_6

    .line 744
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_premium:I

    sget v3, Lorg/telegram/messenger/R$string;->TelegramPremium:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0xb

    const v8, -0x49a601

    const v9, -0x9e8301

    invoke-static {v7, v8, v9, v2, v3}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->starsPurchaseAvailable()Z

    move-result v2

    const-string v3, ""

    const/16 v7, 0x20

    const v8, 0x3f59999a    # 0.85f

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_8

    .line 747
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    .line 748
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v11

    iget-wide v11, v11, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    .line 749
    sget v16, Lorg/telegram/messenger/R$drawable;->settings_stars:I

    sget v13, Lorg/telegram/messenger/R$string;->TelegramStars:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v13

    if-eqz v13, :cond_7

    cmp-long v11, v11, v9

    if-lez v11, :cond_7

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    invoke-static {v2, v8, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_3

    :cond_7
    move-object/from16 v19, v3

    :goto_3
    const/16 v13, 0xc

    const v14, -0x1059ee

    const v15, -0x188aee

    const/16 v18, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_8
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    .line 752
    invoke-static {}, Lorg/telegram/messenger/BuildVars;->isBetaApp()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->hasTransactions()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2, v5}, Lorg/telegram/ui/Stars/StarsController;->getInstance(IZ)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->positive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 753
    :cond_9
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/ui/Stars/StarsController;->getTonInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v11

    iget-wide v11, v11, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    .line 755
    sget v16, Lorg/telegram/messenger/R$drawable;->settings_ton:I

    sget v13, Lorg/telegram/messenger/R$string;->MyTON:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->balanceAvailable()Z

    move-result v13

    if-eqz v13, :cond_a

    cmp-long v9, v11, v9

    if-lez v9, :cond_a

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarsController;->getBalance()Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v2

    invoke-static {v2, v8, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_a
    move-object/from16 v19, v3

    const/16 v13, 0xd

    const v14, -0xe45b13

    const v15, -0xeb771f

    const/16 v18, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_b
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v2

    const v3, -0xeb771f

    const v7, -0xe45b13

    if-eqz v2, :cond_d

    .line 759
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 760
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :cond_c
    :goto_4
    if-ge v9, v8, :cond_d

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 762
    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    if-eqz v11, :cond_c

    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    const-wide/32 v13, 0x765bf322

    cmp-long v11, v11, v13

    if-nez v11, :cond_c

    .line 763
    sget v11, Lorg/telegram/messenger/R$drawable;->settings_wallet:I

    invoke-static {v10, v7, v3, v11}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->ofBot(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;III)Lorg/telegram/ui/Components/UItem;

    move-result-object v11

    .line 764
    iput-object v10, v11, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 765
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 771
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v2

    const v8, -0x20c6ab

    const v9, -0xbadab

    if-nez v2, :cond_e

    .line 772
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_business:I

    sget v10, Lorg/telegram/messenger/R$string;->TelegramBusiness:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xf

    invoke-static {v11, v9, v8, v2, v10}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_e
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->premiumPurchaseBlocked()Z

    move-result v2

    if-nez v2, :cond_f

    .line 775
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_gift:I

    sget v10, Lorg/telegram/messenger/R$string;->SendAGift:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    const v12, -0xc74cf

    const v13, -0x1d9cec

    invoke-static {v11, v12, v13, v2, v10}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/UItem;

    iget v2, v2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v5, 0x7

    if-eq v2, v5, :cond_10

    .line 778
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_10
    sget v2, Lorg/telegram/messenger/R$string;->SettingsHelp:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_ask:I

    sget v5, Lorg/telegram/messenger/R$string;->AskAQuestion:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x11

    const v11, -0xf60e5

    const v12, -0x1e75ef

    invoke-static {v10, v11, v12, v2, v5}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_faq:I

    sget v5, Lorg/telegram/messenger/R$string;->TelegramFAQ:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x12

    invoke-static {v10, v7, v3, v2, v5}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_features:I

    sget v3, Lorg/telegram/messenger/R$string;->TelegramFeatures:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x17

    const v7, -0x3b910c

    const v10, -0x60aa21

    invoke-static {v5, v7, v10, v2, v3}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget v2, Lorg/telegram/messenger/R$drawable;->settings_policy:I

    sget v3, Lorg/telegram/messenger/R$string;->PrivacyPolicy:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x13

    const v7, -0xaa35b9

    const v10, -0xd84bcc

    invoke-static {v5, v7, v10, v2, v3}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v2, :cond_12

    .line 787
    :cond_11
    invoke-static {v6}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget v2, Lorg/telegram/messenger/R$string;->SettingsDebug:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3, v7, v10, v4, v2}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget v2, Lorg/telegram/messenger/R$string;->DebugSendLastLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v3, v7, v10, v4, v2}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget v2, Lorg/telegram/messenger/R$string;->DebugClearLogs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x16

    invoke-static {v3, v9, v8, v4, v2}, Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;->of(IIIILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->asCustomShadow(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDevicesCount()Ljava/lang/String;
    .locals 4

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    if-lez v0, :cond_0

    .line 199
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%d"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private synthetic lambda$createView$2()V
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$3()V
    .locals 2

    .line 450
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->deleteUserPhoto(Lorg/telegram/tgnet/TLRPC$InputPhoto;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 4

    .line 442
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_0

    .line 444
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 449
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_2

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    new-instance v2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    new-instance v3, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 2

    .line 522
    iget p1, p0, Lorg/telegram/ui/SettingsActivity;->versionViewPressCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/SettingsActivity;->versionViewPressCount:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 523
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez p1, :cond_0

    .line 525
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->DebugMenuLongPress:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 527
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->openDebugMenu()V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 12

    const/4 v0, -0x1

    .line 1923
    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUploadingRequest:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_9

    .line 1925
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1927
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1931
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_0

    .line 1933
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1936
    :goto_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;

    .line 1937
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v4, 0x96

    .line 1938
    invoke-static {v3, v4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    const/16 v5, 0x320

    .line 1939
    invoke-static {v3, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 1940
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    goto :goto_1

    :cond_2
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/16 v6, 0x3e8

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestVideoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v5

    .line 1941
    :goto_1
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1942
    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    if-eqz v4, :cond_3

    .line 1944
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_3
    if-eqz v3, :cond_4

    .line 1947
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_4
    if-eqz v4, :cond_5

    .line 1950
    iget-object v6, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v6, :cond_5

    .line 1951
    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 1952
    iget v7, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v7, v8, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 1953
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "@90_90"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1955
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1956
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v7

    invoke-static {p1, v2}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    invoke-virtual {v7, v6, v4, v8, v1}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Z)V

    :cond_5
    if-eqz v5, :cond_6

    if-eqz p3, :cond_6

    .line 1960
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    const-string v4, "mp4"

    invoke-virtual {v3, v5, v4, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v3

    .line 1961
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 1963
    iget-object p3, p0, Lorg/telegram/ui/SettingsActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz p3, :cond_7

    .line 1964
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p3

    invoke-virtual {p3, v3, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p3

    .line 1965
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v3, v4, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v3

    .line 1966
    invoke-virtual {v3, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1968
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v3, v4}, Lorg/telegram/messenger/MessagesController;->getDialogPhotos(J)Lorg/telegram/messenger/MessagesController$DialogPhotos;

    move-result-object p3

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {p3, v3}, Lorg/telegram/messenger/MessagesController$DialogPhotos;->addPhotoAtStart(Lorg/telegram/tgnet/TLRPC$Photo;)V

    .line 1969
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1970
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3, p3, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1972
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 1974
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_photos_photo;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$UserFull;->profile_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1975
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p3, v1}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 1978
    :cond_8
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SettingsActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1981
    :cond_9
    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1982
    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1983
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/SettingsActivity;->showAvatarProgress(ZZ)V

    .line 1984
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget p3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_ALL:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1985
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1986
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$26(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1922
    new-instance v0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$27(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1989
    :cond_0
    iget-object p1, p7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1990
    iget-object p2, p8, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarBig:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1991
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const/4 p4, 0x0

    const-string p5, "90_90"

    invoke-virtual {p2, p1, p5, p3, p4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1992
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/SettingsActivity;->showAvatarProgress(ZZ)V

    goto :goto_1

    .line 1904
    :cond_1
    :goto_0
    iget-object p7, p0, Lorg/telegram/ui/SettingsActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez p7, :cond_2

    return-void

    .line 1907
    :cond_2
    new-instance p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {p7}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    if-eqz p1, :cond_3

    .line 1909
    iput-object p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1910
    iget p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/2addr p1, v0

    iput p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_3
    if-eqz p2, :cond_4

    .line 1913
    iput-object p2, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1914
    iget p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 1915
    iput-wide p4, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 p1, p1, 0x6

    .line 1916
    iput p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_4
    if-eqz p3, :cond_5

    .line 1919
    iput-object p3, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 1920
    iget p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p7, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 1922
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p6}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {p1, p7, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarUploadingRequest:I

    .line 1994
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$fillItems$10(Landroid/view/View;)V
    .locals 1

    .line 706
    new-instance p1, Lorg/telegram/ui/ActionIntroActivity;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$11(Landroid/view/View;)V
    .locals 3

    .line 709
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "VALIDATE_PHONE_NUMBER"

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fillItems$12(Landroid/view/View;)V
    .locals 2

    .line 718
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$fillItems$13(Landroid/view/View;)V
    .locals 3

    .line 721
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "VALIDATE_PASSWORD"

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fillItems$8(Landroid/view/View;)V
    .locals 3

    .line 681
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->premiumManageSubscriptionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "PREMIUM_GRACE"

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fillItems$9()V
    .locals 2

    .line 703
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->CheckPhoneNumberLearnMoreUrl:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadSessionsCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-nez p1, :cond_0

    .line 206
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$authorizations;

    .line 207
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_account$authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    if-eq p2, p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iput p1, p2, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadSessionsCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 204
    new-instance v0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$14(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 4

    const/4 v0, 0x0

    .line 807
    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    iput-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    .line 808
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, p1, v2, v3}, Lorg/telegram/ui/LaunchActivity;->showAttachMenuBot(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/String;Z)V

    .line 809
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->updateAttachMenuBotsInCache()V

    return-void
.end method

.method private synthetic lambda$onClick$15(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 806
    new-instance p2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda31;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$16(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/Boolean;)V
    .locals 3

    .line 802
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;-><init>()V

    .line 803
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v0, 0x1

    .line 804
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->enabled:Z

    .line 805
    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleBotInAttachMenu;->write_allowed:Z

    .line 806
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    const/16 p1, 0x42

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$onLongClick$17()V
    .locals 2

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$onLongClick$18(Ljava/lang/String;)V
    .locals 0

    .line 928
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 929
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$openDebugMenu$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1597
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    return-void
.end method

.method private synthetic lambda$openDebugMenu$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1593
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    .line 1594
    const-string p2, "VALIDATE_PASSWORD"

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 1595
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1596
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$openDebugMenu$24(Landroid/content/DialogInterface;I)V
    .locals 37

    move-object/from16 v1, p0

    move/from16 v0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1474
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iput-boolean v2, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    .line 1475
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1476
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 1478
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    return-void

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 1480
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    return-void

    :cond_2
    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    .line 1482
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->forceResetDialogs()V

    return-void

    :cond_3
    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 1484
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    .line 1485
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "systemConfig"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1486
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "logsEnabled"

    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1487
    iget-object v0, v1, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 1488
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4c

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app start time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lorg/telegram/messenger/ApplicationLoader;->startTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1491
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    .line 1493
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    :cond_4
    const/4 v8, 0x5

    if-ne v0, v8, :cond_5

    .line 1497
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappCamera()V

    return-void

    :cond_5
    const/4 v8, 0x6

    .line 1498
    const-string v9, "dual_available"

    if-ne v0, v8, :cond_b

    .line 1499
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->clearSentMedia()V

    .line 1500
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setNoSoundHintShowed(Z)V

    .line 1501
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1502
    const-string v2, "archivehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "proximityhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "archivehint_l"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "searchpostsnew"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "speedhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "gifhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "reminderhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "soundHint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "themehint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "bganimationhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "filterhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "n_0"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "storyprvhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "storyhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "storyhint2"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "storydualhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "storysvddualhint"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "stories_camera"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "dualcam"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "dualmatrix"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "askNotificationsAfter"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "askNotificationsDuration"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "viewoncehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "voicepausehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "taptostorysoundhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "nothanos"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "voiceoncehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "savedhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "savedsearchhint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "savedsearchtaghint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "groupEmojiPackHintShown"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "newppsms"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "monetizationadshint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "seekSpeedHintShowed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "unsupport_video/av01"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "channelgifthint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "statusgiftpage"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "multistorieshint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "channelsuggesthint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "trimvoicehint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "taptostoryhighlighthint"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "proxycheckstatusip"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "callmiconstart"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "showchattagsinfo"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1503
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getEmojiSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "featured_hidden"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "emoji_featured_hidden"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1504
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "disable_sharing_learn"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1505
    sput v3, Lorg/telegram/messenger/SharedConfig;->textSelectionHintShows:I

    .line 1506
    sput v3, Lorg/telegram/messenger/SharedConfig;->lockRecordAudioVideoHint:I

    .line 1507
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->stickersReorderingHintUsed:Z

    .line 1508
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    .line 1509
    sput-boolean v3, Lorg/telegram/messenger/SharedConfig;->replyingOptionsHintShown:Z

    .line 1510
    sput v7, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    .line 1511
    sput v7, Lorg/telegram/messenger/SharedConfig;->emojiInteractionsHintCount:I

    .line 1512
    sput v7, Lorg/telegram/messenger/SharedConfig;->dayNightThemeSwitchHintCount:I

    .line 1513
    sput v7, Lorg/telegram/messenger/SharedConfig;->fastScrollHintCount:I

    .line 1514
    sput v6, Lorg/telegram/messenger/SharedConfig;->stealthModeSendMessageConfirm:I

    .line 1515
    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->updateStealthModeSendMessageConfirm(I)V

    .line 1516
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setStoriesReactionsLongPressHintUsed(Z)V

    .line 1517
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setStoriesIntroShown(Z)V

    .line 1518
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setMultipleReactionsPromoShowed(Z)V

    .line 1519
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatThemeController;->clearCache()V

    .line 1520
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1521
    invoke-static {}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->cleanup()V

    .line 1522
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->getInstance(I)Lorg/telegram/ui/Components/Paint/PersistColorPalette;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PersistColorPalette;->cleanup()V

    .line 1523
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1524
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1525
    const-string v3, "peerColors"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "profilePeerColors"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "boostingappearance"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "bizbothint"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "movecaptionhint"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1526
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1527
    const-string v4, "show_gift_for_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "bdayhint_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "bdayanim_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "ask_paid_message_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "topicssidetabs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1528
    :cond_7
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1531
    :cond_8
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1532
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1533
    iget v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1534
    const-string v4, "dialog_bar_botver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1535
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 1538
    :cond_a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_b
    const/4 v8, 0x7

    if-ne v0, v8, :cond_c

    .line 1540
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->showCallDebugSettings(Landroid/content/Context;)V

    return-void

    :cond_c
    const/16 v8, 0x8

    if-ne v0, v8, :cond_d

    .line 1542
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRoundCamera16to9()V

    return-void

    :cond_d
    const/16 v8, 0x9

    const/4 v10, 0x0

    if-ne v0, v8, :cond_e

    .line 1544
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v2, v10}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(ZLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    :cond_e
    const/16 v8, 0xa

    if-ne v0, v8, :cond_f

    .line 1546
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesStorage;->readAllDialogs(I)V

    return-void

    :cond_f
    const/16 v8, 0xb

    if-ne v0, v8, :cond_10

    .line 1548
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDisableVoiceAudioEffects()V

    return-void

    :cond_10
    const/16 v8, 0xc

    if-ne v0, v8, :cond_11

    .line 1550
    sput-object v10, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 1551
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1552
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->appUpdateAvailable:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_11
    const/16 v8, 0xd

    .line 1553
    const-string v11, "VALIDATE_PHONE_NUMBER"

    if-ne v0, v8, :cond_12

    .line 1554
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    .line 1555
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1556
    const-string v2, "VALIDATE_PASSWORD"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1557
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_12
    const/16 v8, 0xe

    if-ne v0, v8, :cond_13

    .line 1559
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "webview.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1560
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "webviewCache.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1561
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 1563
    :try_start_1
    new-instance v0, Landroid/webkit/WebView;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1564
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1565
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_13
    const/16 v8, 0xf

    if-ne v0, v8, :cond_14

    .line 1569
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1570
    invoke-virtual {v0, v10}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 1571
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void

    :cond_14
    const/16 v8, 0x10

    if-ne v0, v8, :cond_16

    .line 1573
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugWebView()V

    .line 1574
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v2, :cond_15

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugEnabled:I

    goto :goto_2

    :cond_15
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuWebViewDebugDisabled:I

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_16
    const/16 v8, 0x11

    if-ne v0, v8, :cond_18

    .line 1576
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceDisableTabletMode()V

    .line 1577
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1579
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1580
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1581
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 1582
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1584
    :cond_17
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_18
    const/16 v8, 0x12

    if-ne v0, v8, :cond_19

    .line 1586
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-static {}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->isActive()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController;->setActive(Lorg/telegram/ui/LaunchActivity;Z)V

    return-void

    :cond_19
    const/16 v8, 0x13

    if-ne v0, v8, :cond_1a

    .line 1588
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->loadAppConfig()V

    .line 1589
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;-><init>()V

    .line 1590
    iput-object v11, v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->suggestion:Ljava/lang/String;

    .line 1591
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_help_dismissSuggestion;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1592
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda27;

    invoke-direct {v3, v1}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_1a
    const/16 v8, 0x14

    if-ne v0, v8, :cond_2a

    .line 1601
    sget v0, Lorg/telegram/tgnet/ConnectionsManager;->CPU_COUNT:I

    .line 1602
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    .line 1607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v8, v4

    move-wide v12, v8

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v22, v20

    move-wide/from16 v24, v22

    .line 1608
    :goto_3
    const-string v10, "\n"

    const-wide/16 v26, 0x3e8

    if-ge v3, v0, :cond_1f

    move-wide/from16 v28, v4

    .line 1609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1610
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 p2, v4

    const-string v4, "/cpufreq/cpuinfo_cur_freq"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1611
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v30, v4

    const-string v4, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1612
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpu_capacity"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1613
    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v31, 0x1

    move/from16 v33, v3

    if-eqz p2, :cond_1b

    .line 1615
    const-string v3, "min="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    move-object/from16 v36, v4

    div-long v3, v34, v26

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v26

    add-long/2addr v8, v3

    add-long v12, v12, v31

    goto :goto_4

    :cond_1b
    move-object/from16 v36, v4

    :goto_4
    if-eqz v30, :cond_1c

    .line 1620
    const-string v3, "cur="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v26

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v26

    add-long/2addr v14, v3

    add-long v16, v16, v31

    :cond_1c
    if-eqz v36, :cond_1d

    .line 1625
    const-string v3, "max="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v26

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long v3, v3, v26

    add-long v18, v18, v3

    add-long v20, v20, v31

    :cond_1d
    if-eqz v5, :cond_1e

    .line 1630
    const-string v3, "cpc="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v22, v22, v3

    add-long v24, v24, v31

    .line 1634
    :cond_1e
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v33, 0x1

    move-wide/from16 v4, v28

    goto/16 :goto_3

    :cond_1f
    move-wide/from16 v28, v4

    .line 1636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1637
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (android "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x1f

    if-lt v5, v11, :cond_20

    .line 1639
    const-string v11, "SoC: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/Device$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/camera/video/internal/compat/quirk/CameraUseInconsistentTimebaseQuirk$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    :cond_20
    const-string v4, "/sys/kernel/gpu/gpu_model"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 1643
    const-string v11, "GPU: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    const-string v4, "/sys/kernel/gpu/gpu_min_clock"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1645
    const-string v11, "/sys/kernel/gpu/gpu_mm_min_clock"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 1646
    const-string v30, "/sys/kernel/gpu/gpu_max_clock"

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->getSysInfoLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    if-eqz v4, :cond_21

    move-object/from16 p2, v4

    .line 1648
    const-string v4, ", min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    move-wide/from16 v33, v8

    div-long v8, v31, v26

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_21
    move-wide/from16 v33, v8

    :goto_5
    if-eqz v11, :cond_22

    .line 1651
    const-string v4, ", mmin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long v8, v8, v26

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_22
    if-eqz v30, :cond_23

    .line 1654
    const-string v4, ", max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    div-long v8, v8, v26

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1656
    :cond_23
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_24
    move-wide/from16 v33, v8

    .line 1658
    :goto_6
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v4

    .line 1659
    const-string v8, "GLES Version: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    const-string v4, "Memory: class="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v8, v2

    const-wide/32 v26, 0x100000

    mul-long v8, v8, v26

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1661
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1662
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1663
    const-string v4, ", total="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    const-string v4, ", avail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    const-string v4, ", low?="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1666
    const-string v4, " (threshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    const-string v2, "Current class: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->performanceClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", measured: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->performanceClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x1f

    if-lt v5, v11, :cond_25

    .line 1670
    const-string v2, ", suggest="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/ui/ProfileActivity$16$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1672
    :cond_25
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " CPUs"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, v12, v28

    if-lez v0, :cond_26

    .line 1675
    const-string v0, ", avgMinFreq="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v8, v33, v12

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_26
    cmp-long v0, v16, v28

    if-lez v0, :cond_27

    .line 1678
    const-string v0, ", avgCurFreq="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v14, v14, v16

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_27
    cmp-long v0, v20, v28

    if-lez v0, :cond_28

    .line 1681
    const-string v0, ", avgMaxFreq="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v18, v20

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_28
    cmp-long v0, v24, v28

    if-lez v0, :cond_29

    .line 1684
    const-string v0, ", avgCapacity="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, v22, v24

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1686
    :cond_29
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1688
    const-string v0, "video/avc"

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/SettingsActivity;->listCodecs(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1689
    const-string v0, "video/hevc"

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/SettingsActivity;->listCodecs(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1690
    const-string v0, "video/x-vnd.on2.vp8"

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/SettingsActivity;->listCodecs(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1691
    const-string v0, "video/x-vnd.on2.vp9"

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/SettingsActivity;->listCodecs(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1693
    new-instance v0, Lorg/telegram/ui/SettingsActivity$8;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/SettingsActivity$8;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2a
    const/16 v4, 0x15

    if-ne v0, v4, :cond_31

    .line 1703
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1704
    const-string v4, "Force performance class"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1705
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v4

    .line 1706
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->measureDevicePerformanceClass()I

    move-result v5

    .line 1707
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v4, v6, :cond_2b

    .line 1708
    const-string v9, "**HIGH**"

    goto :goto_7

    :cond_2b
    const-string v9, "HIGH"

    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    const-string v11, " (measured)"

    if-ne v5, v6, :cond_2c

    move-object v12, v11

    goto :goto_8

    :cond_2c
    move-object v12, v9

    :goto_8
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v4, v2, :cond_2d

    .line 1709
    const-string v13, "**AVERAGE**"

    goto :goto_9

    :cond_2d
    const-string v13, "AVERAGE"

    :goto_9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v2, :cond_2e

    move-object v13, v11

    goto :goto_a

    :cond_2e
    move-object v13, v9

    :goto_a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_2f

    .line 1710
    const-string v4, "**LOW**"

    goto :goto_b

    :cond_2f
    const-string v4, "LOW"

    :goto_b
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_30

    move-object v9, v11

    :cond_30
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v8, v7, v3

    aput-object v12, v7, v2

    aput-object v4, v7, v6

    new-instance v2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, v5}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda28;-><init>(I)V

    .line 1707
    invoke-virtual {v0, v7, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1719
    const-string v2, "Cancel"

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1720
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    :cond_31
    const/16 v4, 0x16

    if-ne v0, v4, :cond_32

    .line 1722
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRoundCamera()V

    return-void

    :cond_32
    const/16 v4, 0x17

    if-ne v0, v4, :cond_34

    .line 1724
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v0

    .line 1725
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    xor-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1727
    :try_start_2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v0, :cond_33

    sget v0, Lorg/telegram/messenger/R$string;->DebugMenuDualOnToast:I

    goto :goto_c

    :cond_33
    sget v0, Lorg/telegram/messenger/R$string;->DebugMenuDualOffToast:I

    :goto_c
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_13

    :cond_34
    const/16 v4, 0x18

    if-ne v0, v4, :cond_35

    .line 1731
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSurfaceInStories()V

    .line 1732
    :goto_d
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4c

    .line 1733
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearSheets()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_35
    const/16 v4, 0x19

    if-ne v0, v4, :cond_36

    .line 1736
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePhotoViewerBlur()V

    return-void

    :cond_36
    const/16 v4, 0x1a

    if-ne v0, v4, :cond_37

    .line 1738
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePaymentByInvoice()V

    return-void

    :cond_37
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_38

    .line 1740
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->loadAttachMenuBots(ZZ)V

    return-void

    :cond_38
    const/16 v4, 0x1c

    if-ne v0, v4, :cond_39

    .line 1742
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->toggleUseCamera2(I)V

    return-void

    :cond_39
    const/16 v4, 0x1d

    if-ne v0, v4, :cond_3a

    .line 1744
    invoke-static {}, Lorg/telegram/ui/bots/BotBiometry;->clear()V

    .line 1745
    invoke-static {}, Lorg/telegram/ui/bots/BotLocation;->clear()V

    .line 1746
    invoke-static {}, Lorg/telegram/ui/bots/BotDownloads;->clear()V

    .line 1747
    invoke-static {}, Lorg/telegram/ui/bots/SetupEmojiStatusSheet;->clear()V

    return-void

    :cond_3a
    const/16 v4, 0x1e

    if-ne v0, v4, :cond_3b

    .line 1749
    invoke-static {}, Lorg/telegram/messenger/AuthTokensHelper;->clearLogInTokens()V

    return-void

    :cond_3b
    const/16 v11, 0x1f

    if-ne v0, v11, :cond_3c

    .line 1751
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleUseNewBlur()V

    return-void

    :cond_3c
    const/16 v4, 0x20

    if-ne v0, v4, :cond_3d

    .line 1753
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleBrowserAdaptableColors()V

    return-void

    :cond_3d
    const/16 v4, 0x21

    if-ne v0, v4, :cond_3e

    .line 1755
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDebugVideoQualities()V

    return-void

    :cond_3e
    const/16 v4, 0x22

    if-ne v0, v4, :cond_3f

    .line 1757
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleUseSystemBoldFont()V

    return-void

    :cond_3f
    const/16 v4, 0x23

    if-ne v0, v4, :cond_40

    .line 1759
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->loadAppConfig(Z)V

    return-void

    :cond_40
    const/16 v4, 0x24

    if-ne v0, v4, :cond_41

    .line 1761
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleForceForumTabs()V

    return-void

    :cond_41
    const/16 v4, 0x25

    if-ne v0, v4, :cond_42

    .line 1763
    invoke-static {}, Lorg/telegram/messenger/FileLog;->getInstance()Lorg/telegram/messenger/FileLog;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLog;->dumpMemory(Z)V

    return-void

    :cond_42
    const/16 v4, 0x26

    if-ne v0, v4, :cond_43

    .line 1765
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleFastWallpaperDisabled()V

    return-void

    :cond_43
    const/16 v4, 0x27

    if-ne v0, v4, :cond_44

    .line 1767
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleFrameMetricsEnabled()V

    .line 1768
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_4c

    .line 1769
    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->checkFrameMetrics()V

    return-void

    :cond_44
    const/16 v4, 0x28

    if-ne v0, v4, :cond_45

    .line 1772
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1773
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    xor-int/2addr v2, v3

    sput-boolean v2, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    const-string v3, "shadowsInSections"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_45
    const/16 v2, 0x29

    if-ne v0, v2, :cond_4b

    .line 1775
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/TranslateController;->clearTranslationCache()V

    .line 1776
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessage:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_48

    move v2, v3

    .line 1778
    :goto_e
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_48

    .line 1779
    invoke-virtual {v0, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_46

    goto :goto_10

    :cond_46
    move v5, v3

    .line 1783
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_47

    .line 1784
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/TranslateController;->clearMessageTranslationState(Lorg/telegram/messenger/MessageObject;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_47
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1788
    :cond_48
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Landroid/util/SparseArray;

    if-eqz v0, :cond_49

    move v2, v3

    .line 1790
    :goto_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 1791
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/TranslateController;->clearMessageTranslationState(Lorg/telegram/messenger/MessageObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1794
    :cond_49
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogMessagesByRandomIds:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_4a

    move v2, v3

    .line 1796
    :goto_12
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4a

    .line 1797
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/TranslateController;->clearMessageTranslationState(Lorg/telegram/messenger/MessageObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1800
    :cond_4a
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "Translation cache cleared"

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4b
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_4c

    .line 1802
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda29;

    invoke-direct {v2}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :catch_1
    :cond_4c
    :goto_13
    return-void
.end method

.method private synthetic lambda$updateActionBarVisible$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 655
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitlesContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->actionBarBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private listCodecs(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1819
    const-string v2, "\n"

    .line 1823
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 1824
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_5

    .line 1828
    invoke-static {v7}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_3

    .line 1832
    :cond_0
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    move v10, v6

    .line 1837
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_4

    .line 1838
    aget-object v11, v9, v10

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1844
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v5

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1847
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_6

    .line 1850
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " codecs:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v6

    .line 1851
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ")"

    const-string v9, "; mi="

    const-string v10, ", v"

    const-string v11, "cpu"

    const-string v12, "gpu"

    const/16 v13, 0x1d

    const-string v14, " ("

    if-ge v3, v7, :cond_b

    if-lez v3, :cond_7

    .line 1853
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_7
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v7

    .line 1856
    const-string v15, "{d} "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v13, :cond_a

    .line 1858
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1859
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    :cond_8
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1862
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    :cond_9
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1865
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    :cond_a
    invoke-virtual {v7, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    .line 1869
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1871
    :cond_b
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_11

    if-gtz v6, :cond_c

    .line 1872
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1873
    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    :cond_d
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 1876
    const-string v7, "{e} "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v13, :cond_10

    .line 1878
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1879
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    :cond_e
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1882
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    :cond_f
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1885
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    :cond_10
    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 1889
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1891
    :cond_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_6
    return-void
.end method

.method private loadSessionsCount()V
    .locals 3

    .line 203
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getAuthorizations;-><init>()V

    .line 204
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 959
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 960
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    iput p2, p0, Lorg/telegram/ui/SettingsActivity;->navigationBarHeight:I

    .line 961
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->navigationBarHeight:I

    iget v1, p0, Lorg/telegram/ui/SettingsActivity;->additionNavigationBarHeight:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 962
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 3

    .line 798
    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    .line 799
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 800
    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    const/4 p3, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->side_menu_disclaimer_needed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1, p5, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity;->showAttachMenuBot(Lorg/telegram/ui/LaunchActivity;ILorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Ljava/lang/String;Z)V

    return-void

    .line 801
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p4, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {p4, p0, p2}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V

    invoke-static {p1, p4, p3, p3}, Lorg/telegram/ui/WebAppDisclaimerAlert;->show(Landroid/content/Context;Lcom/google/android/exoplayer2/util/Consumer;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;)V

    return-void

    .line 817
    :cond_2
    const-class p2, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 818
    iget-object p2, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p5, p2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz p5, :cond_3

    .line 819
    check-cast p2, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 820
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->open(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    goto :goto_1

    .line 821
    :cond_3
    instance-of p5, p2, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz p5, :cond_4

    .line 822
    check-cast p2, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 823
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p5

    sget v0, Lorg/telegram/messenger/NotificationCenter;->openArticle:I

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->search:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->faqWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->url:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p3

    aput-object p2, v2, p4

    invoke-virtual {p5, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 825
    :cond_4
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 826
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->search:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->addRecent(Ljava/lang/Object;)V

    return-void

    .line 830
    :cond_5
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const-string p2, "settings"

    packed-switch p1, :pswitch_data_0

    :cond_6
    :pswitch_0
    return-void

    .line 898
    :pswitch_1
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 899
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 901
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TelegramFeaturesUrl:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 895
    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    return-void

    .line 892
    :pswitch_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p4}, Lorg/telegram/ui/ProfileActivity;->sendLogs(Landroid/app/Activity;Z)V

    return-void

    .line 889
    :pswitch_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/telegram/ui/ProfileActivity;->sendLogs(Landroid/app/Activity;Z)V

    return-void

    .line 885
    :pswitch_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 882
    :pswitch_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TelegramFaqUrl:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 879
    :pswitch_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createSupportAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 875
    :pswitch_8
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/BirthdayController;->getInstance(I)Lorg/telegram/messenger/BirthdayController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/BirthdayController;->getState()Lorg/telegram/messenger/BirthdayController$BirthdayState;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->open(JLorg/telegram/messenger/BirthdayController$BirthdayState;)Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    return-void

    .line 872
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p1, p4, p2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 869
    :pswitch_a
    new-instance p1, Lorg/telegram/ui/TON/TONIntroActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TON/TONIntroActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 866
    :pswitch_b
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity;

    invoke-direct {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 863
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/PremiumPreviewFragment;

    invoke-direct {p1, p2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 859
    :pswitch_d
    new-instance p1, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 856
    :pswitch_e
    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 853
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p1, p3}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 850
    :pswitch_10
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 847
    :pswitch_11
    new-instance p1, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 844
    :pswitch_12
    new-instance p1, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 841
    :pswitch_13
    new-instance p1, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p1}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 838
    :pswitch_14
    new-instance p1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {p1, p3}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 835
    :pswitch_15
    new-instance p1, Lorg/telegram/ui/UserInfoActivity;

    invoke-direct {p1}, Lorg/telegram/ui/UserInfoActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 832
    :pswitch_16
    new-instance p1, Lcom/exteragram/messenger/preferences/MainPreferencesActivity;

    invoke-direct {p1}, Lcom/exteragram/messenger/preferences/MainPreferencesActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 2

    .line 909
    iget-object p3, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    .line 910
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 911
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide p2, p3, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    new-instance p4, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p4, p0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/bots/BotWebViewSheet;->deleteBot(IJLjava/lang/Runnable;)V

    return p5

    .line 915
    :cond_0
    const-class p3, Lorg/telegram/ui/Cells/SettingsSearchCell$Factory;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UItem;->instanceOf(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 917
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    if-eqz p3, :cond_1

    .line 918
    check-cast p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;

    .line 919
    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$SearchAdapter$SearchResult;->link:Ljava/lang/String;

    goto :goto_0

    .line 920
    :cond_1
    instance-of p3, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-eqz p3, :cond_2

    .line 921
    check-cast p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 922
    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 924
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 926
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    sget v0, Lorg/telegram/messenger/R$string;->CopyLink:I

    .line 927
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 931
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 932
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return p5

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private showAvatarProgress(ZZ)V
    .locals 6

    .line 1999
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 2002
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2003
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 2004
    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 2007
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 2009
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2010
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    aput v1, v5, v2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 2012
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    aput v0, v5, v2

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v3, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2014
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2015
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/SettingsActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SettingsActivity$9;-><init>(Lorg/telegram/ui/SettingsActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2032
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 2035
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2036
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2038
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2039
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateActionBarVisible()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 627
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SettingsActivity;->updateActionBarVisible(ZZ)V

    return-void
.end method

.method private updateActionBarVisible(ZZ)V
    .locals 4

    .line 631
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSearchFieldVisible2()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v0, v1

    goto :goto_1

    .line 633
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 636
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 642
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisible:Z

    if-ne v3, v0, :cond_3

    if-nez p1, :cond_3

    return-void

    .line 644
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisible:Z

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 646
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 647
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    const/4 p1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_7

    .line 650
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitlesContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz v0, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, p1

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 651
    iget-object p2, p0, Lorg/telegram/ui/SettingsActivity;->actionBarBackground:Landroid/view/View;

    if-eqz v0, :cond_6

    move p1, v3

    :cond_6
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 653
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitlesContainer()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    if-eqz v0, :cond_8

    move p1, v3

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p2, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

    .line 654
    new-instance p2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 661
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->actionBarVisibleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateMainTabsVisibility()V
    .locals 2

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    if-eqz v0, :cond_1

    .line 953
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/SettingsActivity;->mainTabsHiddenByScroll:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lorg/telegram/ui/MainTabsActivityController;->setTabsVisible(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic canFinishFragment()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$canFinishFragment(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public canParentTabsSlide(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .line 2126
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SettingsActivity;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public clearViews()V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lorg/telegram/ui/SettingsActivity;->ignoreClearViews:Z

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 270
    iget-boolean v2, v0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput v2, v0, Lorg/telegram/ui/SettingsActivity;->additionNavigationBarHeight:I

    .line 271
    new-instance v2, Lorg/telegram/ui/SettingsActivity$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$1;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 332
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 333
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 334
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setUseContainerForTitles()V

    .line 335
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/SettingsActivity$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SettingsActivity$2;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 346
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 347
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 348
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 349
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 352
    sget v5, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v3, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/SettingsActivity$3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SettingsActivity$3;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/SettingsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 374
    sget v6, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 376
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 377
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_leave:I

    sget v6, Lorg/telegram/messenger/R$string;->LogOut:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 379
    new-instance v2, Lorg/telegram/ui/SettingsActivity$4;

    invoke-direct {v2, v0, v0, v1}, Lorg/telegram/ui/SettingsActivity$4;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->search:Lorg/telegram/ui/ProfileActivity$SearchAdapter;

    .line 385
    invoke-virtual {v2}, Lorg/telegram/ui/ProfileActivity$SearchAdapter;->loadFaqWebPage()V

    .line 387
    invoke-direct {v0}, Lorg/telegram/ui/SettingsActivity;->loadSessionsCount()V

    .line 389
    new-instance v2, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    new-instance v6, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    new-instance v8, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-direct {v2, v0, v5, v6, v8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 390
    iget-object v2, v2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 391
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections()V

    .line 392
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    iget v8, v0, Lorg/telegram/ui/SettingsActivity;->additionNavigationBarHeight:I

    add-int/2addr v6, v8

    invoke-virtual {v2, v3, v5, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 393
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 394
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/SettingsActivity$5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SettingsActivity$5;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 412
    new-instance v2, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;

    invoke-direct {v8, v5}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-direct {v2, v5, v6, v8}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 413
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v5, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 414
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/16 v6, 0x77

    const/4 v8, -0x1

    invoke-static {v8, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    new-instance v2, Lorg/telegram/ui/SettingsActivity$6;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$6;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBarBackground:Landroid/view/View;

    .line 429
    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/16 v6, 0xc8

    const/16 v9, 0x30

    invoke-static {v8, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, -0x2

    const/16 v9, 0x37

    invoke-static {v8, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    new-instance v2, Lorg/telegram/ui/Components/ImageUpdater;

    invoke-direct {v2, v4, v3, v4}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    .line 433
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ImageUpdater;->setOpenWithFrontfaceCamera(Z)V

    .line 434
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object v0, v2, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 435
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 437
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->topView:Landroid/widget/FrameLayout;

    .line 439
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarContainer:Landroid/widget/FrameLayout;

    .line 440
    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->topView:Landroid/widget/FrameLayout;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v9, 0x78

    const/high16 v10, 0x42f00000    # 120.0f

    const/16 v11, 0x31

    const/4 v12, 0x0

    const/high16 v13, 0x41300000    # 11.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 457
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 458
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x42b40000    # 90.0f

    .line 459
    invoke-static {v5}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 460
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v9, 0x5a

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v13, 0x41700000    # 15.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v2, Lorg/telegram/ui/SettingsActivity$7;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$7;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v5, 0x41d00000    # 26.0f

    .line 478
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 479
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 480
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 481
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v13, 0x0

    const/16 v8, 0x5a

    const/high16 v9, 0x42b40000    # 90.0f

    const/16 v10, 0x31

    const/4 v11, 0x0

    const/high16 v12, 0x41700000    # 15.0f

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-direct {v0, v3, v3}, Lorg/telegram/ui/SettingsActivity;->showAvatarProgress(ZZ)V

    .line 484
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraButton:Landroid/widget/FrameLayout;

    const/high16 v5, 0x42000000    # 32.0f

    .line 485
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 486
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraButton:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v6, v8, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 487
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 488
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraBackground:Landroid/widget/FrameLayout;

    const/high16 v5, 0x41f00000    # 30.0f

    .line 489
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraImageView:Landroid/widget/ImageView;

    .line 491
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 492
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraImageView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->filled_premium_camera:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraImageView:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 494
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraBackground:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity;->cameraImageView:Landroid/widget/ImageView;

    const/16 v8, 0x16

    const/16 v9, 0x11

    invoke-static {v8, v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraButton:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity;->cameraBackground:Landroid/widget/FrameLayout;

    const/16 v8, 0x1e

    invoke-static {v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->cameraButton:Landroid/widget/FrameLayout;

    const/16 v16, 0x0

    const/16 v10, 0x22

    const/high16 v11, 0x42080000    # 34.0f

    const/16 v12, 0x31

    const/high16 v13, 0x42040000    # 33.0f

    const/high16 v14, 0x42980000    # 76.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->cameraButton:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 499
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    .line 500
    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 501
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 502
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 503
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 504
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 505
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 506
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->topView:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/high16 v13, 0x41800000    # 16.0f

    const v14, 0x42fcaa7e

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    const/high16 v6, 0x41500000    # 13.0f

    .line 509
    invoke-virtual {v2, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 510
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 511
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 512
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 513
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->topView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x431c0000    # 156.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    .line 516
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 517
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v2, v6, v10, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 519
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 520
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    new-instance v5, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->navigationBar:Landroid/view/View;

    .line 537
    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/SettingsActivity;->updateActionBarVisible(ZZ)V

    .line 538
    iget-object v1, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 539
    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity;->setInfo()V

    .line 540
    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity;->updateColors()V

    .line 541
    invoke-direct {v0}, Lorg/telegram/ui/SettingsActivity;->checkUi_menuItems()V

    .line 543
    iget-object v1, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    new-instance v2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 544
    iget-object v1, v0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 558
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    .line 559
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->setInfo()V

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_2

    .line 561
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 563
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_1

    .line 564
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->setInfo()V

    return-void

    .line 565
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    if-ne p1, p2, :cond_2

    .line 566
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz p1, :cond_2

    .line 567
    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_2
    return-void
.end method

.method public didStartUpload(ZZ)V
    .locals 0

    .line 2055
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 2058
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public synthetic didUploadFailed()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$didUploadFailed(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    return-void
.end method

.method public didUploadPhoto(Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;ZLorg/telegram/tgnet/TLRPC$VideoSize;)V
    .locals 10

    .line 1902
    new-instance v0, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    move-object v7, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move-object/from16 v4, p9

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public drawEdgeNavigationBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getCloseIntoObject(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    return-object v0
.end method

.method public getGlassSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 1

    .line 2111
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object v0
.end method

.method public synthetic getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getInitialSearchString(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2121
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->animatorSearchPageVisible:Lme/vkryl/android/animator/BoolAnimator;

    invoke-virtual {p1}, Lme/vkryl/android/animator/BoolAnimator;->getValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1125
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1128
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public synthetic onFactorChangeFinished(IFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lme/vkryl/android/animator/FactorAnimator$Target$-CC;->$default$onFactorChangeFinished(Lme/vkryl/android/animator/FactorAnimator$Target;IFLme/vkryl/android/animator/FactorAnimator;)V

    return-void
.end method

.method public onFactorChanged(IFFLme/vkryl/android/animator/FactorAnimator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2066
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->checkUi_menuItems()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 3

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 244
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    const-string v2, "hasMainTabs"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    .line 250
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/SettingsActivity;->hasMainTabs:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_1
    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->additionNavigationBarHeight:I

    .line 251
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 549
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 551
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 552
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->starBalanceUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 553
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onParentScrollToTop()V
    .locals 2

    .line 2116
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 263
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lorg/telegram/ui/SettingsActivity;->mainTabsHiddenByScroll:Z

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateMainTabsVisibility()V

    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    .line 2046
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 2049
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public openDebugMenu()V
    .locals 45

    move-object/from16 v0, p0

    .line 1423
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1424
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenu:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1426
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuImportContacts:I

    .line 1427
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->DebugMenuReloadContacts:I

    .line 1428
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->DebugMenuResetContacts:I

    .line 1429
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->DebugMenuResetDialogs:I

    .line 1430
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1431
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_0

    const-string v6, "DebugMenuDisableLogs"

    sget v7, Lorg/telegram/messenger/R$string;->DebugMenuDisableLogs:I

    :goto_0
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, "DebugMenuEnableLogs"

    sget v7, Lorg/telegram/messenger/R$string;->DebugMenuEnableLogs:I

    goto :goto_0

    .line 1432
    :goto_1
    sget-boolean v7, Lorg/telegram/messenger/SharedConfig;->inAppCamera:Z

    if-eqz v7, :cond_1

    const-string v7, "DebugMenuDisableCamera"

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuDisableCamera:I

    :goto_2
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_1
    const-string v7, "DebugMenuEnableCamera"

    sget v8, Lorg/telegram/messenger/R$string;->DebugMenuEnableCamera:I

    goto :goto_2

    :goto_3
    const-string v8, "DebugMenuClearMediaCache"

    sget v9, Lorg/telegram/messenger/R$string;->DebugMenuClearMediaCache:I

    .line 1433
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$string;->DebugMenuCallSettings:I

    .line 1434
    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1436
    sget-boolean v10, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v10, :cond_2

    const-string v10, "DebugMenuCheckAppUpdate"

    sget v12, Lorg/telegram/messenger/R$string;->DebugMenuCheckAppUpdate:I

    invoke-static {v10, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    :goto_4
    const-string v12, "DebugMenuReadAllDialogs"

    sget v13, Lorg/telegram/messenger/R$string;->DebugMenuReadAllDialogs:I

    .line 1437
    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1438
    sget-boolean v13, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v13, :cond_4

    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->disableVoiceAudioEffects:Z

    if-eqz v13, :cond_3

    const-string v13, "Enable voip audio effects"

    goto :goto_5

    :cond_3
    const-string v13, "Disable voip audio effects"

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    .line 1439
    :goto_5
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v14, :cond_5

    const-string v15, "Clean app update"

    goto :goto_6

    :cond_5
    const/4 v15, 0x0

    :goto_6
    if-eqz v14, :cond_6

    .line 1440
    const-string v16, "Reset suggestions"

    goto :goto_7

    :cond_6
    const/16 v16, 0x0

    :goto_7
    if-eqz v14, :cond_7

    .line 1441
    sget v14, Lorg/telegram/messenger/R$string;->DebugMenuClearWebViewCache:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :cond_7
    const/4 v14, 0x0

    :goto_8
    sget v17, Lorg/telegram/messenger/R$string;->DebugMenuClearWebViewCookies:I

    .line 1442
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1443
    sget-boolean v18, Lorg/telegram/messenger/SharedConfig;->debugWebView:Z

    if-eqz v18, :cond_8

    sget v18, Lorg/telegram/messenger/R$string;->DebugMenuDisableWebViewDebug:I

    goto :goto_9

    :cond_8
    sget v18, Lorg/telegram/messenger/R$string;->DebugMenuEnableWebViewDebug:I

    :goto_9
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1444
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTabletInternal()Z

    move-result v19

    if-eqz v19, :cond_a

    sget-boolean v19, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v19, :cond_a

    sget-boolean v19, Lorg/telegram/messenger/SharedConfig;->forceDisableTabletMode:Z

    if-eqz v19, :cond_9

    const-string v19, "Enable tablet mode"

    goto :goto_a

    :cond_9
    const-string v19, "Disable tablet mode"

    goto :goto_a

    :cond_a
    const/16 v19, 0x0

    .line 1445
    :goto_a
    sget-boolean v20, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v20, :cond_c

    sget-boolean v20, Lorg/telegram/messenger/SharedConfig;->isFloatingDebugActive:Z

    if-eqz v20, :cond_b

    sget v20, Lorg/telegram/messenger/R$string;->FloatingDebugDisable:I

    goto :goto_b

    :cond_b
    sget v20, Lorg/telegram/messenger/R$string;->FloatingDebugEnable:I

    :goto_b
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_c

    :cond_c
    const/16 v20, 0x0

    .line 1446
    :goto_c
    sget-boolean v21, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v21, :cond_d

    const-string v22, "Force remove premium suggestions"

    goto :goto_d

    :cond_d
    const/16 v22, 0x0

    :goto_d
    if-eqz v21, :cond_e

    .line 1447
    const-string v23, "Share device info"

    goto :goto_e

    :cond_e
    const/16 v23, 0x0

    :goto_e
    if-eqz v21, :cond_f

    .line 1448
    const-string v24, "Force performance class"

    goto :goto_f

    :cond_f
    const/16 v24, 0x0

    :goto_f
    if-eqz v21, :cond_11

    .line 1449
    invoke-static {}, Lorg/telegram/ui/Components/InstantCameraView;->allowBigSizeCameraDebug()Z

    move-result v21

    if-nez v21, :cond_11

    sget-boolean v21, Lorg/telegram/messenger/SharedConfig;->bigCameraForRound:Z

    if-nez v21, :cond_10

    const-string v21, "Force big camera for round"

    goto :goto_10

    :cond_10
    const-string v21, "Disable big camera for round"

    goto :goto_10

    :cond_11
    const/16 v21, 0x0

    .line 1450
    :goto_10
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->dualAvailableStatic(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_12

    const-string v25, "DebugMenuDualOff"

    goto :goto_11

    :cond_12
    const-string v25, "DebugMenuDualOn"

    :goto_11
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1451
    sget-boolean v26, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v26, :cond_14

    sget-boolean v26, Lorg/telegram/messenger/SharedConfig;->useSurfaceInStories:Z

    if-eqz v26, :cond_13

    const-string v26, "back to TextureView in stories"

    goto :goto_12

    :cond_13
    const-string v26, "use SurfaceView in stories"

    goto :goto_12

    :cond_14
    const/16 v26, 0x0

    .line 1452
    :goto_12
    sget-boolean v27, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v27, :cond_16

    sget-boolean v27, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    if-eqz v27, :cond_15

    const-string v27, "do not blur in photoviewer"

    goto :goto_13

    :cond_15
    const-string v27, "blur in photoviewer"

    goto :goto_13

    :cond_16
    const/16 v27, 0x0

    .line 1453
    :goto_13
    sget-boolean v28, Lorg/telegram/messenger/SharedConfig;->payByInvoice:Z

    if-nez v28, :cond_17

    const-string v28, "Enable Invoice Payment"

    goto :goto_14

    :cond_17
    const-string v28, "Disable Invoice Payment"

    .line 1454
    :goto_14
    sget-boolean v29, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v29, :cond_18

    const-string v29, "Update Attach Bots"

    :goto_15
    const/16 v30, 0x0

    goto :goto_16

    :cond_18
    const/16 v29, 0x0

    goto :goto_15

    .line 1455
    :goto_16
    iget v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/SharedConfig;->isUsingCamera2(I)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v11, "Use Camera 2 API"

    goto :goto_17

    :cond_19
    const-string v11, "Use old Camera 1 API"

    .line 1456
    :goto_17
    sget-boolean v31, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v31, :cond_1a

    const-string v31, "Clear Mini Apps Permissions and Files"

    goto :goto_18

    :cond_1a
    move-object/from16 v31, v30

    .line 1457
    :goto_18
    sget-boolean v32, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v32, :cond_1b

    const-string v32, "Clear all login tokens"

    goto :goto_19

    :cond_1b
    move-object/from16 v32, v30

    .line 1458
    :goto_19
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->canBlurChat()Z

    move-result v33

    move-object/from16 v34, v2

    const/16 v2, 0x1f

    if-eqz v33, :cond_1d

    move-object/from16 v33, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1e

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->useNewBlur:Z

    if-eqz v3, :cond_1c

    const-string v3, "back to cpu blur"

    goto :goto_1a

    :cond_1c
    const-string v3, "use new gpu blur"

    goto :goto_1a

    :cond_1d
    move-object/from16 v33, v3

    :cond_1e
    move-object/from16 v3, v30

    .line 1459
    :goto_1a
    sget-boolean v35, Lorg/telegram/messenger/SharedConfig;->adaptableColorInBrowser:Z

    if-eqz v35, :cond_1f

    const-string v35, "Disabled adaptive browser colors"

    goto :goto_1b

    :cond_1f
    const-string v35, "Enable adaptive browser colors"

    .line 1460
    :goto_1b
    sget-boolean v36, Lorg/telegram/messenger/SharedConfig;->debugVideoQualities:Z

    if-eqz v36, :cond_20

    const-string v36, "Disable video qualities debug"

    :goto_1c
    move/from16 v37, v2

    goto :goto_1d

    :cond_20
    const-string v36, "Enable video qualities debug"

    goto :goto_1c

    .line 1461
    :goto_1d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v38, v3

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_22

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->useSystemBoldFont:Z

    if-eqz v2, :cond_21

    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuDontUseSystemBoldFont:I

    goto :goto_1e

    :cond_21
    sget v2, Lorg/telegram/messenger/R$string;->DebugMenuUseSystemBoldFont:I

    :goto_1e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_22
    move-object/from16 v2, v30

    .line 1463
    :goto_1f
    sget-boolean v39, Lorg/telegram/messenger/SharedConfig;->forceForumTabs:Z

    if-nez v39, :cond_23

    const-string v39, "Force Forum Tabs"

    goto :goto_20

    :cond_23
    const-string v39, "Do Not Force Forum Tabs"

    .line 1465
    :goto_20
    sget-boolean v40, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v40, :cond_25

    sget-boolean v40, Lorg/telegram/messenger/SharedConfig;->fastWallpaperDisabled:Z

    if-eqz v40, :cond_24

    const-string v40, "enable wallpaper shader"

    goto :goto_21

    :cond_24
    const-string v40, "disable wallpaper shader"

    goto :goto_21

    :cond_25
    move-object/from16 v40, v30

    .line 1466
    :goto_21
    sget-boolean v41, Lorg/telegram/messenger/SharedConfig;->frameMetricsEnabled:Z

    if-eqz v41, :cond_26

    const-string v41, "hide frame metrics"

    goto :goto_22

    :cond_26
    const-string v41, "show frame metrics"

    .line 1467
    :goto_22
    sget-boolean v42, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v42, :cond_28

    sget-boolean v42, Lorg/telegram/messenger/SharedConfig;->shadowsInSections:Z

    if-eqz v42, :cond_27

    const-string v42, "disable shadows in settings"

    :goto_23
    move/from16 v43, v3

    goto :goto_24

    :cond_27
    const-string v42, "enable shadows in settings"

    goto :goto_23

    :cond_28
    move/from16 v43, v3

    move-object/from16 v42, v30

    :goto_24
    const/16 v3, 0x2b

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/16 v44, 0x0

    aput-object v34, v3, v44

    const/16 v34, 0x1

    aput-object v33, v3, v34

    const/16 v33, 0x2

    aput-object v4, v3, v33

    const/4 v4, 0x3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v6, v3, v4

    const/4 v4, 0x5

    aput-object v7, v3, v4

    const/4 v4, 0x6

    aput-object v8, v3, v4

    const/4 v4, 0x7

    aput-object v9, v3, v4

    const/16 v4, 0x8

    aput-object v30, v3, v4

    const/16 v4, 0x9

    aput-object v10, v3, v4

    const/16 v4, 0xa

    aput-object v12, v3, v4

    const/16 v4, 0xb

    aput-object v13, v3, v4

    const/16 v4, 0xc

    aput-object v15, v3, v4

    const/16 v4, 0xd

    aput-object v16, v3, v4

    const/16 v4, 0xe

    aput-object v14, v3, v4

    const/16 v4, 0xf

    aput-object v17, v3, v4

    const/16 v4, 0x10

    aput-object v18, v3, v4

    const/16 v4, 0x11

    aput-object v19, v3, v4

    const/16 v4, 0x12

    aput-object v20, v3, v4

    const/16 v4, 0x13

    aput-object v22, v3, v4

    const/16 v4, 0x14

    aput-object v23, v3, v4

    const/16 v4, 0x15

    aput-object v24, v3, v4

    const/16 v4, 0x16

    aput-object v21, v3, v4

    const/16 v4, 0x17

    aput-object v25, v3, v4

    const/16 v4, 0x18

    aput-object v26, v3, v4

    const/16 v4, 0x19

    aput-object v27, v3, v4

    const/16 v4, 0x1a

    aput-object v28, v3, v4

    const/16 v4, 0x1b

    aput-object v29, v3, v4

    aput-object v11, v3, v43

    const/16 v4, 0x1d

    aput-object v31, v3, v4

    const/16 v4, 0x1e

    aput-object v32, v3, v4

    aput-object v38, v3, v37

    const/16 v4, 0x20

    aput-object v35, v3, v4

    const/16 v4, 0x21

    aput-object v36, v3, v4

    const/16 v4, 0x22

    aput-object v2, v3, v4

    const-string v2, "Reload app config"

    const/16 v4, 0x23

    aput-object v2, v3, v4

    const/16 v2, 0x24

    aput-object v39, v3, v2

    const-string v2, "Make Memory Dump"

    const/16 v4, 0x25

    aput-object v2, v3, v4

    const/16 v2, 0x26

    aput-object v40, v3, v2

    const/16 v2, 0x27

    aput-object v41, v3, v2

    const/16 v2, 0x28

    aput-object v42, v3, v2

    const-string v2, "Clear translation cache"

    const/16 v4, 0x29

    aput-object v2, v3, v4

    const-string v2, "Clear exteraDatabase"

    const/16 v4, 0x2a

    aput-object v2, v3, v4

    .line 1472
    new-instance v2, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SettingsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1814
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1815
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public setInfo()V
    .locals 1

    .line 573
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/SettingsActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUploadingRequest:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    .line 584
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->hidePhoneNumber:Z

    if-nez v1, :cond_2

    .line 585
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 589
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 590
    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_3
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity;->versionView:Landroid/widget/TextView;

    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getVersionText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    return-void
.end method

.method public synthetic supportsBulletin()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$supportsBulletin(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public updateColors()V
    .locals 5

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->updateColor()V

    .line 608
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->navigationBar:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    filled-new-array {v4, v0}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->actionBarBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
