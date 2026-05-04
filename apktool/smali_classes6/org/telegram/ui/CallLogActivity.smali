.class public Lorg/telegram/ui/CallLogActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/MainTabsActivity$TabFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/CallLogActivity$CallLogRow;,
        Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;,
        Lorg/telegram/ui/CallLogActivity$GroupCallCell;,
        Lorg/telegram/ui/CallLogActivity$CallCell;
    }
.end annotation


# instance fields
.field private final ADDITIONAL_LIST_HEIGHT_DP:I

.field private final ID_CREATE_CALL:I

.field private final ID_SHOW_IN_MAIN_TABS:I

.field private actionModeCloseView:Landroid/widget/ImageView;

.field private final actionModeViews:Ljava/util/ArrayList;

.field private activeGroupCalls:Ljava/util/ArrayList;

.field private additionFloatingButtonOffset:I

.field private additionNavigationBarHeight:I

.field private additionalFloatingTranslation:F

.field private final calls:Ljava/util/ArrayList;

.field private contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

.field private endReached:Z

.field private firstLoaded:Z

.field private flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private fragmentContextViewWrapper:Landroid/widget/FrameLayout;

.field private greenDrawable:Landroid/graphics/drawable/Drawable;

.field private greenDrawable2:Landroid/graphics/drawable/Drawable;

.field private hasMainTabs:Z

.field private headerShadowView:Lorg/telegram/ui/HeaderShadowView;

.field private hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private hideCallTabsHintWasShown:Z

.field private iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

.field private final iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

.field private iBlur3Invalidated:Z

.field private final iBlur3PositionActionBar:Landroid/graphics/RectF;

.field private final iBlur3PositionMainTabs:Landroid/graphics/RectF;

.field private final iBlur3Positions:Ljava/util/ArrayList;

.field private final iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

.field private final iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private final iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

.field private lastCallChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

.field private loading:Z

.field private mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

.field private mainTabsHiddenByScroll:Z

.field private navigationBarHeight:I

.field private needFinishFragment:Z

.field private openTransitionStarted:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private redDrawable:Landroid/graphics/drawable/Drawable;

.field private redDrawable2:Landroid/graphics/drawable/Drawable;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private final scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

.field private selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

.field private final selectedIds:Ljava/util/ArrayList;

.field private final tmpClipRect:Landroid/graphics/Rect;

.field private topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

.field private waitingForCallChatId:Ljava/lang/Long;


# direct methods
.method public static synthetic $r8$lambda$-dLleP_JXuFgdRE8qZKi2yebA6w(Lorg/telegram/ui/CallLogActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/CallLogActivity;->lambda$deleteAllMessages$15(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1AAYfCqj63puMb9lzhgTNOeBKdY([Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    move-object p6, p4

    move-object p4, p2

    move-object p2, p0

    .line 1814
    new-instance p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda0;

    move-object v0, p3

    move-object p3, p1

    move-object p1, p5

    move-object p5, v0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1EFOwZ77UqkTcqErUyM45x-hGTk([Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    .line 1797
    aget-object p0, p0, p3

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1799
    iget-object p0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    .line 1800
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1801
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$1eqLQe7XXil8QKhSc0HOpDp6Sis(Ljava/lang/String;I[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 3

    .line 1771
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;-><init>()V

    .line 1772
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1773
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    .line 1774
    sget-object p0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;)V

    .line 1775
    aget-object p0, p2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$2APogG8bzr8lCYioXMwf4Dg-Jr8(Lorg/telegram/ui/CallLogActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->lambda$onClick$12(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2YW0ALavcNSnHzpvbV9GAAQZhLA(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;[Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    .line 1856
    iget-object p7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {p7, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    sget p7, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    sget v0, Lorg/telegram/messenger/R$string;->Copy:I

    .line 1857
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda49;

    invoke-direct {v1, p3, p0, p1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda49;-><init>([Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2, p7, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    sget p2, Lorg/telegram/messenger/R$string;->GetQRCode:I

    .line 1864
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p7, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda50;

    invoke-direct {p7, p4, p3}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda50;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget p0, Lorg/telegram/messenger/R$string;->RevokeLink:I

    .line 1875
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move v1, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 1876
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method public static synthetic $r8$lambda$2prmd-rrmA-f0kUoNk0dOqcJaAs(Lorg/telegram/tgnet/TLRPC$InputGroupCall;I[Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 10

    .line 1804
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;-><init>()V

    .line 1805
    iput-object p0, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const/4 v1, 0x1

    .line 1806
    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;->reset_invite_hash:Z

    .line 1807
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda48;

    move-object v4, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda48;-><init>(ILorg/telegram/tgnet/TLRPC$InputGroupCall;[Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$6AhaqvrIiq5wFX29xFU_O67xjQc(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1783
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$7dK4xubnFWMf3um7nnA8Xq7QuJk(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$BeTGso8e_ARiK037hxSZQvOnB50(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$showItemOptions$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bo6gEJhINE42WZ6lKNJrFi9zxuU(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CallLogActivity;->lambda$onClick$11(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BsdDJzHH2jXeuHHHw9yzq0gKRJM([Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x0

    .line 1790
    aget-object p0, p0, p3

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1792
    iget-object p0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    .line 1793
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1794
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$CV2cuKbj3p0aPhmFGGE-KQ_kd0w(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$getThemeDescriptions$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$GHC6S6IidW7fVoaBk9qPej04rH0(ILorg/telegram/tgnet/TLRPC$InputGroupCall;[Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1808
    instance-of p8, p7, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p8, :cond_0

    .line 1809
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p8

    check-cast p7, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p8, p7, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1812
    :cond_0
    new-instance p7, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;

    invoke-direct {p7}, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;-><init>()V

    .line 1813
    iput-object p1, p7, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1814
    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance p1, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda51;

    invoke-direct/range {p1 .. p6}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda51;-><init>([Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, p7, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static synthetic $r8$lambda$J-kbgyAyaq4BFCDu-ln3yQbzsi4(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/CallLogActivity;->onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MrvoDL5Z7fGIDocVGeU5cmO2-ho(Lorg/telegram/ui/CallLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->onGroupCallClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NUg5oR0YGqUioXSsLddOJrppiq8(Lorg/telegram/ui/CallLogActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->lambda$onCallClick$7(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PLg6mSTanxGc9UtnR7bnEEzTVXc([Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 1858
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1860
    iget-object p0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    .line 1861
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1862
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$QNeaNZs9dHyaPKY9Uvb0ULRNf5w(Landroid/widget/FrameLayout;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/String;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1828
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v1, p4, v0

    .line 1829
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    add-float/2addr v1, v2

    .line 1830
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1831
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p0, p4, v0

    if-ltz p0, :cond_0

    .line 1832
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 1833
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1834
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$WRRJWnJhl2ZiUtnCcopBNHFNQYA(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/ImageView;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1899
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$drawable;->menu_link_revoke:I

    sget p2, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkRevoke:I

    .line 1900
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 1901
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    const/high16 p1, 0x40c00000    # 6.0f

    .line 1902
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    const/4 p1, 0x0

    .line 1903
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 1904
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method public static synthetic $r8$lambda$WnGfn1KzUPCOTMSElJc6HCH2rQI(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 9

    .line 1878
    new-instance v0, Lorg/telegram/ui/CallLogActivity$8;

    const/4 p5, 0x0

    aget-object v5, p2, p5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/CallLogActivity$8;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    .line 1897
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$X-P3zZ7XrhNj3c7Y0VBP453XMXs(Lorg/telegram/tgnet/TLObject;[Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 1815
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    if-eqz v0, :cond_1

    .line 1816
    check-cast p0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    .line 1817
    iget-object p0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;->link:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1819
    aput-object p0, p1, v0

    .line 1821
    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1822
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p1, 0x2

    .line 1825
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1826
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1827
    new-instance v1, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, v0, p3, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1837
    new-instance p2, Lorg/telegram/ui/CallLogActivity$7;

    invoke-direct {p2, v0, p3, p0}, Lorg/telegram/ui/CallLogActivity$7;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1846
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1848
    iget-object p0, p4, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-static {p0, p5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget p2, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkRevokedTitle:I

    .line 1849
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkRevokedText:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 1850
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic $r8$lambda$YEkmznIu4o4jKbK1SOhm_YjwDpY(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZLzpwE0SLFWE0G1D-VvgXX0SUoA(Lorg/telegram/ui/CallLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->lambda$createActionMode$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0SBMTDZzqEhCFeXNeob46nKQg4(JLorg/telegram/tgnet/TLRPC$User;)Z
    .locals 2

    .line 1402
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_WRNyBc9vp0gUodekqiw3i7dFMI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1266
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$b7VR1oxly_J98XQ-jJIEuRQtazc(Lorg/telegram/ui/CallLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bZZLZrc-nfKLwN6U_NV8Mm2huYw(ILorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    move-object p6, p4

    move-object p4, p2

    move p2, p0

    .line 1985
    new-instance p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda33;

    move-object v0, p3

    move-object p3, p1

    move-object p1, p5

    move-object p5, v0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYcPO4NWtGlnlCJLYMBFQqvdDNY(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    move-object p7, p5

    move-object p5, p3

    move-object p3, p1

    move-object p1, p6

    move-object p6, p4

    move p4, p2

    move-object p2, p0

    .line 2013
    new-instance p0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda39;

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ea3QZUqZjtBp901NxSIT47OqzwY(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$showItemOptions$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$gyhVDjUE7-ARRTUf1l96t6o-ff0(Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1986
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1987
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1988
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1989
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1992
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 1993
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    goto :goto_0

    .line 1995
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    if-eqz v3, :cond_1

    .line 1997
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    .line 1998
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    .line 1999
    iget-wide v0, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v0, v6, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    .line 2000
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x1

    move/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/CallLogActivity;->showCallLinkSheet(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    .line 2002
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    .line 2004
    :cond_2
    instance-of v1, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v1, :cond_3

    .line 2005
    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 2006
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2007
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2009
    new-instance v15, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;

    invoke-direct {v15}, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;-><init>()V

    .line 2010
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    iput-object v1, v15, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2011
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    .line 2012
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    .line 2013
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v11, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda38;

    move/from16 v14, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v15, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 2026
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2027
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpKXWDjZF1V9V9vsTbrSFTGoTUk(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method public static synthetic $r8$lambda$j1RuPRJt9VDbdYTsNdijSEZTiRQ(JLorg/telegram/tgnet/TLRPC$User;)Z
    .locals 2

    .line 1431
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$k3EfdJ6Yoa-m0W237sh_2inFJEA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 7

    .line 2014
    instance-of v0, p0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    if-eqz v0, :cond_0

    .line 2015
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2017
    check-cast p0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    .line 2018
    iget-object v2, p4, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-object v3, p0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;->link:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p2

    move v1, p3

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/CallLogActivity;->showCallLinkSheet(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    goto :goto_0

    .line 2020
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2023
    :goto_0
    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kDdpfKUl0qzdsVUkxI8ips4nmMM(Lorg/telegram/ui/CallLogActivity;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJdBSDpNl7YJgeIvrhxmLv1HnZw(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->lambda$getCalls$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keLWJ34JC_YQeY7U5TFUwpW2txU(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->lambda$getCalls$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAimd8PmCkWDGxrkDc7rEuYEcBU(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ofiza-Q8fz8pIkZ0CmoIzuZ1WxU(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6

    .line 1865
    new-instance v0, Lorg/telegram/ui/Components/QRCodeBottomSheet;

    sget v1, Lorg/telegram/messenger/R$string;->InviteByQRCode:I

    .line 1867
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    aget-object v3, p1, v1

    sget p1, Lorg/telegram/messenger/R$string;->QRCodeLinkGroupCall:I

    .line 1869
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1872
    sget p0, Lorg/telegram/messenger/R$raw;->qr_code_logo:I

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setCenterAnimation(I)V

    .line 1873
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$pY9AHgjqkIsyCYvzgFi1AAcjxdk(Lorg/telegram/ui/CallLogActivity;Z[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/CallLogActivity;->lambda$showDeleteAlert$14(Z[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pojNxASutfhgCzMh6KWO_g3co_E(Lorg/telegram/ui/CallLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$px0N_fJNXVle0PhKhZFkMA-qr0M(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$onClick$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$sWyZT23p7mnjau3NQ_fn3r5oHHY(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->lambda$onCallClick$8(Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJg-jzr2fTQ0t49ePNCgT-u8vOc(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CallLogActivity;->lambda$onCallClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uV1lQwC7qTyx7Jl5yfLxKGDNuYM([ZLandroid/view/View;)V
    .locals 3

    .line 1176
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    .line 1177
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 1178
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wlqncP4tfRwbQUBs5shx_lOkCSE(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->lambda$showItemOptions$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$xG4xj3ItgkUftG33NtSMv7nlYLg(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/CallLogActivity;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$ylZ-9FX2U9C_6TbXxQPNvgZutew(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CallLogActivity;->lambda$onCallClick$6(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yytdJp4RWcYs9xvqjsCIAZmjExI(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/CallLogActivity;->lambda$onClick$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadditionFloatingButtonOffset(Lorg/telegram/ui/CallLogActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CallLogActivity;->additionFloatingButtonOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcalls(Lorg/telegram/ui/CallLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lorg/telegram/ui/CallLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingButton(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/FragmentFloatingButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfragmentContextViewWrapper(Lorg/telegram/ui/CallLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaderShadowView(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/HeaderShadowView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlass(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetiBlur3SourceGlassFrosted(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/CallLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/UniversalRecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloading(Lorg/telegram/ui/CallLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/CallLogActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/CallLogActivity;->navigationBarHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollableViewNoiseSuppressor(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopPanelLayout(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadditionalFloatingTranslation(Lorg/telegram/ui/CallLogActivity;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/CallLogActivity;->additionalFloatingTranslation:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputiBlur3Invalidated(Lorg/telegram/ui/CallLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3Invalidated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastCallUser(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainTabsHiddenByScroll(Lorg/telegram/ui/CallLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->mainTabsHiddenByScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mblur3_InvalidateBlur(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_floatingButton(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_floatingButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_listClip(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_listClip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUi_listViewPadding(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_listViewPadding()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCalls(Lorg/telegram/ui/CallLogActivity;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->getCalls(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideActionMode(Lorg/telegram/ui/CallLogActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->hideActionMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDeleteAlert(Lorg/telegram/ui/CallLogActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->showDeleteAlert(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMainTabsVisibility(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->updateMainTabsVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lorg/telegram/ui/CallLogActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 186
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lorg/telegram/ui/CallLogActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    const/4 v2, 0x1

    .line 138
    iput-boolean v2, p0, Lorg/telegram/ui/CallLogActivity;->needFinishFragment:Z

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/CallLogActivity;->actionModeViews:Ljava/util/ArrayList;

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    .line 959
    iput v2, p0, Lorg/telegram/ui/CallLogActivity;->ID_CREATE_CALL:I

    const/4 v2, 0x2

    .line 960
    iput v2, p0, Lorg/telegram/ui/CallLogActivity;->ID_SHOW_IN_MAIN_TABS:I

    .line 1123
    iput-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintWasShown:Z

    .line 1561
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->tmpClipRect:Landroid/graphics/Rect;

    .line 2073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3Positions:Ljava/util/ArrayList;

    .line 2074
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

    .line 2075
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    .line 2076
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2077
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    invoke-direct {v0}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceColor:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;

    .line 189
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceColor;->setColor(I)V

    const/4 v2, 0x0

    if-lt p1, v1, :cond_1

    .line 191
    new-instance p1, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    invoke-direct {p1}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 192
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 193
    new-instance p1, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    invoke-direct {p1, v2}, Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 194
    new-instance v0, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    const/high16 p1, 0x40000

    .line 195
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setLiquidGlassEffectAllowed(Z)V

    return-void

    .line 197
    :cond_1
    iput-object v2, p0, Lorg/telegram/ui/CallLogActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    .line 198
    iput-object v2, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlassFrosted:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 199
    iput-object v2, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    .line 200
    new-instance p1, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;-><init>(Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSource;)V

    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/CallLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 126
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/CallLogActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/CallLogActivity;)I
    .locals 0

    .line 126
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private addOrRemoveSelectedDialog(Ljava/util/ArrayList;Lorg/telegram/ui/CallLogActivity$CallCell;)Z
    .locals 6

    .line 1272
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1275
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->isSelected(Ljava/util/ArrayList;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1277
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1279
    :cond_1
    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/CallLogActivity$CallCell;->setChecked(ZZ)V

    .line 1280
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->showOrUpdateActionMode()V

    return v1

    .line 1283
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 1284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1285
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1286
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1289
    :cond_4
    invoke-virtual {p2, v2, v2}, Lorg/telegram/ui/CallLogActivity$CallCell;->setChecked(ZZ)V

    .line 1290
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->showOrUpdateActionMode()V

    return v2
.end method

.method private blur3_InvalidateBlur()V
    .locals 8

    .line 2081
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 2085
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 2086
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/CallLogActivity;->navigationBarHeight:I

    sub-int/2addr v2, v3

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x42600000    # 56.0f

    .line 2087
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    .line 2089
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3PositionActionBar:Landroid/graphics/RectF;

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

    .line 2090
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v1, v7, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2091
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3PositionMainTabs:Landroid/graphics/RectF;

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

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3Positions:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;->setupRenderNodes(Ljava/util/List;I)V

    .line 2094
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->scrollableViewNoiseSuppressor:Lorg/telegram/ui/Components/blur3/DownscaleScrollableNoiseSuppressor;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

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

.method private checkUi_floatingButton()V
    .locals 3

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget v1, p0, Lorg/telegram/ui/CallLogActivity;->navigationBarHeight:I

    neg-int v1, v1

    iget v2, p0, Lorg/telegram/ui/CallLogActivity;->additionFloatingButtonOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/CallLogActivity;->additionalFloatingTranslation:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentFloatingButton;->setTranslationY(F)V

    return-void
.end method

.method private checkUi_listClip()V
    .locals 5

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->hasActiveEdgeEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    .line 1567
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->tmpClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lorg/telegram/ui/CallLogActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/CallLogActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->tmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private checkUi_listViewPadding()V
    .locals 4

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget v1, p0, Lorg/telegram/ui/CallLogActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v1, v1

    .line 1552
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->getAnimatedHeightWithPadding(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/CallLogActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    int-to-float v2, v2

    .line 1554
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/CallLogActivity;->navigationBarHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/CallLogActivity;->additionNavigationBarHeight:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    .line 1550
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    iget v1, p0, Lorg/telegram/ui/CallLogActivity;->navigationBarHeight:I

    iget v2, p0, Lorg/telegram/ui/CallLogActivity;->additionNavigationBarHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private createActionMode()V
    .locals 10

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 1250
    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v1, :cond_1

    .line 1251
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    .line 1252
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1253
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1254
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1255
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1256
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1257
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/16 v3, 0x36

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/NumberTextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/CallLogActivity;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    const/16 v2, 0x12

    .line 1262
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setTextSize(I)V

    .line 1263
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1264
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/NumberTextView;->setTextColor(I)V

    .line 1265
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-boolean v3, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v3, :cond_2

    :goto_0
    move v6, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x48

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1266
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    new-instance v2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1268
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->actionModeViews:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static createCallLink(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 8

    .line 1980
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x3

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x1f4

    .line 1981
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1983
    new-instance v6, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;-><init>()V

    .line 1984
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->random_id:I

    .line 1985
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda30;

    move-object v3, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda30;-><init>(ILorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private deleteAllMessages(Z)V
    .locals 3

    .line 1204
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;-><init>()V

    .line 1205
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deletePhoneCallHistory;->revoke:Z

    .line 1206
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/CallLogActivity;Z)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private static eq(JLjava/util/ArrayList;)Z
    .locals 5

    .line 451
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private static eq(Ljava/util/Set;Ljava/util/ArrayList;)Z
    .locals 5

    .line 454
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 456
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 457
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    .line 963
    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity;->activeGroupCalls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-nez v0, :cond_2

    .line 967
    :cond_0
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_call_create:I

    sget v3, Lorg/telegram/messenger/R$string;->GroupCallCreate2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-nez v2, :cond_1

    .line 969
    sget v2, Lorg/telegram/messenger/R$drawable;->menu_add_tab_24:I

    sget v3, Lorg/telegram/messenger/R$string;->GroupCallShowInMainTabs:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/UItem;->asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    :cond_1
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x0

    if-nez p2, :cond_6

    .line 975
    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity;->activeGroupCalls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_3

    goto :goto_0

    .line 977
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 979
    :cond_4
    new-instance v6, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/CallLogActivity$GroupCallCell$Factory;->of(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 981
    :cond_5
    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_8

    .line 984
    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_7

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 985
    invoke-direct {p0, v1}, Lorg/telegram/ui/CallLogActivity;->onCallClick(Lorg/telegram/ui/CallLogActivity$CallLogRow;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/CallLogActivity$CallCell$Factory;->of(Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-object v1, v1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/CallLogActivity;->isSelected(Ljava/util/ArrayList;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 987
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    if-nez p2, :cond_8

    const/4 p2, -0x1

    const/16 v0, 0x8

    .line 988
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x2

    .line 989
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, -0x3

    .line 990
    invoke-static {p2, v0}, Lorg/telegram/ui/Components/UItem;->asFlicker(II)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method private getCalls(II)V
    .locals 3

    .line 1323
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1326
    iput-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    .line 1327
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-nez v2, :cond_1

    .line 1328
    invoke-virtual {v1}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->showProgress()V

    .line 1330
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v1, :cond_2

    .line 1331
    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 1333
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1334
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1335
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1336
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterPhoneCalls;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1337
    const-string p2, ""

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1338
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 1339
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 1464
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private hideActionMode(Z)V
    .locals 5

    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1227
    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1228
    instance-of v4, v3, Lorg/telegram/ui/CallLogActivity$CallCell;

    if-eqz v4, :cond_0

    .line 1229
    check-cast v3, Lorg/telegram/ui/CallLogActivity$CallCell;

    invoke-virtual {v3, v1, p1}, Lorg/telegram/ui/CallLogActivity$CallCell;->setChecked(ZZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1232
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private isSelected(Ljava/util/ArrayList;)Z
    .locals 5

    .line 1236
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1237
    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private synthetic lambda$createActionMode$16(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1256
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->hideActionMode(Z)V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->showItemOptions()V

    return-void
.end method

.method private synthetic lambda$createView$1()V
    .locals 0

    .line 840
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_listClip()V

    .line 841
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->blur3_InvalidateBlur()V

    return-void
.end method

.method private synthetic lambda$createView$2()V
    .locals 2

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v1, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    .line 905
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->openCreateCall()V

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 0

    .line 911
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->blur3_InvalidateBlur()V

    .line 912
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_listViewPadding()V

    return-void
.end method

.method private synthetic lambda$deleteAllMessages$15(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1208
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;

    .line 1209
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    .line 1210
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->messages:Ljava/util/ArrayList;

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->messages:Ljava/util/ArrayList;

    .line 1211
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->pts:I

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->pts:I

    .line 1212
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->pts_count:I

    iput v0, p3, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;->pts_count:I

    .line 1213
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updates;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updates;-><init>()V

    .line 1214
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1216
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedFoundMessages;->offset:I

    if-eqz p2, :cond_0

    .line 1217
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->deleteAllMessages(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getCalls$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_21

    .line 1341
    move-object/from16 v3, p2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1342
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1343
    iget v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1344
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    iput-boolean v4, v0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    .line 1345
    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v6, v1

    .line 1346
    :goto_1
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1f

    .line 1347
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Message;

    .line 1348
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v8, :cond_1

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    if-eqz v8, :cond_2

    :cond_1
    move-object/from16 p2, v3

    move/from16 v16, v6

    goto/16 :goto_9

    .line 1351
    :cond_2
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v8

    .line 1352
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-nez v10, :cond_3

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1353
    :cond_3
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1354
    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v11

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-nez v11, :cond_4

    move v11, v1

    goto :goto_2

    :cond_4
    move v11, v2

    .line 1355
    :goto_2
    iget-object v12, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    const/4 v15, 0x2

    if-eqz v13, :cond_14

    .line 1356
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    .line 1357
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;

    invoke-static {v13}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v13

    new-instance v14, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda13;

    invoke-direct {v14}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v13, v14}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v13

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v14

    invoke-interface {v13, v14}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v10, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-ne v11, v2, :cond_5

    .line 1359
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    if-eqz v13, :cond_5

    move v11, v15

    :cond_5
    if-nez v11, :cond_6

    .line 1362
    iget-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    if-eqz v13, :cond_6

    const/4 v14, 0x3

    goto :goto_3

    :cond_6
    move v14, v11

    :goto_3
    move-object/from16 p2, v3

    if-eqz v4, :cond_7

    .line 1367
    iget-wide v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    move v11, v14

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    cmp-long v2, v2, v13

    if-nez v2, :cond_8

    move-object v3, v4

    move/from16 v16, v6

    goto :goto_5

    :cond_7
    move v11, v14

    :cond_8
    move v2, v1

    .line 1369
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 1370
    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 1371
    iget-wide v13, v3, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    move/from16 v16, v6

    iget-wide v5, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    cmp-long v5, v13, v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v16

    goto :goto_4

    :cond_a
    move/from16 v16, v6

    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_e

    .line 1377
    iget-object v2, v3, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1378
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1380
    iget-object v8, v3, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v1

    :cond_c
    if-ge v10, v9, :cond_d

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$User;

    .line 1381
    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v11, v6, v11

    if-nez v11, :cond_c

    goto :goto_6

    .line 1387
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1389
    iget-object v6, v3, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    if-eqz v4, :cond_f

    .line 1394
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1395
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    :cond_f
    new-instance v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity-IA;)V

    .line 1398
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    iput-wide v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    .line 1399
    iget-object v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1400
    iget-object v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 1402
    iget-object v5, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda27;

    invoke-direct {v6, v8, v9}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda27;-><init>(J)V

    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1403
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1405
    iget-object v5, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1409
    :cond_11
    iput v11, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    .line 1410
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v2, :cond_12

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v2, :cond_12

    const/4 v13, 0x1

    goto :goto_8

    :cond_12
    move v13, v1

    :goto_8
    iput-boolean v13, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    :cond_13
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_14
    move-object/from16 p2, v3

    move/from16 v16, v6

    .line 1415
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1416
    iget-object v2, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    const/4 v13, 0x1

    if-ne v11, v13, :cond_16

    .line 1417
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v3, :cond_15

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v3, :cond_16

    :cond_15
    move v11, v15

    :cond_16
    if-nez v11, :cond_18

    .line 1420
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v3, :cond_17

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v2, :cond_18

    :cond_17
    const/4 v14, 0x3

    goto :goto_a

    :cond_18
    move v14, v11

    :goto_a
    if-eqz v4, :cond_1a

    .line 1424
    iget-object v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-static {v10, v2}, Lorg/telegram/ui/CallLogActivity;->eq(Ljava/util/Set;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    if-eq v2, v14, :cond_19

    goto :goto_b

    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    :cond_1a
    :goto_b
    if-eqz v4, :cond_1b

    .line 1425
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1426
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    :cond_1b
    new-instance v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity-IA;)V

    .line 1429
    iget-object v3, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1430
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 1431
    iget-object v6, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-static {v6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    new-instance v10, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda28;

    invoke-direct {v10, v8, v9}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda28;-><init>(J)V

    invoke-interface {v6, v10}, Lj$/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1432
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 1434
    iget-object v6, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1438
    :cond_1d
    iput v14, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    .line 1439
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v3, :cond_1e

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_d

    :cond_1e
    move v3, v1

    :goto_d
    iput-boolean v3, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    .line 1442
    :goto_e
    iget-object v3, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v3, p2

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_1f
    if-eqz v4, :cond_20

    .line 1445
    iget-object v2, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1446
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 v13, 0x1

    goto :goto_10

    :cond_21
    move v13, v2

    .line 1449
    iput-boolean v13, v0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    .line 1451
    :goto_10
    iput-boolean v1, v0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    .line 1452
    iget-boolean v2, v0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-nez v2, :cond_22

    .line 1453
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    .line 1455
    :cond_22
    iput-boolean v13, v0, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    .line 1456
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v3, v0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-nez v3, :cond_23

    const/16 v1, 0x8

    :cond_23
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    iget-object v1, v0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    if-eqz v1, :cond_24

    .line 1458
    invoke-virtual {v1}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->showTextView()V

    .line 1460
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v1, :cond_25

    .line 1461
    iget-object v1, v1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_25
    return-void
.end method

.method private synthetic lambda$getCalls$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1339
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$22()V
    .locals 5

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_1

    .line 1591
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1593
    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1594
    instance-of v4, v3, Lorg/telegram/ui/CallLogActivity$CallCell;

    if-eqz v4, :cond_0

    .line 1595
    check-cast v3, Lorg/telegram/ui/CallLogActivity$CallCell;

    .line 1596
    invoke-static {v3}, Lorg/telegram/ui/CallLogActivity$CallCell;->-$$Nest$fgetprofileSearchCell(Lorg/telegram/ui/CallLogActivity$CallCell;)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1601
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1602
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1603
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->actionModeCloseView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1606
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_3

    .line 1607
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateColors()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onCallClick$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1017
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1018
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz p1, :cond_1

    .line 1019
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 1020
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p6, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, p6, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1021
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p6, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p6, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1022
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1023
    new-instance p1, Lorg/telegram/ui/CreateGroupCallSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/CreateGroupCallSheet;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {p1, p3, p4, p5, p2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;)V

    return-void

    :cond_1
    if-eqz p6, :cond_2

    .line 1027
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1028
    new-instance p1, Lorg/telegram/ui/CreateGroupCallSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/CreateGroupCallSheet;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    if-eqz p6, :cond_3

    .line 1030
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onCallClick$6(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 1016
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda37;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCallClick$7(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 1033
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$onCallClick$8(Lorg/telegram/ui/CallLogActivity$CallLogRow;Landroid/view/View;)V
    .locals 11

    .line 997
    iget-object v2, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 998
    iget-object v2, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 999
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    .line 1000
    iput-object v5, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v6, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    if-nez v6, :cond_1

    if-eqz v2, :cond_0

    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v4

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    return-void

    .line 1002
    :cond_2
    iget-boolean v5, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    .line 1003
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1004
    iget-object v4, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    .line 1005
    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1008
    :cond_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;-><init>()V

    .line 1009
    iget-object v0, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->msg_id:I

    move-object v3, v2

    .line 1011
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x3

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1013
    new-instance v6, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 1014
    iput-object v4, v6, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1015
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    iput v0, v6, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    .line 1016
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda34;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Z)V

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1033
    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/CallLogActivity;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 v3, 0x258

    .line 1034
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    return-void
.end method

.method private synthetic lambda$onClick$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1081
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1082
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz p1, :cond_1

    .line 1083
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 1084
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p6, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, p6, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1085
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p6, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p6, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1086
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1087
    new-instance p1, Lorg/telegram/ui/CreateGroupCallSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/CreateGroupCallSheet;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {p1, p3, p4, p5, p2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;)V

    return-void

    :cond_1
    if-eqz p6, :cond_2

    .line 1091
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1092
    new-instance p1, Lorg/telegram/ui/CreateGroupCallSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/CreateGroupCallSheet;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    if-eqz p6, :cond_3

    .line 1094
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onClick$11(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 1080
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda29;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v3, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;ZLorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClick$12(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 1097
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$onClick$9()V
    .locals 1

    const/4 v0, 0x0

    .line 1056
    invoke-direct {p0, v0}, Lorg/telegram/ui/CallLogActivity;->setCallsTabVisible(Z)V

    return-void
.end method

.method private synthetic lambda$showDeleteAlert$14(Z[ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 9

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 1183
    aget-boolean p1, p2, p3

    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->deleteAllMessages(Z)V

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1185
    iput-boolean p3, p0, Lorg/telegram/ui/CallLogActivity;->loading:Z

    const/4 p1, 0x1

    .line 1186
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->endReached:Z

    .line 1187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p2, p2, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto :goto_0

    .line 1190
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aget-boolean v7, p2, p3

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    .line 1192
    :goto_0
    invoke-direct {p0, p3}, Lorg/telegram/ui/CallLogActivity;->hideActionMode(Z)V

    return-void
.end method

.method private synthetic lambda$showItemOptions$41()V
    .locals 1

    const/4 v0, 0x1

    .line 2041
    invoke-direct {p0, v0}, Lorg/telegram/ui/CallLogActivity;->setCallsTabVisible(Z)V

    return-void
.end method

.method private synthetic lambda$showItemOptions$42()V
    .locals 8

    const/4 v0, 0x0

    .line 2037
    invoke-direct {p0, v0}, Lorg/telegram/ui/CallLogActivity;->setCallsTabVisible(Z)V

    .line 2038
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2039
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    goto :goto_0

    .line 2040
    :goto_1
    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->GroupCallTabWasHiddenTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget v0, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda26;

    invoke-direct {v7, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    const/16 v5, 0x1388

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/16 v1, 0x1388

    .line 2042
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showItemOptions$43()V
    .locals 1

    const/4 v0, 0x1

    .line 2044
    invoke-direct {p0, v0}, Lorg/telegram/ui/CallLogActivity;->showDeleteAlert(Z)V

    return-void
.end method

.method private onCallClick(Lorg/telegram/ui/CallLogActivity$CallLogRow;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 996
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/CallLogActivity$CallLogRow;)V

    return-object v0
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 8

    .line 1052
    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 p4, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    .line 1053
    invoke-direct {p0, p5}, Lorg/telegram/ui/CallLogActivity;->setCallsTabVisible(Z)V

    .line 1054
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget p1, Lorg/telegram/messenger/R$string;->GroupCallTabWasShownTitle:I

    .line 1056
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$string;->UndoNoCaps:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda22;

    invoke-direct {v7, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    const/16 v5, 0x1388

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 p2, 0x1388

    .line 1057
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1058
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_0
    if-ne p3, p5, :cond_1

    .line 1060
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->openCreateCall()V

    return-void

    .line 1061
    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    if-eqz p3, :cond_5

    .line 1062
    check-cast p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 1063
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1064
    iget-object p1, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    check-cast p2, Lorg/telegram/ui/CallLogActivity$CallCell;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->addOrRemoveSelectedDialog(Ljava/util/ArrayList;Lorg/telegram/ui/CallLogActivity$CallCell;)Z

    return-void

    .line 1065
    :cond_2
    iget-wide p2, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1066
    iget-boolean v6, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    .line 1067
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1068
    iget-object p2, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    move p4, v0

    :goto_0
    if-ge p4, p3, :cond_3

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p4, p4, 0x1

    check-cast p5, Lorg/telegram/tgnet/TLRPC$User;

    .line 1069
    iget-wide v1, p5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {v4, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1072
    :cond_3
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;-><init>()V

    .line 1073
    iget-object p1, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput p1, v5, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->msg_id:I

    .line 1075
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {v3, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1077
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 1078
    iput-object v5, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1079
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    .line 1080
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda23;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/CallLogActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Z)V

    invoke-virtual {p2, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 1097
    new-instance p2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/CallLogActivity;I)V

    invoke-virtual {v3, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 p1, 0x258

    .line 1098
    invoke-virtual {v3, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    return-void

    :cond_4
    move-object v2, p0

    .line 1100
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1101
    iget-object p3, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide p3

    const-string p5, "user_id"

    invoke-virtual {p2, p5, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1102
    iget-object p1, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const-string p3, "message_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1103
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array p4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1104
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-boolean p2, v2, Lorg/telegram/ui/CallLogActivity;->needFinishFragment:Z

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void

    :cond_5
    move-object v2, p0

    .line 1106
    instance-of p1, p2, Lorg/telegram/ui/CallLogActivity$GroupCallCell;

    if-eqz p1, :cond_6

    .line 1107
    check-cast p2, Lorg/telegram/ui/CallLogActivity$GroupCallCell;

    .line 1108
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1109
    invoke-static {p2}, Lorg/telegram/ui/CallLogActivity$GroupCallCell;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/CallLogActivity$GroupCallCell;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p4, "chat_id"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1110
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array p4, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1111
    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    iget-boolean p1, v2, Lorg/telegram/ui/CallLogActivity;->needFinishFragment:Z

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_6
    return-void
.end method

.method private onGroupCallClick(Landroid/view/View;)V
    .locals 11

    .line 1040
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1041
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    .line 1042
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/CallLogActivity;->lastCallChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, p0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    return-void

    :cond_0
    move-object v9, p0

    .line 1046
    iput-object p1, v9, Lorg/telegram/ui/CallLogActivity;->waitingForCallChatId:Ljava/lang/Long;

    .line 1047
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private onLongClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)Z
    .locals 0

    .line 1116
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of p3, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    if-eqz p3, :cond_0

    .line 1117
    check-cast p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    iget-object p1, p1, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    check-cast p2, Lorg/telegram/ui/CallLogActivity$CallCell;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/CallLogActivity;->addOrRemoveSelectedDialog(Ljava/util/ArrayList;Lorg/telegram/ui/CallLogActivity$CallCell;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private openCreateCall()V
    .locals 3

    .line 1909
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1910
    const-string v1, "isCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1911
    new-instance v1, Lorg/telegram/ui/CallLogActivity$9;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/CallLogActivity$9;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/os/Bundle;)V

    .line 1976
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private setCallsTabVisible(Z)V
    .locals 2

    .line 2051
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2055
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/UserConfig;->setShowCallsTab(Z)V

    .line 2056
    iget-object p1, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 2057
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->callTabsVisibleToggled:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static showCallLinkSheet(Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputGroupCall;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v2, p4

    .line 1664
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 1666
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    .line 1667
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 1668
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v6, 0x41000000    # 8.0f

    .line 1669
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v4, v4, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1671
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1672
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1673
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/16 v14, 0x5c

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1674
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1676
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1677
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1678
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1679
    sget v11, Lorg/telegram/messenger/R$drawable;->story_link:I

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v11, 0x40000000    # 2.0f

    .line 1680
    invoke-virtual {v9, v11}, Landroid/view/View;->setScaleX(F)V

    .line 1681
    invoke-virtual {v9, v11}, Landroid/view/View;->setScaleY(F)V

    const/4 v11, -0x1

    const/16 v13, 0x11

    .line 1682
    invoke-static {v11, v11, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v9, 0x42a00000    # 80.0f

    .line 1683
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-static {v9, v11}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v14, 0x50

    const/high16 v15, 0x42a00000    # 80.0f

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v18, 0x41400000    # 12.0f

    .line 1684
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1686
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1687
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1688
    sget v9, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1689
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v11, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1690
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p6, :cond_0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v15, 0x38

    const/high16 v16, 0x42600000    # 56.0f

    const/16 v17, 0x35

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1692
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1695
    :cond_0
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v1, v11, v6, v5, v2}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v11

    .line 1696
    sget v15, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkTitle:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1697
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v21, 0x20

    const/16 v22, 0x8

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x11

    const/16 v19, 0x20

    const/16 v20, 0x10

    .line 1698
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v11, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 1700
    invoke-static {v1, v11, v6, v4, v2}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v15

    .line 1701
    sget v16, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkText:I

    move/from16 v17, v11

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 1703
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-static {v11, v13}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v11

    invoke-virtual {v15, v11}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/16 v23, 0x20

    const/16 v24, 0x12

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x11

    const/16 v22, 0x0

    .line 1704
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v3, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1707
    const-string v11, "https://"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x8

    .line 1708
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_1
    move-object v11, v8

    .line 1709
    :goto_0
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v15, 0x3c23d70a    # 0.01f

    const v5, 0x3f99999a    # 1.2f

    .line 1710
    invoke-static {v13, v15, v5}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1711
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-static {v15, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v15

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-static {v15, v9}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v9

    const/16 v15, 0xc

    invoke-static {v5, v9, v15, v15}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v25, 0x10

    const/16 v26, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x7

    const/16 v23, 0x10

    const/16 v24, 0x0

    .line 1712
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 1714
    invoke-static {v1, v5, v6, v4, v2}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v5

    const/high16 v9, 0x41800000    # 16.0f

    .line 1715
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move-object/from16 v20, v7

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v5, v9, v15, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 1716
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v26, 0x41f00000    # 30.0f

    const/16 v27, 0x0

    const/16 v21, -0x1

    const/high16 v22, -0x40800000    # -1.0f

    const/16 v23, 0x77

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 1717
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v13, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1719
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1720
    sget v9, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {v1, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1721
    sget v9, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1722
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1723
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-static {v10, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    invoke-direct {v9, v10, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v9, 0x30

    const/16 v10, 0x15

    const/16 v11, 0x28

    .line 1724
    invoke-static {v11, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v13, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1726
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1727
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v25, 0x41800000    # 16.0f

    const/16 v26, 0x0

    const/16 v22, -0x2

    const/high16 v23, 0x41800000    # 16.0f

    const/high16 v24, 0x41400000    # 12.0f

    .line 1728
    invoke-static/range {v21 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1730
    new-instance v10, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v10, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1731
    new-instance v11, Landroid/text/SpannableStringBuilder;

    const-string v14, "c "

    invoke-direct {v11, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1732
    sget v15, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkCopy:I

    invoke-static {v15}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1733
    new-instance v15, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-direct {v15, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v4, 0x21

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v11, v15, v5, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1734
    invoke-virtual {v10, v11, v5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v30, 0x6

    const/16 v31, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x30

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x33

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 1735
    invoke-static/range {v24 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    new-instance v5, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v5, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1738
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1739
    sget v11, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkShare:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1740
    new-instance v11, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_share_filled:I

    invoke-direct {v11, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v7, v11, v14, v15, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1741
    invoke-virtual {v5, v7, v14}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v30, 0x0

    const/16 v28, 0x6

    .line 1742
    invoke-static/range {v24 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x1

    .line 1744
    new-array v4, v15, [Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz p5, :cond_2

    .line 1746
    new-instance v7, Lorg/telegram/ui/CallLogActivity$6;

    invoke-direct {v7, v1, v2}, Lorg/telegram/ui/CallLogActivity$6;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v9, 0x11

    .line 1764
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1765
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1766
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkJoinOr:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v9, v17

    .line 1767
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v29, 0x1c

    const/16 v30, 0x8

    const/16 v24, 0xbe

    const/16 v25, -0x2

    const/16 v26, 0x1

    const/16 v27, 0x1c

    const/16 v28, 0xc

    .line 1768
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1770
    new-instance v7, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda40;

    move/from16 v11, p1

    invoke-direct {v7, v8, v11, v4}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda40;-><init>(Ljava/lang/String;I[Lorg/telegram/ui/ActionBar/BottomSheet;)V

    const/high16 v9, 0x41600000    # 14.0f

    const/4 v14, 0x0

    .line 1777
    invoke-static {v1, v9, v6, v14, v2}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v6

    .line 1778
    sget v9, Lorg/telegram/messenger/R$string;->GroupCallCreatedLinkJoinText:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const/4 v15, 0x1

    invoke-static {v9, v15}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x11

    .line 1779
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 1780
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    invoke-static {v9, v14}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v9

    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setMaxWidth(I)V

    const/16 v29, 0x20

    const/16 v30, 0xc

    const/16 v24, -0x1

    const/16 v26, 0x11

    const/16 v27, 0x20

    const/16 v28, 0x8

    .line 1781
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v9, 0x3d4ccccd    # 0.05f

    const v14, 0x3f99999a    # 1.2f

    .line 1782
    invoke-static {v6, v9, v14}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1783
    new-instance v9, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda41;

    invoke-direct {v9, v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda41;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move/from16 v11, p1

    .line 1786
    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1787
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v15

    const/16 v21, 0x0

    aput-object v15, v4, v21

    .line 1789
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda42;

    invoke-direct {v0, v12, v15, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda42;-><init>([Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1796
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda43;

    invoke-direct {v0, v12, v15, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda43;-><init>([Ljava/lang/String;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1803
    new-instance v9, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda44;

    move-object/from16 v10, p2

    move-object/from16 v16, v2

    move-object/from16 v14, v22

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/tgnet/TLRPC$InputGroupCall;I[Ljava/lang/String;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1855
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda45;

    move-object/from16 v2, p4

    move/from16 v6, p6

    move-object v11, v5

    move-object v7, v9

    move-object v4, v12

    move-object v3, v13

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object v5, v1

    move-object v1, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/FrameLayout;[Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1878
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda46;

    move-object/from16 v1, p0

    move-object/from16 v4, p4

    move-object v2, v8

    move-object v3, v12

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda46;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    move-object v2, v4

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p6, :cond_3

    .line 1899
    new-instance v0, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, v15, v2, v9, v7}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/widget/ImageView;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private showDeleteAlert(Z)V
    .locals 14

    .line 1159
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 1162
    sget v1, Lorg/telegram/messenger/R$string;->DeleteAllCalls:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1163
    sget v1, Lorg/telegram/messenger/R$string;->DeleteAllCallsText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1165
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->DeleteCalls:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1166
    sget v1, Lorg/telegram/messenger/R$string;->DeleteSelectedCallsText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :goto_0
    const/4 v1, 0x1

    .line 1168
    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 1169
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1170
    new-instance v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    .line 1171
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1172
    sget v1, Lorg/telegram/messenger/R$string;->DeleteCallsForEveryone:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v5, v1, v6, v3, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 1173
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v6, 0x41000000    # 8.0f

    if-eqz v1, :cond_1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_2
    invoke-virtual {v5, v1, v3, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x42400000    # 48.0f

    const/16 v9, 0x33

    const/high16 v10, 0x41000000    # 8.0f

    const/4 v11, 0x0

    .line 1174
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    new-instance v1, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda31;-><init>([Z)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1181
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, p1, v2}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/CallLogActivity;Z[Z)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1194
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1195
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1196
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 1197
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1199
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private showItemOptions()V
    .locals 7

    .line 2033
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/16 v0, 0x8

    .line 2035
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 2036
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_archive_hide:I

    sget v3, Lorg/telegram/messenger/R$string;->HideCallTab:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2044
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v0, Lorg/telegram/messenger/R$string;->DeleteAllCalls:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda16;

    invoke-direct {v6, p0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2046
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/high16 v0, 0x42800000    # 64.0f

    .line 2047
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setTranslationY(F)V

    return-void
.end method

.method private showOrUpdateActionMode()V
    .locals 7

    .line 1297
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1299
    invoke-direct {p0, v1}, Lorg/telegram/ui/CallLogActivity;->hideActionMode(Z)V

    return-void

    .line 1304
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->createActionMode()V

    .line 1305
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode()V

    .line 1307
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1309
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1310
    iget-object v4, p0, Lorg/telegram/ui/CallLogActivity;->actionModeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1311
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1312
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 1313
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1315
    :cond_1
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v3, 0xc8

    .line 1316
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1317
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v1, v2

    .line 1319
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->selectedDialogsCountTextView:Lorg/telegram/ui/Components/NumberTextView;

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->selectedIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateMainTabsVisibility()V
    .locals 2

    .line 1544
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    if-eqz v0, :cond_1

    .line 1545
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/CallLogActivity;->mainTabsHiddenByScroll:Z

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
.method public canParentTabsSlide(Landroid/view/MotionEvent;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 1147
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    .line 1148
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setUseContainerForTitles()V

    .line 1149
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;

    .line 1150
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1151
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getAdditionalSubTitleOverlayContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1152
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitlesContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x0

    .line 1153
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 734
    iget-boolean v0, v1, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    iput v0, v1, Lorg/telegram/ui/CallLogActivity;->additionNavigationBarHeight:I

    .line 735
    iget-boolean v0, v1, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    iput v0, v1, Lorg/telegram/ui/CallLogActivity;->additionFloatingButtonOffset:I

    .line 736
    iget-boolean v0, v1, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-nez v0, :cond_2

    .line 737
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v3, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 740
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->Calls:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/CallLogActivity$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$1;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 756
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/16 v3, 0xa

    .line 757
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 758
    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    new-instance v4, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    new-instance v5, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    .line 762
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 763
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections()V

    .line 764
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/UniversalAdapter;->setApplyBackground(Z)V

    .line 765
    new-instance v0, Lorg/telegram/ui/CallLogActivity$2;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/CallLogActivity$2;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 835
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    new-instance v4, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;

    iget-object v5, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/chat/ViewPositionWatcher;-><init>(Landroid/view/View;)V

    iget-object v5, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->setSourceRootView(Lorg/telegram/ui/Components/chat/ViewPositionWatcher;Landroid/view/ViewGroup;)V

    .line 838
    new-instance v0, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;

    iget-object v4, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v5, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;

    invoke-direct {v6, v4}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lorg/telegram/ui/Components/blur3/ViewGroupPartRenderer$DrawChildMethod;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->iBlur3Capture:Lorg/telegram/ui/Components/blur3/capture/IBlur3Capture;

    .line 839
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v4, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->addEdgeEffectListener(Ljava/lang/Runnable;)V

    .line 844
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 845
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 847
    new-instance v0, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/16 v4, 0x8

    .line 848
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 849
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 850
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 851
    new-instance v0, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    .line 852
    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v9, -0x1

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 855
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 856
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v2, v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, v1, Lorg/telegram/ui/CallLogActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 857
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 858
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v1, Lorg/telegram/ui/CallLogActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 859
    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 860
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget v4, v1, Lorg/telegram/ui/CallLogActivity;->ADDITIONAL_LIST_HEIGHT_DP:I

    neg-int v5, v4

    int-to-float v14, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v16, v4

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-instance v3, Lorg/telegram/ui/CallLogActivity$3;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$3;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 896
    iget-boolean v0, v1, Lorg/telegram/ui/CallLogActivity;->loading:Z

    if-eqz v0, :cond_4

    .line 897
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->showProgress()V

    goto :goto_3

    .line 899
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;->showTextView()V

    .line 902
    :goto_3
    new-instance v0, Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/FragmentFloatingButton;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    .line 903
    iget-object v0, v0, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->filled_calls_plus:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 904
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    sget v3, Lorg/telegram/messenger/R$string;->Call:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 905
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    invoke-static {}, Lorg/telegram/ui/Components/FragmentFloatingButton;->createDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 908
    new-instance v0, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/high16 v3, 0x41300000    # 11.0f

    .line 909
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v6, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 910
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    new-instance v3, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setOnAnimatedHeightChangedListener(Ljava/lang/Runnable;)V

    .line 915
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->iBlur3FactoryLiquidGlass:Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4}, Lorg/telegram/ui/Components/blur3/drawable/color/impl/BlurredBackgroundProviderImpl;->topPanel(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundProvider;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/blur3/BlurredBackgroundDrawableViewFactory;->create(Landroid/view/View;Lorg/telegram/ui/Components/blur3/drawable/color/BlurredBackgroundColorProvider;)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    move-result-object v0

    const/high16 v3, 0x41c00000    # 24.0f

    .line 916
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setRadius(F)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    const/high16 v3, 0x40e00000    # 7.0f

    .line 917
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;->setPadding(I)Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;

    .line 918
    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;->setBlurredBackground(Lorg/telegram/ui/Components/blur3/drawable/BlurredBackgroundDrawable;)V

    .line 920
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    .line 921
    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 922
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v8, v7}, Lorg/telegram/ui/Components/AnimatedLinearLayout;->setViewVisible(Landroid/view/View;ZZ)V

    .line 923
    new-instance v0, Lorg/telegram/ui/CallLogActivity$4;

    iget-object v4, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    const/4 v5, 0x0

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/CallLogActivity$4;-><init>(Lorg/telegram/ui/CallLogActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    .line 929
    iput-boolean v8, v0, Lorg/telegram/ui/Components/FragmentContextView;->isInsideBubble:Z

    .line 930
    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->fragmentContextViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 931
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/CallLogActivity;->topPanelLayout:Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x30

    const/4 v13, 0x0

    const/high16 v14, -0x3ea00000    # -14.0f

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 934
    new-instance v0, Lorg/telegram/ui/HeaderShadowView;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/HeaderShadowView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    iput-object v0, v1, Lorg/telegram/ui/CallLogActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    .line 935
    invoke-virtual {v0, v7, v7}, Lorg/telegram/ui/HeaderShadowView;->setShadowVisible(ZZ)V

    .line 936
    iget-object v0, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/CallLogActivity;->headerShadowView:Lorg/telegram/ui/HeaderShadowView;

    const/4 v3, 0x5

    const/16 v4, 0x30

    invoke-static {v9, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v1, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 939
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, v1, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 941
    new-instance v0, Lorg/telegram/ui/CallLogActivity$5;

    invoke-direct {v0, v1}, Lorg/telegram/ui/CallLogActivity$5;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 953
    iget-boolean v0, v1, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v0, :cond_5

    .line 954
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v2, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 956
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v5, p0

    move/from16 v0, p1

    .line 289
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1c

    .line 290
    iget-boolean v0, v5, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 293
    :cond_0
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_e

    .line 297
    :cond_1
    aget-object v0, p3, v4

    check-cast v0, Ljava/util/ArrayList;

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v3

    :goto_0
    if-ge v6, v1, :cond_1a

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 299
    iget-object v9, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionPhoneCall;

    const/4 v11, 0x3

    if-eqz v10, :cond_a

    .line 300
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v9

    .line 301
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v12

    cmp-long v12, v9, v12

    if-nez v12, :cond_2

    iget-object v12, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_1

    :cond_2
    move-wide v12, v9

    .line 302
    :goto_1
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v9, v9, v14

    if-nez v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v4

    .line 303
    :goto_2
    iget-object v10, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageAction;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    if-ne v9, v4, :cond_5

    .line 304
    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v14, :cond_4

    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v14, :cond_5

    :cond_4
    move v9, v2

    :cond_5
    if-nez v9, :cond_6

    .line 307
    instance-of v14, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    if-nez v14, :cond_7

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    move v11, v9

    .line 310
    :cond_7
    :goto_3
    iget-object v9, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 311
    iget-object v9, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 312
    iget-object v10, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-static {v12, v13, v10}, Lorg/telegram/ui/CallLogActivity;->eq(JLjava/util/ArrayList;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    if-ne v10, v11, :cond_8

    .line 313
    iget-object v9, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    iget-object v8, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v9, v3, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_8
    new-instance v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-direct {v9, v7}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity-IA;)V

    .line 318
    iget-object v10, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object v10, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    iget-object v14, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v10, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 321
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 323
    iget-object v12, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_9
    iput v11, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    .line 326
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVideoCall()Z

    move-result v8

    iput-boolean v8, v9, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    .line 327
    iget-object v8, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 328
    iget-object v8, v5, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v8, v8, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    goto/16 :goto_b

    .line 329
    :cond_a
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    if-eqz v10, :cond_19

    .line 330
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    .line 331
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v12

    .line 332
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;

    invoke-static {v10}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v10

    new-instance v14, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda13;

    invoke-direct {v14}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v10, v14}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v10

    invoke-static {}, Lj$/util/stream/Collectors;->toSet()Lj$/util/stream/Collector;

    move-result-object v14

    invoke-interface {v10, v14}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 333
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-nez v14, :cond_b

    iget-object v14, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_4

    :cond_b
    move-wide v14, v12

    :goto_4
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_c

    move v12, v3

    goto :goto_5

    :cond_c
    move v12, v4

    :goto_5
    if-ne v12, v4, :cond_d

    .line 335
    iget-boolean v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    if-eqz v13, :cond_d

    move v12, v2

    :cond_d
    if-nez v12, :cond_e

    .line 338
    iget-boolean v13, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    if-eqz v13, :cond_e

    goto :goto_6

    :cond_e
    move v11, v12

    .line 341
    :goto_6
    iget-object v12, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_16

    move v12, v3

    .line 344
    :goto_7
    iget-object v13, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_10

    .line 345
    iget-object v13, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 346
    iget-wide v14, v13, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    iget-wide v4, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    cmp-long v4, v14, v4

    if-nez v4, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p0

    const/4 v4, 0x1

    goto :goto_7

    :cond_10
    move-object v13, v7

    :goto_8
    if-eqz v13, :cond_15

    .line 353
    iget-object v4, v13, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    iget-object v5, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 354
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 356
    iget-object v10, v13, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v3

    :cond_12
    if-ge v12, v11, :cond_13

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v12, v12, 0x1

    check-cast v14, Lorg/telegram/tgnet/TLRPC$User;

    .line 357
    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v14, v8, v14

    if-nez v14, :cond_12

    goto :goto_9

    .line 363
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 365
    iget-object v8, v13, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    move-object/from16 v5, p0

    .line 369
    iget-object v4, v5, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    move v4, v8

    goto/16 :goto_0

    :cond_15
    move-object/from16 v5, p0

    .line 373
    :cond_16
    new-instance v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    invoke-direct {v4, v7}, Lorg/telegram/ui/CallLogActivity$CallLogRow;-><init>(Lorg/telegram/ui/CallLogActivity-IA;)V

    .line 374
    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->call_id:J

    iput-wide v12, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->call_id:J

    .line 375
    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    iget-object v12, v8, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v9, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 378
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17
    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 379
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_17

    .line 381
    iget-object v12, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->users:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 384
    :cond_18
    iput v11, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->type:I

    .line 385
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->isVideoCall()Z

    move-result v8

    iput-boolean v8, v4, Lorg/telegram/ui/CallLogActivity$CallLogRow;->video:Z

    .line 386
    iget-object v8, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 387
    iget-object v4, v5, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v4, v4, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_19
    :goto_b
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 390
    :cond_1a
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_28

    .line 391
    iget-object v1, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-nez v1, :cond_1b

    const/16 v3, 0x8

    :cond_1b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 393
    :cond_1c
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    if-ne v0, v1, :cond_23

    .line 394
    iget-boolean v0, v5, Lorg/telegram/ui/CallLogActivity;->firstLoaded:Z

    if-nez v0, :cond_1d

    goto/16 :goto_e

    .line 397
    :cond_1d
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_e

    .line 402
    :cond_1e
    aget-object v0, p3, v3

    check-cast v0, Ljava/util/ArrayList;

    .line 403
    iget-object v1, v5, Lorg/telegram/ui/CallLogActivity;->calls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 404
    :cond_1f
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;

    .line 406
    iget-object v4, v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 407
    :cond_20
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    .line 409
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 411
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v3, 0x1

    goto :goto_d

    .line 414
    :cond_21
    iget-object v2, v2, Lorg/telegram/ui/CallLogActivity$CallLogRow;->calls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :cond_22
    if-eqz v3, :cond_28

    .line 418
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_28

    .line 419
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 421
    :cond_23
    sget v1, Lorg/telegram/messenger/NotificationCenter;->activeGroupCallsUpdated:I

    if-ne v0, v1, :cond_24

    .line 422
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getActiveGroupCalls()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v5, Lorg/telegram/ui/CallLogActivity;->activeGroupCalls:Ljava/util/ArrayList;

    .line 423
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_28

    .line 424
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    .line 426
    :cond_24
    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne v0, v1, :cond_26

    .line 427
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->waitingForCallChatId:Ljava/lang/Long;

    if-nez v0, :cond_25

    goto :goto_e

    .line 430
    :cond_25
    aget-object v1, p3, v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 431
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_28

    .line 432
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v5, Lorg/telegram/ui/CallLogActivity;->waitingForCallChatId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v8, 0x1

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 434
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->lastCallChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    .line 435
    iput-object v7, v5, Lorg/telegram/ui/CallLogActivity;->waitingForCallChatId:Ljava/lang/Long;

    return-void

    .line 438
    :cond_26
    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne v0, v1, :cond_28

    .line 439
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->waitingForCallChatId:Ljava/lang/Long;

    if-nez v0, :cond_27

    goto :goto_e

    .line 442
    :cond_27
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Long;

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 444
    iget-object v0, v5, Lorg/telegram/ui/CallLogActivity;->lastCallChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    .line 445
    iput-object v7, v5, Lorg/telegram/ui/CallLogActivity;->waitingForCallChatId:Ljava/lang/Long;

    :cond_28
    :goto_e
    return-void
.end method

.method public getGlassSource()Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;
    .locals 1

    .line 2099
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->iBlur3SourceGlass:Lorg/telegram/ui/Components/blur3/source/BlurredBackgroundSourceRenderNode;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 44

    move-object/from16 v0, p0

    .line 1587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    new-instance v8, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0}, Lorg/telegram/ui/CallLogActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/CallLogActivity;)V

    .line 1611
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View;

    aput-object v12, v3, v11

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v19, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    aput-object v4, v3, v11

    const-string v5, "emptyTextView1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->emptyView:Lorg/telegram/ui/CallLogActivity$EmptyTextProgressView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v4, "emptyTextView2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v21

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v4, v3, v11

    const-string v4, "progressBar"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v21

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/16 v19, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v34, "textView"

    filled-new-array/range {v34 .. v34}, [Ljava/lang/String;

    move-result-object v29

    const/16 v32, 0x0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    if-eqz v2, :cond_0

    .line 1632
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v2, v2, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v31, 0x0

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v2, v2, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->floatingButton:Lorg/telegram/ui/Components/FragmentFloatingButton;

    iget-object v2, v2, Lorg/telegram/ui/Components/FragmentFloatingButton;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v27, v3, v4

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    :cond_0
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/CallLogActivity$CallCell;

    aput-object v4, v3, v11

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const/16 v32, 0x0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_telegram_color_text:I

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    new-array v5, v10, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    const/16 v29, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v5

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    new-array v5, v10, [Landroid/graphics/drawable/Drawable;

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v5, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v5

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget-object v29, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v30, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget-object v39, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/16 v41, 0x0

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText3:I

    const/16 v37, 0x0

    const/16 v40, 0x0

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    invoke-direct/range {v35 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v6, v5, v11

    aget-object v5, v5, v10

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/Paint;

    aput-object v6, v7, v11

    aput-object v5, v7, v10

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    const/4 v6, 0x2

    aput-object v5, v7, v6

    const/16 v42, 0x0

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    const/16 v39, 0x0

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    move-object/from16 v40, v7

    invoke-direct/range {v35 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v6, v5, v11

    aget-object v5, v5, v10

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/Paint;

    aput-object v6, v7, v11

    aput-object v5, v7, v10

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    const/4 v6, 0x2

    aput-object v5, v7, v6

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    move-object/from16 v40, v7

    invoke-direct/range {v35 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget-object v40, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    invoke-direct/range {v35 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity;->greenDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/CallLogActivity;->greenDrawable2:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v6, v11

    aput-object v5, v6, v10

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->calllog_msgCallUpRedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aput-object v4, v6, v5

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->calllog_msgCallDownRedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aput-object v4, v6, v5

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    move-object/from16 v40, v6

    move/from16 v42, v32

    invoke-direct/range {v35 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    iget-object v4, v0, Lorg/telegram/ui/CallLogActivity;->redDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lorg/telegram/ui/CallLogActivity;->redDrawable2:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v6, v11

    aput-object v5, v6, v10

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->calllog_msgCallUpGreenDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x2

    aput-object v4, v6, v5

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->calllog_msgCallDownGreenDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x3

    aput-object v4, v6, v5

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    const/16 v29, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v6

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v11

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v24

    const/16 v24, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    new-array v15, v10, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v2, v15, v11

    filled-new-array/range {v34 .. v34}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1579
    invoke-direct {p0, p1}, Lorg/telegram/ui/CallLogActivity;->hideActionMode(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1582
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onBecomeFullyVisible()V
    .locals 8

    .line 1127
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1129
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintWasShown:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->showCallsTab:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hidecallshint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 1130
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const-wide/16 v5, 0xbb8

    .line 1131
    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, -0x3e380000    # -25.0f

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/R$string;->TapToHideCallsTab:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v5, 0x50

    const/16 v6, 0x30

    const/4 v7, -0x1

    invoke-static {v7, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    add-int/2addr v3, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1139
    iput-boolean v4, p0, Lorg/telegram/ui/CallLogActivity;->hideCallTabsHintWasShown:Z

    .line 1141
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 700
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 701
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/CallLogActivity;->getCalls(II)V

    .line 702
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getActiveGroupCalls()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/CallLogActivity;->activeGroupCalls:Ljava/util/ArrayList;

    .line 704
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 705
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 706
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->activeGroupCallsUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 707
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 708
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 711
    const-string v3, "needFinishFragment"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->needFinishFragment:Z

    .line 712
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "hasMainTabs"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    .line 715
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->hidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/CallLogActivity;->additionNavigationBarHeight:I

    .line 716
    iget-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->hasMainTabs:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->visible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_2
    iput v1, p0, Lorg/telegram/ui/CallLogActivity;->additionFloatingButtonOffset:I

    return v2
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 723
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 724
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 725
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 726
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->activeGroupCallsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 727
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 728
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 1533
    iput p4, p0, Lorg/telegram/ui/CallLogActivity;->navigationBarHeight:I

    .line 1535
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_listViewPadding()V

    .line 1536
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->checkUi_floatingButton()V

    return-void
.end method

.method public onParentScrollToTop()V
    .locals 3

    .line 2104
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 2107
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 2108
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, v2, v2, v2, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 15

    move/from16 v0, p1

    move-object/from16 v1, p3

    const/16 v2, 0x65

    const/16 v3, 0x67

    const/16 v4, 0x66

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1481
    :cond_1
    :goto_0
    array-length v2, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v2, :cond_3

    aget v9, v1, v7

    if-eqz v9, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v2, v8

    .line 1487
    :goto_2
    array-length v1, v1

    const/4 v7, 0x0

    if-lez v1, :cond_9

    if-eqz v2, :cond_9

    if-ne v0, v3, :cond_4

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->lastCallChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;Ljava/lang/String;ZLandroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;)V

    return-void

    .line 1491
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v7

    .line 1492
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/CallLogActivity;->lastCallUser:Lorg/telegram/tgnet/TLRPC$User;

    if-ne v0, v4, :cond_6

    move v10, v8

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    if-eq v0, v4, :cond_8

    if-eqz v7, :cond_7

    iget-boolean v0, v7, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v11, v6

    goto :goto_5

    :cond_8
    :goto_4
    move v11, v8

    :goto_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v14

    invoke-static/range {v9 .. v14}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    return-void

    .line 1495
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1469
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 1470
    iput-boolean v0, p0, Lorg/telegram/ui/CallLogActivity;->mainTabsHiddenByScroll:Z

    .line 1471
    invoke-direct {p0}, Lorg/telegram/ui/CallLogActivity;->updateMainTabsVisibility()V

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity;->listView:Lorg/telegram/ui/Components/UniversalRecyclerView;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 1510
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1512
    iput-boolean p1, p0, Lorg/telegram/ui/CallLogActivity;->openTransitionStarted:Z

    :cond_0
    return-void
.end method

.method public setMainTabsActivityController(Lorg/telegram/ui/MainTabsActivityController;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity;->mainTabsActivityController:Lorg/telegram/ui/MainTabsActivityController;

    return-void
.end method
