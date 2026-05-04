.class Lorg/telegram/ui/Stories/PeerStoriesView$8;
.super Lorg/telegram/ui/Components/CustomPopupMenu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private edit:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

.field final synthetic val$canEditStory:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$popupStillVisible:[Z

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field final synthetic val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

.field final synthetic val$speedControl:Z

.field final synthetic val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field final synthetic val$userCanEditStory:Z


# direct methods
.method public static synthetic $r8$lambda$0oFrgp-js255_-WJCY35KZTgJFk(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1RJl846RgB8-uRF9_pGsJmSlots(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$1ZD7Ov63f2xwPwhqfG_7_HMo2y8(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V
    .locals 0

    .line 1869
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$1c3X3jH80hHvIYEomSJu8XyZ-OM(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onDismissed$61()V

    return-void
.end method

.method public static synthetic $r8$lambda$2F600qq6SCe66Y2IfCLhUWT9xBU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$49(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2hEvh0RMwKFL1fFWPcy2-c6AsIs(Ljava/lang/Runnable;J)V
    .locals 2

    .line 2100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x1f4

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3vPD5M6du5R37pCZM_SnvaAToIk(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addAlbumsLayout$4(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    return-void
.end method

.method public static synthetic $r8$lambda$44cxg47EmO7wGipUuO4ZEp56bsM(Ljava/lang/Runnable;)V
    .locals 0

    .line 1568
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1569
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4QYZfkrikloNPLJQj7z40rxlC9o(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$28(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6W8gYdA48uK10i8YV1p_hH4il18(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$38(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7P-5gBZEytVPIFaD8sSyIZ5gfmY(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8NB5F54ITPkeSyO1ZS7tTwSmbLI(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$47(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8e7MtWemUOVX5eHasdy4fsogkzU(Lorg/telegram/ui/Stories/PeerStoriesView$8;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$33(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$93s1RGoVHBMKE1kd2Jx9tC2wRPw(Ljava/lang/Runnable;J)V
    .locals 2

    .line 1579
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$CaFf18suJqOCEl4hGwZpkyzxGQY(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$45(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DD-BJZ0oKVWBPRWrpKb8KTG2UB0(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$25(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EBTO2fCj0wmYiW7aOw_cT77gjw0(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$52(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EX9L_c5gDuu7LAumkWrBiHIT3Gk(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GnK3eE4xbinLw8D5ymTzZAS9tTs(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$40(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hq4LVL2yv7H2csj7Kc3fmENuTsk(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$30(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KNBD-S3nX4u9u7cmzkafWXy6unU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addViewStatistics$0(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLdYqe3OnhDahGphewkxWQ1nA7E(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$39(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LQELnlEsRlqTjzYnqV5juy43db0(Lorg/telegram/ui/Stories/PeerStoriesView$8;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$44(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NV2WjvVVPH_8msYrDZ0Kte2fosg(Ljava/lang/Runnable;)V
    .locals 0

    .line 1694
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1695
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Omm4uj9qQqwBBIf4-pXPWBfLXv4(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addAlbumsLayout$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RdMStbOwJXiW6BcmoKusab0Upag(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$53(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T7TFN1lIBFGlHqXfI5RBdtCL_XI(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$20(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7EbgAgmMCeQNjtKogfzlVNd5U8(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addAlbumsLayout$5(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VU5a7tw08M0tpjO9YNLN2d5ydoQ(Ljava/lang/Runnable;J)V
    .locals 2

    .line 1705
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x20

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$XI_EGPJEJp0cUDX-Z6PcdPT1Jhk(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$15(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUOsEgjB5JBIDkyCtvv-PwUbVwc(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$21(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XY1w8f2kppVtrGy59fpved89Z1s(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryContainsEmojiButton;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$60(Lorg/telegram/ui/Stories/StoryContainsEmojiButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOd_0mAZ8mLhn9Y_-3076o35eZk(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$_UfH-cuc-uiDN-sSWCrfiX9PriY(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_yN-BXYv7gOPVoHtzsMoD1J64fI(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 7

    const/4 v0, 0x0

    .line 1641
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1642
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_2

    .line 1643
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1644
    :cond_0
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_2

    .line 1645
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v1, :cond_1

    goto :goto_1

    .line 1646
    :cond_1
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    .line 1647
    invoke-interface {p2, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 1652
    invoke-interface {p2, p0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ajWxDy9IHtL5QfTYFOeVqfPiDWg(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$27(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$akppXdzFjSA1l0hMQ26mC93dnhU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addSpeedLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d0LP-w0U0vUtbT-RXF_S2lVMGaU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$43(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dt0ACLa9UX1kNORJEhPkh8kA6CA(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$59(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e25WEZ1bWemBghdBicKEtsoum4g(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addAlbumsLayout$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f2mS9OHREAaY0zfxPk0fkyfF6ck(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    .locals 1

    .line 1376
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$hH-rlABH44zvPMhIKMd-GozMmAo(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqv-39MkwqFBW-ymPm0bp7TPpbQ(Lorg/telegram/ui/Stories/PeerStoriesView$8;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$addAlbumsLayout$7(Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jRN0EmOo6QG00zhZR7U9aUIB1x4(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$17(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k0eiB15GJLW6ysbq_WyxqX2hwkw(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/app/Activity;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$16(Landroid/app/Activity;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kD-cVEBoJ8XPOqtjZgaOvrYUkbU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$35(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kS6wJp3Urrglu0z2Ef8eGulSplc(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$11(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kkQekJEdPFrNqPha5yZIXlapoB4(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V
    .locals 1

    .line 1455
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1456
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$nHOviH06EX5Zk9E1YtK7XVWSmiU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$46(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o2MqVUVwTdXq7UNDMhZFB70exyk(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$41(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDxAcVXZhWXLfqVNt3UdeX1SsnY(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$48(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pa0oGFNWX-lIkZ2eSovCk1B8LH8(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qIIxq0p6H_-4FSV0yitshklDvJU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$29(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rVsuPxLsudFzomSQr9kQ1d0unxs(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 1

    .line 1407
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$rv4ddzDfrcC3oI-nSjhp75oHYjo(Lorg/telegram/ui/Stories/StoryViewer;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 2118
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$u7h6FzqOJBSbWbgkeN9UBuKztIM(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$37(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uUX6o7-19q781WfJ9S6tA1MtVv4(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$55()V

    return-void
.end method

.method public static synthetic $r8$lambda$xXg-2049URIWcZODworf6rCL8S8(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$57(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xmngqCPBsWTUhsiM0e2_-zMyMa4(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$26(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxIT4o15XSK87Z2qECucu2JCMUU(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->lambda$onCreate$54(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;ZZZLandroid/content/Context;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;[Z)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput-object p6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iput-boolean p7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$speedControl:Z

    iput-boolean p8, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$canEditStory:Z

    iput-boolean p9, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$userCanEditStory:Z

    iput-object p10, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$context:Landroid/content/Context;

    iput-object p11, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    iput-object p12, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$popupStillVisible:[Z

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/CustomPopupMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method private addAlbumsLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V
    .locals 8

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1399
    :cond_0
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1400
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->albums:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v4, v1

    goto :goto_1

    .line 1402
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 1405
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->swipeback(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    .line 1406
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    sget v3, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda41;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v2, v1, v3, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1411
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 1412
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Stories/StoriesController;->getStoryAlbumsList(J)Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;

    move-result-object v3

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v6

    .line 1414
    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->canCreateNewAlbum(J)Z

    move-result v5

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v6, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda42;

    invoke-direct {v6, p0, v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v7, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda43;

    invoke-direct {v7, p0, v4, v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1412
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/ItemOptions;->addAlbumsItemOptions(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Stories/StoriesController$StoriesCollections;Ljava/util/HashSet;ZLjava/lang/Runnable;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputalbumLayout(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/view/ViewGroup;)V

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalbumLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v0

    .line 1452
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 1453
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->StoriesAlbumAddToAlbum:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->menu_album_add:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 1454
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda44;

    invoke-direct {v2, p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 1464
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    if-eqz p2, :cond_2

    .line 1467
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {p2, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 1468
    sget v1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, -0x1

    const/16 v1, 0x8

    .line 1469
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private addSpeedLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V
    .locals 10

    .line 1341
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$speedControl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1347
    :cond_0
    new-instance v2, Lorg/telegram/ui/ChooseSpeedLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$2;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/ChooseSpeedLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputspeedLayout(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ChooseSpeedLayout;)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ChooseSpeedLayout;

    move-result-object v0

    sget v2, Lorg/telegram/ui/Stories/StoryViewer;->currentSpeed:F

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ChooseSpeedLayout;->update(FZ)V

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Speed:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_speed:I

    invoke-virtual {v0, v2, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mupdateSpeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    const/high16 v1, 0x43440000    # 196.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1368
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 1369
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    const/4 v1, -0x1

    .line 1371
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v2, 0x42400000    # 48.0f

    .line 1372
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1373
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1374
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedLayout(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ChooseSpeedLayout;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ChooseSpeedLayout;->speedSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v0

    .line 1375
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda39;

    invoke-direct {v4, p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    iput-object v4, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBackLayout:Ljava/lang/Runnable;

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1384
    iput-boolean v3, p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    if-eqz p2, :cond_2

    .line 1387
    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {p2, v0, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 1388
    sget v0, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v0, 0x8

    .line 1389
    invoke-static {v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_2
    return-void

    .line 1342
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputspeedLayout(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ChooseSpeedLayout;)V

    .line 1343
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    return-void
.end method

.method private addViewStatistics(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 9

    .line 1307
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-nez v1, :cond_1

    .line 1308
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1310
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1312
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 1314
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_view_stats:Z

    if-eqz v1, :cond_1

    .line 1315
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    sget v2, Lorg/telegram/messenger/R$string;->ViewStatistics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda51;

    invoke-direct {v2, p0, p2, v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addAlbumsLayout$4(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 4

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    iget v0, p3, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/ui/Stories/StoriesController;->addStoryToAlbum(JILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1419
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v0, Lorg/telegram/messenger/R$string;->StoryAddedToAlbumX:I

    iget-object p3, p3, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 1421
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    .line 1419
    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1422
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$addAlbumsLayout$5(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V
    .locals 4

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v1, v2, p3, v3}, Lorg/telegram/ui/Stories/StoriesController;->createAlbum(JLjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$addAlbumsLayout$6(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 2

    .line 1416
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x0

    invoke-static {v0, p2, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createStoriesAlbumEnterNameForCreate(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/MessagesStorage$StringCallback;)V

    .line 1425
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1426
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addAlbumsLayout$7(Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;)V
    .locals 5

    .line 1430
    iget v0, p4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1433
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    iget p1, p4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-virtual {v2, v3, v4, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->addStoryToAlbum(JILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1434
    sget p1, Lorg/telegram/messenger/R$string;->StoryAddedToAlbumX:I

    iget-object p2, p4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v0

    invoke-static {p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1436
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    iget p1, p4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->album_id:I

    invoke-virtual {v2, v3, v4, p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->removeStoryFromAlbum(JILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1437
    sget p1, Lorg/telegram/messenger/R$string;->StoryRemovedFromAlbumX:I

    iget-object p2, p4, Lorg/telegram/ui/Stories/StoriesController$StoryAlbum;->title:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v0

    invoke-static {p1, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1439
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    .line 1441
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 1439
    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1442
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1444
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 1445
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$addAlbumsLayout$9(Landroid/view/View;)V
    .locals 0

    .line 1460
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetalbumItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method

.method private synthetic lambda$addSpeedLayout$2(Landroid/view/View;)V
    .locals 0

    .line 1381
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetspeedItem(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->openSwipeBack()V

    return-void
.end method

.method private synthetic lambda$addViewStatistics$0(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 6

    .line 1316
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p4, :cond_0

    .line 1317
    invoke-virtual {p4}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    .line 1319
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 1320
    iget p4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput p4, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 1321
    new-instance v2, Lorg/telegram/messenger/MessageObject;

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p4

    invoke-direct {v2, p4, p1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    const/4 p1, 0x0

    .line 1322
    invoke-virtual {v2, p1}, Lorg/telegram/messenger/MessageObject;->generateThumbs(Z)V

    .line 1323
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/messenger/MessageObject;JZ)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/StoryViewer;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private synthetic lambda$onCreate$10(Landroid/view/View;)V
    .locals 0

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz p1, :cond_0

    .line 1481
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->cancel()V

    .line 1482
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mupdateStoryItems(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 1484
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 1485
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$11(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Landroid/view/View;)V
    .locals 0

    .line 1504
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$meditPrivacy(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1505
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1506
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$12()V
    .locals 2

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    const/4 v1, 0x0

    .line 1559
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$15(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 14

    move-object/from16 v0, p3

    .line 1562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1563
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const-wide/16 v6, 0x190

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_1

    .line 1564
    iget-object p1, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    .line 1565
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    .line 1566
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v9, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    .line 1567
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputonImageReceiverThumbLoaded(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)V

    .line 1571
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1572
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 1574
    :cond_0
    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1577
    :cond_1
    iput-boolean v9, v5, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    iput-boolean v9, v4, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1578
    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setOnReadyListener(Ljava/lang/Runnable;)V

    .line 1582
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    .line 1583
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmuteIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1584
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmuteIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1586
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v10, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v12, 0x578

    sub-long/2addr v10, v12

    cmp-long p1, v1, v10

    if-lez p1, :cond_3

    .line 1587
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object/from16 p1, p2

    .line 1589
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    .line 1590
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v9, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    .line 1591
    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1592
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1593
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onCreate$16(Landroid/app/Activity;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 8

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v1

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_0

    .line 1538
    iget-wide v2, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1540
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getDraftsController()Lorg/telegram/ui/Stories/recorder/DraftsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/ui/Stories/recorder/DraftsController;->getForEdit(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1541
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1542
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    .line 1543
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    .line 1546
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->copy()Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    .line 1548
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1549
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v6

    iput-wide v6, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 1550
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->toInputMedia(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object p1

    iput-object p1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1551
    iget-object p1, p2, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    instance-of v0, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v0, :cond_3

    .line 1552
    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    .line 1553
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    iput-object p1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 1556
    :cond_3
    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryViewer(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V

    .line 1557
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda57;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnFullyOpenListener(Ljava/lang/Runnable;)V

    .line 1561
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda58;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V

    return-void
.end method

.method private synthetic lambda$onCreate$17(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 2

    .line 1521
    invoke-virtual {p5}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1522
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetshiftDp(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputshiftDp(Lorg/telegram/ui/Stories/PeerStoriesView;I)V

    int-to-float p2, p3

    invoke-static {p5, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 1523
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const-string p2, "Wait until current upload is complete"

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1526
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 1530
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->edit:Z

    .line 1531
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p2, :cond_2

    .line 1532
    invoke-virtual {p2}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    .line 1534
    :cond_2
    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda50;

    invoke-direct {p2, p0, p1, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/app/Activity;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->releasePlayer(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1598
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 1659
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    if-eqz v0, :cond_1

    .line 1660
    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1663
    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1664
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iget v1, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    if-ne v0, v1, :cond_0

    .line 1665
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_stories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1670
    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCreate$20(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1658
    new-instance p4, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda8;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreate$21(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 1638
    instance-of v0, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoriesController$BotPreview;->list:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz v0, :cond_0

    .line 1640
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->reload(Ljava/lang/Runnable;)V

    return-void

    .line 1655
    :cond_0
    new-instance p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;-><init>()V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1657
    iget-object v0, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_stories_getStoriesByID;->id:Ljava/util/ArrayList;

    iget v1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onCreate$22()V
    .locals 2

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    const/4 v1, 0x0

    .line 1685
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$25(Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Ljava/lang/Long;Ljava/lang/Runnable;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 14

    move-object/from16 v0, p3

    .line 1688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1689
    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    iget-object v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    const-wide/16 v6, 0x190

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v5, :cond_1

    .line 1690
    iget-object p1, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    .line 1691
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(Z)V

    .line 1692
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v9, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    .line 1693
    new-instance v1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fputonImageReceiverThumbLoaded(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)V

    .line 1697
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1698
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 1700
    :cond_0
    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1703
    :cond_1
    iput-boolean v9, v5, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    iput-boolean v9, v4, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->firstFrameRendered:Z

    .line 1704
    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->setOnReadyListener(Ljava/lang/Runnable;)V

    .line 1708
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {v1, v9}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    .line 1709
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmuteIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1710
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetmuteIconView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;->muteDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1712
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-wide v10, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->videoDuration:J

    const-wide/16 v12, 0x578

    sub-long/2addr v10, v12

    cmp-long p1, v1, v10

    if-lez p1, :cond_3

    .line 1713
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object/from16 p1, p2

    .line 1715
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->setActive(JZ)V

    .line 1716
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v9, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->editOpened:Z

    .line 1717
    invoke-static {v0, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1718
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1719
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onCreate$26(Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V
    .locals 7

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v1

    .line 1625
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->playerSharedScope:Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz p1, :cond_0

    .line 1626
    iget-wide v2, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->currentPosition:J

    :goto_0
    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 1628
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromStoryItem(Ljava/io/File;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    .line 1629
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editStoryPeerId:J

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getCoverTime(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->cover:J

    .line 1632
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->copy()Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    const/4 p1, 0x1

    .line 1634
    iput-boolean p1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditingCover:Z

    .line 1635
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v0, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingCoverDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1637
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    iput-object v0, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->updateDocumentRef:Lorg/telegram/messenger/Utilities$Callback;

    .line 1674
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1675
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide p1

    iput-wide p1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 1676
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->toInputMedia(Lorg/telegram/tgnet/TLRPC$MessageMedia;)Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-result-object p1

    iput-object p1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editingBotPreview:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1677
    iget-object p1, p3, Lorg/telegram/ui/Stories/StoryViewer;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    instance-of p2, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    if-eqz p2, :cond_1

    .line 1678
    check-cast p1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    .line 1679
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->lang_code:Ljava/lang/String;

    iput-object p1, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 1682
    :cond_1
    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryViewer(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->openEdit(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JZ)V

    .line 1683
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda55;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnFullyOpenListener(Ljava/lang/Runnable;)V

    .line 1687
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda56;

    invoke-direct {p1, p0, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->setOnPrepareCloseListener(Lorg/telegram/messenger/Utilities$Callback4;)V

    return-void
.end method

.method private synthetic lambda$onCreate$27(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;Landroid/view/View;)V
    .locals 6

    .line 1609
    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p5, p5, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p5}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->getPath()Ljava/io/File;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 1610
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p5

    if-nez p5, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_1

    .line 1614
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1618
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->edit:Z

    .line 1619
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_3

    .line 1620
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    .line 1622
    :cond_3
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda46;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/app/Activity;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    .line 1723
    iget-object p1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    invoke-interface {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->releasePlayer(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1724
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_0
    return-void

    .line 1611
    :goto_1
    iget-object p1, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mshowDownloadAlert(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method

.method private synthetic lambda$onCreate$28(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 1741
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 1742
    iput-boolean p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    .line 1743
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean p4, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz p4, :cond_2

    .line 1744
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p3, Lorg/telegram/messenger/R$raw;->contact_check:I

    goto :goto_0

    :cond_0
    sget p3, Lorg/telegram/messenger/R$raw;->chats_archived:I

    :goto_0
    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->StoryPinnedToProfile:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->StoryArchivedFromProfile:I

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 1747
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget p3, Lorg/telegram/messenger/R$string;->StoryPinnedToPosts:I

    .line 1748
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->StoryPinnedToPostsDescription:I

    .line 1749
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 1747
    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1750
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1752
    :cond_3
    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->chats_archived:I

    sget p3, Lorg/telegram/messenger/R$string;->StoryUnpinnedFromPosts:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1756
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onCreate$29(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    .line 1738
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda38;

    invoke-direct {v5, p0, p1, p2, p3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesPinned(JLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    .line 1759
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1760
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$30(Landroid/view/View;)V
    .locals 0

    .line 1770
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$msaveToGallery(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 1771
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1772
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$31(Landroid/view/View;)V
    .locals 0

    .line 1783
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->createLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1784
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$monLinkCopied(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 1785
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1786
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$32(Landroid/view/View;)V
    .locals 1

    .line 1793
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mshareStory(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 1794
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1795
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$33(ZLandroid/view/View;)V
    .locals 0

    .line 1803
    sget-object p2, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p2, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 1804
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/LivePlayer;->setMuted(Z)V

    .line 1806
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 1807
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$34(Landroid/view/View;)V
    .locals 0

    .line 1813
    sget-object p1, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p1, :cond_0

    .line 1814
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LivePlayer;->switchCamera()V

    .line 1816
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 1817
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$35(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 1824
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p2, :cond_0

    .line 1825
    invoke-virtual {p2}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1828
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->switchToPip()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$37(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1865
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p3, :cond_0

    .line 1866
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1868
    :cond_0
    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreate$38(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;ZZZZLorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    .line 1851
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p4, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p4, p4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p4, :cond_0

    iget-boolean p4, p4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eq p4, p5, :cond_1

    .line 1852
    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->updateStoriesPinned(JLjava/util/ArrayList;ZLorg/telegram/messenger/Utilities$Callback;)V

    .line 1856
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz p4, :cond_2

    .line 1857
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1860
    new-instance p4, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;

    invoke-direct {p4}, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;-><init>()V

    .line 1861
    iput-object p2, p4, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1862
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p4, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;->messages_enabled:Ljava/lang/Boolean;

    int-to-long p2, p8

    .line 1863
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p4, Lorg/telegram/tgnet/tl/TL_phone$toggleGroupCallSettings;->send_paid_messages_stars:Ljava/lang/Long;

    .line 1864
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda53;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-virtual {p2, p4, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_2
    return-void
.end method

.method private synthetic lambda$onCreate$39(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 5

    .line 1839
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p3, :cond_0

    .line 1840
    invoke-virtual {p3}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    .line 1842
    :cond_0
    new-instance p3, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x15180

    invoke-direct {p3, v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x1

    .line 1843
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setLive(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    .line 1844
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p3

    .line 1845
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setLiveSettings(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p3

    const/4 v0, 0x0

    .line 1846
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->allowCover(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p3

    .line 1847
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->setCount(I)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p3

    .line 1848
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->isEdit(Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p3

    iget-object v1, p2, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v1, :cond_1

    .line 1849
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/LivePlayer;->areMessagesEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->allowScreenshots()Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iget-object p2, p2, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/LivePlayer;->getSendPaidMessagesStars()J

    move-result-wide v3

    long-to-int p2, v3

    :goto_2
    invoke-virtual {p3, v1, v2, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->set(ZZZI)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    move-result-object p1

    .line 1850
    new-instance p2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda37;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->whenSelectedRules(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$DoneCallback;Z)Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    .line 1873
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$onCreate$40(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1889
    iget-object p1, p1, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz p1, :cond_0

    .line 1890
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/LivePlayer;->end()V

    return-void

    .line 1892
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mdeleteStory(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method

.method private synthetic lambda$onCreate$41(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 1

    .line 1882
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p3, :cond_0

    .line 1883
    invoke-virtual {p3}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    .line 1885
    :cond_0
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p1, Lorg/telegram/messenger/R$string;->LiveStoryEndAlertTitle:I

    .line 1886
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->LiveStoryEndAlertText:I

    .line 1887
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->LiveStoryEndAlertButton:I

    .line 1888
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1895
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, -0x1

    .line 1896
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1897
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onCreate$42(Landroid/view/View;)V
    .locals 0

    .line 1905
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mdeleteStory(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 1906
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1907
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$43(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 5

    .line 1940
    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p5

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p5

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stories_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p5, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1941
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JJ)V

    .line 1943
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    const/4 p2, 0x1

    new-array p5, p2, [Lorg/telegram/tgnet/TLObject;

    aput-object p3, p5, v0

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    sget p5, Lorg/telegram/messenger/R$string;->NotificationsStoryMutedHint:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v0

    const-string p4, "NotificationsStoryMutedHint"

    invoke-static {p4, p5, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1944
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1945
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$44(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/view/View;)V
    .locals 5

    .line 1952
    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p5

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p5

    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stories_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p5, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1953
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    iget-object p5, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationsController;->updateServerNotificationsSettings(JJ)V

    .line 1954
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    new-array p2, v0, [Lorg/telegram/tgnet/TLObject;

    const/4 p5, 0x0

    aput-object p3, p2, p5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->NotificationsStoryUnmutedHint:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p4, v0, p5

    const-string p4, "NotificationsStoryUnmutedHint"

    invoke-static {p4, p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->setTag(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1955
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1956
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$45(Landroid/view/View;)V
    .locals 6

    .line 1974
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->removePeer(J)V

    .line 1975
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/StoriesController;->toggleHidden(JZZZ)V

    .line 1976
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1977
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$46(Landroid/view/View;)V
    .locals 2

    .line 1983
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mtoggleArchiveForStory(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    .line 1984
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1985
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$47(Landroid/view/View;)V
    .locals 2

    .line 1990
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mtoggleArchiveForStory(Lorg/telegram/ui/Stories/PeerStoriesView;J)V

    .line 1991
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 1992
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$48(Lorg/telegram/ui/Stories/StoryViewer;Landroid/view/View;)V
    .locals 0

    .line 2001
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p2, :cond_0

    .line 2002
    invoke-virtual {p2}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2005
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->switchToPip()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$49(Landroid/view/View;)V
    .locals 0

    .line 2017
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$msaveToGallery(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2018
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 2019
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$52(Landroid/view/View;)V
    .locals 0

    .line 2056
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->createLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 2057
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$monLinkCopied(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    .line 2058
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 2059
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$53(Landroid/view/View;)V
    .locals 1

    .line 2065
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mshareStory(Lorg/telegram/ui/Stories/PeerStoriesView;Z)V

    .line 2066
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 2067
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$54(Landroid/view/View;)V
    .locals 3

    .line 2075
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    .line 2076
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2077
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    .line 2078
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2079
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_0

    .line 2080
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$55()V
    .locals 2

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2094
    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setTranslating(Z)V

    .line 2096
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2097
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 2098
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$57(Landroid/view/View;)V
    .locals 6

    .line 2085
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    .line 2086
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->cancelTextSelection()V

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p1, :cond_0

    .line 2088
    invoke-interface {p1, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setTranslating(Z)V

    .line 2090
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->getStoriesStorage()Lorg/telegram/ui/Stories/StoriesStorage;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-wide v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {p1, v2, v3, v0}, Lorg/telegram/ui/Stories/StoriesStorage;->updateStoryItem(JLorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2092
    new-instance p1, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda47;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    .line 2100
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda48;

    invoke-direct {v5, p1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda48;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/TranslateController;->translateStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/lang/Runnable;)V

    .line 2101
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->updatePosition()V

    .line 2102
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iput-boolean v1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->checkBlackoutMode:Z

    .line 2103
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetstoryCaptionView(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Stories/StoryCaptionView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/StoryCaptionView;->expand(Z)V

    .line 2104
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 2105
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$59(Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    .line 2116
    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/StoryViewer;->setOverlayVisible(Z)V

    .line 2117
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda52;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ReportBottomSheet;->openStory(ILandroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Components/BulletinFactory;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 2120
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    if-eqz p1, :cond_1

    .line 2121
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$60(Lorg/telegram/ui/Stories/StoryContainsEmojiButton;Landroid/view/View;)V
    .locals 0

    .line 2145
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryContainsEmojiButton;->getAlert()Lorg/telegram/ui/Components/EmojiPacksAlert;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2146
    iget-object p2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p2, p2, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    if-eqz p2, :cond_0

    .line 2147
    invoke-interface {p2, p1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->showDialog(Landroid/app/Dialog;)V

    .line 2148
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CustomPopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDismissed$61()V
    .locals 2

    .line 2160
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->setPopupIsVisible(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    const/4 v7, 0x1

    .line 1514
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1475
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$canEditStory:Z

    const/16 v9, 0x8

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-nez v0, :cond_16

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 1918
    :cond_0
    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->addSpeedLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V

    .line 1920
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    invoke-static {v2, v3, v12, v13}, Lorg/telegram/messenger/NotificationsController;->getSharedPrefKey(JJ)Ljava/lang/String;

    move-result-object v2

    .line 1921
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->areStoriesNotMuted(IJ)Z

    move-result v0

    .line 1925
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    cmp-long v3, v3, v12

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 1926
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    move-object v14, v3

    move-object v15, v4

    move-object v4, v14

    goto :goto_0

    .line 1928
    :cond_1
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v14

    neg-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    move-object v15, v3

    move-object v14, v4

    move-object v4, v15

    :goto_0
    if-nez v14, :cond_3

    if-nez v15, :cond_2

    .line 1930
    const-string v3, ""

    goto :goto_1

    :cond_2
    iget-object v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1931
    :goto_1
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    .line 1933
    invoke-virtual {v3, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v5, v3

    .line 1936
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_5

    .line 1938
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsStoryMute2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v16, v12

    iget-object v12, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v3, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v12

    .line 1939
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda14;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1948
    invoke-virtual {v12, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setMultiline(Z)V

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v12

    .line 1950
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    sget v3, Lorg/telegram/messenger/R$string;->NotificationsStoryUnmute2:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v12, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v3, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v12

    .line 1951
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda15;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1959
    invoke-virtual {v12, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setMultiline(Z)V

    .line 1961
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    if-eqz v14, :cond_6

    .line 1962
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v0, :cond_6

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MediaDataController;->containsTopPeer(J)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    goto :goto_3

    :cond_6
    move v0, v11

    .line 1965
    :goto_3
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-lez v2, :cond_9

    if-eqz v14, :cond_7

    .line 1966
    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v2, :cond_7

    move v2, v7

    goto :goto_4

    :cond_7
    move v2, v11

    :goto_4
    if-eqz v14, :cond_8

    .line 1967
    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$User;->stories_hidden:Z

    if-eqz v3, :cond_8

    :goto_5
    move v3, v7

    goto :goto_7

    :cond_8
    move v3, v11

    goto :goto_7

    :cond_9
    if-eqz v15, :cond_a

    .line 1969
    invoke-static {v15}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v7

    goto :goto_6

    :cond_a
    move v2, v11

    :goto_6
    if-eqz v15, :cond_8

    .line 1970
    iget-boolean v3, v15, Lorg/telegram/tgnet/TLRPC$Chat;->stories_hidden:Z

    if-eqz v3, :cond_8

    goto :goto_5

    :goto_7
    if-eqz v0, :cond_b

    .line 1973
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->StoriesRemoveFromRecent:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda16;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_b
    if-eqz v2, :cond_d

    if-nez v3, :cond_c

    .line 1982
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    sget v2, Lorg/telegram/messenger/R$string;->ArchivePeerStories:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 1989
    :cond_c
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_unarchive:I

    sget v2, Lorg/telegram/messenger/R$string;->UnarchiveStories:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1999
    :cond_d
    :goto_8
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2000
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_video_pip:I

    sget v2, Lorg/telegram/messenger/R$string;->PipMinimize:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda19;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2010
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2011
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mcreateQualityItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 2014
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v2, :cond_10

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowShare(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2015
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    .line 2016
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    sget v2, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2051
    :cond_10
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v2, :cond_11

    .line 2052
    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mcreateStealthModeItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 2054
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowShareLink(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2055
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    sget v2, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda22;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2063
    :cond_12
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowShareLink(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2064
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v2, Lorg/telegram/messenger/R$string;->BotShare:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda23;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2072
    :cond_13
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_15

    .line 2073
    iget-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translated:Z

    if-eqz v2, :cond_14

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->translatedLng:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/Components/TranslateAlert2;->getToLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2074
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    sget v2, Lorg/telegram/messenger/R$string;->HideTranslation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 2083
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/TranslateController;->canTranslateStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2084
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    sget v2, Lorg/telegram/messenger/R$string;->TranslateMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda25;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2111
    :cond_15
    :goto_9
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-direct {v1, v6, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->addViewStatistics(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 2113
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v2, :cond_38

    .line 2114
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/UserObject;->isService(J)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2115
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_report:I

    sget v2, Lorg/telegram/messenger/R$string;->ReportChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda26;

    invoke-direct {v4, v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_19

    .line 1476
    :cond_16
    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v12, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 1477
    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v0, :cond_17

    .line 1478
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 1479
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    if-nez v12, :cond_18

    goto/16 :goto_1c

    .line 1493
    :cond_18
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->canEditStories(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1494
    invoke-direct {v1, v6, v7}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->addAlbumsLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V

    .line 1497
    :cond_1a
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v0, :cond_1c

    .line 1498
    iget-object v0, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1499
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(IILjava/util/ArrayList;)V

    goto :goto_b

    .line 1500
    :cond_1b
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    iget-object v3, v12, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    .line 1501
    :goto_b
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v3, Lorg/telegram/messenger/R$string;->WhoCanSee:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v2, v3, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    .line 1502
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/CharSequence;)V

    .line 1503
    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1, v0, v12}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x38

    .line 1509
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 1511
    :cond_1c
    invoke-direct {v1, v6, v11}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->addSpeedLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Z)V

    .line 1512
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$speedControl:Z

    if-eqz v0, :cond_1e

    .line 1513
    :cond_1d
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 1514
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1515
    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1518
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v2, :cond_21

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1f
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$userCanEditStory:Z

    if-eqz v0, :cond_21

    .line 1519
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget v3, Lorg/telegram/messenger/R$string;->EditBotPreview:I

    goto :goto_c

    :cond_20
    sget v3, Lorg/telegram/messenger/R$string;->EditStory:I

    :goto_c
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v2, v3, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1520
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v13, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$context:Landroid/content/Context;

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda28;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1601
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/StoriesController;->hasUploadingStories(J)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->allowPreparingHevcPlayers()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1602
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1606
    :cond_21
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_22

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisVideo(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    if-nez v2, :cond_23

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$misEditBotsPreview(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_d

    :cond_22
    move-object v3, v12

    goto :goto_e

    .line 1607
    :cond_23
    :goto_d
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_cover_stories:I

    sget v2, Lorg/telegram/messenger/R$string;->StoryEditCoverMenu:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v13

    .line 1608
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$context:Landroid/content/Context;

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$sharedResources:Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;

    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda29;

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer;Lorg/telegram/ui/Stories/PeerStoriesView$SharedResources;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1729
    :goto_e
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v2, :cond_24

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v2, :cond_29

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/Stories/StoriesController;->canEditStories(J)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_24
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1730
    iget-boolean v0, v3, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->pinned:Z

    xor-int/lit8 v2, v0, 0x1

    .line 1732
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-eqz v4, :cond_26

    if-nez v0, :cond_25

    .line 1733
    sget v4, Lorg/telegram/messenger/R$string;->SaveToProfile:I

    :goto_f
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_25
    sget v4, Lorg/telegram/messenger/R$string;->ArchiveStory:I

    goto :goto_f

    :cond_26
    if-nez v0, :cond_27

    .line 1735
    sget v4, Lorg/telegram/messenger/R$string;->SaveToPosts:I

    :goto_10
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    :cond_27
    sget v4, Lorg/telegram/messenger/R$string;->RemoveFromPosts:I

    goto :goto_10

    :goto_11
    if-nez v0, :cond_28

    .line 1737
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_save_story:I

    goto :goto_12

    :cond_28
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_unsave_story:I

    :goto_12
    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v4, v11, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;

    invoke-direct {v5, v1, v3, v2, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1765
    :cond_29
    invoke-direct {v1, v6, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->addViewStatistics(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    .line 1767
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->unsupported:Z

    if-nez v2, :cond_2b

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1768
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget v0, Lorg/telegram/messenger/R$string;->SaveVideo:I

    :goto_13
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_2a
    sget v0, Lorg/telegram/messenger/R$string;->SaveImage:I

    goto :goto_13

    .line 1769
    :goto_14
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v2, v0, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda31;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1777
    :cond_2b
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-nez v2, :cond_2c

    .line 1778
    invoke-static {v0, v6}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mcreateStealthModeItem(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 1781
    :cond_2c
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isChannel:Z

    if-eqz v2, :cond_2d

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowShareLink(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1782
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v2, Lorg/telegram/messenger/R$string;->CopyLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda32;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1791
    :cond_2d
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetallowShareLink(Lorg/telegram/ui/Stories/PeerStoriesView;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1792
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v2, Lorg/telegram/messenger/R$string;->BotShare:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda33;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1799
    :cond_2e
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_32

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    if-eqz v2, :cond_32

    sget-object v2, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v2, :cond_32

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVideoStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/LivePlayer;->equals(Lorg/telegram/tgnet/TLRPC$InputGroupCall;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1800
    sget-object v0, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v7

    goto :goto_15

    :cond_2f
    move v0, v11

    :goto_15
    if-eqz v0, :cond_30

    .line 1801
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_voice_unmuted:I

    goto :goto_16

    :cond_30
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_voice_muted:I

    :goto_16
    if-eqz v0, :cond_31

    sget v3, Lorg/telegram/messenger/R$string;->Unmute:I

    :goto_17
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_31
    sget v3, Lorg/telegram/messenger/R$string;->Mute:I

    goto :goto_17

    :goto_18
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v2, v3, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    .line 1802
    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda34;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Z)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1811
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_camera_retake:I

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrSwitchCamera:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 1812
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda35;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1822
    :cond_32
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1823
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_video_pip:I

    sget v2, Lorg/telegram/messenger/R$string;->PipMinimize:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v3, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1833
    :cond_33
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    .line 1834
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_34

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    .line 1835
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetdialogId(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    if-eqz v0, :cond_35

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    .line 1836
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->isThisCall(J)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/LivePlayer;->isCreator()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1838
    :cond_34
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_settings_old:I

    sget v2, Lorg/telegram/messenger/R$string;->LiveStorySettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1, v2, v3}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1877
    :cond_35
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    const v2, 0x3df5c28f    # 0.12f

    if-eqz v0, :cond_36

    .line 1878
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    sget v3, Lorg/telegram/messenger/R$string;->LiveStoryEnd:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v3, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 1879
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1880
    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface {v4, v3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface {v5, v3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1881
    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1, v3, v4}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/StoryViewer;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1900
    :cond_36
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->-$$Nest$fgetisLive(Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-boolean v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->isSelf:Z

    if-nez v3, :cond_37

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/StoriesController;->canDeleteStory(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1901
    :cond_37
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v3, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v6, v0, v3, v11, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 1902
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 1903
    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v2

    iget-object v4, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-interface {v4, v3}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1904
    new-instance v2, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2128
    :cond_38
    :goto_19
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2131
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isDocumentHasAttachedStickers(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_3a

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-eqz v0, :cond_3a

    :cond_39
    move/from16 v17, v7

    goto :goto_1a

    :cond_3a
    move/from16 v17, v11

    .line 2135
    :goto_1a
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$mgetAnimatedEmojiSets(Lorg/telegram/ui/Stories/PeerStoriesView;Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_3b

    .line 2136
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_1b

    :cond_3b
    move v7, v11

    :goto_1b
    if-nez v17, :cond_3d

    if-eqz v7, :cond_3c

    goto :goto_1d

    :cond_3c
    :goto_1c
    return-void

    .line 2138
    :cond_3d
    :goto_1d
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$context:Landroid/content/Context;

    iget-object v3, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 2139
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v0, v2, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2140
    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2142
    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_3e

    :goto_1e
    move-object v15, v2

    goto :goto_1f

    :cond_3e
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_1e

    .line 2143
    :goto_1f
    new-instance v12, Lorg/telegram/ui/Stories/StoryContainsEmojiButton;

    iget-object v13, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$context:Landroid/content/Context;

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v14

    iget-object v0, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v16, v0

    move-object/from16 v19, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/Stories/StoryContainsEmojiButton;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;Ljava/lang/Object;ZLjava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2144
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda27;

    invoke-direct {v0, v1, v12}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;Lorg/telegram/ui/Stories/StoryContainsEmojiButton;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2151
    sget v0, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-virtual {v12, v0, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, -0x2

    .line 2152
    invoke-static {v10, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method protected onDismissed()V
    .locals 2

    .line 2158
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->edit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->val$popupStillVisible:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 2159
    new-instance v0, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/PeerStoriesView$8$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->popupMenu:Lorg/telegram/ui/Components/CustomPopupMenu;

    .line 2164
    iput-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->editStoryItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-void
.end method
