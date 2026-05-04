.class public Lorg/telegram/ui/ThemeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemeActivity$GpsLocationListener;,
        Lorg/telegram/ui/ThemeActivity$TextSizeCell;,
        Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;,
        Lorg/telegram/ui/ThemeActivity$ListAdapter;,
        Lorg/telegram/ui/ThemeActivity$TintRecyclerListView;,
        Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;,
        Lorg/telegram/ui/ThemeActivity$InnerCustomAccentView;,
        Lorg/telegram/ui/ThemeActivity$InnerAccentView;
    }
.end annotation


# instance fields
.field private appIconHeaderRow:I

.field private appIconSelectorRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private appIconShadowRow:I

.field private automaticBrightnessInfoRow:I

.field private automaticBrightnessRow:I

.field private automaticHeaderRow:I

.field private backgroundRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private bluetoothScoRow:I

.field private browseThemesRow:I

.field private browserRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private bubbleRadiusHeaderRow:I

.field private bubbleRadiusInfoRow:I

.field private bubbleRadiusRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private changeUserColor:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private chatBlurRow:I

.field private chatListHeaderRow:I

.field private chatListInfoRow:I

.field private chatListRow:I

.field private contactsReimportRow:I

.field private contactsSortRow:I

.field private createNewThemeRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private currentType:I

.field private darkThemes:Ljava/util/ArrayList;

.field private defaultThemes:Ljava/util/ArrayList;

.field private directShareRow:I

.field private distanceRow:I

.field private editThemeRow:I

.field private enableAnimationsRow:I

.field private gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

.field hasThemeAccents:Z

.field private highlightSensitiveRow:Z

.field lastIsDarkTheme:Z

.field private lastShadowRow:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private liteModeInfoRow:I

.field private liteModeRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private mediaSoundHeaderRow:I

.field private mediaSoundSectionRow:I

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

.field private newThemeInfoRow:I

.field private nextMediaTapRow:I

.field private nightAutomaticRow:I

.field private nightDisabledRow:I

.field private nightScheduledRow:I

.field private nightSystemDefaultRow:I

.field private nightThemeRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private nightTypeInfoRow:I

.field private otherHeaderRow:I

.field private otherSectionRow:I

.field private pauseOnMediaRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private pauseOnRecordRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private preferedHeaderRow:I

.field private previousByLocation:Z

.field private previousUpdatedType:I

.field private raiseToListenRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private raiseToSpeakRow:I

.field private rowCount:I

.field private saveToGalleryOption1Row:I

.field private saveToGalleryOption2Row:I

.field private saveToGallerySectionRow:I

.field private scheduleFromRow:I

.field private scheduleFromToInfoRow:I

.field private scheduleHeaderRow:I

.field private scheduleLocationInfoRow:I

.field private scheduleLocationRow:I

.field private scheduleToRow:I

.field private scheduleUpdateLocationRow:I

.field private searchEngineRow:I

.field private selectThemeHeaderRow:I

.field private sendByEnterRow:I

.field private sensitiveContentRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private settings2Row:I

.field private settingsRow:I

.field private sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field private sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private stickersInfoRow:I

.field private stickersRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private stickersSectionRow:I

.field private sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private swipeGestureHeaderRow:I

.field private swipeGestureInfoRow:I

.field private swipeGestureRow:I

.field private textSizeHeaderRow:I

.field private textSizeRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private themeAccentListRow:I

.field private themeHeaderRow:I

.field private themeInfoRow:I

.field private themeListRow:I

.field private themeListRow2:I

.field private themePreviewRow:I

.field private themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

.field private updateDistance:Z

.field private updateRecordViaSco:Z

.field private updateSearchEngine:Z

.field private updatingLocation:Z


# direct methods
.method public static synthetic $r8$lambda$-Kgq9_5Nx8c8tMsTcVS06ovpOmQ(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$14()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6xCzFOLYRwOPG2f28Zb0Nx0xjmE(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$6(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AWraVCUPGbfKTn69F6LcJtveDKE(Lorg/telegram/ui/ThemeActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$updateSunTime$22(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CbtDnHAhwyxtHOEorJstUdRwPBo(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/messenger/MessagesController;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Long;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1611
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void

    :cond_0
    move-object/from16 v3, p1

    .line 1614
    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v18

    if-nez v18, :cond_1

    .line 1616
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void

    .line 1620
    :cond_1
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1622
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void

    .line 1626
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v1, v3

    move/from16 v3, p2

    invoke-static/range {v3 .. v21}, Lorg/telegram/ui/bots/WebViewRequestProps;->of(IJJLjava/lang/String;Ljava/lang/String;IIJZLorg/telegram/tgnet/TLRPC$BotApp;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$User;IZZ)Lorg/telegram/ui/bots/WebViewRequestProps;

    move-result-object v3

    .line 1627
    new-instance v4, Lorg/telegram/ui/bots/BotWebViewSheet;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/bots/BotWebViewSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1628
    new-instance v5, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda14;

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v5, v6, v4, v7}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda14;-><init>(ILorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->setOnVerifiedAge(Lorg/telegram/messenger/Utilities$Callback4;)V

    const/4 v5, 0x1

    .line 1641
    invoke-virtual {v4, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->setDefaultFullsize(Z)V

    .line 1642
    invoke-virtual {v4, v2}, Lorg/telegram/ui/bots/BotWebViewSheet;->setNeedsContext(Z)V

    .line 1643
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/bots/BotWebViewSheet;->setParentActivity(Landroid/app/Activity;)V

    .line 1644
    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/bots/BotWebViewSheet;->requestWebView(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/bots/WebViewRequestProps;)V

    .line 1645
    invoke-virtual {v4}, Lorg/telegram/ui/bots/BotWebViewSheet;->show()V

    .line 1647
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 1648
    aget-object v0, p7, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$E6HqbLONEuxB220ELwLeVeSEavg(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$13(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$PHXx51spWHd5j-Air8eh4R4ieak(Lorg/telegram/ui/ThemeActivity;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$10(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RDYnJnFitcwfnyCjEBWrLOKA-qw(ILorg/telegram/ui/bots/BotWebViewSheet;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    if-eqz p4, :cond_1

    .line 1629
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    int-to-double p5, p0

    cmpl-double p0, p3, p5

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1631
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/bots/BotWebViewSheet;->dismiss()V

    .line 1632
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1634
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1636
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget p2, Lorg/telegram/messenger/R$string;->AgeVerificationPassedTitle:I

    .line 1637
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1638
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method public static synthetic $r8$lambda$T5OFxL7Z5J0q0QRT0aEa9deNX5Y(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMrq7uOpSA_dP3Fw6PdT2JJeFIA(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I
    .locals 0

    .line 629
    iget p0, p0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->sortIndex:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TTkE90dXmVq61KxqIqb429nH58M(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$updateSunTime$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$UnJHKCudOq6YyLodlI2_0EGVUds(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createNewTheme$16(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WyYr4iW3AE3-vZwuyZlSiOH2emE(Lorg/telegram/ui/ThemeActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XlJxHor5V-0Uy8jknfANjs6yLaU(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/messenger/MessagesController;Ljava/lang/String;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Boolean;)V
    .locals 10

    .line 1604
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1605
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void

    .line 1609
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getUserNameResolver()Lorg/telegram/messenger/UserNameResolver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda13;

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/messenger/MessagesController;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/UserNameResolver;->resolve(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Consumer;)Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic $r8$lambda$XtWUm7x3837pWOxzWoH-3FqSe30(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$7(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZAcMtcfW3iKFkSGlrBZ1Q4n6gGQ(Lorg/telegram/ui/ThemeActivity;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$9(Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ztl4Fwxp0664fxoajR0BsGe0Jg8(Lorg/telegram/ui/ThemeActivity;ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$12(ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$b9Y8bCXHenBG2d5WuVwpv8VA6aI(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$3(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dJrupWSEOjssQZh1tvtJuEhJrSU(Lorg/telegram/ui/ThemeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$didReceivedNotification$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dPuQfH-oO_GXT2diBk0hGdxy-Wo(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$kVEExf-0iogEn2Tl1X5PM8dmxqE(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/tgnet/tl/TL_account$contentSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$2(Lorg/telegram/tgnet/tl/TL_account$contentSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$umMO89BLLiOS2o0-hnirbP_KoG8(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->lambda$getThemeDescriptions$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$uozHz-ELxr3wVaxAYbSzijnvu_w(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/messenger/MessagesController;Ljava/lang/String;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 12

    .line 1596
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1597
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 1599
    sget v0, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget v1, Lorg/telegram/messenger/R$string;->AgeVerificationNeedCameraPermission:I

    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda11;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/messenger/MessagesController;Ljava/lang/String;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    const-string p0, "android.permission.CAMERA"

    invoke-static {v0, v1, p0, v2}, Lorg/telegram/ui/Components/PermissionRequest;->ensurePermission(IILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZj-H2-2FR-YsVKk4Y2VuF63rWQ(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->lambda$updateSunTime$21(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xZEvEPfpTpbXjX-SX8Dc2N2Zp8s(Lorg/telegram/ui/ThemeActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$11(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-uHzyAPALDyqL4As_prkjFlpGQ(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity;->lambda$createView$4(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetappIconHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetappIconSelectorRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetappIconShadowRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautomaticBrightnessInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautomaticBrightnessRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautomaticHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbluetoothScoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbrowseThemesRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->browseThemesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbrowserRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->browserRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbubbleRadiusHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbubbleRadiusInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbubbleRadiusRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchangeUserColor(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatBlurRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsReimportRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsSortRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateNewThemeRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdarkThemes(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultThemes(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdirectShareRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdistanceRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteditThemeRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenableAnimationsRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastShadowRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetliteModeInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetliteModeRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaSoundHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaSoundSectionRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->mediaSoundSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmenuItem(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnewThemeInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnextMediaTapRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnightAutomaticRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnightDisabledRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnightScheduledRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnightSystemDefaultRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnightThemeRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnightTypeInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetotherHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->otherHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetotherSectionRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->otherSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpauseOnMediaRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpauseOnRecordRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreferedHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetraiseToListenRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetraiseToSpeakRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGalleryOption1Row(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption1Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGalleryOption2Row(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsaveToGallerySectionRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->saveToGallerySectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleFromRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleFromToInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleLocationInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleLocationRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleToRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscheduleUpdateLocationRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchEngineRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->searchEngineRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectThemeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendByEnterRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsensitiveContentRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsettings2Row(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingsRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickersSectionRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->stickersSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeGestureHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeGestureInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeGestureRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextSizeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextSizeRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeAccentListRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeInfoRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeListRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeListRow2(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemePreviewRow(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateDistance(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateRecordViaSco(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateSearchEngine(Lorg/telegram/ui/ThemeActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ThemeActivity;->updateSearchEngine:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateDistance(Lorg/telegram/ui/ThemeActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputupdateRecordViaSco(Lorg/telegram/ui/ThemeActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateNewTheme(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->createNewTheme()V

    return-void
.end method

.method static bridge synthetic -$$Nest$meditTheme(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->editTheme()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLocationSunString(Lorg/telegram/ui/ThemeActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->getLocationSunString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetBubbleRadius(Lorg/telegram/ui/ThemeActivity;IZ)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->setBubbleRadius(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetFontSize(Lorg/telegram/ui/ThemeActivity;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->setFontSize(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopLocationUpdate(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->stopLocationUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/ThemeActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSunTime(Lorg/telegram/ui/ThemeActivity;Landroid/location/Location;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 457
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;-><init>(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ThemeActivity-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    .line 252
    new-instance v0, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ThemeActivity$GpsLocationListener;-><init>(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/ThemeActivity-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    .line 458
    iput p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 p1, 0x1

    .line 459
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemeActivity;)I
    .locals 0

    .line 124
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method private createNewTheme()V
    .locals 3

    .line 1528
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1531
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1532
    const-string v1, "NewTheme"

    sget v2, Lorg/telegram/messenger/R$string;->NewTheme:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1533
    const-string v1, "CreateNewThemeAlert"

    sget v2, Lorg/telegram/messenger/R$string;->CreateNewThemeAlert:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1534
    const-string v1, "Cancel"

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1535
    const-string v1, "CreateTheme"

    sget v2, Lorg/telegram/messenger/R$string;->CreateTheme:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1536
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private editTheme()V
    .locals 6

    .line 1522
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v1

    const/4 v0, 0x0

    .line 1523
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    move v3, v0

    .line 1524
    new-instance v0, Lorg/telegram/ui/ThemePreviewActivity;

    iget v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v4, 0x64

    const/4 v5, 0x1

    if-lt v2, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget v2, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private getLocationSunString()Ljava/lang/String;
    .locals 8

    .line 1809
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunriseTime:I

    div-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    sub-int/2addr v0, v2

    .line 1811
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "%02d:%02d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1812
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunsetTime:I

    div-int/lit8 v6, v5, 0x3c

    mul-int/lit8 v7, v6, 0x3c

    sub-int/2addr v5, v7

    .line 1814
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v5, v7, v1

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    sget v5, Lorg/telegram/messenger/R$string;->AutoNightUpdateLocationInfo:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object v3, v2, v1

    const-string v0, "AutoNightUpdateLocationInfo"

    invoke-static {v0, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createNewTheme$16(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1535
    invoke-static {p0, p1, p2, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createThemeCreateDialog(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    return-void
.end method

.method private synthetic lambda$createView$10(Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/lang/Runnable;)V

    .line 1336
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    .line 1328
    invoke-static {p2, p3, v0, p1}, Lorg/telegram/ui/ThemeActivity;->verifyAge(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$createView$11(ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 1360
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1361
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 1362
    const-string v0, "sortContactsBy"

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1363
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1364
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz p2, :cond_0

    .line 1365
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$12(ILorg/telegram/ui/Cells/TextSettingsCell;Landroid/widget/TimePicker;II)V
    .locals 5

    mul-int/lit8 p3, p4, 0x3c

    add-int/2addr p3, p5

    .line 1468
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "%02d:%02d"

    if-ne p1, v0, :cond_0

    .line 1469
    sput p3, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    .line 1470
    const-string p1, "AutoNightFrom"

    sget p3, Lorg/telegram/messenger/R$string;->AutoNightFrom:I

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array p5, v2, [Ljava/lang/Object;

    aput-object p3, p5, v1

    aput-object p4, p5, v3

    invoke-static {v4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 1472
    :cond_0
    sput p3, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    .line 1473
    const-string p1, "AutoNightTo"

    sget p3, Lorg/telegram/messenger/R$string;->AutoNightTo:I

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-array p5, v2, [Ljava/lang/Object;

    aput-object p3, p5, v1

    aput-object p4, p5, v3

    invoke-static {v4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1101
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 1102
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1103
    const-string v3, "view_animations"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    xor-int/lit8 v6, v4, 0x1

    .line 1105
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    xor-int/lit8 v3, v4, 0x1

    .line 1106
    invoke-static {v3}, Lorg/telegram/messenger/SharedConfig;->setAnimationsEnabled(Z)V

    .line 1107
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1108
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1109
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1111
    :cond_0
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    .line 1112
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/WallpapersListActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1113
    :cond_1
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->browseThemesRow:I

    const/4 v7, 0x3

    if-ne v3, v4, :cond_2

    .line 1114
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v7}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1115
    :cond_2
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    if-ne v3, v4, :cond_3

    .line 1116
    new-instance v1, Lorg/telegram/ui/PeerColorActivity;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/PeerColorActivity;-><init>(J)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/PeerColorActivity;->setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/PeerColorActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1117
    :cond_3
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    if-ne v3, v4, :cond_4

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1119
    const-string v3, "send_by_enter"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1120
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    xor-int/lit8 v6, v4, 0x1

    .line 1121
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1122
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1123
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1124
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    xor-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1126
    :cond_4
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v3, v4, :cond_5

    .line 1127
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRaiseToSpeak()V

    .line 1128
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1129
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1131
    :cond_5
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    if-ne v3, v4, :cond_6

    .line 1132
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleNextMediaTap()V

    .line 1133
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1134
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1136
    :cond_6
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    if-ne v3, v4, :cond_a

    .line 1137
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleRaiseToListen()V

    .line 1138
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_7

    .line 1139
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1141
    :cond_7
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-nez v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    move v1, v6

    .line 1142
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1143
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1144
    instance-of v3, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v3, v4, :cond_8

    .line 1145
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    :cond_9
    invoke-direct {v0, v6}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void

    .line 1150
    :cond_a
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    if-ne v3, v4, :cond_b

    .line 1151
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnRecord()V

    .line 1152
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1153
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1155
    :cond_b
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    if-ne v3, v4, :cond_c

    .line 1156
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->togglePauseMusicOnMedia()V

    .line 1157
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1158
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1160
    :cond_c
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    const-string v8, "Cancel"

    const/4 v9, 0x2

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v11, 0x0

    if-ne v3, v4, :cond_10

    .line 1161
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_d

    goto/16 :goto_a

    .line 1164
    :cond_d
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1166
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1167
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1169
    const-string v1, "DistanceUnitsAutomatic"

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnitsAutomatic:I

    .line 1170
    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "DistanceUnitsKilometers"

    sget v12, Lorg/telegram/messenger/R$string;->DistanceUnitsKilometers:I

    .line 1171
    invoke-static {v4, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v12, "DistanceUnitsMiles"

    sget v13, Lorg/telegram/messenger/R$string;->DistanceUnitsMiles:I

    .line 1172
    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/CharSequence;

    aput-object v1, v13, v6

    aput-object v4, v13, v5

    aput-object v12, v13, v9

    move v1, v6

    :goto_1
    if-ge v1, v7, :cond_f

    .line 1177
    new-instance v4, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v4, v12}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1178
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v4, v12, v6, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1179
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v4, v12, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1180
    aget-object v12, v13, v1

    sget v14, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    if-ne v1, v14, :cond_e

    move v14, v5

    goto :goto_2

    :cond_e
    move v14, v6

    :goto_2
    invoke-virtual {v4, v12, v14}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1181
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-static {v12, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1182
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1183
    new-instance v12, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v12, v0, v1, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1194
    :cond_f
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "DistanceUnitsTitle"

    sget v5, Lorg/telegram/messenger/R$string;->DistanceUnitsTitle:I

    .line 1195
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1196
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1197
    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1198
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1199
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1200
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1201
    :cond_10
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->searchEngineRow:I

    if-ne v3, v4, :cond_14

    .line 1202
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_11

    goto/16 :goto_a

    .line 1205
    :cond_11
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1207
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1208
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1210
    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getSearchEngines()Ljava/util/ArrayList;

    move-result-object v1

    .line 1211
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v7, v4, [Ljava/lang/CharSequence;

    move v12, v6

    :goto_3
    if-ge v12, v4, :cond_13

    .line 1214
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/web/SearchEngine;

    .line 1215
    iget-object v13, v13, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    aput-object v13, v7, v12

    .line 1218
    new-instance v13, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1219
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v13, v14, v6, v15, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1220
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1221
    aget-object v14, v7, v12

    sget v15, Lorg/telegram/messenger/SharedConfig;->searchEngineType:I

    if-ne v12, v15, :cond_12

    move v15, v5

    goto :goto_4

    :cond_12
    move v15, v6

    :goto_4
    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1222
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-static {v14, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1224
    new-instance v14, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v14, v0, v12, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ThemeActivity;ILjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1235
    :cond_13
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->SearchEngine:I

    .line 1236
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1237
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1238
    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1239
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1240
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1241
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1242
    :cond_14
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    if-ne v3, v4, :cond_16

    .line 1243
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_15

    goto/16 :goto_a

    .line 1246
    :cond_15
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1248
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1249
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1251
    new-instance v1, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1252
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v1, v4, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1253
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v1, v7, v13}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1254
    sget v7, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesBuiltIn:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-boolean v13, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    xor-int/2addr v5, v13

    invoke-virtual {v1, v7, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 1255
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1256
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1257
    new-instance v7, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1269
    new-instance v1, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 1270
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v1, v7, v6, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1271
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 1272
    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesScoIfConnected:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesScoHint:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    invoke-virtual {v1, v4, v6, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndText2AndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1273
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1274
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1275
    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessages:I

    .line 1304
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1305
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1306
    invoke-static {v8, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1307
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1308
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1309
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1310
    :cond_16
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    if-ne v3, v4, :cond_17

    .line 1311
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleDirectShare()V

    .line 1312
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1313
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1315
    :cond_17
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    if-ne v3, v4, :cond_19

    .line 1316
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->showSensitiveContent()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1317
    new-instance v3, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/view/View;)V

    .line 1323
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->ConfirmSensitiveContentTitle:I

    .line 1325
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ConfirmSensitiveContentText:I

    .line 1326
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Confirm:I

    .line 1327
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v4, v0, v3}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1338
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 1339
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 1323
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1342
    :cond_18
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->setContentSettings(Z)V

    .line 1343
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1344
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->showSensitiveContent()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1347
    :cond_19
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    if-ne v3, v1, :cond_1a

    goto/16 :goto_a

    .line 1349
    :cond_1a
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    if-ne v3, v1, :cond_1c

    .line 1350
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1b

    goto/16 :goto_a

    .line 1353
    :cond_1b
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1354
    const-string v2, "SortBy"

    sget v4, Lorg/telegram/messenger/R$string;->SortBy:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1355
    const-string v2, "Default"

    sget v4, Lorg/telegram/messenger/R$string;->Default:I

    .line 1356
    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SortFirstName"

    sget v10, Lorg/telegram/messenger/R$string;->SortFirstName:I

    .line 1357
    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v10, "SortLastName"

    sget v12, Lorg/telegram/messenger/R$string;->SortLastName:I

    .line 1358
    invoke-static {v10, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v2, v7, v6

    aput-object v4, v7, v5

    aput-object v10, v7, v9

    new-instance v2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ThemeActivity;I)V

    .line 1355
    invoke-virtual {v1, v7, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1368
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1369
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1370
    :cond_1c
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    if-ne v3, v1, :cond_1d

    .line 1371
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleChatBlur()V

    .line 1372
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_3d

    .line 1373
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 1375
    :cond_1d
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    const/high16 v4, 0x42980000    # 76.0f

    if-ne v3, v1, :cond_27

    .line 1376
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1e

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p4, v1

    if-lez v1, :cond_1f

    :cond_1e
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_26

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_26

    .line 1377
    :cond_1f
    move-object v10, v2

    check-cast v10, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1378
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_20

    .line 1379
    sput v9, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1380
    invoke-virtual {v10, v5}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    goto :goto_5

    .line 1382
    :cond_20
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1383
    invoke-virtual {v10, v6}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 1385
    :goto_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 1386
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions(Z)V

    .line 1387
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v1, :cond_21

    move v14, v5

    goto :goto_6

    :cond_21
    move v14, v6

    :goto_6
    if-eqz v14, :cond_22

    .line 1388
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightThemeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_22
    const-string v1, "AutoNightThemeOff"

    sget v2, Lorg/telegram/messenger/R$string;->AutoNightThemeOff:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    if-eqz v14, :cond_25

    .line 1391
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v2, v5, :cond_23

    .line 1392
    const-string v2, "AutoNightScheduled"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightScheduled:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_23
    if-ne v2, v7, :cond_24

    .line 1394
    const-string v2, "AutoNightSystemDefault"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightSystemDefault:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 1396
    :cond_24
    const-string v2, "AutoNightAdaptive"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightAdaptive:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1398
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_25
    move-object v12, v1

    .line 1400
    const-string v1, "AutoNightTheme"

    sget v2, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget v13, Lorg/telegram/messenger/R$drawable;->menu_night_mode_24:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v17}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V

    return-void

    .line 1402
    :cond_26
    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v1, v5}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1404
    :cond_27
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->browserRow:I

    if-ne v3, v1, :cond_2b

    .line 1405
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_28

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p4, v1

    if-lez v1, :cond_29

    :cond_28
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_2a

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_2a

    .line 1406
    :cond_29
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1407
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleInappBrowser()V

    .line 1408
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    return-void

    .line 1410
    :cond_2a
    new-instance v1, Lorg/telegram/ui/web/WebBrowserSettings;

    invoke-direct {v1, v11}, Lorg/telegram/ui/web/WebBrowserSettings;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1412
    :cond_2b
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    if-ne v3, v1, :cond_2d

    .line 1413
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v1, :cond_2c

    goto/16 :goto_a

    .line 1416
    :cond_2c
    sput v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1417
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1418
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    return-void

    .line 1419
    :cond_2d
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    if-ne v3, v1, :cond_30

    .line 1420
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v5, :cond_2e

    goto/16 :goto_a

    .line 1423
    :cond_2e
    sput v5, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1424
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_2f

    .line 1425
    invoke-direct {v0, v11, v5}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    .line 1427
    :cond_2f
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1428
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    return-void

    .line 1429
    :cond_30
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    if-ne v3, v1, :cond_32

    .line 1430
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v9, :cond_31

    goto/16 :goto_a

    .line 1433
    :cond_31
    sput v9, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1434
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1435
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    return-void

    .line 1436
    :cond_32
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    if-ne v3, v1, :cond_34

    .line 1437
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v1, v7, :cond_33

    goto :goto_a

    .line 1440
    :cond_33
    sput v7, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    .line 1441
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1442
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    return-void

    .line 1443
    :cond_34
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    if-ne v3, v1, :cond_36

    .line 1444
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    xor-int/2addr v1, v5

    sput-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    .line 1445
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1446
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1447
    invoke-direct {v0, v5}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1448
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v1, :cond_35

    .line 1449
    invoke-direct {v0, v11, v5}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    .line 1451
    :cond_35
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    return-void

    .line 1452
    :cond_36
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    if-eq v3, v1, :cond_3c

    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    if-ne v3, v1, :cond_37

    goto :goto_9

    .line 1477
    :cond_37
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    if-ne v3, v1, :cond_38

    .line 1478
    invoke-direct {v0, v11, v5}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    return-void

    .line 1479
    :cond_38
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    if-ne v3, v1, :cond_39

    .line 1480
    invoke-direct {v0}, Lorg/telegram/ui/ThemeActivity;->createNewTheme()V

    return-void

    .line 1481
    :cond_39
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-ne v3, v1, :cond_3a

    .line 1482
    invoke-direct {v0}, Lorg/telegram/ui/ThemeActivity;->editTheme()V

    return-void

    .line 1483
    :cond_3a
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    if-ne v3, v1, :cond_3b

    .line 1484
    new-instance v1, Lorg/telegram/ui/StickersActivity;

    invoke-direct {v1, v6, v11}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1485
    :cond_3b
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    if-ne v3, v1, :cond_3d

    .line 1486
    new-instance v1, Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1453
    :cond_3c
    :goto_9
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3e

    :cond_3d
    :goto_a
    return-void

    .line 1458
    :cond_3e
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    if-ne v3, v1, :cond_3f

    .line 1459
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    div-int/lit8 v4, v1, 0x3c

    :goto_b
    mul-int/lit8 v5, v4, 0x3c

    sub-int/2addr v1, v5

    move v9, v1

    move v8, v4

    goto :goto_c

    .line 1462
    :cond_3f
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    div-int/lit8 v4, v1, 0x3c

    goto :goto_b

    .line 1465
    :goto_c
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1466
    new-instance v5, Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v7, v0, v3, v1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ThemeActivity;ILorg/telegram/ui/Cells/TextSettingsCell;)V

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 1476
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$14()I
    .locals 1

    .line 1503
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    return v0
.end method

.method private synthetic lambda$createView$15()V
    .locals 2

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->highlightRow(Lorg/telegram/ui/Components/RecyclerListView$IntReturnCallback;)V

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/tgnet/tl/TL_account$contentSettings;)V
    .locals 5

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v0, :cond_3

    .line 965
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_account$contentSettings;->sensitive_can_change:Z

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-ne v4, v2, :cond_2

    .line 966
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 968
    :cond_2
    invoke-direct {p0, v3}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createView$3(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    .line 1184
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setDistanceSystemType(I)V

    const/4 p1, 0x1

    .line 1185
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateDistance:Z

    .line 1186
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1188
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1190
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$4(ILjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    .line 1225
    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setSearchEngineType(I)V

    const/4 p1, 0x1

    .line 1226
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->updateSearchEngine:Z

    .line 1227
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p3, p0, Lorg/telegram/ui/ThemeActivity;->searchEngineRow:I

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1229
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->searchEngineRow:I

    invoke-virtual {p3, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1231
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    .line 1258
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1259
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p2, 0x1

    .line 1260
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1261
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1263
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1265
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$6(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V
    .locals 1

    .line 1277
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1278
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1279
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 p2, 0x1

    .line 1280
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1281
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1283
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1284
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1286
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$7(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 3

    .line 1276
    sget p2, Lorg/telegram/messenger/R$raw;->permission_request_microphone:I

    sget v0, Lorg/telegram/messenger/R$string;->PermissionNoBluetoothWithHint:I

    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p2, v0, v2, v1}, Lorg/telegram/ui/Components/PermissionRequest;->ensurePermission(IILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    const/4 p2, 0x1

    .line 1292
    sput-boolean p2, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    .line 1293
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 1294
    iput-boolean p2, p0, Lorg/telegram/ui/ThemeActivity;->updateRecordViaSco:Z

    .line 1295
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1297
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1299
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 2

    .line 1318
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->setContentSettings(Z)V

    .line 1319
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_0

    .line 1320
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->showSensitiveContent()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$9(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 2

    .line 1329
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1330
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1332
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->AgeVerificationFailedTitle:I

    .line 1333
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AgeVerificationFailedText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1334
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$didReceivedNotification$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 914
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 915
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 916
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$24()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2887
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2888
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2889
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_0

    .line 2890
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 2891
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v3, :cond_1

    .line 2892
    check-cast v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 2895
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 2896
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getCachedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2897
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_3

    .line 2898
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 2899
    :cond_3
    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v3, :cond_4

    .line 2900
    check-cast v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    .line 2903
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2904
    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getHiddenChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2905
    instance-of v3, v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v3, :cond_6

    .line 2906
    check-cast v2, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 2907
    :cond_6
    instance-of v3, v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v3, :cond_7

    .line 2908
    check-cast v2, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2911
    :cond_8
    :goto_6
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 2912
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getAttachedScrapChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2913
    instance-of v2, v1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    if-eqz v2, :cond_9

    .line 2914
    check-cast v1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_7

    .line 2915
    :cond_9
    instance-of v2, v1, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v2, :cond_a

    .line 2916
    check-cast v1, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-virtual {v1}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->updateColors()V

    :cond_a
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method private synthetic lambda$updateSunTime$21(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1703
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1707
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateSunTime$22(Ljava/lang/String;)V
    .locals 3

    .line 1761
    sput-object p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1763
    sget-wide v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sget-wide v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "(%.06f, %.06f)"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    .line 1765
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    .line 1766
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_1

    .line 1767
    iget v1, p0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_1

    .line 1768
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v1, :cond_1

    .line 1769
    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "AutoNightUpdateLocation"

    sget v2, Lorg/telegram/messenger/R$string;->AutoNightUpdateLocation:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateSunTime$23()V
    .locals 7

    const/4 v0, 0x0

    .line 1749
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 1750
    sget-wide v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    sget-wide v4, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    .line 1751
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 1752
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    :catch_0
    :cond_0
    new-instance v1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ThemeActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBubbleRadius(IZ)Z
    .locals 3

    .line 463
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    .line 464
    sput p1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    .line 465
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 466
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 467
    const-string v0, "bubbleRadius"

    sget v2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 471
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    if-eqz v0, :cond_1

    .line 472
    check-cast p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    .line 473
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->-$$Nest$fgetmessagesCell(Lorg/telegram/ui/ThemeActivity$TextSizeCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    .line 474
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 475
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 476
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->invalidate()V

    .line 481
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 482
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    if-eqz v0, :cond_3

    .line 483
    check-cast p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    if-eqz p2, :cond_2

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    .line 487
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;->invalidate()V

    .line 491
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method private setFontSize(I)Z
    .locals 3

    .line 498
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    .line 499
    sput p1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    .line 500
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->fontSizeIsDefault:Z

    .line 501
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v0, "mainconfig"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    .line 505
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 506
    const-string v0, "fons_size"

    sget v2, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->createCommonMessageResources()V

    .line 511
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 512
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    if-eqz v0, :cond_1

    .line 513
    check-cast p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    .line 514
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;->-$$Nest$fgetmessagesCell(Lorg/telegram/ui/ThemeActivity$TextSizeCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object p1

    .line 515
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 516
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->resetLayout()V

    .line 517
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private startLocationUpdate()V
    .locals 7

    .line 1784
    iget-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1787
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    .line 1788
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    .line 1790
    :try_start_0
    const-string v2, "gps"

    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1792
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1795
    :goto_0
    :try_start_1
    const-string v2, "network"

    iget-object v6, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1797
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private stopLocationUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 1802
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->updatingLocation:Z

    .line 1803
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1804
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->gpsLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1805
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->networkLocationListener:Lorg/telegram/ui/ThemeActivity$GpsLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method private updateMenuItem()V
    .locals 5

    .line 1660
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    return-void

    .line 1663
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1664
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    .line 1665
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v4, 0x64

    if-lt v0, v4, :cond_1

    .line 1666
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_0

    .line 1669
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1672
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    .line 1673
    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    .line 1674
    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/4 v4, 0x4

    if-ne v3, v0, :cond_4

    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_4

    iget-boolean v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->firstAccentIsDefault:Z

    if-eqz v0, :cond_4

    iget v0, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_3

    iget-object v0, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    if-eqz v0, :cond_3

    const-string v1, "d"

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1677
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    return-void

    .line 1675
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 527
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    .line 529
    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 530
    iget v3, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 531
    iget v4, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    const/4 v5, 0x0

    .line 533
    iput v5, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    const/4 v6, -0x1

    .line 534
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->contactsReimportRow:I

    .line 535
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->contactsSortRow:I

    .line 536
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    .line 537
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    .line 538
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    .line 539
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    .line 540
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    .line 541
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    .line 542
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    .line 543
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    .line 544
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    .line 545
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    .line 546
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->browserRow:I

    .line 547
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    .line 548
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    .line 549
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    .line 550
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    .line 551
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 552
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    .line 553
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->browseThemesRow:I

    .line 554
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 555
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    .line 556
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    .line 557
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    .line 558
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    .line 559
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    .line 560
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    .line 561
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    .line 562
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    .line 563
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    .line 564
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    .line 565
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    .line 566
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    .line 567
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    .line 568
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->chatBlurRow:I

    .line 569
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    .line 570
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    .line 571
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    .line 572
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->stickersInfoRow:I

    .line 573
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->stickersSectionRow:I

    .line 574
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->mediaSoundHeaderRow:I

    .line 575
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->otherHeaderRow:I

    .line 576
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->mediaSoundSectionRow:I

    .line 577
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->otherSectionRow:I

    .line 578
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    .line 579
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->liteModeInfoRow:I

    .line 581
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    .line 582
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    .line 583
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    .line 584
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->settingsRow:I

    .line 585
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    .line 586
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    .line 587
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->enableAnimationsRow:I

    .line 588
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    .line 589
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    .line 590
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    .line 591
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    .line 592
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption1Row:I

    .line 593
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->saveToGalleryOption2Row:I

    .line 594
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->saveToGallerySectionRow:I

    .line 595
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    .line 596
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->searchEngineRow:I

    .line 597
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    .line 598
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->settings2Row:I

    .line 600
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    .line 601
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    .line 602
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    .line 604
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    .line 605
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    .line 606
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 607
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    .line 609
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    .line 610
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    .line 611
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    .line 612
    iput v6, v0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    .line 614
    iget-object v7, v0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 615
    iget-object v7, v0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 616
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v7, :cond_3

    .line 617
    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->themes:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 618
    iget v11, v0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-eqz v11, :cond_0

    if-eq v11, v9, :cond_0

    .line 619
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isLight()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v9, :cond_0

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$TL_theme;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v9, :cond_0

    goto :goto_1

    .line 623
    :cond_0
    iget-object v9, v10, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 624
    iget-object v9, v0, Lorg/telegram/ui/ThemeActivity;->darkThemes:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 626
    :cond_1
    iget-object v9, v0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 629
    :cond_3
    iget-object v7, v0, Lorg/telegram/ui/ThemeActivity;->defaultThemes:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 631
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v8, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v7, v9, :cond_7

    .line 632
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->selectThemeHeaderRow:I

    add-int/lit8 v14, v7, 0x2

    .line 633
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    add-int/lit8 v13, v7, 0x3

    .line 634
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    add-int/lit8 v14, v7, 0x4

    .line 636
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->themePreviewRow:I

    add-int/lit8 v13, v7, 0x5

    .line 637
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    add-int/lit8 v7, v7, 0x6

    .line 638
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 639
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->hasAccentColors()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    .line 640
    iget-object v13, v0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v13, :cond_4

    .line 641
    invoke-virtual {v13, v7}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 643
    :cond_4
    iget-boolean v7, v0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    if-eqz v7, :cond_5

    .line 644
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 646
    :cond_5
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    .line 648
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    .line 649
    invoke-virtual {v7, v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v13

    .line 650
    iget-object v7, v7, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccents:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v13, :cond_6

    iget v7, v13, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v13, 0x64

    if-lt v7, v13, :cond_6

    .line 651
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    .line 653
    :cond_6
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->createNewThemeRow:I

    add-int/2addr v7, v11

    .line 654
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->lastShadowRow:I

    goto/16 :goto_3

    :cond_7
    if-nez v7, :cond_a

    .line 656
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->textSizeHeaderRow:I

    add-int/lit8 v14, v7, 0x2

    .line 657
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->textSizeRow:I

    add-int/lit8 v13, v7, 0x3

    .line 658
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->backgroundRow:I

    add-int/lit8 v14, v7, 0x4

    .line 659
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->changeUserColor:I

    add-int/lit8 v13, v7, 0x5

    .line 660
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->newThemeInfoRow:I

    add-int/lit8 v14, v7, 0x6

    .line 661
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->themeHeaderRow:I

    add-int/lit8 v13, v7, 0x7

    .line 663
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    add-int/lit8 v14, v7, 0x8

    .line 664
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->browseThemesRow:I

    add-int/lit8 v13, v7, 0x9

    .line 665
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    add-int/lit8 v14, v7, 0xa

    .line 667
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusHeaderRow:I

    add-int/lit8 v13, v7, 0xb

    .line 668
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusRow:I

    add-int/lit8 v14, v7, 0xc

    .line 669
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->bubbleRadiusInfoRow:I

    add-int/lit8 v13, v7, 0xd

    .line 671
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->chatListHeaderRow:I

    add-int/lit8 v14, v7, 0xe

    .line 672
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->chatListRow:I

    add-int/lit8 v13, v7, 0xf

    .line 673
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->chatListInfoRow:I

    add-int/lit8 v14, v7, 0x10

    .line 675
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->appIconHeaderRow:I

    add-int/lit8 v13, v7, 0x11

    .line 676
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->appIconSelectorRow:I

    add-int/lit8 v14, v7, 0x12

    .line 677
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->appIconShadowRow:I

    add-int/lit8 v13, v7, 0x13

    .line 679
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->swipeGestureHeaderRow:I

    add-int/lit8 v14, v7, 0x14

    .line 680
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->swipeGestureRow:I

    add-int/lit8 v13, v7, 0x15

    .line 681
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->swipeGestureInfoRow:I

    add-int/lit8 v14, v7, 0x16

    .line 683
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->nightThemeRow:I

    add-int/lit8 v13, v7, 0x17

    .line 684
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->browserRow:I

    add-int/lit8 v14, v7, 0x18

    .line 685
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->liteModeRow:I

    add-int/lit8 v13, v7, 0x19

    .line 686
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->stickersRow:I

    add-int/lit8 v14, v7, 0x1a

    .line 687
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->stickersSectionRow:I

    add-int/lit8 v13, v7, 0x1b

    .line 689
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->mediaSoundHeaderRow:I

    add-int/lit8 v14, v7, 0x1c

    .line 690
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->nextMediaTapRow:I

    add-int/lit8 v13, v7, 0x1d

    .line 691
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->raiseToListenRow:I

    .line 692
    sget-boolean v14, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    if-eqz v14, :cond_8

    add-int/lit8 v7, v7, 0x1e

    .line 693
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    .line 695
    :cond_8
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnRecordRow:I

    add-int/lit8 v14, v7, 0x2

    .line 696
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->pauseOnMediaRow:I

    add-int/lit8 v13, v7, 0x3

    .line 697
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->bluetoothScoRow:I

    add-int/lit8 v14, v7, 0x4

    .line 698
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->mediaSoundSectionRow:I

    add-int/lit8 v13, v7, 0x5

    .line 700
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->otherHeaderRow:I

    add-int/lit8 v7, v7, 0x6

    .line 701
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->directShareRow:I

    .line 702
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MessagesController;->getContentSettings()Lorg/telegram/tgnet/tl/TL_account$contentSettings;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 703
    iget-boolean v7, v7, Lorg/telegram/tgnet/tl/TL_account$contentSettings;->sensitive_can_change:Z

    if-eqz v7, :cond_9

    .line 704
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    .line 706
    :cond_9
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->sendByEnterRow:I

    add-int/lit8 v14, v7, 0x2

    .line 707
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->distanceRow:I

    add-int/2addr v7, v9

    .line 708
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->otherSectionRow:I

    goto/16 :goto_3

    .line 710
    :cond_a
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->nightDisabledRow:I

    add-int/lit8 v14, v7, 0x2

    .line 711
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->nightScheduledRow:I

    add-int/lit8 v13, v7, 0x3

    .line 712
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->nightAutomaticRow:I

    .line 713
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1d

    if-lt v14, v15, :cond_b

    add-int/2addr v7, v10

    .line 714
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->nightSystemDefaultRow:I

    .line 716
    :cond_b
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    .line 717
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v14, v12, :cond_d

    add-int/lit8 v14, v7, 0x2

    .line 718
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->scheduleHeaderRow:I

    add-int/lit8 v13, v7, 0x3

    .line 719
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationRow:I

    .line 720
    sget-boolean v14, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v14, :cond_c

    add-int/lit8 v14, v7, 0x4

    .line 721
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->scheduleUpdateLocationRow:I

    add-int/2addr v7, v8

    .line 722
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    goto :goto_2

    :cond_c
    add-int/lit8 v14, v7, 0x4

    .line 724
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromRow:I

    add-int/lit8 v13, v7, 0x5

    .line 725
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->scheduleToRow:I

    add-int/lit8 v7, v7, 0x6

    .line 726
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->scheduleFromToInfoRow:I

    goto :goto_2

    :cond_d
    if-ne v14, v11, :cond_e

    add-int/lit8 v14, v7, 0x2

    .line 729
    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->automaticHeaderRow:I

    add-int/lit8 v13, v7, 0x3

    .line 730
    iput v14, v0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessRow:I

    add-int/2addr v7, v10

    .line 731
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->automaticBrightnessInfoRow:I

    .line 733
    :cond_e
    :goto_2
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v7, :cond_11

    .line 734
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->preferedHeaderRow:I

    add-int/2addr v7, v11

    .line 735
    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->themeListRow:I

    .line 736
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->hasAccentColors()Z

    move-result v7

    iput-boolean v7, v0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    .line 737
    iget-object v13, v0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v13, :cond_f

    .line 738
    invoke-virtual {v13, v7}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 740
    :cond_f
    iget-boolean v7, v0, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    if-eqz v7, :cond_10

    .line 741
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    .line 743
    :cond_10
    iget v7, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    add-int/lit8 v13, v7, 0x1

    iput v13, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    iput v7, v0, Lorg/telegram/ui/ThemeActivity;->themeInfoRow:I

    .line 747
    :cond_11
    :goto_3
    iget-object v7, v0, Lorg/telegram/ui/ThemeActivity;->themesHorizontalListCell:Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    if-eqz v7, :cond_12

    .line 748
    iget-object v13, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->notifyDataSetChanged(I)V

    .line 751
    :cond_12
    iget-object v7, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v7, :cond_31

    .line 752
    iget v13, v0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne v13, v12, :cond_28

    iget v13, v0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eq v13, v14, :cond_28

    if-ne v13, v6, :cond_13

    goto/16 :goto_8

    .line 780
    :cond_13
    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->nightTypeInfoRow:I

    add-int/lit8 v3, v2, 0x1

    if-eq v13, v14, :cond_25

    move v2, v5

    :goto_4
    if-ge v2, v10, :cond_17

    .line 783
    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v4, :cond_16

    .line 784
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v6, v4, Lorg/telegram/ui/Cells/ThemeTypeCell;

    if-nez v6, :cond_14

    goto :goto_6

    .line 787
    :cond_14
    check-cast v4, Lorg/telegram/ui/Cells/ThemeTypeCell;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v2, v6, :cond_15

    move v6, v12

    goto :goto_5

    :cond_15
    move v6, v5

    :goto_5
    invoke-virtual {v4, v6}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setTypeChecked(Z)V

    :cond_16
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 790
    :cond_17
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v2, :cond_18

    .line 791
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sub-int/2addr v1, v3

    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_c

    :cond_18
    if-ne v2, v12, :cond_1d

    .line 793
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_19

    .line 794
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_19
    if-ne v1, v11, :cond_1b

    .line 796
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 797
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v2, :cond_1a

    move v8, v10

    :cond_1a
    invoke-virtual {v1, v3, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_1b
    if-ne v1, v9, :cond_31

    .line 799
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v2, :cond_1c

    move v8, v10

    :cond_1c
    invoke-virtual {v1, v3, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_1d
    if-ne v2, v11, :cond_21

    .line 802
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_1e

    .line 803
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_1e
    if-ne v1, v12, :cond_20

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v2, :cond_1f

    move v8, v10

    :cond_1f
    invoke-virtual {v1, v3, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 806
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_20
    if-ne v1, v9, :cond_31

    .line 808
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_21
    if-ne v2, v9, :cond_31

    .line 811
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-nez v1, :cond_22

    .line 812
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ThemeActivity;->rowCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_c

    :cond_22
    if-ne v1, v11, :cond_23

    .line 814
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_c

    :cond_23
    if-ne v1, v12, :cond_31

    .line 816
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v2, :cond_24

    move v8, v10

    :cond_24
    invoke-virtual {v1, v3, v8}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto/16 :goto_c

    .line 820
    :cond_25
    iget-boolean v1, v0, Lorg/telegram/ui/ThemeActivity;->previousByLocation:Z

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eq v1, v3, :cond_31

    add-int/2addr v2, v9

    if-eqz v3, :cond_26

    move v1, v9

    goto :goto_7

    :cond_26
    move v1, v11

    .line 821
    :goto_7
    invoke-virtual {v7, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 822
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz v3, :cond_27

    move v9, v11

    :cond_27
    invoke-virtual {v1, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_c

    :cond_28
    :goto_8
    if-nez p1, :cond_30

    .line 753
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    if-ne v1, v6, :cond_29

    goto :goto_b

    :cond_29
    if-ne v2, v6, :cond_2a

    .line 756
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-eq v1, v6, :cond_2a

    .line 757
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_9

    :cond_2a
    if-eq v2, v6, :cond_2b

    .line 758
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-ne v1, v6, :cond_2b

    .line 759
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-eq v3, v6, :cond_2c

    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 763
    :cond_2b
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    if-eq v1, v6, :cond_2c

    .line 764
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2c
    :goto_9
    if-ne v3, v6, :cond_2d

    .line 767
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-eq v1, v6, :cond_2d

    .line 768
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_a

    :cond_2d
    if-eq v3, v6, :cond_2e

    .line 769
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->editThemeRow:I

    if-ne v1, v6, :cond_2e

    .line 770
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_2e
    :goto_a
    if-ne v4, v6, :cond_2f

    .line 773
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-eq v1, v6, :cond_2f

    .line 774
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_c

    :cond_2f
    if-eq v4, v6, :cond_31

    .line 775
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->raiseToSpeakRow:I

    if-ne v1, v6, :cond_31

    .line 776
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_c

    .line 754
    :cond_30
    :goto_b
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 827
    :cond_31
    :goto_c
    iget v1, v0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-ne v1, v12, :cond_32

    .line 828
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ThemeActivity;->previousByLocation:Z

    .line 829
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    iput v1, v0, Lorg/telegram/ui/ThemeActivity;->previousUpdatedType:I

    .line 831
    :cond_32
    invoke-direct {v0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    return-void
.end method

.method private updateSunTime(Landroid/location/Location;Z)V
    .locals 8

    .line 1682
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1684
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1686
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1687
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 1692
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "gps"

    if-eqz v2, :cond_2

    .line 1693
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "android.hardware.location.gps"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1697
    :cond_1
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1698
    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1699
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1700
    sget v2, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    const/16 v7, 0x48

    invoke-virtual {v1, v2, v7, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1701
    const-string v2, "GpsDisabledAlertText"

    sget v6, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1702
    const-string v2, "ConnectingToProxyEnable"

    sget v6, Lorg/telegram/messenger/R$string;->ConnectingToProxyEnable:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1712
    const-string v2, "Cancel"

    sget v6, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1713
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1717
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1721
    :cond_2
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1723
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 1726
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1729
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_6

    .line 1732
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->startLocationUpdate()V

    if-nez p1, :cond_6

    goto :goto_3

    .line 1737
    :cond_6
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    .line 1738
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    sput-wide p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    .line 1739
    sget-wide p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLatitude:D

    sget-wide v0, Lorg/telegram/ui/ActionBar/Theme;->autoNightLocationLongitude:D

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/time/SunDate;->calculateSunriseSunset(DD)[I

    move-result-object p1

    .line 1740
    aget p2, p1, v4

    sput p2, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunriseTime:I

    const/4 p2, 0x1

    .line 1741
    aget p1, p1, p2

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightSunsetTime:I

    .line 1742
    sput-object v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    .line 1743
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 1744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 1745
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightLastSunCheckDay:I

    .line 1746
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1774
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->scheduleLocationInfoRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz p1, :cond_7

    .line 1775
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_7

    .line 1776
    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->getLocationSunString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    :cond_7
    sget-boolean p1, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    if-eqz p1, :cond_8

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne p1, p2, :cond_8

    .line 1779
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->checkAutoNightThemeConditions()V

    :cond_8
    :goto_3
    return-void
.end method

.method public static verifyAge(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 22

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    .line 1556
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    .line 1557
    iget-object v3, v2, Lorg/telegram/messenger/MessagesController;->verifyAgeBotUsername:Ljava/lang/String;

    .line 1558
    iget-object v0, v2, Lorg/telegram/messenger/MessagesController;->verifyAgeCountry:Ljava/lang/String;

    .line 1559
    iget v7, v2, Lorg/telegram/messenger/MessagesController;->verifyAgeMin:I

    .line 1560
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v1, v1, Lorg/telegram/messenger/AppGlobalConfig;->needAgeVideoVerification:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    invoke-virtual {v1}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1565
    :cond_0
    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v11, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x1

    .line 1566
    new-array v9, v1, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1568
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1569
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 1570
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v12, v8, v11, v4, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1571
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1572
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1573
    invoke-virtual {v10, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1575
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x42a00000    # 80.0f

    .line 1576
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v13, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v13

    invoke-static {v8, v13}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1577
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1578
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1579
    sget v13, Lorg/telegram/messenger/R$drawable;->filled_verify_age:I

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v13, 0x32

    const/16 v14, 0x11

    .line 1580
    invoke-static {v13, v13, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v15, 0x50

    const/16 v16, 0x50

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x14

    .line 1581
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v12, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v5, v8, v4, v1, v6}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/widget/TextView;

    move-result-object v1

    .line 1584
    sget v8, Lorg/telegram/messenger/R$string;->AgeVerificationTitle:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v20, 0x18

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x7

    const/16 v18, 0x18

    const/16 v19, 0x8

    .line 1586
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v12, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 1588
    invoke-static {v5, v1, v4, v11, v6}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/widget/TextView;

    move-result-object v1

    .line 1589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AgeVerificationText"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v21, 0x0

    const/16 v19, 0x0

    .line 1591
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, v5, v6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1594
    sget v0, Lorg/telegram/messenger/R$string;->AgeVerificationButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1595
    new-instance v0, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda6;

    move/from16 v4, p1

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/messenger/MessagesController;Ljava/lang/String;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/Utilities$Callback;[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x2

    const/16 v8, 0xe

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/16 v6, 0x1d

    .line 1653
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1655
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    aput-object v0, v9, v11

    .line 1656
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    return-void

    .line 1561
    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v8, p2

    invoke-interface {v8, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public checkCurrentDayNight()V
    .locals 4

    .line 2927
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2930
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2931
    iget-boolean v2, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    .line 2932
    iput-boolean v1, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    .line 2933
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 2934
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 2936
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    if-ltz v0, :cond_4

    .line 2937
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 2938
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/DefaultThemesPreviewCell;

    if-eqz v0, :cond_3

    .line 2939
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/DefaultThemesPreviewCell;

    .line 2940
    invoke-virtual {v0}, Lorg/telegram/ui/DefaultThemesPreviewCell;->updateDayNightMode()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .line 934
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 938
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 941
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 942
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "BrowseThemes"

    sget v4, Lorg/telegram/messenger/R$string;->BrowseThemes:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 943
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 944
    new-instance v3, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->sun:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lorg/telegram/messenger/R$raw;->sun:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41e00000    # 28.0f

    move v7, v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v3, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 945
    iget-boolean v4, p0, Lorg/telegram/ui/ThemeActivity;->lastIsDarkTheme:Z

    if-eqz v4, :cond_1

    .line 946
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    goto :goto_0

    .line 948
    :cond_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 950
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    const/4 v3, 0x5

    .line 951
    iget-object v4, p0, Lorg/telegram/ui/ThemeActivity;->sunDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto/16 :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 953
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "ChatSettings"

    sget v5, Lorg/telegram/messenger/R$string;->ChatSettings:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 955
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 956
    const-string v4, "AccDescrMoreOptions"

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_share:I

    const-string v5, "ShareTheme"

    sget v6, Lorg/telegram/messenger/R$string;->ShareTheme:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    const-string v5, "EditThemeColors"

    sget v6, Lorg/telegram/messenger/R$string;->EditThemeColors:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_palette:I

    const-string v4, "CreateNewThemeMenu"

    sget v5, Lorg/telegram/messenger/R$string;->CreateNewThemeMenu:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 960
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_reset:I

    const-string v4, "ThemeResetToDefaults"

    sget v5, Lorg/telegram/messenger/R$string;->ThemeResetToDefaults:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 962
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getContentSettings()Lorg/telegram/tgnet/tl/TL_account$contentSettings;

    move-result-object v0

    if-nez v0, :cond_4

    .line 963
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getContentSettings(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_1

    .line 974
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 977
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ThemeActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ThemeActivity$1;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1086
    new-instance v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    .line 1088
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1089
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1090
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1092
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1093
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 1094
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lorg/telegram/ui/ThemeActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1095
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1096
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1097
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1098
    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1489
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-nez p1, :cond_5

    .line 1490
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v3, 0x15e

    .line 1491
    invoke-virtual {p1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1492
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1493
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1494
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1498
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/ThemeActivity;->highlightSensitiveRow:Z

    if-eqz p1, :cond_6

    .line 1499
    invoke-direct {p0, v2}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    .line 1500
    iput-boolean v2, p0, Lorg/telegram/ui/ThemeActivity;->highlightSensitiveRow:Z

    .line 1501
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1502
    new-instance p1, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1507
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    .line 876
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 877
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ThemeActivity;->updateSunTime(Landroid/location/Location;Z)V

    return-void

    .line 878
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-eq p1, p2, :cond_d

    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    goto/16 :goto_3

    .line 883
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    if-ne p1, p2, :cond_2

    .line 884
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz p1, :cond_c

    iget p2, p0, Lorg/telegram/ui/ThemeActivity;->themeAccentListRow:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_c

    .line 885
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 887
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    if-ne p1, p2, :cond_3

    .line 888
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    return-void

    .line 889
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_5

    .line 890
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 891
    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 892
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-ne p1, p3, :cond_c

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-ne p2, p3, :cond_c

    .line 893
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/addtheme/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    iget-object p1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    :goto_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    goto :goto_0

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 894
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 895
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_c

    .line 896
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void

    .line 899
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    if-ne p1, p2, :cond_6

    .line 900
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 901
    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 902
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-ne p1, p3, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-ne p2, p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez p1, :cond_c

    .line 903
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void

    .line 905
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    if-ne p1, p2, :cond_8

    .line 906
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-eqz p1, :cond_7

    goto :goto_2

    .line 909
    :cond_7
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 910
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingAccent:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 911
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 912
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->sharingProgressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance p2, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    return-void

    .line 918
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    if-ne p1, p2, :cond_9

    .line 919
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    .line 920
    invoke-virtual {p0}, Lorg/telegram/ui/ThemeActivity;->checkCurrentDayNight()V

    return-void

    .line 921
    :cond_9
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    if-ne p1, p2, :cond_a

    .line 922
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->themeListRow2:I

    if-ltz p1, :cond_c

    .line 923
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 925
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contentSettingsLoaded:I

    if-eq p1, p2, :cond_b

    sget p2, Lorg/telegram/messenger/NotificationCenter;->appConfigUpdated:I

    if-ne p1, p2, :cond_c

    .line 926
    :cond_b
    iget p1, p0, Lorg/telegram/ui/ThemeActivity;->sensitiveContentRow:I

    if-ltz p1, :cond_c

    .line 927
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    :goto_2
    return-void

    .line 879
    :cond_d
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 880
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 882
    :cond_e
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->updateMenuItem()V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 82

    move-object/from16 v0, p0

    .line 2798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2800
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v11, v5, v10

    const/4 v12, 0x1

    const-class v13, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v13, v5, v12

    const/4 v14, 0x2

    const-class v15, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v15, v5, v14

    const/4 v6, 0x3

    const-class v16, Lorg/telegram/ui/Cells/BrightnessControlCell;

    aput-object v16, v5, v6

    const/4 v6, 0x4

    const-class v17, Lorg/telegram/ui/Cells/ThemeTypeCell;

    aput-object v17, v5, v6

    const/4 v6, 0x5

    const-class v18, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    aput-object v18, v5, v6

    const/4 v6, 0x6

    const-class v19, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    aput-object v19, v5, v6

    const/4 v6, 0x7

    const-class v20, Lorg/telegram/ui/Cells/ChatListCell;

    aput-object v20, v5, v6

    const/16 v6, 0x8

    const-class v21, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v21, v5, v6

    const-class v6, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    const/16 v7, 0x9

    aput-object v6, v5, v7

    const-class v6, Lorg/telegram/ui/ThemeActivity$TintRecyclerListView;

    const/16 v7, 0xa

    aput-object v6, v5, v7

    const/16 v6, 0xb

    const-class v22, Lorg/telegram/ui/Cells/TextCell;

    aput-object v22, v5, v6

    const-class v6, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    const/16 v7, 0xc

    aput-object v6, v5, v7

    const-class v6, Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    const/16 v7, 0xd

    aput-object v6, v5, v7

    const-class v6, Lorg/telegram/ui/DefaultThemesPreviewCell;

    const/16 v7, 0xe

    aput-object v6, v5, v7

    const/16 v6, 0xf

    const-class v23, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    aput-object v23, v5, v6

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, v31

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v38, 0x0

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2804
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2805
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v34, v3, v4

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v33, v2

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v10

    sget-object v36, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v34, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v10

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v36

    const/16 v39, 0x0

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v36

    sget v45, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    move/from16 v40, v45

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2819
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v36

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v3

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    move/from16 v3, v40

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2821
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v15, v6, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v36

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v22, v6, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v36

    sget v54, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    move/from16 v40, v54

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    new-instance v46, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v22, v6, v10

    const-string v7, "imageView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v50

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v48, 0x0

    const/16 v51, 0x0

    move-object/from16 v47, v2

    move-object/from16 v49, v6

    invoke-direct/range {v46 .. v54}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2826
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v13, v6, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v41

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v39, 0x0

    const/16 v42, 0x0

    move-object/from16 v38, v2

    move-object/from16 v40, v6

    invoke-direct/range {v37 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v13, v6, v10

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v36

    sget v54, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    move/from16 v40, v54

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2828
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v13, v6, v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v36

    sget v63, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    move/from16 v40, v63

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v16, v6, v10

    const-string v8, "leftImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v36

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2831
    new-instance v64, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v66, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v16, v6, v10

    const-string v8, "rightImageView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v68

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v69, 0x0

    move-object/from16 v65, v2

    move-object/from16 v67, v6

    move/from16 v72, v40

    invoke-direct/range {v64 .. v72}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v64

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v16, v6, v10

    const-string v8, "seekBarView"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v36

    sget v72, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const/16 v34, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    move/from16 v40, v72

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2833
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v34, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v16, v6, v10

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v36

    sget v81, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    move/from16 v40, v81

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2835
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v17, v6, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v41

    const/16 v39, 0x0

    move-object/from16 v38, v2

    move-object/from16 v40, v6

    invoke-direct/range {v37 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v17, v6, v10

    const-string v8, "checkImage"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v36

    const/16 v39, 0x0

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addedIcon:I

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    new-instance v73, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v75, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v18, v6, v10

    const-string v8, "sizeBar"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v77

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v78, 0x0

    move-object/from16 v74, v2

    move-object/from16 v76, v6

    invoke-direct/range {v73 .. v81}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v73

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2839
    new-instance v64, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v18, v6, v10

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v68

    const/16 v66, 0x0

    move-object/from16 v65, v2

    move-object/from16 v67, v6

    invoke-direct/range {v64 .. v72}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v64

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2841
    new-instance v73, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v75, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v19, v6, v10

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v77

    move-object/from16 v74, v2

    move-object/from16 v76, v6

    invoke-direct/range {v73 .. v81}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v73

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2842
    new-instance v64, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v19, v6, v10

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v68

    move-object/from16 v65, v2

    move-object/from16 v67, v6

    invoke-direct/range {v64 .. v72}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v64

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v20, v6, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    const/16 v36, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v20, v6, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2847
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v21, v6, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v41

    const/16 v39, 0x0

    move-object/from16 v38, v2

    move-object/from16 v40, v6

    invoke-direct/range {v37 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2848
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v21, v4, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v36

    const/16 v39, 0x0

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    new-instance v46, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v21, v4, v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v50

    move-object/from16 v47, v2

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v54}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2850
    new-instance v55, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v21, v4, v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v59

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v57, 0x0

    const/16 v60, 0x0

    move-object/from16 v56, v2

    move-object/from16 v58, v4

    invoke-direct/range {v55 .. v63}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v55

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2851
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    const/16 v36, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2853
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v37

    sget v53, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move/from16 v39, v53

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    new-instance v46, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v51

    const/16 v50, 0x0

    move-object/from16 v47, v2

    move-object/from16 v49, v4

    invoke-direct/range {v46 .. v53}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2855
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2856
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2858
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2860
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2861
    new-instance v46, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v6, v5, v12

    move-object/from16 v47, v2

    move-object/from16 v49, v4

    move-object/from16 v51, v5

    invoke-direct/range {v46 .. v53}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    const/16 v37, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2863
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2865
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v12, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2867
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2868
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    new-array v5, v14, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v10

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v12

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    const/16 v37, 0x0

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2871
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2873
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2874
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2875
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2876
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2877
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2879
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    new-instance v32, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v18, v4, v10

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    move-object/from16 v33, v2

    move-object/from16 v35, v4

    invoke-direct/range {v32 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2882
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v23, v4, v10

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v25, v2

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2883
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v23, v4, v10

    const/16 v39, 0x0

    const/16 v41, 0x0

    move-object/from16 v38, v2

    move-object/from16 v40, v4

    move/from16 v44, v45

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v37

    move/from16 v2, v44

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2884
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    aput-object v23, v4, v10

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v4, v20

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2885
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    aput-object v23, v6, v10

    move/from16 v44, v3

    move-object/from16 v38, v5

    move-object/from16 v40, v6

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v37

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2886
    new-instance v5, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ThemeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemeActivity;)V

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public highlightSensitiveRow()Lorg/telegram/ui/ThemeActivity;
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lorg/telegram/ui/ThemeActivity;->highlightSensitiveRow:Z

    return-object p0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 836
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 837
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 838
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 839
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 840
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 841
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 842
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 843
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 844
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appConfigUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 845
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contentSettingsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 846
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 847
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 848
    iget v0, p0, Lorg/telegram/ui/ThemeActivity;->currentType:I

    if-nez v0, :cond_0

    .line 849
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->loadRemoteThemes(IZ)V

    .line 850
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->checkCurrentRemoteTheme(Z)V

    .line 852
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 857
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 858
    invoke-direct {p0}, Lorg/telegram/ui/ThemeActivity;->stopLocationUpdate()V

    .line 859
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 860
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 861
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 862
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeAccentListUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 863
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 864
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 865
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 866
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiPreviewThemesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 867
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appConfigUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 868
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contentSettingsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 869
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadedToServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 870
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->themeUploadError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 871
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->saveAutoNightThemeConfig()V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 1517
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1518
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1541
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1542
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity;->listAdapter:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1543
    invoke-direct {p0, v0}, Lorg/telegram/ui/ThemeActivity;->updateRows(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1550
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 1551
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
