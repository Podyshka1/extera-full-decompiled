.class public Lorg/telegram/ui/ChatEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private adminCell:Lorg/telegram/ui/Cells/TextCell;

.field private autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

.field private availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

.field private avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private avatarAnimation:Landroid/animation/AnimatorSet;

.field private avatarContainer:Landroid/widget/LinearLayout;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarOverlay:Landroid/view/View;

.field private avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private balanceContainer:Landroid/widget/LinearLayout;

.field private blockCell:Lorg/telegram/ui/Cells/TextCell;

.field private boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

.field private botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

.field private botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private canForum:Z

.field private changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

.field private channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

.field private chatAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field private chatBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private chatDefaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private chatId:J

.field private colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

.field private createAfterUpload:Z

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private deleteContainer:Landroid/widget/FrameLayout;

.field private deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private doneButton:Landroid/view/View;

.field private donePressed:Z

.field private editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

.field private editIntroCell:Lorg/telegram/ui/Cells/TextCell;

.field private forum:Z

.field private forumTabs:Z

.field private forumsCell:Lorg/telegram/ui/Cells/TextCell;

.field private hasUploadedPhoto:Z

.field private historyCell:Lorg/telegram/ui/Cells/TextCell;

.field private historyHidden:Z

.field private imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoContainer:Landroid/widget/LinearLayout;

.field private infoSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

.field private isChannel:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linkedCell:Lorg/telegram/ui/Cells/TextCell;

.field private locationCell:Lorg/telegram/ui/Cells/TextCell;

.field private logCell:Lorg/telegram/ui/Cells/TextCell;

.field private memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

.field private membersCell:Lorg/telegram/ui/Cells/TextCell;

.field private nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

.field private final preloadedReactions:Ljava/util/List;

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

.field private reactionsCell:Lorg/telegram/ui/Cells/TextCell;

.field private realAdminCount:I

.field private scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

.field private setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

.field private settingsContainer:Landroid/widget/LinearLayout;

.field private settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

.field private statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

.field private stickersCell:Lorg/telegram/ui/Cells/TextCell;

.field private stickersContainer:Landroid/widget/FrameLayout;

.field private stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private suggestedCell:Lorg/telegram/ui/Cells/TextCell;

.field private tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

.field private typeCell:Lorg/telegram/ui/Cells/TextCell;

.field private typeEditContainer:Landroid/widget/LinearLayout;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

.field private userId:J

.field private userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

.field private verifyCell:Lorg/telegram/ui/Cells/TextCell;

.field private verifyInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;


# direct methods
.method public static synthetic $r8$lambda$-ZjQE2cc4kT1bp21CH9kdiN3gY4(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$loadLinksCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-Zv4VBOodw1WpPTh2ueSf1hPblU(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0LZ2GoqVwQFWJDk_OyfqsoGypAE(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0i3Jn0UBr51bRIrCnyHUhjFYQTQ(Lorg/telegram/ui/ChatEditActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$22(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1SNDT_M01qytqk7BYi7y05fNJ6k(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1sqXRQk52NNXCiVRp7CVbDkV6QE(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/Stars/BotStarsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$47(Lorg/telegram/ui/Stars/BotStarsController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1vSqldAl-SpkYqRiEtB47kmuY7s(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$loadLinksCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3rccxJnkYJOXsXX6DFrVH5Hss2c(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$54(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Abm3GhZHFXSKmqJSKv8IPI2A0k(Lorg/telegram/ui/ChatEditActivity;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$updateHistoryShow$65(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5G5aONPi-0otNLusfklBy7-rmi0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$38(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5iRk6zwGJzfhCWWW7r5dTaxCJOQ(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$58()V

    return-void
.end method

.method public static synthetic $r8$lambda$7TsT_hiaNhDIgMXO78dfMUbJ_bo(Lorg/telegram/ui/ChatEditActivity;[ZJLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$24([ZJLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8KKJXt0CRuxtYb2lv0FB_DcQzWk(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$52(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9citJdfa66RZrrFOtfrlfgGsia4(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOJ9lLjGqFvf4SA2fgNPEJc7AK4(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$57(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AqqrUb2J1p1SKr8fw_i22O9aG00(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$43(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BvReA-FIhuIye4Ys_VnzCNOMFCs(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$getThemeDescriptions$66()V

    return-void
.end method

.method public static synthetic $r8$lambda$CowrVmR_LcLTU8ntvLZAfkY9c7M(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$17(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJmquqqezLbgqsyut6lgBPk_Gm0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Eq_-R0Fhgl4MaQ6m_NB70g6VTiI(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$10(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fo0_gZAFkYnN6_2JYZQ3uAkjDNE(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IDiSN_Zit9Iukzsh7TenKOEEiu0(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$41(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHde6oClHoYUgMLFKdZtLKkcBAQ(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$33(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_sDskj8jZ5oxQFPRYk-F_GnNjQ(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$46(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IdwSrjmEL98v7_ksGvtmSFmU--4(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$45(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JvxWElLAMFA7IgL3BNP2aMFP69I(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$30(Landroid/view/View;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N6jbjFL7cmMDv4Dt7YiRlNSnybI(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5I2OGImdCoftQ_Cht_E0X2pL1w(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$31(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZFiSAXHKSUyjkOwxFjyWmRpzNI(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$39(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8sNoyQPwWTEoWoIKBKUw0ZxN8w(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$18(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WOwVI-woighXdxAXJFmhND-BUgA(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$35(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXfRGnSTCMA8hlmhgzzvUynwsU4(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$55(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_0OLyML0-m1G39iq-hrTX1jE_8(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WoHlwS2iZaVjmv7m4QI-GnTAIdU(Lorg/telegram/ui/ChatEditActivity;Z[ZJLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$23(Z[ZJLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X12w8aEBF4QLIrD60rhbA8QbMLg(Lorg/telegram/ui/ChatEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$20(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XghMRgSR7oP9gVExWzkd6YJWGMs(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$27(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9Ppif0SRUps3cexeG-fsAdONhQ(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$7(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bECQQR1AsfMqOyO2lA74BuJCNOA(Lorg/telegram/ui/ChatEditActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$62(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cUM3YjjNlafBY4Y1K8mVl6-wWeo(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$cg7GQFA33nLOHAEJdDW02toMrDY(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$coiKdkRGCe2NyzLLQDdQn4xB6Ns(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d7_fi-memhe5Ko3oBwVe5-ggdfE(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$44(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dAZcshxffPOf-NkhpeZTxPCzwZY(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$29(Lorg/telegram/ui/ActionBar/AlertDialog;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$dB78MOuHak-3poReYkwcu7hPiyo(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$26(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fsXnRStxW4Mfq8f8huyolmBWLW8(Lorg/telegram/ui/ChatEditActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$14(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$gXKnHuWZbBHrj_2-IO8IADSX1yo(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$19(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iTjhdND7qBtCCnoTWNxwjfgNbJE(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$51()V

    return-void
.end method

.method public static synthetic $r8$lambda$kOW24g2VXNfnoZCtpqAOQqKfhMw(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kWdxv-xNGes8A98MDU2OekLgEfk(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$kcWc6IsAq2pJ5WKNCFxGdk0Y9z0(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/Stars/BotStarsController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$48(Lorg/telegram/ui/Stars/BotStarsController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4UEqxo257c5zhjbXcwgb9hIUqs(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChatEditActivity;->lambda$didUploadPhoto$53(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOSxHh-OcTBLolt2lEN-vA1Wq9A(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$50(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mJ1jWEsJ8crT3urhJZlwQbPJj-Q(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDMiGQGWiQcI2jgvaAOJsBsErUM(Lorg/telegram/ui/ChatEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$49(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$p5rJpmk8NIpl7r8Yo1rralYwPIk(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$getRealChannelAdminCount$63(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pzeS2Hi_8cB3QfyW91WgxI0Y_D4(Lorg/telegram/ui/ChatEditActivity;[Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$25([Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qpZ5W2gZC9CfK6DKHP8bAliaZUE(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtuxFm7S126_Uz0dRQBGYDhqV-4(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$checkDiscard$56(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2rVEPy6lQ4ruIN2ggdkXIQ08ds(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnzcEKKTLbXdMYo9WTd0AQZBcdI(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$59(Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWxsVFS_WPWrTU3OMbhot_suxPQ(Lorg/telegram/ui/ChatEditActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$60(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZ3VDA2Upoq-vnlILdeYRWh7Quw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 646
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$t2PhpAfrzJr4Fnj_5OE44SOLJOA(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$txSy7-35DKNLE4Gz1MGUX3LQvbk(Lorg/telegram/ui/ChatEditActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$processDone$61(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$us0UDZmjf6zQDk6HuhEfEoobnCA(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->lambda$getRealChannelAdminCount$64(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xgQJHXYiH7QctIKU55J8VQay46I(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ybiddBgy5B6uACit1vwnd_5cNEw(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->lambda$createView$36(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetavatarAnimation(Lorg/telegram/ui/ChatEditActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarContainer(Lorg/telegram/ui/ChatEditActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarDrawable(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/AvatarDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarImage(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarOverlay(Lorg/telegram/ui/ChatEditActivity;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarProgressView(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatId(Lorg/telegram/ui/ChatEditActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethistoryCell(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageUpdater(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/ImageUpdater;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnameTextView(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Components/EditTextEmoji;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsetAvatarCell(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/Cells/TextCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserId(Lorg/telegram/ui/ChatEditActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputavatarAnimation(Lorg/telegram/ui/ChatEditActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasUploadedPhoto(Lorg/telegram/ui/ChatEditActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDiscard(Lorg/telegram/ui/ChatEditActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->checkDiscard(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprocessDone(Lorg/telegram/ui/ChatEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 313
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lorg/telegram/ui/ChatEditActivity;->realAdminCount:I

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    .line 222
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$1;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 314
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 315
    const-string v1, "chat_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 316
    const-string v1, "user_id"

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    .line 318
    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 319
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 320
    new-instance v0, Lorg/telegram/ui/Components/ImageUpdater;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-direct {v0, v1, p1, v1}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void

    .line 322
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/ImageUpdater;

    invoke-direct {p1, v0, v0, v0}, Lorg/telegram/ui/Components/ImageUpdater;-><init>(ZIZ)V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatEditActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 120
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method public static applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1565
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1566
    const-string p0, "  d"

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1567
    new-instance p0, Lorg/telegram/ui/FilterCreateActivity$NewSpan;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;-><init>(ZI)V

    .line 1568
    const-string v1, "fonts/num.otf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1569
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradient1:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FilterCreateActivity$NewSpan;->setColor(I)V

    .line 1570
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private checkDiscard(Z)Z
    .locals 5

    .line 1901
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 1902
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v2, v0

    .line 1903
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_4

    .line 1904
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    .line 1906
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    .line 1907
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->BotSettingsChangedAlert:I

    .line 1908
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    .line 1909
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    .line 1910
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1911
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1906
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    return v1

    :cond_4
    return v3

    .line 1918
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_6

    return v3

    .line 1921
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object v2, v4

    :cond_7
    if-eqz v0, :cond_8

    .line 1922
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-boolean v4, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-ne v0, v4, :cond_b

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1923
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_a

    .line 1924
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eq v0, v2, :cond_e

    :cond_b
    if-eqz p1, :cond_d

    .line 1928
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1929
    const-string v0, "UserRestrictionsApplyChanges"

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1930
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_c

    .line 1931
    const-string v0, "ChannelSettingsChangedAlert"

    sget v2, Lorg/telegram/messenger/R$string;->ChannelSettingsChangedAlert:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1933
    :cond_c
    const-string v0, "GroupSettingsChangedAlert"

    sget v2, Lorg/telegram/messenger/R$string;->GroupSettingsChangedAlert:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1935
    :goto_0
    const-string v0, "ApplyTheme"

    sget v2, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1936
    const-string v0, "PassportDiscard"

    sget v2, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1937
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_d
    return v1

    :cond_e
    return v3
.end method

.method private getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 4

    .line 1625
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1629
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1630
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_1

    .line 1631
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAdminCount()I
    .locals 5

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1949
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1950
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1951
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private getChannelAdminCount()I
    .locals 5

    .line 2382
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2386
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2387
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2388
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2389
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v4, :cond_1

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private getRealChannelAdminCount()V
    .locals 4

    .line 2398
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2399
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2400
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2401
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 2409
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private synthetic lambda$checkDiscard$54(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1909
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$55(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1910
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$56(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1935
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$57(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1936
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V
    .locals 0

    .line 916
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;-><init>()V

    .line 917
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    .line 918
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 920
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    .line 921
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const p3, 0x8000

    or-int/2addr p2, p3

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 922
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 923
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide p4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p3, p4, p5, p1, p2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/view/View;)V
    .locals 2

    .line 907
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 910
    :cond_0
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 911
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/LocationActivity;->setDialogId(J)V

    .line 912
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v1, :cond_1

    .line 913
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LocationActivity;->setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    .line 915
    :cond_1
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 925
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 3

    .line 934
    new-instance p1, Lorg/telegram/ui/ChatEditTypeActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity;-><init>(JZ)V

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 936
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$13(Landroid/view/View;)V
    .locals 2

    .line 945
    new-instance p1, Lorg/telegram/ui/ChatLinkActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ChatLinkActivity;-><init>(J)V

    .line 946
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatLinkActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 947
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$14(J)V
    .locals 0

    .line 961
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->updateSuggestedCell(Ljava/lang/Long;Z)V

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;)V
    .locals 2

    .line 960
    new-instance p1, Lorg/telegram/ui/PostSuggestionsEditActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/PostSuggestionsEditActivity;-><init>(J)V

    .line 961
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PostSuggestionsEditActivity;->setOnApplied(Lorg/telegram/messenger/MessagesStorage$LongCallback;)Lorg/telegram/ui/PostSuggestionsEditActivity;

    .line 962
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;)V
    .locals 3

    .line 971
    new-instance p1, Lorg/telegram/ui/ChannelColorActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/ChannelColorActivity;-><init>(J)V

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ChannelColorActivity;->setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ChannelColorActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 973
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    .line 974
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "boostingappearance"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 973
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 975
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$createView$17(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    if-ge p1, v1, :cond_0

    sget p1, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$18(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 1020
    invoke-static {p1}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$19(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;JLorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V
    .locals 6

    .line 1011
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1012
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1013
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/16 v3, 0x23

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1014
    invoke-virtual {v0, p5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCanApplyBoost(Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    const/4 p1, 0x1

    .line 1015
    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setBoostsStats(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Z)V

    .line 1016
    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setDialogId(J)V

    .line 1017
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long p2, p3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1019
    new-instance p2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda66;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->showStatisticButtonInLink(Ljava/lang/Runnable;)V

    .line 1023
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$20(Z)V
    .locals 2

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    .line 1039
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private synthetic lambda$createView$21()V
    .locals 2

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$22(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1035
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p3, :cond_0

    .line 1036
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1037
    new-instance p2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda64;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/ui/ChatEditActivity;Z)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 1042
    :cond_0
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda65;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$23(Z[ZJLorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 6

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    iget v2, p6, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1002
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->level:I

    .line 1003
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1005
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget v1, p6, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    if-ge v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    if-eqz p1, :cond_2

    .line 1007
    iget v0, p6, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;->level:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->channelAutotranslationLevelMin:I

    if-ge v0, v1, :cond_2

    .line 1008
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1009
    aput-boolean v3, p2, v3

    .line 1010
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda57;

    move-object v1, p0

    move-wide v4, p3

    move-object v2, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;J)V

    invoke-virtual {p1, v4, v5, v3, v0}, Lorg/telegram/messenger/ChannelBoostsController;->userCanBoostChannel(JLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p5

    .line 1028
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAutotranslation;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAutotranslation;-><init>()V

    .line 1029
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    iget-object p4, v1, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAutotranslation;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1030
    iput-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAutotranslation;->enabled:Z

    .line 1031
    iget-object p4, v1, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1032
    aput-boolean v3, p2, v3

    .line 1033
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1034
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda58;

    invoke-direct {p4, p0, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/ui/ChatEditActivity;Z)V

    const/16 p1, 0x40

    invoke-virtual {p2, p3, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$createView$24([ZJLandroid/view/View;)V
    .locals 8

    const/4 p4, 0x0

    .line 992
    aget-boolean v0, p1, p4

    if-eqz v0, :cond_0

    return-void

    .line 993
    :cond_0
    new-instance v7, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0x190

    .line 994
    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    const/4 v0, 0x1

    .line 995
    aput-boolean v0, p1, p4

    .line 996
    iget-object p4, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result p4

    xor-int/lit8 v3, p4, 0x1

    .line 997
    iget-object p4, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p4}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/Components/Switch;->hasIcon()Z

    move-result p4

    if-nez p4, :cond_1

    .line 998
    iget-object p4, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p4, v3}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object p4

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda46;

    move-object v2, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/ChatEditActivity;Z[ZJLorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {p4, v5, v6, v1}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method private synthetic lambda$createView$25([Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 4

    .line 1088
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 1089
    aget-object v1, p1, v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1090
    aget-object p1, p1, v3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1091
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 1092
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1093
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$26(Landroid/content/Context;Landroid/view/View;)V
    .locals 13

    .line 1056
    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1057
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1059
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1060
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1062
    new-instance v3, Lorg/telegram/ui/Cells/HeaderCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/16 v6, 0x17

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 p1, 0x2f

    .line 1063
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 1064
    const-string p1, "ChatHistory"

    sget v5, Lorg/telegram/messenger/R$string;->ChatHistory:I

    invoke-static {p1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1067
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1068
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, -0x1

    const/4 v5, -0x2

    .line 1069
    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    .line 1071
    new-array v7, v6, [Lorg/telegram/ui/Cells/RadioButtonCell;

    move v8, v0

    :goto_0
    if-ge v8, v6, :cond_2

    .line 1074
    new-instance v9, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v9, v4, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;Z)V

    aput-object v9, v7, v8

    .line 1075
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1076
    aget-object v9, v7, v8

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v8, :cond_0

    .line 1078
    aget-object v9, v7, v8

    const-string v10, "ChatHistoryVisible"

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryVisible:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ChatHistoryVisibleInfo"

    sget v12, Lorg/telegram/messenger/R$string;->ChatHistoryVisibleInfo:I

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    xor-int/2addr v12, v2

    invoke-virtual {v9, v10, v11, v2, v12}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1080
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    const-string v10, "ChatHistoryHidden"

    if-eqz v9, :cond_1

    .line 1081
    aget-object v9, v7, v8

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryHidden:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ChatHistoryHiddenInfo"

    sget v12, Lorg/telegram/messenger/R$string;->ChatHistoryHiddenInfo:I

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v9, v10, v11, v0, v12}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1083
    :cond_1
    aget-object v9, v7, v8

    sget v11, Lorg/telegram/messenger/R$string;->ChatHistoryHidden:I

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ChatHistoryHiddenInfo2"

    sget v12, Lorg/telegram/messenger/R$string;->ChatHistoryHiddenInfo2:I

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v9, v10, v11, v0, v12}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1086
    :goto_1
    aget-object v9, v7, v8

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    aget-object v9, v7, v8

    new-instance v10, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;

    invoke-direct {v10, p0, v7, p2}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/ui/ChatEditActivity;[Lorg/telegram/ui/Cells/RadioButtonCell;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1098
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$27(Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    .line 1103
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-void
.end method

.method private synthetic lambda$createView$28(Landroid/view/View;)V
    .locals 2

    .line 1108
    new-instance p1, Lorg/telegram/ui/GroupColorActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/GroupColorActivity;-><init>(J)V

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    iput-object v0, p1, Lorg/telegram/ui/ChannelColorActivity;->boostsStatus:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    .line 1110
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ChannelColorActivity;->setOnApplied(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ChannelColorActivity;

    .line 1111
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$29(Lorg/telegram/ui/ActionBar/AlertDialog;J)V
    .locals 3

    .line 1167
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 1168
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iput-wide p2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 1173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1174
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1175
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 1177
    :cond_1
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-eq p2, p3, :cond_2

    move p1, v0

    .line 1178
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    invoke-virtual {p2, v0, v1, p3, v2}, Lorg/telegram/messenger/MessagesController;->toggleChannelForum(JZZ)V

    .line 1179
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    .line 1180
    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    if-eqz p1, :cond_3

    .line 1182
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updatePastFragmentsOnTabs()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 4

    .line 720
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 723
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 725
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_6

    .line 726
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 727
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->dc_id:I

    if-eqz v1, :cond_2

    .line 728
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 730
    :cond_2
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void

    .line 735
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 736
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_6

    .line 737
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 738
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->dc_id:I

    if-eqz v2, :cond_4

    .line 739
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 742
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v2, :cond_5

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$VideoSize;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->chat_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 747
    :cond_5
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->openPhotoWithVideo(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/messenger/ImageLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$30(Landroid/view/View;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .line 1147
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 1148
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    .line 1149
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz p3, :cond_0

    const/high16 p3, 0x41800000    # 16.0f

    :goto_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_1

    :cond_0
    const/high16 p3, 0x42000000    # 32.0f

    goto :goto_0

    :goto_1
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/BackupImageView;->animateToRoundRadius(I)V

    .line 1150
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    iget-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1151
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 1153
    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-eq v0, v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    move-object v4, p0

    goto :goto_4

    .line 1154
    :cond_2
    :goto_3
    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz p3, :cond_6

    .line 1155
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1157
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_3
    if-nez p1, :cond_4

    .line 1160
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    .line 1163
    :cond_5
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x3

    invoke-direct {p3, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1164
    iput-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    const-wide/16 p1, 0xfa

    .line 1165
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 1166
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda61;

    invoke-direct {v5, p0, p3}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    :cond_6
    move-object v4, p0

    .line 1186
    iget-object p3, v4, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    iget-boolean v0, v4, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-eq p3, v0, :cond_7

    move p1, p2

    .line 1187
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, v4, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean p3, v4, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-boolean v2, v4, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    invoke-virtual {p2, v0, v1, p3, v2}, Lorg/telegram/messenger/MessagesController;->toggleChannelForum(JZZ)V

    .line 1188
    iget-object p2, v4, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p3, v4, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    .line 1189
    iget-boolean p3, v4, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    if-eqz p1, :cond_8

    .line 1191
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updatePastFragmentsOnTabs()V

    :cond_8
    :goto_4
    return-void
.end method

.method private synthetic lambda$createView$31(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 4

    .line 1131
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-nez v0, :cond_1

    .line 1133
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 1134
    const-string p2, "ChannelTopicsDiscussionForbidden"

    sget v0, Lorg/telegram/messenger/R$string;->ChannelTopicsDiscussionForbidden:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 1136
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ChannelTopicsForbidden"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1138
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->topics:I

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 p2, 0x3

    .line 1140
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1144
    :cond_1
    new-instance p1, Lorg/telegram/ui/EnableTopicsActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/EnableTopicsActivity;-><init>(J)V

    .line 1145
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1146
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda55;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/view/View;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/EnableTopicsActivity;->setOnForumChanged(ZZLorg/telegram/messenger/Utilities$Callback2;)V

    .line 1196
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$32(Landroid/view/View;)V
    .locals 3

    .line 1230
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1231
    const-string v0, "chat_id"

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1232
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1233
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1234
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1235
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$33(Landroid/view/View;)V
    .locals 6

    .line 1241
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1242
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1243
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$34(Landroid/view/View;)V
    .locals 3

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1250
    new-instance p1, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Reactions/ChatCustomReactionsEditActivity;-><init>(JLorg/telegram/tgnet/TLRPC$ChatFull;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1252
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1253
    const-string v0, "chat_id"

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1254
    new-instance v0, Lorg/telegram/ui/ChatReactionsEditActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatReactionsEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatReactionsEditActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1256
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$35(Landroid/view/View;)V
    .locals 3

    .line 1263
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1264
    const-string v0, "chat_id"

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1265
    const-string v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1266
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1267
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1268
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$36(Landroid/view/View;)V
    .locals 3

    .line 1274
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1275
    const-string v0, "chat_id"

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1276
    const-string v0, "type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1277
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1278
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1279
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$37(Landroid/view/View;)V
    .locals 2

    .line 1286
    new-instance p1, Lorg/telegram/ui/MemberRequestsActivity;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/MemberRequestsActivity;-><init>(J)V

    .line 1287
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$38(Landroid/view/View;)V
    .locals 2

    .line 1296
    new-instance p1, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/bots/ChannelAffiliateProgramsFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$39(Landroid/view/View;)V
    .locals 1

    .line 1305
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$4()V
    .locals 8

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "ChatSetPhotoOrVideo"

    sget v2, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 815
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 816
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 818
    :cond_0
    iput-boolean v3, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    .line 820
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_1

    .line 821
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/telegram/messenger/R$raw;->camera_outline:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 823
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$createView$40(Landroid/view/View;)V
    .locals 1

    .line 1313
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/StatisticActivity;->create(Lorg/telegram/tgnet/TLRPC$Chat;Z)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$41(Landroid/view/View;)V
    .locals 3

    .line 1359
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1360
    const-string v0, "bot_id"

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1361
    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$42(Landroid/view/View;)V
    .locals 2

    .line 1371
    new-instance p1, Lorg/telegram/ui/bots/AffiliateProgramFragment;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/bots/AffiliateProgramFragment;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$43(Landroid/view/View;)V
    .locals 2

    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/BotFather?start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditActivity;->getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-intro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$44(Landroid/view/View;)V
    .locals 2

    .line 1391
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/BotFather?start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditActivity;->getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-commands"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$45(Landroid/view/View;)V
    .locals 2

    .line 1397
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/BotFather?start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditActivity;->getActiveUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createView$46(Landroid/view/View;)V
    .locals 3

    .line 1437
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/bots/BotVerifySheet;->openVerify(IJLorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;)V

    return-void
.end method

.method private synthetic lambda$createView$47(Lorg/telegram/ui/Stars/BotStarsController;Landroid/view/View;)V
    .locals 2

    .line 1462
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/BotStarsController;->isStarsBalanceAvailable(J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1464
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/BotStarsActivity;

    const/4 p2, 0x1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsActivity;-><init>(IJ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$48(Lorg/telegram/ui/Stars/BotStarsController;Landroid/view/View;)V
    .locals 2

    .line 1495
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stars/BotStarsController;->isStarsBalanceAvailable(J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1497
    :cond_0
    new-instance p1, Lorg/telegram/ui/Stars/BotStarsActivity;

    const/4 p2, 0x0

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Stars/BotStarsActivity;-><init>(IJ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$49(Z)V
    .locals 7

    .line 1534
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1537
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1539
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 1540
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const/4 v2, 0x0

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const/4 v1, 0x3

    aput-object p1, v6, v1

    invoke-virtual {v0, v3, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 810
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda63;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$50(Landroid/view/View;)V
    .locals 9

    .line 1533
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v8, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda42;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 15

    const/4 v0, 0x0

    .line 802
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 803
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 804
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 806
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;-><init>()V

    .line 807
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 808
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->flags:I

    .line 809
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhotoEmpty;-><init>()V

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photos_updateProfilePhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 810
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda60;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    .line 828
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_1
    invoke-virtual {v1, v0, v0, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/content/DialogInterface;)V
    .locals 1

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 834
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 836
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/view/View;)V
    .locals 4

    .line 801
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/telegram/ui/Components/ImageUpdater;->openMenu(ZLjava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;I)V

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$didUploadPhoto$51()V
    .locals 5

    const/4 v0, 0x1

    .line 1858
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    .line 1860
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    sget v3, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$52(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1857
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda62;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didUploadPhoto$53(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v2, p5

    .line 1827
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v15, 0x0

    const/4 v4, 0x1

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-eqz v8, :cond_0

    goto/16 :goto_1

    .line 1879
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_0
    const-string v6, "50_50"

    invoke-virtual {v0, v2, v6, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 1880
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "ChatSetNewPhoto"

    sget v3, Lorg/telegram/messenger/R$string;->ChatSetNewPhoto:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1881
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_2

    .line 1882
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v2, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lorg/telegram/messenger/R$raw;->camera_outline:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p1, v0

    move/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p5, v5

    move/from16 p4, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1884
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1885
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v2, v1, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1886
    invoke-direct {v1, v4, v15}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    return-void

    .line 1829
    :cond_3
    :goto_1
    iget-wide v9, v1, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-eqz v3, :cond_a

    .line 1830
    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_6

    .line 1831
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhoto;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 1832
    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v6, :cond_4

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_5

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    :cond_5
    :goto_2
    iput-wide v11, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_id:J

    .line 1833
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1834
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1835
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1838
    :cond_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;-><init>()V

    if-eqz v6, :cond_7

    .line 1840
    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1841
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_7
    if-eqz v7, :cond_8

    .line 1844
    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 1845
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    move-wide/from16 v9, p6

    .line 1847
    iput-wide v9, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_start_ts:D

    or-int/lit8 v2, v2, 0x6

    .line 1848
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    :cond_8
    if-eqz v8, :cond_9

    .line 1851
    iput-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->video_emoji_markup:Lorg/telegram/tgnet/TLRPC$VideoSize;

    .line 1852
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 1854
    :cond_9
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1855
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_photos_uploadProfilePhoto;->flags:I

    .line 1857
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_3

    :cond_a
    move-wide/from16 v9, p6

    .line 1863
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    move-object v5, v3

    move v11, v4

    iget-wide v3, v1, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v12, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v14, 0x0

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/MessagesController;->changeChatAvatar(JLorg/telegram/tgnet/TLRPC$TL_inputChatPhoto;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;DLjava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/Runnable;)V

    .line 1865
    :goto_3
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    if-eqz v0, :cond_c

    .line 1867
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1868
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1869
    iput-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1872
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1874
    :cond_b
    :goto_4
    iput-boolean v15, v1, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1875
    iget-object v0, v1, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_c
    const/4 v11, 0x1

    .line 1877
    invoke-direct {v1, v15, v11}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    return-void
.end method

.method private synthetic lambda$getRealChannelAdminCount$63(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 2402
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2405
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 2406
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->count:I

    iput v1, p0, Lorg/telegram/ui/ChatEditActivity;->realAdminCount:I

    .line 2407
    sget v1, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getRealChannelAdminCount$64(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2401
    new-instance p2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$66()V
    .locals 1

    .line 2563
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    .line 2564
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadLinksCount$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    if-nez p1, :cond_0

    .line 412
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 414
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    const/4 p1, 0x0

    .line 415
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadLinksCount$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 410
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$58()V
    .locals 1

    .line 1994
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1995
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$processDone$59(Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1988
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz p2, :cond_0

    .line 1989
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->about:Ljava/lang/String;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    .line 1990
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 1993
    :cond_0
    new-instance p1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda59;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processDone$60(ILandroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, 0x0

    .line 1999
    iput-boolean p2, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    const/4 p2, 0x0

    .line 2000
    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2001
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$processDone$61(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2009
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    return-void

    .line 2012
    :cond_0
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    .line 2013
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2014
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 2015
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 2016
    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 2018
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$processDone$62(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 2034
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    const/4 v0, 0x0

    .line 2035
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2036
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    return-void
.end method

.method private synthetic lambda$updateHistoryShow$65(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 2486
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2487
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2488
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    const/4 p2, 0x0

    .line 2490
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2491
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadLinksCount()V
    .locals 4

    .line 406
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;-><init>()V

    .line 407
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 408
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    const/4 v1, 0x0

    .line 409
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->limit:I

    .line 410
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private processDone()V
    .locals 11

    .line 1960
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-nez v0, :cond_1

    :cond_0
    move-object v8, p0

    goto/16 :goto_4

    .line 1963
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 1968
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->donePressed:Z

    .line 1969
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const-string v3, ""

    if-eqz v2, :cond_6

    .line 1970
    new-instance v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;-><init>()V

    .line 1971
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1972
    iget v4, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->flags:I

    .line 1973
    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->lang_code:Ljava/lang/String;

    .line 1975
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1976
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->name:Ljava/lang/String;

    .line 1977
    iget v4, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->flags:I

    .line 1980
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v3, v4

    .line 1981
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1982
    iget-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->about:Ljava/lang/String;

    .line 1983
    iget v3, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->flags:I

    or-int/2addr v0, v3

    iput v0, v2, Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;->flags:I

    .line 1986
    :cond_5
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1987
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/tl/TL_bots$setBotInfo;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1998
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda52;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ChatEditActivity;I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 2006
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move-object v8, p0

    goto :goto_1

    .line 2007
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    new-instance v9, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda53;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 2023
    :goto_1
    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_9

    .line 2024
    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    iget-boolean v5, v8, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eq v4, v5, :cond_9

    .line 2025
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    .line 2026
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v8, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v6, v8, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->toggleChannelInvitesHistory(JZ)V

    .line 2030
    :cond_9
    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2031
    iput-boolean v0, v8, Lorg/telegram/ui/ChatEditActivity;->createAfterUpload:Z

    .line 2032
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, v8, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2033
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2038
    iget-object v0, v8, Lorg/telegram/ui/ChatEditActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 2042
    :cond_a
    iget-object v1, v8, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2043
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v8, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->changeChatTitle(JLjava/lang/String;)V

    .line 2045
    :cond_b
    iget-object v1, v8, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v3, v1

    .line 2046
    :cond_c
    iget-object v1, v8, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2047
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, v8, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v4, v8, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->updateChatAbout(JLjava/lang/String;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 2049
    :cond_d
    iget-boolean v1, v8, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-object v2, v8, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-ne v1, v3, :cond_e

    iget-boolean v1, v8, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    if-eq v1, v3, :cond_12

    .line 2050
    :cond_e
    iget-boolean v1, v8, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    const/4 v3, 0x0

    if-eq v1, v2, :cond_f

    goto :goto_2

    :cond_f
    move v0, v3

    .line 2051
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, v8, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-boolean v2, v8, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    iget-boolean v6, v8, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    invoke-virtual {v1, v4, v5, v2, v6}, Lorg/telegram/messenger/MessagesController;->toggleChannelForum(JZZ)V

    .line 2052
    iget-boolean v1, v8, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v8, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-nez v1, :cond_11

    .line 2053
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    .line 2054
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_11

    .line 2055
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_10

    .line 2056
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 2057
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "chat_id"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-wide v9, v8, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long v2, v5, v9

    if-nez v2, :cond_10

    .line 2058
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(I)V

    .line 2059
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2060
    iget-wide v5, v8, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2061
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    invoke-static {p0, v2}, Lorg/telegram/ui/TopicsFragment;->getTopicsOrChat(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/os/Bundle;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_11
    if-eqz v0, :cond_12

    .line 2067
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updatePastFragmentsOnTabs()V

    .line 2070
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :goto_4
    return-void
.end method

.method private setAvatar()V
    .locals 10

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->hasUploadedPhoto:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1644
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 1645
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    goto/16 :goto_7

    .line 1649
    :cond_2
    iput-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1650
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1652
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_6

    :goto_1
    if-eqz v1, :cond_4

    move-object v4, v1

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    if-eqz v1, :cond_5

    .line 1654
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1655
    invoke-static {v4, v3}, Lorg/telegram/messenger/ImageLocation;->getForUserOrChat(Lorg/telegram/tgnet/TLObject;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v0

    .line 1656
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_4

    .line 1659
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    move v0, v2

    .line 1662
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_b

    if-nez v0, :cond_9

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->isUploadingImage()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    .line 1666
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "ChatSetPhotoOrVideo"

    sget v4, Lorg/telegram/messenger/R$string;->ChatSetPhotoOrVideo:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v1, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_6

    .line 1664
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "ChatSetNewPhoto"

    sget v4, Lorg/telegram/messenger/R$string;->ChatSetNewPhoto:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {v0, v1, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1668
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-nez v0, :cond_a

    .line 1669
    new-instance v3, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$raw;->camera_outline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v3, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1671
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1672
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->cameraDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1674
    :cond_b
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1675
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    .line 1677
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_7
    return-void
.end method

.method private showAvatarProgress(ZZ)V
    .locals 8

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 2077
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2078
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 2079
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 2082
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 2084
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2085
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2086
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v1, v6, v2

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    new-array v7, v4, [F

    aput v1, v7, v2

    .line 2087
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2086
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 2089
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    aput v0, v6, v2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    new-array v7, v4, [F

    aput v0, v7, v2

    .line 2090
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    .line 2089
    invoke-virtual {p2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2092
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xb4

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2093
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ChatEditActivity$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatEditActivity$10;-><init>(Lorg/telegram/ui/ChatEditActivity;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2111
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 2114
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2115
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2117
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2119
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 2120
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2121
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2122
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateCanForum()V
    .locals 6

    .line 1683
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1684
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    return-void

    .line 1687
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    if-lt v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_6

    .line 1689
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    sget v1, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    :cond_6
    return-void
.end method

.method private updateFields(ZZ)V
    .locals 13

    if-eqz p1, :cond_0

    .line 2192
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2194
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2197
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    .line 2199
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 2200
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v6

    goto :goto_0

    :cond_4
    move v1, v7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2203
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_8

    .line 2204
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_7

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v6

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2207
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_12

    .line 2208
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_11

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v2, :cond_9

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_9

    goto/16 :goto_5

    .line 2211
    :cond_9
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2212
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v0, v0, v8

    const-string v1, "Discussion"

    if-nez v0, :cond_a

    .line 2213
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DiscussionInfoShort"

    sget v4, Lorg/telegram/messenger/R$string;->DiscussionInfoShort:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_6

    .line 2215
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2217
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 2220
    :cond_b
    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    const-string v4, "@"

    if-eqz v2, :cond_d

    .line 2221
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2222
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v2, v1, v0, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_6

    .line 2224
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->Discussion:I

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_6

    .line 2227
    :cond_d
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "LinkedChannel"

    if-eqz v2, :cond_f

    .line 2228
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->LinkedChannel:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e

    move v5, v10

    goto :goto_3

    :cond_e
    move v5, v7

    :goto_3
    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_6

    .line 2230
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->LinkedChannel:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_10

    move v5, v10

    goto :goto_4

    :cond_10
    move v5, v7

    :goto_4
    invoke-virtual {v0, v2, v1, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_6

    .line 2209
    :cond_11
    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2238
    :cond_12
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_15

    .line 2239
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_14

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v1, :cond_14

    .line 2240
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const-string v2, "AttachLocation"

    if-eqz v1, :cond_13

    .line 2242
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    .line 2243
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_7

    .line 2245
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->AttachLocation:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown address"

    invoke-virtual {v0, v1, v2, p2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_7

    .line 2248
    :cond_14
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2252
    :cond_15
    :goto_7
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_2a

    .line 2253
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_1b

    if-nez p1, :cond_16

    .line 2256
    const-string v0, "TypeLocationGroupEdit"

    sget v1, Lorg/telegram/messenger/R$string;->TypeLocationGroupEdit:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2258
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2260
    :goto_8
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "TypeLocationGroup"

    sget v4, Lorg/telegram/messenger/R$string;->TypeLocationGroup:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_19

    :cond_17
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    move v5, v10

    goto :goto_9

    :cond_1a
    move v5, v7

    :goto_9
    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_f

    .line 2263
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    .line 2264
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v1, :cond_1e

    if-nez p1, :cond_1d

    if-eqz v0, :cond_1c

    .line 2265
    const-string v0, "TypePrivateRestrictedForwards"

    sget v1, Lorg/telegram/messenger/R$string;->TypePrivateRestrictedForwards:I

    :goto_a
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1c
    const-string v0, "TypePrivate"

    sget v1, Lorg/telegram/messenger/R$string;->TypePrivate:I

    goto :goto_a

    :cond_1d
    const-string v0, "TypePublic"

    sget v1, Lorg/telegram/messenger/R$string;->TypePublic:I

    goto :goto_a

    :cond_1e
    if-nez p1, :cond_20

    if-eqz v0, :cond_1f

    .line 2267
    const-string v0, "TypePrivateGroupRestrictedForwards"

    sget v1, Lorg/telegram/messenger/R$string;->TypePrivateGroupRestrictedForwards:I

    :goto_b
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1f
    const-string v0, "TypePrivateGroup"

    sget v1, Lorg/telegram/messenger/R$string;->TypePrivateGroup:I

    goto :goto_b

    :cond_20
    const-string v0, "TypePublicGroup"

    sget v1, Lorg/telegram/messenger/R$string;->TypePublicGroup:I

    goto :goto_b

    .line 2269
    :goto_c
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v1, :cond_25

    .line 2270
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "ChannelType"

    sget v4, Lorg/telegram/messenger/R$string;->ChannelType:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_23

    :cond_21
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    move v5, v10

    goto :goto_d

    :cond_24
    move v5, v7

    :goto_d
    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_f

    .line 2272
    :cond_25
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v2, "GroupType"

    sget v4, Lorg/telegram/messenger/R$string;->GroupType:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_28

    :cond_26
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_28

    :cond_27
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_29

    :cond_28
    move v5, v10

    goto :goto_e

    :cond_29
    move v5, v7

    :goto_e
    invoke-virtual {v1, v2, v0, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 2277
    :cond_2a
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_30

    .line 2278
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v0, :cond_2b

    const-string v0, "ChatHistoryHidden"

    sget v1, Lorg/telegram/messenger/R$string;->ChatHistoryHidden:I

    :goto_10
    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_11

    :cond_2b
    const-string v0, "ChatHistoryVisible"

    sget v1, Lorg/telegram/messenger/R$string;->ChatHistoryVisible:I

    goto :goto_10

    .line 2279
    :goto_11
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const-string v1, "ChatHistoryShort"

    sget v4, Lorg/telegram/messenger/R$string;->ChatHistoryShort:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discuss:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_2c

    move v5, v10

    :goto_12
    move v3, p2

    goto :goto_13

    :cond_2c
    move v5, v7

    goto :goto_12

    :goto_13
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V

    .line 2280
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    xor-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setEnabled(Z)V

    .line 2281
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-nez v0, :cond_2f

    if-nez p1, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_2d

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_2f

    :cond_2d
    if-eqz v0, :cond_2e

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->location:Lorg/telegram/tgnet/TLRPC$ChannelLocation;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_2f

    :cond_2e
    move v0, v10

    goto :goto_14

    :cond_2f
    move v0, v7

    :goto_14
    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShow(ZZ)V

    .line 2284
    :cond_30
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_52

    .line 2285
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const-string v2, "ChannelSubscribers"

    const-string v4, "ChannelMembers"

    const-string v8, "ChannelAdministrators"

    const-string v5, "ChannelBlacklist"

    if-eqz v1, :cond_48

    .line 2286
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_33

    .line 2287
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_31

    .line 2288
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v10

    .line 2289
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-static {v11, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v1, v9, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2291
    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    if-lez v1, :cond_32

    move v1, v7

    goto :goto_15

    :cond_32
    move v1, v6

    :goto_15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2293
    :cond_33
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    const-string v9, "%d"

    if-eqz v0, :cond_35

    .line 2294
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 2295
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_34

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_34

    move v5, v10

    goto :goto_16

    :cond_34
    move v5, v7

    :goto_16
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1e

    .line 2297
    :cond_35
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2298
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_18

    .line 2300
    :cond_36
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v11, p0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v11, :cond_37

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_37

    move v11, v10

    goto :goto_17

    :cond_37
    move v11, v7

    :goto_17
    invoke-virtual {v0, v1, v2, v4, v11}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 2302
    :goto_18
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v1, :cond_39

    .line 2303
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_38

    move v5, v10

    goto :goto_19

    :cond_38
    move v5, v7

    :goto_19
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_1c

    .line 2306
    :cond_39
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v1, :cond_3a

    const/16 v1, 0xf

    goto :goto_1a

    :cond_3a
    const/16 v1, 0xe

    .line 2307
    :goto_1a
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v0, :cond_3f

    .line 2308
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v2, v10

    .line 2311
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v4, :cond_3b

    add-int/lit8 v2, v2, 0x1

    .line 2314
    :cond_3b
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2315
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v4, :cond_3c

    add-int/lit8 v2, v2, 0x1

    .line 2318
    :cond_3c
    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v4, :cond_3d

    add-int/lit8 v2, v2, 0x1

    .line 2321
    :cond_3d
    iget-boolean v4, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    if-eqz v4, :cond_3e

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v4, :cond_3e

    add-int/lit8 v2, v2, 0x1

    .line 2324
    :cond_3e
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_40

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3f
    move v2, v1

    .line 2330
    :cond_40
    :goto_1b
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v1, v5, v10

    const-string v1, "%d/%d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v4

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    const/4 v5, 0x1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V

    .line 2332
    :goto_1c
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_42

    .line 2333
    const-string v1, "MemberRequests"

    sget v2, Lorg/telegram/messenger/R$string;->MemberRequests:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_requests:I

    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_41

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_41

    move v5, v10

    goto :goto_1d

    :cond_41
    move v5, v7

    :goto_1d
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 2336
    :cond_42
    :goto_1e
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2337
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    goto :goto_1f

    :cond_43
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->getAdminCount()I

    move-result v2

    :goto_1f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_25

    .line 2339
    :cond_44
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_45

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-eq v0, v1, :cond_45

    iget v0, p0, Lorg/telegram/ui/ChatEditActivity;->realAdminCount:I

    if-nez v0, :cond_45

    .line 2340
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v0, v1, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2341
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->getRealChannelAdminCount()V

    goto/16 :goto_25

    .line 2343
    :cond_45
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, p0, Lorg/telegram/ui/ChatEditActivity;->realAdminCount:I

    if-nez v2, :cond_47

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->getChannelAdminCount()I

    move-result v2

    goto :goto_20

    :cond_46
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->getAdminCount()I

    move-result v2

    :cond_47
    :goto_20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v0, v1, v2, v4, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_25

    .line 2346
    :cond_48
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v1, :cond_4a

    .line 2347
    sget v1, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {v0, v1, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2348
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_chats_remove:I

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_49

    move v4, v10

    goto :goto_21

    :cond_49
    move v4, v7

    :goto_21
    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_24

    .line 2350
    :cond_4a
    sget v1, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4b

    move v4, v10

    goto :goto_22

    :cond_4b
    move v4, v7

    :goto_22
    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2351
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_4d

    .line 2352
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_chats_remove:I

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4c

    move v4, v10

    goto :goto_23

    :cond_4c
    move v4, v7

    :goto_23
    invoke-virtual {v0, v1, v2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_24

    .line 2354
    :cond_4d
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    invoke-virtual {v0, v1, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2357
    :goto_24
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    invoke-virtual {v0, v1, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2359
    :goto_25
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v7

    goto :goto_26

    :cond_4e
    move v1, v6

    :goto_26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2360
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatEditActivity;->updateReactionsCell(Z)V

    .line 2361
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p1, :cond_4f

    goto :goto_27

    .line 2364
    :cond_4f
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    const-string v0, "InviteLinks"

    if-lez p1, :cond_50

    .line 2365
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->InviteLinks:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p1, v0, v1, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_28

    .line 2367
    :cond_50
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v1, Lorg/telegram/messenger/R$string;->InviteLinks:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p1, v0, v1, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_28

    .line 2362
    :cond_51
    :goto_27
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2372
    :cond_52
    :goto_28
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_54

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_54

    .line 2373
    sget v0, Lorg/telegram/messenger/R$string;->GroupStickers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v1, :cond_53

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    goto :goto_29

    :cond_53
    sget v1, Lorg/telegram/messenger/R$string;->Add:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_29
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    invoke-virtual {p1, v0, v1, v2, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 2376
    :cond_54
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_55

    .line 2377
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatEditActivity;->updateSuggestedCell(Z)V

    :cond_55
    return-void
.end method

.method private updateHistoryShow(ZZ)V
    .locals 11

    .line 2448
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2449
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2451
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/16 v2, 0x8

    if-gtz v0, :cond_1

    if-nez p1, :cond_1

    .line 2452
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2453
    invoke-virtual {p0}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    return-void

    .line 2455
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    if-eqz p1, :cond_2

    return-void

    .line 2458
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 2460
    :goto_0
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_5

    if-nez v6, :cond_3

    .line 2461
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-ne v7, v9, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    .line 2464
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v5, v4

    move v6, v5

    .line 2468
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_8

    if-nez v6, :cond_6

    .line 2469
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    if-ne v7, v9, :cond_6

    move v6, v8

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    .line 2472
    iget-object v7, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2475
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_9

    .line 2476
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2477
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 2479
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    move v5, v4

    .line 2480
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_a

    .line 2481
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v9, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    iget-object v10, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    sub-float v10, v3, v10

    mul-float/2addr v9, v10

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_c

    .line 2484
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    if-eqz p1, :cond_b

    move v1, v3

    :cond_b
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v4

    aput v1, v2, v8

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    .line 2485
    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ChatEditActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2494
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$11;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/ChatEditActivity$11;-><init>(Lorg/telegram/ui/ChatEditActivity;ZLjava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2503
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2504
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2505
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2507
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_d

    move v5, v3

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2508
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    if-eqz p1, :cond_e

    move v6, v1

    goto :goto_6

    :cond_e
    move v6, v3

    :goto_6
    mul-float/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2509
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    move v3, v1

    :goto_7
    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v5

    const v5, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v5

    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 2510
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_10

    move v2, v4

    :cond_10
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2511
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_11

    .line 2512
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_11
    const/4 p1, 0x0

    .line 2514
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->updateHistoryShowAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private updatePastFragmentsOnTabs()V
    .locals 9

    .line 1593
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1594
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1595
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1596
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 1597
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    .line 1598
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "chat_id"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-wide v7, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    .line 1599
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1600
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 1601
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    .line 1602
    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-nez v2, :cond_3

    .line 1603
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1604
    iget-wide v5, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1605
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v4, v2}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v3, v4, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1609
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/TopicsFragment;

    if-eqz v2, :cond_2

    .line 1610
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/TopicsFragment;

    .line 1611
    invoke-virtual {v2}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/TopicsFragment;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v5, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 1612
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1615
    :cond_2
    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_3

    .line 1616
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_3

    .line 1617
    iget-object v3, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1618
    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private updatePublicLinksCount()V
    .locals 8

    .line 1575
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_0

    return-void

    .line 1578
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1580
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_1
    :goto_0
    if-ge v5, v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_username;

    .line 1581
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1586
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->BotPublicLinks:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$string;->BotPublicLinksCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v3

    aput-object v6, v7, v1

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    .line 1588
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->BotPublicLink:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t.me/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method private updateReactionsCell(Z)V
    .locals 8

    .line 2519
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 2520
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    .line 2522
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    if-eqz v2, :cond_9

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 2527
    :cond_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v3, :cond_8

    .line 2528
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 2530
    :goto_0
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 2531
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 2532
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v7, :cond_1

    .line 2533
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    .line 2534
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v7

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v6, :cond_2

    .line 2535
    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->inactive:Z

    if-nez v6, :cond_2

    goto :goto_1

    .line 2538
    :cond_1
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v6, :cond_2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    .line 2543
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v0, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    if-nez v5, :cond_5

    .line 2546
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2548
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_7

    .line 2549
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2550
    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->ReactionsCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    goto :goto_4

    .line 2553
    :cond_8
    sget v0, Lorg/telegram/messenger/R$string;->ReactionsAll:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2523
    :cond_9
    :goto_3
    sget v1, Lorg/telegram/messenger/R$string;->ReactionsOff:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    .line 2524
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_reactions_available:Z

    if-eqz v0, :cond_a

    .line 2525
    const-string v0, "1"

    goto :goto_2

    :cond_a
    move-object v3, v1

    .line 2555
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v0, Lorg/telegram/messenger/R$string;->Reactions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_reactions2:I

    const/4 v6, 0x1

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZ)V

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

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 29

    move-object/from16 v3, p0

    move-object/from16 v1, p1

    .line 507
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    .line 511
    :cond_0
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 512
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 514
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$2;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ChatEditActivity$2;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 527
    new-instance v2, Lorg/telegram/ui/ChatEditActivity$3;

    invoke-direct {v2, v3, v1}, Lorg/telegram/ui/ChatEditActivity$3;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    .line 646
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 647
    iput-object v2, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 648
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 650
    new-instance v7, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v3, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 652
    new-instance v0, Lorg/telegram/ui/Components/SectionsScrollView;

    iget-object v4, v3, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v8, 0x0

    invoke-direct {v0, v1, v4, v5, v8}, Lorg/telegram/ui/Components/SectionsScrollView;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    .line 653
    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 654
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v9, -0x1

    invoke-static {v9, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v3, Lorg/telegram/ui/ChatEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;)V

    .line 657
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->scrollView:Lorg/telegram/ui/Components/SectionsScrollView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 661
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ChannelEdit:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, "Info"

    sget v5, Lorg/telegram/messenger/R$string;->Info:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 667
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    .line 668
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 669
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 670
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 672
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 673
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$4;

    invoke-direct {v0, v3, v1}, Lorg/telegram/ui/ChatEditActivity$4;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    iput-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 692
    iget-boolean v4, v3, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    const/high16 v12, 0x42600000    # 56.0f

    invoke-static {v12, v8, v4}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 694
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v13, 0x41f00000    # 30.0f

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/4 v4, 0x0

    const/high16 v16, 0x41c00000    # 24.0f

    if-nez v0, :cond_6

    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    .line 751
    :cond_2
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    move/from16 v17, v14

    goto :goto_1

    :cond_3
    move/from16 v17, v15

    :goto_1
    or-int/lit8 v20, v17, 0x30

    if-eqz v5, :cond_4

    move/from16 v21, v4

    goto :goto_2

    :cond_4
    move/from16 v21, v16

    :goto_2
    if-eqz v5, :cond_5

    move/from16 v23, v16

    goto :goto_3

    :cond_5
    move/from16 v23, v4

    :goto_3
    const/high16 v24, 0x41400000    # 12.0f

    const/16 v18, 0x38

    const/high16 v19, 0x42600000    # 56.0f

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_e

    .line 695
    :cond_6
    :goto_4
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_7

    move/from16 v17, v14

    goto :goto_5

    :cond_7
    move/from16 v17, v15

    :goto_5
    or-int/lit8 v20, v17, 0x30

    if-eqz v5, :cond_8

    move/from16 v21, v4

    goto :goto_6

    :cond_8
    move/from16 v21, v16

    :goto_6
    if-eqz v5, :cond_9

    move/from16 v23, v16

    goto :goto_7

    :cond_9
    move/from16 v23, v4

    :goto_7
    const/high16 v24, 0x41400000    # 12.0f

    const/16 v18, 0x38

    const/high16 v19, 0x42600000    # 56.0f

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v5, 0x55000000

    .line 698
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 700
    new-instance v5, Lorg/telegram/ui/ChatEditActivity$5;

    invoke-direct {v5, v3, v1, v0}, Lorg/telegram/ui/ChatEditActivity$5;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v5, v3, Lorg/telegram/ui/ChatEditActivity;->avatarOverlay:Landroid/view/View;

    .line 709
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_a

    move/from16 v17, v14

    goto :goto_8

    :cond_a
    move/from16 v17, v15

    :goto_8
    or-int/lit8 v20, v17, 0x30

    if-eqz v0, :cond_b

    move/from16 v21, v4

    goto :goto_9

    :cond_b
    move/from16 v21, v16

    :goto_9
    if-eqz v0, :cond_c

    move/from16 v23, v16

    goto :goto_a

    :cond_c
    move/from16 v23, v4

    :goto_a
    const/high16 v24, 0x41400000    # 12.0f

    const/16 v18, 0x38

    const/high16 v19, 0x42600000    # 56.0f

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 712
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 713
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 714
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setNoProgress(Z)V

    .line 715
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_d

    move/from16 v17, v14

    goto :goto_b

    :cond_d
    move/from16 v17, v15

    :goto_b
    or-int/lit8 v20, v17, 0x30

    if-eqz v5, :cond_e

    move/from16 v21, v4

    goto :goto_c

    :cond_e
    move/from16 v21, v16

    :goto_c
    if-eqz v5, :cond_f

    move/from16 v23, v16

    goto :goto_d

    :cond_f
    move/from16 v23, v4

    :goto_d
    const/high16 v24, 0x41400000    # 12.0f

    const/16 v18, 0x38

    const/high16 v19, 0x42600000    # 56.0f

    const/high16 v22, 0x41a00000    # 20.0f

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    invoke-direct {v3, v8, v8}, Lorg/telegram/ui/ChatEditActivity;->showAvatarProgress(ZZ)V

    .line 719
    iget-object v0, v3, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, v3}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    :goto_e
    new-instance v0, Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    move-object/from16 v26, v3

    move-object v3, v0

    move-object/from16 v0, v26

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    .line 755
    iget-wide v4, v0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v17, 0x0

    cmp-long v4, v4, v17

    if-eqz v4, :cond_10

    .line 756
    sget v4, Lorg/telegram/messenger/R$string;->BotName:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 757
    :cond_10
    iget-boolean v4, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v4, :cond_11

    .line 758
    const-string v4, "EnterChannelName"

    sget v5, Lorg/telegram/messenger/R$string;->EnterChannelName:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 760
    :cond_11
    const-string v4, "GroupName"

    sget v5, Lorg/telegram/messenger/R$string;->GroupName:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setHint(Ljava/lang/CharSequence;)V

    .line 762
    :goto_f
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 763
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setEnabled(Z)V

    .line 764
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextEmoji;->setFocusable(Z)V

    .line 765
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$6;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatEditActivity$6;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 784
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v5, v6, [Landroid/text/InputFilter$LengthFilter;

    aput-object v4, v5, v8

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextEmoji;->setFilters([Landroid/text/InputFilter;)V

    .line 785
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v5, 0x42c00000    # 96.0f

    if-eqz v4, :cond_12

    move/from16 v22, v16

    goto :goto_10

    :cond_12
    move/from16 v22, v5

    :goto_10
    if-eqz v4, :cond_13

    move/from16 v24, v5

    goto :goto_11

    :cond_13
    move/from16 v24, v16

    :goto_11
    const/high16 v25, 0x41400000    # 12.0f

    const/16 v19, -0x1

    const/high16 v20, -0x40000000    # -2.0f

    const/16 v21, 0x10

    const/high16 v23, 0x41400000    # 12.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    .line 788
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 789
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 792
    :cond_14
    new-instance v3, Lorg/telegram/ui/ChatEditActivity$7;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChatEditActivity$7;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    .line 798
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 799
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 800
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 847
    :cond_15
    new-instance v3, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x41800000    # 16.0f

    .line 848
    invoke-virtual {v3, v6, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 849
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 850
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 851
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v8, v8, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 852
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 853
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_16

    goto :goto_12

    :cond_16
    move v14, v15

    :goto_12
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 854
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v5, 0x2c001

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 855
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 856
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_18

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_13

    :cond_17
    move v5, v8

    goto :goto_14

    :cond_18
    :goto_13
    move v5, v6

    :goto_14
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 857
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 859
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xff

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v5, v6, [Landroid/text/InputFilter;

    aput-object v3, v5, v8

    .line 860
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 861
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v5, "DescriptionOptionalPlaceholder"

    sget v14, Lorg/telegram/messenger/R$string;->DescriptionOptionalPlaceholder:I

    invoke-static {v5, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 863
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 864
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 865
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 866
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v23, 0x41b80000    # 23.0f

    const/high16 v24, 0x41100000    # 9.0f

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/high16 v21, 0x41b80000    # 23.0f

    const/high16 v22, 0x41700000    # 15.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_15

    .line 868
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v23, 0x41b80000    # 23.0f

    const/high16 v24, 0x40c00000    # 6.0f

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/high16 v21, 0x41b80000    # 23.0f

    const/high16 v22, 0x41400000    # 12.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    :goto_15
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda27;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 877
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$8;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatEditActivity$8;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 894
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 895
    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    .line 898
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 899
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-string v4, ""

    if-eqz v3, :cond_2a

    .line 902
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_1b

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_location:Z

    if-eqz v3, :cond_1a

    goto :goto_16

    :cond_1a
    move/from16 v16, v12

    goto :goto_17

    .line 903
    :cond_1b
    :goto_16
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    .line 904
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 905
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    move/from16 v16, v12

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 906
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda28;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    :goto_17
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_1c

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_username:Z

    if-eqz v3, :cond_1d

    .line 930
    :cond_1c
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    .line 931
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda29;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 940
    :cond_1d
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 941
    :cond_1f
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    .line 942
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 943
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda30;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-boolean v3, v0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v3, :cond_21

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 952
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    .line 953
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 954
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->PostSuggestions:I

    .line 955
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_markunread:I

    .line 954
    invoke-virtual {v3, v5, v4, v12, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 958
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda31;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 967
    new-instance v3, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v5, v0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move v12, v13

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v13, v13

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move/from16 v20, v12

    move-object v12, v2

    move-object/from16 v26, v4

    move-object/from16 v4, p1

    move-wide/from16 v27, v13

    move-object v14, v0

    move-object v0, v3

    move-object/from16 v13, v26

    move-wide/from16 v2, v27

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;-><init>(IJLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    .line 968
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 969
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v14, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_18

    :cond_22
    move-object v14, v0

    move-object v12, v2

    move/from16 v20, v13

    move-object v13, v4

    .line 979
    :goto_18
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 980
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    move-wide v1, v0

    .line 981
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    const/4 v4, 0x1

    iget-object v5, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-wide/from16 v21, v1

    const/16 v2, 0x17

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-wide/from16 v6, v21

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    .line 982
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 983
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelAutotranslation:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->autotranslation:Z

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v0, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    .line 984
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v6, v7, v2}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    .line 989
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v0, v23

    .line 990
    new-array v2, v0, [Z

    aput-boolean v8, v2, v8

    .line 991
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, v14, v2, v6, v7}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatEditActivity;[ZJ)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_19

    :cond_23
    move-object/from16 v1, p1

    move-object/from16 v24, v7

    .line 1051
    :goto_19
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_25

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_25

    .line 1052
    :cond_24
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v23, 0x1

    .line 1053
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, v14, v1}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    :cond_25
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1103
    iget v0, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getBoostsController()Lorg/telegram/messenger/ChannelBoostsController;

    move-result-object v0

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    new-instance v4, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/ChannelBoostsController;->getBoostsStats(JLcom/google/android/exoplayer2/util/Consumer;)V

    .line 1104
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    iget v1, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;-><init>(IJLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    const/16 v23, 0x1

    .line 1105
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v1, v14, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    new-instance v1, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    :cond_26
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_28

    :cond_27
    move-object/from16 v1, p1

    goto :goto_1b

    .line 1124
    :cond_28
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_27

    .line 1125
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v23, 0x1

    .line 1126
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelTopics:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-boolean v3, v14, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_topics:I

    invoke-virtual {v0, v2, v3, v4, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    .line 1128
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-boolean v2, v14, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    if-eqz v2, :cond_29

    move v2, v8

    goto :goto_1a

    :cond_29
    sget v2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_1a
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1129
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, v14, v11}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatEditActivity;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    :goto_1b
    invoke-virtual {v14}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    goto :goto_1c

    :cond_2a
    move-object v14, v0

    move-object/from16 v24, v7

    move/from16 v16, v12

    move/from16 v20, v13

    move-object v12, v2

    move-object v13, v4

    .line 1203
    :goto_1c
    iget-object v0, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 1204
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_2b

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_2c

    .line 1205
    :cond_2b
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->doneButton:Landroid/view/View;

    .line 1206
    const-string v2, "Done"

    sget v3, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1209
    :cond_2c
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v2, 0xc

    if-nez v0, :cond_2e

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->linkedCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_2e

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_2d

    goto :goto_1d

    :cond_2d
    move-object/from16 v4, v24

    goto :goto_1f

    .line 1210
    :cond_2e
    :goto_1d
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1211
    iget-object v3, v14, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v3, :cond_2f

    .line 1212
    sget v3, Lorg/telegram/messenger/R$string;->ForumToggleDescription:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 1216
    :cond_2f
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1218
    :goto_1e
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1221
    :goto_1f
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 1222
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1223
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v3, 0x8

    if-eqz v0, :cond_45

    .line 1226
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1227
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1228
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_31

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canChangeChatInfo(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_30

    goto :goto_20

    :cond_30
    move v5, v3

    goto :goto_21

    :cond_31
    :goto_20
    move v5, v8

    :goto_21
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1238
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1239
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1247
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1261
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1272
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1283
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1284
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    :cond_32
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1292
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1293
    sget v5, Lorg/telegram/messenger/R$string;->ChannelAffiliatePrograms:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->menu_feature_premium:I

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1294
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1298
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    :cond_33
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_38

    :cond_34
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1302
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1303
    sget v5, Lorg/telegram/messenger/R$string;->EventLog:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_log:I

    iget-boolean v7, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v7, :cond_35

    iget-object v7, v14, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v7, :cond_35

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-nez v7, :cond_36

    :cond_35
    iget-object v7, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_37

    :cond_36
    const/4 v7, 0x1

    goto :goto_22

    :cond_37
    move v7, v8

    :goto_22
    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1304
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1305
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1308
    :cond_38
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isBoostSupported(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1309
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    .line 1310
    sget v5, Lorg/telegram/messenger/R$string;->StatisticsAndBoosts:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_stats:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1311
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1312
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1317
    :cond_39
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1319
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_3a

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v0, :cond_3a

    .line 1320
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1322
    :cond_3a
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_3b

    .line 1323
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1325
    :cond_3b
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1326
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_3c

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v5, :cond_3c

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->requests_pending:I

    if-lez v5, :cond_3c

    .line 1328
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    :cond_3c
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_3d

    .line 1331
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1333
    :cond_3d
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-nez v0, :cond_3e

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-eqz v0, :cond_3f

    .line 1334
    :cond_3e
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1336
    :cond_3f
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_40

    .line 1337
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1339
    :cond_40
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_41

    .line 1340
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    :cond_41
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_42

    .line 1343
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1345
    :cond_42
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_43

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz v0, :cond_43

    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1346
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    :cond_43
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_45

    .line 1349
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v5, :cond_44

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_44

    const/4 v5, 0x1

    goto :goto_23

    :cond_44
    move v5, v8

    :goto_23
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    .line 1353
    :cond_45
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4a

    .line 1354
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1355
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1356
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1357
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1358
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1364
    invoke-direct {v14}, Lorg/telegram/ui/ChatEditActivity;->updatePublicLinksCount()V

    .line 1366
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1367
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1368
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->AffiliateProgramBot:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/ChatEditActivity;->applyNewSpan(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v13, v6, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 1369
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1373
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-nez v5, :cond_46

    const/4 v5, 0x1

    goto :goto_24

    :cond_46
    move v5, v8

    :goto_24
    const/16 v6, 0x2d

    invoke-virtual {v0, v5, v6, v8}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    .line 1374
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_48

    .line 1375
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-nez v0, :cond_47

    sget v0, Lorg/telegram/messenger/R$string;->AffiliateProgramBotOff:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_47
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    int-to-float v0, v0

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v0, v11, v8

    const-string v0, "%.1f%%"

    invoke-static {v6, v0, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-virtual {v5, v0, v8}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 1377
    :cond_48
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->starrefProgramAllowed:Z

    if-nez v0, :cond_49

    .line 1378
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    :cond_49
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1382
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1383
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->BotEditIntro:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_log:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1384
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->editIntroCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1388
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1389
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->BotEditCommands:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_media:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1390
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->editCommandsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1394
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1395
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->BotChangeSettings:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1396
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1397
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->changeBotSettingsCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda21;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1400
    :cond_4a
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4b

    .line 1406
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_58

    .line 1407
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->infoSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 1408
    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_30

    .line 1410
    :cond_4b
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_58

    .line 1411
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1412
    sget v0, Lorg/telegram/messenger/R$string;->BotManageInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1413
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 1414
    const-string v6, "@BotFather"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v6, 0x21

    if-eq v0, v9, :cond_4c

    .line 1416
    new-instance v7, Lorg/telegram/ui/ChatEditActivity$9;

    invoke-direct {v7, v14}, Lorg/telegram/ui/ChatEditActivity$9;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    add-int/lit8 v11, v0, 0xa

    invoke-virtual {v5, v7, v0, v11, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1429
    :cond_4c
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->botInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1432
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v23, 0x1

    .line 1433
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1434
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/messenger/R$string;->BotVerifyAccounts:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->menu_factcheck:I

    invoke-virtual {v0, v5, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1435
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v0, v5, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1436
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v5, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda22;

    invoke-direct {v5, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1440
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1441
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1443
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v5, :cond_4d

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v5, :cond_4d

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    if-eqz v5, :cond_4d

    move v5, v8

    goto :goto_26

    :cond_4d
    move v5, v3

    :goto_26
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->verifyInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v5, :cond_4e

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v5, :cond_4e

    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    if-eqz v5, :cond_4e

    move v5, v8

    goto :goto_27

    :cond_4e
    move v5, v3

    :goto_27
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v5, :cond_58

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot_can_edit:Z

    if-eqz v0, :cond_58

    .line 1448
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    .line 1449
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1450
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1453
    sget v5, Lorg/telegram/messenger/R$string;->BotBalance:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1456
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1457
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1458
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1459
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1460
    iget v0, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object v0

    .line 1461
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v7, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda24;

    invoke-direct {v7, v14, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/Stars/BotStarsController;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v24, v4

    .line 1466
    iget-wide v3, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->isTONBalanceAvailable(J)Z

    move-result v3

    const/4 v4, 0x2

    const-string v7, "x"

    if-nez v3, :cond_4f

    .line 1467
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1468
    new-instance v11, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v15, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v15, v15, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v11, v15, v5}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v11, v8, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1469
    iget-object v5, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    sget v11, Lorg/telegram/messenger/R$string;->BotBalanceTON:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_ton:I

    invoke-virtual {v5, v11, v3, v15, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_29

    .line 1471
    :cond_4f
    iget-wide v2, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stars/BotStarsController;->getTONBalance(J)J

    move-result-wide v2

    .line 1472
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    cmp-long v21, v2, v17

    if-lez v21, :cond_51

    long-to-double v2, v2

    const-wide v21, 0x41cdcd6500000000L    # 1.0E9

    div-double v2, v2, v21

    const-wide v21, 0x408f400000000000L    # 1000.0

    cmpl-double v21, v2, v21

    .line 1474
    const-string v5, "TON "

    if-lez v21, :cond_50

    .line 1475
    invoke-virtual {v11, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    double-to-int v2, v2

    invoke-static {v2, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_28

    .line 1477
    :cond_50
    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v9, 0x2e

    .line 1478
    invoke-virtual {v6, v9}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 1479
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "#.##"

    invoke-direct {v9, v10, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1480
    invoke-virtual {v9, v4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1481
    invoke-virtual {v9, v15}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1482
    invoke-virtual {v9, v8}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1483
    invoke-virtual {v11, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v9, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1486
    :cond_51
    :goto_28
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->BotBalanceTON:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_ton:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v11, v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 1488
    :goto_29
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-wide v5, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stars/BotStarsController;->botHasTON(J)Z

    move-result v3

    if-eqz v3, :cond_52

    move v3, v8

    goto :goto_2a

    :cond_52
    const/16 v3, 0x8

    :goto_2a
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    new-instance v2, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    .line 1491
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1493
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    iget-object v3, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    new-instance v3, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda25;

    invoke-direct {v3, v14, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/ui/Stars/BotStarsController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    iget-wide v2, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Stars/BotStarsController;->isStarsBalanceAvailable(J)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1500
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1501
    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v4, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object v4, v4, Lorg/telegram/ui/Cells/TextCell;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1502
    iget-object v3, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    sget v4, Lorg/telegram/messenger/R$string;->BotBalanceStars:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_premium_main:I

    invoke-virtual {v3, v4, v2, v5, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto :goto_2c

    .line 1505
    :cond_53
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    sget v3, Lorg/telegram/messenger/R$string;->BotBalanceStars:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v5, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stars/BotStarsController;->getBotStarsBalance(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;->amount:J

    cmp-long v5, v5, v17

    if-gtz v5, :cond_54

    move-object v4, v13

    goto :goto_2b

    :cond_54
    iget-wide v5, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/Stars/BotStarsController;->getBotStarsBalance(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v5

    const/16 v6, 0x20

    const v7, 0x3f59999a    # 0.85f

    invoke-static {v5, v7, v6}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmountShort(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/CharSequence;

    const-string v6, "XTR"

    aput-object v6, v4, v8

    const/16 v23, 0x1

    aput-object v5, v4, v23

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v7}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    :goto_2b
    sget v5, Lorg/telegram/messenger/R$drawable;->menu_premium_main:I

    invoke-virtual {v2, v3, v4, v5, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 1507
    :goto_2c
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-wide v3, v14, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->botHasStars(J)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v8

    goto :goto_2d

    :cond_55
    const/16 v0, 0x8

    :goto_2d
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/16 v5, 0xc

    invoke-direct {v0, v1, v5, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1510
    sget v2, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v5, 0x8

    const/4 v6, -0x1

    .line 1511
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v4, v24

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_56

    goto :goto_2e

    :cond_56
    move v3, v5

    goto :goto_2f

    :cond_57
    :goto_2e
    move v3, v8

    :goto_2f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    :cond_58
    :goto_30
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_5b

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_5b

    .line 1518
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    const/4 v5, -0x2

    const/4 v6, -0x1

    .line 1519
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1521
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1522
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1523
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1524
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_59

    .line 1525
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/messenger/R$string;->DeleteBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_31

    .line 1526
    :cond_59
    iget-boolean v0, v14, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    if-eqz v0, :cond_5a

    .line 1527
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/messenger/R$string;->ChannelDelete:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_31

    .line 1529
    :cond_5a
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v2, Lorg/telegram/messenger/R$string;->DeleteAndExitButton:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1531
    :goto_31
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v6, -0x1

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1532
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v2, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, v14}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v5, -0x2

    .line 1545
    invoke-static {v6, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    :cond_5b
    new-instance v0, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x53

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v5, 0x0

    .line 1549
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    iget-object v1, v14, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_5c

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_5c
    iget-object v1, v14, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_32
    iget-object v2, v14, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v7, 0x1

    invoke-static {v1, v2, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEmoji;->setSelection(I)V

    .line 1553
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_5d

    .line 1554
    iget-object v1, v14, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 1555
    :cond_5d
    iget-object v0, v14, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_5e

    .line 1556
    iget-object v1, v14, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->about:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    :cond_5e
    :goto_33
    invoke-direct {v14}, Lorg/telegram/ui/ChatEditActivity;->setAvatar()V

    const/4 v7, 0x1

    .line 1559
    invoke-direct {v14, v7, v8}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 1561
    iget-object v0, v14, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 9

    .line 1695
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_4

    .line 1696
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1697
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p2, p2, v2

    if-nez p2, :cond_23

    .line 1698
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz p2, :cond_0

    .line 1699
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1701
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 1702
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1703
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updateCanForum()V

    .line 1704
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 1705
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    if-eqz p2, :cond_23

    .line 1707
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->loadLinksCount()V

    return-void

    .line 1710
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I

    const/4 v2, 0x2

    if-ne p1, p2, :cond_6

    .line 1711
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1712
    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1713
    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 1714
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p1, v1, p1

    if-eqz p1, :cond_5

    goto/16 :goto_b

    .line 1715
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 1716
    iput-boolean p3, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_23

    .line 1718
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    return-void

    .line 1720
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_8

    .line 1721
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1722
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_7

    .line 1723
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->setAvatar()V

    .line 1725
    :cond_7
    sget p2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_23

    .line 1726
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->updatePublicLinksCount()V

    return-void

    .line 1728
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelRightsUpdated:I

    if-ne p1, p2, :cond_d

    .line 1729
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_23

    .line 1730
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_23

    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->chatAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p2, :cond_9

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1731
    invoke-virtual {p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->chatBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p2, :cond_a

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1732
    invoke-virtual {p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->chatDefaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p2, :cond_23

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1733
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 1735
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_c

    .line 1736
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1738
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    return-void

    .line 1741
    :cond_d
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    if-ne p1, p2, :cond_f

    .line 1742
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1743
    iget-wide v1, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    cmp-long p3, p1, v1

    if-nez p3, :cond_23

    .line 1744
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_e

    .line 1746
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 1748
    :cond_e
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatEditActivity;->updateReactionsCell(Z)V

    return-void

    .line 1750
    :cond_f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    if-ne p1, p2, :cond_1f

    .line 1751
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_23

    .line 1752
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 p2, 0x8

    if-eqz p1, :cond_16

    .line 1753
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    .line 1754
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->botHasStars(J)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_2

    :cond_10
    move v3, p2

    :goto_2
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getBotStarsBalance(J)Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    const/16 v5, 0x20

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Stars/StarsIntroActivity;->formatStarsAmount(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;FC)Ljava/lang/CharSequence;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/CharSequence;

    const-string v5, "XTR"

    aput-object v5, v4, v1

    aput-object v3, v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x3f59999a    # 0.85f

    invoke-static {v3, v4}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {p3, v3, v0}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 1756
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p3, :cond_13

    .line 1757
    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->botHasStars(J)Z

    move-result v3

    if-nez v3, :cond_12

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->botHasTON(J)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_3

    :cond_11
    move p1, v1

    goto :goto_4

    :cond_12
    :goto_3
    move p1, v0

    :goto_4
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    .line 1759
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_15

    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_14

    goto :goto_5

    :cond_14
    move p3, p2

    goto :goto_6

    :cond_15
    :goto_5
    move p3, v1

    :goto_6
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1761
    :cond_16
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_23

    .line 1762
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/ui/Stars/BotStarsController;->getInstance(I)Lorg/telegram/ui/Stars/BotStarsController;

    move-result-object p1

    .line 1763
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->botHasTON(J)Z

    move-result v3

    if-eqz v3, :cond_17

    move v3, v1

    goto :goto_7

    :cond_17
    move v3, p2

    :goto_7
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1764
    iget-wide v3, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Stars/BotStarsController;->getTONBalance(J)J

    move-result-wide v3

    .line 1765
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_19

    long-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpl-double v5, v3, v5

    .line 1767
    const-string v6, "TON "

    if-lez v5, :cond_18

    .line 1768
    invoke-virtual {p3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    double-to-int v3, v3

    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .line 1770
    :cond_18
    new-instance v5, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v7, 0x2e

    .line 1771
    invoke-virtual {v5, v7}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 1772
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#.##"

    invoke-direct {v7, v8, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 1773
    invoke-virtual {v7, v2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v2, 0x3

    .line 1774
    invoke-virtual {v7, v2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1775
    invoke-virtual {v7, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1776
    invoke-virtual {p3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v7, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1779
    :cond_19
    :goto_8
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v2, p3, v0}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 1780
    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->publicLinkCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p3, :cond_1c

    .line 1781
    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stars/BotStarsController;->botHasStars(J)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stars/BotStarsController;->botHasTON(J)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_9

    :cond_1a
    move v0, v1

    :cond_1b
    :goto_9
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    .line 1783
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->balanceContainer:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->starsBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_1e

    iget-object p3, p0, Lorg/telegram/ui/ChatEditActivity;->tonBalanceCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1d

    goto :goto_a

    :cond_1d
    move v1, p2

    :cond_1e
    :goto_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1786
    :cond_1f
    sget p2, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    if-ne p1, p2, :cond_20

    .line 1787
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    .line 1788
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_23

    .line 1789
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V

    return-void

    .line 1791
    :cond_20
    sget p2, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    if-ne p1, p2, :cond_21

    .line 1792
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    .line 1793
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return-void

    .line 1796
    :cond_21
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-ne p1, p2, :cond_23

    .line 1797
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1798
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    neg-long v0, v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_23

    .line 1799
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_22

    .line 1800
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1802
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_23
    :goto_b
    return-void
.end method

.method public didStartUpload(ZZ)V
    .locals 0

    .line 1818
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 1821
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

    .line 1826
    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda35;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    move-object/from16 v6, p6

    move-object/from16 v2, p7

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ChatEditActivity;Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$VideoSize;Lorg/telegram/tgnet/TLRPC$PhotoSize;DLjava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 2

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissCurrentDialog(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ImageUpdater;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic getCloseIntoObject()Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$getCloseIntoObject(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    return-object v0
.end method

.method public getInitialSearchString()Ljava/lang/String;
    .locals 1

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 56

    move-object/from16 v0, p0

    .line 2560
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2562
    new-instance v8, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda36;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ChatEditActivity;)V

    .line 2568
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2571
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2572
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2573
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v19, 0x0

    move/from16 v20, v23

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lorg/telegram/ui/Cells/TextCell;

    aput-object v12, v2, v11

    const-string v13, "textView"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2577
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->setAvatarCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    const-string v14, "imageView"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v28

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move/from16 v32, v37

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->membersCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v28

    sget v46, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v26, 0x0

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move/from16 v32, v46

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2582
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->adminCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->inviteLinksCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_0

    .line 2588
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->memberRequestsCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2593
    :cond_0
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->blockCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->logCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v4, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2602
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v55, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move/from16 v32, v55

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2604
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v31, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    new-instance v47, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v51

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v49, 0x0

    const/16 v52, 0x0

    move-object/from16 v48, v2

    move-object/from16 v50, v3

    invoke-direct/range {v47 .. v55}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    new-instance v47, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->locationCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v51

    move-object/from16 v48, v2

    move-object/from16 v50, v3

    invoke-direct/range {v47 .. v55}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move/from16 v22, v37

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v2

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2612
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v40, v3, v4

    sget v45, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v39, v2

    invoke-direct/range {v38 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object/from16 v16, v2

    move/from16 v22, v37

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->descriptionTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    move-object/from16 v16, v2

    move/from16 v22, v31

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->avatarContainer:Landroid/widget/LinearLayout;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v25, v2

    move/from16 v31, v22

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->settingsContainer:Landroid/widget/LinearLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->typeEditContainer:Landroid/widget/LinearLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2620
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->deleteContainer:Landroid/widget/FrameLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->stickersContainer:Landroid/widget/FrameLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->infoContainer:Landroid/widget/LinearLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->settingsTopSectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v3, v11

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move/from16 v31, v22

    invoke-direct/range {v24 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->settingsSectionCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->deleteInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v2, v22

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->deleteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v26, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v4, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object/from16 v25, v3

    move-object/from16 v27, v4

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v24

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2635
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->stickersCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v10, [Ljava/lang/Class;

    aput-object v5, v4, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v29

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v10, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v4, v11

    move/from16 v22, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2639
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->stickersInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v5, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x0

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2644
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2648
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2651
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v11

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2652
    new-instance v47, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v51

    move-object/from16 v48, v2

    move-object/from16 v50, v3

    move/from16 v55, v32

    invoke-direct/range {v47 .. v55}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    new-instance v24, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v28

    sget v55, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move/from16 v32, v55

    invoke-direct/range {v24 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2654
    new-instance v47, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v51

    move-object/from16 v48, v2

    move-object/from16 v50, v3

    invoke-direct/range {v47 .. v55}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    new-instance v47, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v51

    move-object/from16 v48, v2

    move-object/from16 v50, v3

    invoke-direct/range {v47 .. v55}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2656
    new-instance v47, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v49, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v4, "leftImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v51

    move-object/from16 v48, v2

    move-object/from16 v50, v3

    invoke-direct/range {v47 .. v55}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v47

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2658
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v22, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2660
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->reactionsCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    const/16 v45, 0x0

    const/16 v40, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_1

    .line 2663
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_2

    .line 2668
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2669
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditActivity;->statsAndBoosts:Lorg/telegram/ui/Cells/TextCell;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v12, v3, v11

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v40, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v3

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1

    .line 2129
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 2130
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextEmoji;->hidePopup(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 502
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditActivity;->checkDiscard(Z)Z

    move-result p1

    return p1
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 13

    .line 328
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_4

    .line 331
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v6, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_4

    .line 338
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-wide v7, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v10, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_4

    :cond_0
    return v5

    .line 345
    :cond_1
    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_4

    .line 347
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getUserSync(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v6, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v6, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-nez v0, :cond_4

    .line 354
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 355
    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesStorage;->loadUserInfos(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 358
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    goto :goto_1

    :cond_3
    return v5

    .line 366
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const-wide/16 v6, 0x5

    if-eqz v0, :cond_a

    .line 367
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->clone(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->clone(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->clone(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatDefaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v8, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 375
    iget-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum_tabs:Z

    iput-boolean v6, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    .line 376
    iget-wide v6, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_8

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v1, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :goto_3
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->forumUpgradeParticipantsMin:I

    if-lt v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_9

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    :cond_9
    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 377
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 378
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 379
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_5

    .line 382
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 383
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->isChannel:Z

    .line 385
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->forum:Z

    .line 386
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->forumTabs:Z

    .line 387
    iput-boolean v5, p0, Lorg/telegram/ui/ChatEditActivity;->canForum:Z

    .line 388
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_b

    .line 390
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 393
    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/ImageUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 394
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/ImageUpdater;->setDelegate(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)V

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 396
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 397
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelRightsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_c

    .line 400
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditActivity;->loadLinksCount()V

    .line 402
    :cond_c
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 422
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->clear()V

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 428
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatSwitchedForum:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 429
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatAvailableReactionsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 430
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelConnectedBotsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->botStarsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 437
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 439
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelRightsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_3

    .line 441
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onDestroy()V

    :cond_3
    return-void
.end method

.method public onInsets(IIII)V
    .locals 2

    .line 2682
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/high16 p2, 0x41400000    # 12.0f

    .line 2683
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 2685
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz p1, :cond_1

    neg-int p2, p4

    int-to-float p2, p2

    .line 2686
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 460
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->stopPreloadReactions(Ljava/util/List;)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onPause()V

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 466
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ImageUpdater;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 447
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->onResume()V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEditText()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 452
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChatEditActivity;->updateColorCell()V

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    const/4 v0, 0x1

    .line 454
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/ChatEditActivity;->updateFields(ZZ)V

    .line 455
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ImageUpdater;->onResume()V

    return-void
.end method

.method public onUploadProgressChanged(F)V
    .locals 1

    .line 1810
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->avatarProgressView:Lorg/telegram/ui/Components/RadialProgressView;

    if-nez v0, :cond_0

    return-void

    .line 1813
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgressView;->setProgress(F)V

    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    .line 2149
    const-string v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2

    .line 2135
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->imageUpdater:Lorg/telegram/ui/Components/ImageUpdater;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ImageUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2136
    const-string v1, "path"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->nameTextView:Lorg/telegram/ui/Components/EditTextEmoji;

    if-eqz v0, :cond_1

    .line 2139
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2141
    const-string v1, "nameTextView"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 3

    .line 2175
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_3

    .line 2177
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p1, :cond_0

    .line 2178
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2180
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->hidden_prehistory:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditActivity;->historyHidden:Z

    .line 2181
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->availableReactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    .line 2182
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2183
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->preloadedReactions:Ljava/util/List;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsUtils;->startPreloadReactions(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2184
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->starrefConnectAllowed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2185
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->channelAffiliateProgramsCell:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$UserFull;)V
    .locals 5

    .line 2154
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz p1, :cond_8

    .line 2156
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_1

    .line 2157
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditActivity;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 2159
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2160
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/16 v3, 0x2d

    invoke-virtual {p1, v1, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    .line 2161
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz p1, :cond_4

    .line 2162
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->botAffiliateProgramCell:Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$UserFull;->starref_program:Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;

    if-nez p1, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->AffiliateProgramBotOff:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_payments$starRefProgram;->commission_permille:I

    int-to-float p1, p1

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "%.1f%%"

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Cells/TextCell;->setValue(Ljava/lang/CharSequence;Z)V

    .line 2165
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->verifyCell:Lorg/telegram/ui/Cells/TextCell;

    const/16 v1, 0x8

    if-eqz p1, :cond_6

    .line 2166
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2168
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->verifyInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz p1, :cond_8

    .line 2169
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_info:Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->verifier_settings:Lorg/telegram/tgnet/tl/TL_bots$botVerifierSettings;

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public showConvertTooltip()V
    .locals 5

    .line 1897
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/16 v1, 0x4c

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic supportsBulletin()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate$-CC;->$default$supportsBulletin(Lorg/telegram/ui/Components/ImageUpdater$ImageUpdaterDelegate;)Z

    move-result v0

    return v0
.end method

.method public updateColorCell()V
    .locals 3

    .line 2413
    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->colorCell:Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    if-eqz v0, :cond_5

    .line 2414
    iget-object v1, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->historyCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->forumsCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatEditActivity;->autoTranslationCell:Lorg/telegram/ui/Cells/TextCell;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->set(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_5
    return-void
.end method

.method public updateSuggestedCell(Ljava/lang/Long;Z)V
    .locals 6

    .line 2423
    iget-object p2, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 2427
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p2, v4, v1

    if-ltz p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast_messages_allowed:Z

    :goto_0
    if-eqz p2, :cond_5

    .line 2429
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v4, p0, Lorg/telegram/ui/ChatEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 2430
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    .line 2431
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    sget p2, Lorg/telegram/messenger/R$string;->PostSuggestions:I

    .line 2432
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/R$string;->PostSuggestionsStars:I

    .line 2434
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x3f28f5c3    # 0.66f

    .line 2433
    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity;->replaceStarsWithPlain(Ljava/lang/CharSequence;F)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_markunread:I

    .line 2431
    invoke-virtual {p1, p2, v0, v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    return-void

    .line 2438
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatEditActivity;->suggestedCell:Lorg/telegram/ui/Cells/TextCell;

    sget p2, Lorg/telegram/messenger/R$string;->PostSuggestions:I

    .line 2439
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Cells/TextCell;->applyNewSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->PostSuggestionsOff:I

    .line 2440
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_markunread:I

    .line 2438
    invoke-virtual {p1, p2, v0, v1, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateSuggestedCell(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2419
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ChatEditActivity;->updateSuggestedCell(Ljava/lang/Long;Z)V

    return-void
.end method
