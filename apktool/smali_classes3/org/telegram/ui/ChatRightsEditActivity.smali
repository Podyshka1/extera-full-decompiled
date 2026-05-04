.class public Lorg/telegram/ui/ChatRightsEditActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;,
        Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;
    }
.end annotation


# instance fields
.field private addAdminsRow:I

.field private addBotButton:Landroid/widget/FrameLayout;

.field private addBotButtonContainer:Landroid/widget/FrameLayout;

.field private addBotButtonRow:I

.field private addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

.field private addUsersRow:I

.field private adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field private anonymousRow:I

.field private asAdmin:Z

.field private asAdminAnimator:Landroid/animation/ValueAnimator;

.field private asAdminT:F

.field private banUsersRow:I

.field private bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field public banning:Z

.field private botHash:Ljava/lang/String;

.field private canEdit:Z

.field private cantEditInfoRow:I

.field private changeInfoRow:I

.field private channelDeleteMessagesRow:I

.field private channelDeleteStoriesRow:I

.field private channelEditMessagesRow:I

.field private channelEditStoriesRow:I

.field private channelMessagesExpanded:Z

.field private channelMessagesRow:I

.field private channelPostMessagesRow:I

.field private channelPostStoriesRow:I

.field private channelStoriesExpanded:Z

.field private channelStoriesRow:I

.field private chatId:J

.field private closingKeyboardAfterFinish:Z

.field private currentBannedRights:Ljava/lang/String;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentRank:Ljava/lang/String;

.field private currentType:I

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

.field private deleteMessagesRow:I

.field private doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private doneDrawableAnimator:Landroid/animation/ValueAnimator;

.field private editMesagesRow:I

.field private editTagsRow:I

.field private embedLinksRow:I

.field private initialAsAdmin:Z

.field private initialIsSet:Z

.field private initialRank:Ljava/lang/String;

.field private isAddingNew:Z

.field private isChannel:Z

.field private isForum:Z

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

.field private loading:Z

.field private manageDirectRow:I

.field private manageRow:I

.field private manageTopicsRow:I

.field private myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

.field private permissionsEndRow:I

.field private permissionsStartRow:I

.field private pinMessagesRow:I

.field private postMessagesRow:I

.field private rankEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

.field private rankHeaderRow:I

.field private rankInfoRow:I

.field private rankRow:I

.field private removeAdminRow:I

.field private removeAdminShadowRow:I

.field private rightsShadowRow:I

.field private rowCount:I

.field private sendFilesRow:I

.field private sendMediaExpanded:Z

.field private sendMediaRow:I

.field private sendMessagesRow:I

.field private sendMusicRow:I

.field private sendPhotosRow:I

.field private sendPollsRow:I

.field private sendRoundRow:I

.field private sendStickersRow:I

.field private sendVideosRow:I

.field private sendVoiceRow:I

.field private startVoiceChatRow:I

.field private transferOwnerRow:I

.field private transferOwnerShadowRow:I

.field private untilDateRow:I

.field private untilSectionRow:I


# direct methods
.method public static synthetic $r8$lambda$0fJ_A_7eUkoeFJKzmlFqcUydi1E(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$2vr1RdoYejEpta7Ik3jDp-kTsn4(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2xtLqKk6J3kKpmZXIN18lbzWxBg(Lorg/telegram/ui/ChatRightsEditActivity;ILandroid/widget/TimePicker;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$0(ILandroid/widget/TimePicker;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$3vQp2OUV8rXT-Wp_qNPXkCd_sOs(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$17(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EGLohn5Pd_zL_901BgotLbMvTSU(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$19(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J5QfwBJ3j16WnA__RJHtWeHs2fE(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$6(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KGo8s_DMfHb-65859eLsbqUAFag(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$12(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LBgojarQaT5oGlPBqUjmrrf278Q(Lorg/telegram/ui/ChatRightsEditActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$15(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NHBvT4pX-ci8YDHu73jC24G30Zc(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3jDeh5uayCpzn49ZrZfQ7NJ9q0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Skk0GYCPbeYyvFvV_W5VahlChkk(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$checkDiscard$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TbX_kOhsLJB4d_FxcBPRNx_NbM4(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$getThemeDescriptions$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$XGcFDpfr-PJk_cEX0SQrzTbp-uI(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$a5fRI3sBA4AOwUFOqQkkwfHf5HA(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$21(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dH6x17AKyN0kErvE6mXchu92V08(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$checkDiscard$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e0zdO2jqLrPzUkV68k3c32xz2-U(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$8(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjcw_KXPkfYrnJdfrJ0e4_egfr8(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$7(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOaNp8Z4vaErOmMBljqRf7RkqQ0(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$5(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxD-TyDsZdEzdcLbQ6p6HPJQwwg(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$sRwA-X79N2tYURPzj522blq1yno(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/DatePicker;III)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$createView$2(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$saMQfD-wZCuhSg4o9Te3Ffo7QSg(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uat-_9TwRiDnrm_6ix8GhzL2dBA(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$updateAsAdmin$25(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xdFXRQDoDMotWMFxFo8KJaR4CKs(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$14(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xmwB0i1BvzXLcW8CvCL7SA6vF18(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$onDonePressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z0x7SE1VK9AryV73dPnrE1dzaEM(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$setLoading$22(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zRmBWM6QmAibM6R63HSL0HuPz-c(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->lambda$initTransfer$11(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfqikcY5TEg_U6UfwCg8gxW60f0(Landroid/widget/DatePicker;Landroid/content/DialogInterface;)V
    .locals 4

    .line 766
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 768
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 769
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    .line 770
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 771
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddAdminsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddBotButtonRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetadminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanonymousRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetasAdmin(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetasAdminT(Lorg/telegram/ui/ChatRightsEditActivity;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbanUsersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcanEdit(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcantEditInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelDeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelDeleteStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteStoriesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelEditMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelEditStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelMessagesExpanded(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelPostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelPostStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostStoriesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelStoriesExpanded(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchannelStoriesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatId(Lorg/telegram/ui/ChatRightsEditActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentRank(Lorg/telegram/ui/ChatRightsEditActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUser(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdoneDrawable(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditMesagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteditTagsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisChannel(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloading(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanageDirectRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageDirectRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanageRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmyAdminRights(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpostMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrankHeaderRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrankInfoRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrankRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetremoveAdminRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetremoveAdminShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrightsShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendFilesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaExpanded(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMusicRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendPhotosRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendRoundRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendVideosRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendVoiceRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartVoiceChatRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettransferOwnerRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettransferOwnerShadowRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuntilDateRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuntilSectionRow(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaddBotButton(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaddBotButtonContainer(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaddBotButtonText(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Components/AnimatedTextView;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentRank(Lorg/telegram/ui/ChatRightsEditActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrankEditTextCell(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankEditTextCell:Lorg/telegram/ui/Cells/PollEditTextCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$mallDefaultMediaBanned(Lorg/telegram/ui/ChatRightsEditActivity;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->allDefaultMediaBanned()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckDiscard(Lorg/telegram/ui/ChatRightsEditActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->checkDiscard(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetChannelMessagesSelectedCount(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->getChannelMessagesSelectedCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetChannelStoriesSelectedCount(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->getChannelStoriesSelectedCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSendMediaSelectedCount(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->getSendMediaSelectedCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misExpandableSendMediaRow(Lorg/telegram/ui/ChatRightsEditActivity;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->isExpandableSendMediaRow(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDonePressed(Lorg/telegram/ui/ChatRightsEditActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetChannelMessagesEnabled(Lorg/telegram/ui/ChatRightsEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setChannelMessagesEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetChannelStoriesEnabled(Lorg/telegram/ui/ChatRightsEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setChannelStoriesEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSendMediaEnabled(Lorg/telegram/ui/ChatRightsEditActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setSendMediaEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTextLeft(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setTextLeft(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p9

    move/from16 v5, p10

    .line 198
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v6, 0x0

    .line 107
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    const/4 v7, 0x0

    .line 111
    iput v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 112
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    .line 113
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    .line 119
    const-string v8, ""

    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentBannedRights:Ljava/lang/String;

    .line 187
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->closingKeyboardAfterFinish:Z

    move/from16 v9, p11

    .line 199
    iput-boolean v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    move-wide/from16 v9, p3

    .line 200
    iput-wide v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    .line 201
    iget v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 202
    iput v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    .line 203
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    const/4 v9, 0x1

    xor-int/2addr v5, v9

    .line 204
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesExpanded:Z

    move-object/from16 v5, p12

    .line 205
    iput-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->botHash:Ljava/lang/String;

    .line 206
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v10, v0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez p8, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p8

    .line 210
    :goto_0
    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    iput-object v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialRank:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 212
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_1

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    .line 213
    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    iput-boolean v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    .line 214
    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 216
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v8, 0x2

    if-nez v5, :cond_5

    .line 217
    iget v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v5, v8, :cond_4

    iget-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_3

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v9

    :goto_3
    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :cond_5
    if-eqz v4, :cond_21

    if-ne v4, v8, :cond_6

    goto/16 :goto_6

    :cond_6
    if-ne v4, v9, :cond_20

    .line 330
    iput-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v2, :cond_7

    .line 332
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 333
    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 342
    :cond_7
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v3, :cond_8

    .line 344
    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    goto :goto_4

    .line 350
    :cond_8
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 351
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 352
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 353
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 354
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 355
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 356
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 357
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 358
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 359
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 360
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 361
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 362
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 363
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 364
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 365
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 366
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 367
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 368
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 369
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 370
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 371
    iget-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 373
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v4, :cond_9

    .line 374
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 376
    :cond_9
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v4, :cond_a

    .line 377
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 379
    :cond_a
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v4, :cond_b

    .line 380
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 382
    :cond_b
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v4, :cond_c

    .line 383
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 385
    :cond_c
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v4, :cond_d

    .line 386
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 388
    :cond_d
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v4, :cond_e

    .line 389
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 391
    :cond_e
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v4, :cond_f

    .line 392
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 394
    :cond_f
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v4, :cond_10

    .line 395
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 397
    :cond_10
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v4, :cond_11

    .line 398
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 400
    :cond_11
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v4, :cond_12

    .line 401
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 403
    :cond_12
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v4, :cond_13

    .line 404
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 406
    :cond_13
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v4, :cond_14

    .line 407
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 409
    :cond_14
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-eqz v4, :cond_15

    .line 410
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 412
    :cond_15
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v4, :cond_16

    .line 413
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 415
    :cond_16
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v4, :cond_17

    .line 416
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 418
    :cond_17
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v4, :cond_18

    .line 419
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 421
    :cond_18
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v4, :cond_19

    .line 422
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 424
    :cond_19
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v4, :cond_1a

    .line 425
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 427
    :cond_1a
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v4, :cond_1b

    .line 428
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 430
    :cond_1b
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v4, :cond_1c

    .line 431
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 433
    :cond_1c
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v2, :cond_1d

    .line 434
    iput-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 437
    :cond_1d
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentBannedRights:Ljava/lang/String;

    if-eqz v3, :cond_1f

    .line 439
    iget-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-nez v1, :cond_1e

    goto :goto_5

    :cond_1e
    move v9, v6

    :cond_1f
    :goto_5
    iput-boolean v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    :cond_20
    move v1, v6

    goto/16 :goto_30

    :cond_21
    :goto_6
    if-ne v4, v8, :cond_44

    .line 221
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-wide/from16 v10, p1

    invoke-virtual {v2, v10, v11}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_44

    .line 223
    iget-boolean v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v3, :cond_22

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_broadcast_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    goto :goto_7

    :cond_22
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->bot_group_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :goto_7
    if-eqz v2, :cond_44

    if-nez v1, :cond_23

    move-object v1, v2

    goto/16 :goto_28

    .line 228
    :cond_23
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v3, :cond_25

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v3, :cond_24

    goto :goto_8

    :cond_24
    move v3, v6

    goto :goto_9

    :cond_25
    :goto_8
    move v3, v9

    :goto_9
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 229
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v3, :cond_27

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_26

    goto :goto_a

    :cond_26
    move v3, v6

    goto :goto_b

    :cond_27
    :goto_a
    move v3, v9

    :goto_b
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 230
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v3, :cond_29

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_28

    goto :goto_c

    :cond_28
    move v3, v6

    goto :goto_d

    :cond_29
    :goto_c
    move v3, v9

    :goto_d
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 231
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v3, :cond_2b

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v3, :cond_2a

    goto :goto_e

    :cond_2a
    move v3, v6

    goto :goto_f

    :cond_2b
    :goto_e
    move v3, v9

    :goto_f
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 232
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v3, :cond_2d

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-eqz v3, :cond_2c

    goto :goto_10

    :cond_2c
    move v3, v6

    goto :goto_11

    :cond_2d
    :goto_10
    move v3, v9

    :goto_11
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    .line 233
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v3, :cond_2f

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_2e

    goto :goto_12

    :cond_2e
    move v3, v6

    goto :goto_13

    :cond_2f
    :goto_12
    move v3, v9

    :goto_13
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 234
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v3, :cond_31

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_30

    goto :goto_14

    :cond_30
    move v3, v6

    goto :goto_15

    :cond_31
    :goto_14
    move v3, v9

    :goto_15
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 235
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v3, :cond_33

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v3, :cond_32

    goto :goto_16

    :cond_32
    move v3, v6

    goto :goto_17

    :cond_33
    :goto_16
    move v3, v9

    :goto_17
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    .line 236
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v3, :cond_35

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v3, :cond_34

    goto :goto_18

    :cond_34
    move v3, v6

    goto :goto_19

    :cond_35
    :goto_18
    move v3, v9

    :goto_19
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 237
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v3, :cond_37

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v3, :cond_36

    goto :goto_1a

    :cond_36
    move v3, v6

    goto :goto_1b

    :cond_37
    :goto_1a
    move v3, v9

    :goto_1b
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 238
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v3, :cond_39

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v3, :cond_38

    goto :goto_1c

    :cond_38
    move v3, v6

    goto :goto_1d

    :cond_39
    :goto_1c
    move v3, v9

    :goto_1d
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 239
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-nez v3, :cond_3b

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-eqz v3, :cond_3a

    goto :goto_1e

    :cond_3a
    move v3, v6

    goto :goto_1f

    :cond_3b
    :goto_1e
    move v3, v9

    :goto_1f
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    .line 240
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-nez v3, :cond_3d

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v3, :cond_3c

    goto :goto_20

    :cond_3c
    move v3, v6

    goto :goto_21

    :cond_3d
    :goto_20
    move v3, v9

    :goto_21
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    .line 241
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-nez v3, :cond_3f

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-eqz v3, :cond_3e

    goto :goto_22

    :cond_3e
    move v3, v6

    goto :goto_23

    :cond_3f
    :goto_22
    move v3, v9

    :goto_23
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    .line 242
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-nez v3, :cond_41

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-eqz v3, :cond_40

    goto :goto_24

    :cond_40
    move v3, v6

    goto :goto_25

    :cond_41
    :goto_24
    move v3, v9

    :goto_25
    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    .line 243
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-nez v3, :cond_43

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-eqz v2, :cond_42

    goto :goto_26

    :cond_42
    move v2, v6

    goto :goto_27

    :cond_43
    :goto_26
    move v2, v9

    :goto_27
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    :cond_44
    :goto_28
    if-nez v1, :cond_47

    .line 249
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    if-ne v4, v8, :cond_46

    .line 251
    invoke-static {v6}, Lorg/telegram/ui/ChatRightsEditActivity;->emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 252
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_45

    const/high16 v7, 0x3f800000    # 1.0f

    .line 253
    :cond_45
    iput v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 254
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    goto/16 :goto_2e

    .line 256
    :cond_46
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 257
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 258
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 259
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 260
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 261
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 262
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 263
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 264
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 265
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    .line 266
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 267
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    .line 268
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    .line 269
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    .line 270
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    .line 271
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    .line 272
    iput-boolean v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    goto/16 :goto_2e

    .line 275
    :cond_47
    iput-boolean v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    .line 276
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 277
    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 278
    iget-boolean v10, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 279
    iget-boolean v11, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 280
    iget-boolean v12, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v12, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 281
    iget-boolean v13, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    iput-boolean v13, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 282
    iget-boolean v14, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v14, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 283
    iget-boolean v15, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v15, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 284
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 285
    iget-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    .line 286
    iget-boolean v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 287
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    .line 288
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    .line 289
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    .line 290
    iget-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    .line 291
    iget-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v8, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    move/from16 p2, v2

    .line 292
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    .line 293
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-nez v5, :cond_49

    if-nez v10, :cond_49

    if-nez v6, :cond_49

    if-nez v11, :cond_49

    if-nez v12, :cond_49

    if-nez v14, :cond_49

    if-nez v15, :cond_49

    if-nez p2, :cond_49

    if-nez v7, :cond_49

    if-nez v8, :cond_49

    if-nez v13, :cond_49

    if-nez v2, :cond_49

    if-nez v9, :cond_49

    if-eqz v1, :cond_48

    goto :goto_29

    :cond_48
    const/4 v1, 0x0

    goto :goto_2a

    :cond_49
    :goto_29
    const/4 v1, 0x1

    .line 295
    :goto_2a
    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    const/4 v2, 0x2

    if-ne v4, v2, :cond_4d

    .line 300
    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v2, :cond_4b

    if-eqz v1, :cond_4a

    goto :goto_2b

    :cond_4a
    const/4 v1, 0x0

    goto :goto_2c

    :cond_4b
    :goto_2b
    const/4 v1, 0x1

    :goto_2c
    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_4c

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2d

    :cond_4c
    const/4 v7, 0x0

    .line 301
    :goto_2d
    iput v7, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    const/4 v1, 0x0

    .line 302
    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    .line 306
    :cond_4d
    :goto_2e
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4e

    .line 307
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 309
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v1, :cond_4f

    .line 310
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v2, 0x0

    .line 311
    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 320
    :cond_4f
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v2, :cond_50

    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v2, :cond_50

    .line 321
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto :goto_2f

    :cond_50
    const/4 v3, 0x1

    .line 323
    :goto_2f
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v2, :cond_51

    .line 324
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 326
    :cond_51
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v1, :cond_52

    .line 327
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    :cond_52
    const/4 v1, 0x0

    .line 441
    :goto_30
    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatRightsEditActivity;)I
    .locals 0

    .line 89
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 89
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private allDefaultMediaBanned()Z
    .locals 2

    .line 2271
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkDiscard(Z)Z
    .locals 5

    .line 1533
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentBannedRights:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v2

    goto :goto_1

    .line 1541
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialRank:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1545
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1546
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1547
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1548
    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChangesText:I

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v1, "UserRestrictionsApplyChangesText"

    invoke-static {v1, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1549
    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1550
    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1551
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public static emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 1

    .line 466
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 467
    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean p0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    return-object v0
.end method

.method private getChannelMessagesSelectedCount()I
    .locals 3

    .line 2230
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 2233
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2236
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method private getChannelStoriesSelectedCount()I
    .locals 3

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    .line 2254
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2257
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method private getSendMediaSelectedCount()I
    .locals 5

    .line 2198
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2201
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 2204
    :cond_1
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2207
    :cond_2
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 2210
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 2213
    :cond_4
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2216
    :cond_5
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 2219
    :cond_6
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v4, :cond_7

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 2222
    :cond_7
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_8

    add-int/2addr v1, v2

    :cond_8
    return v1
.end method

.method private hasAllAdminRights()Z
    .locals 4

    .line 982
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 985
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v3, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 7

    .line 990
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 994
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    new-instance v6, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda14;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    :cond_1
    move-object v5, p0

    .line 1003
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;-><init>()V

    .line 1004
    iget-object v1, v5, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1005
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1006
    iget-object v2, v5, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    .line 1007
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    goto :goto_0

    .line 1009
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    :goto_0
    if-eqz p1, :cond_3

    move-object v1, p1

    goto :goto_1

    .line 1011
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;-><init>()V

    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    .line 1012
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v5, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1013
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private isDefaultAdminRights()Z
    .locals 3

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v2, :cond_3

    :cond_1
    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v1, :cond_4

    :cond_2
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isExpandableSendMediaRow(I)Z
    .locals 1

    .line 2277
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostStoriesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteStoriesRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$checkDiscard$23(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1549
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1550
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$0(ILandroid/widget/TimePicker;II)V
    .locals 0

    .line 731
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    mul-int/lit16 p3, p3, 0xe10

    add-int/2addr p1, p3

    mul-int/lit8 p4, p4, 0x3c

    add-int/2addr p1, p4

    iput p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 732
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 725
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 726
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 727
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 728
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 730
    :try_start_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 734
    sget p1, Lorg/telegram/messenger/R$string;->Set:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 735
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda20;

    invoke-direct {p2}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda20;-><init>()V

    const/4 p3, -0x2

    invoke-virtual {v0, p3, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 738
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 740
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Landroid/view/View;)V
    .locals 10

    .line 700
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 701
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    goto/16 :goto_0

    .line 719
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 720
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 721
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v0, 0x5

    .line 722
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 724
    :try_start_0
    new-instance v2, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 744
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p2

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 748
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    .line 749
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 750
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 751
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 752
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 755
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 756
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 757
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 758
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 759
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 761
    sget v0, Lorg/telegram/messenger/R$string;->Set:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v2, v1, v0, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 762
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda12;-><init>()V

    const/4 v3, -0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 765
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda13;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 774
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 776
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 715
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v1, 0x278d00

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 716
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 711
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v1, 0x93a80

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 712
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 707
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    const v1, 0x15180

    add-int/2addr v0, v1

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 708
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 703
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v0, 0x0

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 704
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 781
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/content/Context;Landroid/view/View;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v3, p3

    .line 577
    iget-boolean v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    if-nez v4, :cond_1

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v4, :cond_0

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    if-eq v3, v4, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    goto/16 :goto_e

    .line 580
    :cond_1
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v4, :cond_4

    .line 581
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_e

    .line 584
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    .line 585
    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    .line 586
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    const/16 v2, 0x9

    if-eqz v1, :cond_3

    .line 587
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    .line 589
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void

    .line 592
    :cond_4
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    const/4 v9, 0x3

    if-ne v3, v4, :cond_7

    .line 593
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v2, :cond_5

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_e

    .line 596
    :cond_5
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesExpanded:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesExpanded:Z

    .line 597
    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    .line 598
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 599
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesExpanded:Z

    if-eqz v1, :cond_6

    .line 600
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    add-int/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    .line 602
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    add-int/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void

    .line 605
    :cond_7
    iget v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    if-ne v3, v5, :cond_a

    .line 606
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v2, :cond_8

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_e

    .line 609
    :cond_8
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    xor-int/2addr v1, v8

    iput-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    .line 610
    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 612
    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    if-eqz v1, :cond_9

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    add-int/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    .line 615
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    add-int/2addr v2, v8

    invoke-virtual {v1, v2, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void

    :cond_a
    if-nez v3, :cond_b

    .line 620
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 621
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string/jumbo v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 622
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 623
    :cond_b
    iget v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    if-ne v3, v6, :cond_e

    .line 624
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v1, :cond_d

    .line 625
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    iget-object v11, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iget-object v13, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    iget-boolean v14, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v15

    iget-boolean v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v8 .. v19}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 626
    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-eqz v1, :cond_c

    .line 627
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-interface {v1, v7, v2, v3, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    .line 629
    :cond_c
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_d
    if-ne v1, v8, :cond_52

    .line 631
    iput-boolean v8, v0, Lorg/telegram/ui/ChatRightsEditActivity;->banning:Z

    .line 632
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 633
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 634
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 635
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 636
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 637
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 638
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 639
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 640
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 641
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 642
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 643
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 644
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 645
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 646
    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 647
    iput v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    .line 648
    invoke-direct {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    return-void

    .line 650
    :cond_e
    iget v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    const/4 v10, 0x0

    if-ne v3, v6, :cond_f

    .line 651
    invoke-direct {v0, v10, v10}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void

    .line 652
    :cond_f
    iget v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    const/4 v11, 0x2

    if-ne v3, v6, :cond_16

    .line 653
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_10

    goto/16 :goto_e

    .line 656
    :cond_10
    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v10, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-virtual {v10, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 659
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 660
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 662
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/16 v4, 0x17

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    const/16 v3, 0x2f

    .line 663
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 664
    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsDuration:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 665
    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 667
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 668
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 669
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v12, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x5

    .line 671
    new-array v6, v5, [Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move v13, v7

    :goto_0
    if-ge v13, v5, :cond_15

    .line 674
    new-instance v14, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-direct {v14, v2, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    aput-object v14, v6, v13

    const/high16 v15, 0x40e00000    # 7.0f

    .line 675
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v14, v5, v7, v15, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 676
    aget-object v5, v6, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 677
    aget-object v5, v6, v13

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v13, :cond_14

    if-eq v13, v8, :cond_13

    if-eq v13, v11, :cond_12

    if-eq v13, v9, :cond_11

    .line 694
    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsCustom:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 690
    :cond_11
    const-string v5, "Months"

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 687
    :cond_12
    const-string v5, "Weeks"

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 684
    :cond_13
    const-string v5, "Days"

    new-array v14, v7, [Ljava/lang/Object;

    invoke-static {v5, v8, v14}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 681
    :cond_14
    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsUntilForever:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 697
    :goto_1
    aget-object v14, v6, v13

    invoke-virtual {v14, v5, v7}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 698
    aget-object v5, v6, v13

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v1, v5, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    aget-object v5, v6, v13

    new-instance v14, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0, v10}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v5, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x5

    goto :goto_0

    .line 784
    :cond_15
    invoke-virtual {v10, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 785
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 786
    :cond_16
    instance-of v2, v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v2, :cond_2b

    .line 787
    check-cast v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 788
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostMessagesRow:I

    if-eq v3, v2, :cond_28

    iget v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditMessagesRow:I

    if-eq v3, v6, :cond_28

    iget v6, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteMessagesRow:I

    if-ne v3, v6, :cond_17

    goto/16 :goto_5

    .line 799
    :cond_17
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostStoriesRow:I

    if-eq v3, v2, :cond_25

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    if-eq v3, v4, :cond_25

    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteStoriesRow:I

    if-ne v3, v4, :cond_18

    goto/16 :goto_3

    .line 810
    :cond_18
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v2, v8, :cond_52

    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v2, :cond_52

    .line 811
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    .line 814
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 815
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v1, v11, :cond_52

    .line 816
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 817
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 818
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 819
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 826
    :cond_19
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    if-ne v3, v2, :cond_1a

    .line 827
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    goto/16 :goto_2

    .line 828
    :cond_1a
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    if-ne v3, v2, :cond_1b

    .line 829
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    goto/16 :goto_2

    .line 830
    :cond_1b
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    if-ne v3, v2, :cond_1c

    .line 831
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    goto/16 :goto_2

    .line 832
    :cond_1c
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    if-ne v3, v2, :cond_1d

    .line 833
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    goto :goto_2

    .line 834
    :cond_1d
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    if-ne v3, v2, :cond_1e

    .line 835
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    goto :goto_2

    .line 836
    :cond_1e
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    if-ne v3, v2, :cond_1f

    .line 837
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    goto :goto_2

    .line 838
    :cond_1f
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    if-ne v3, v2, :cond_20

    .line 839
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    goto :goto_2

    .line 840
    :cond_20
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    if-ne v3, v2, :cond_23

    .line 841
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_21

    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v2, :cond_22

    .line 842
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 844
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 845
    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 849
    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_2

    .line 850
    :cond_23
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    if-ne v3, v2, :cond_24

    .line 851
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/lit8 v7, v3, 0x1

    iput-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 853
    :cond_24
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    xor-int/lit8 v2, v7, 0x1

    .line 854
    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void

    :cond_25
    :goto_3
    if-ne v3, v2, :cond_26

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    goto :goto_4

    .line 803
    :cond_26
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    if-ne v3, v2, :cond_27

    .line 804
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    goto :goto_4

    .line 806
    :cond_27
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    .line 808
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 809
    invoke-virtual {v1, v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void

    :cond_28
    :goto_5
    if-ne v3, v2, :cond_29

    .line 791
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto :goto_6

    .line 792
    :cond_29
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditMessagesRow:I

    if-ne v3, v2, :cond_2a

    .line 793
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto :goto_6

    .line 795
    :cond_2a
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 797
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 798
    invoke-virtual {v1, v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void

    .line 856
    :cond_2b
    instance-of v2, v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v2, :cond_52

    .line 857
    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 858
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 859
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v1, v11, :cond_52

    .line 860
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 861
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 862
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 863
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 864
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 870
    :cond_2c
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_31

    .line 871
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v1, v11, :cond_2d

    if-nez v1, :cond_52

    :cond_2d
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v3, v1, :cond_2e

    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v1, :cond_2e

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v1, :cond_30

    :cond_2e
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v3, v1, :cond_2f

    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v1, :cond_2f

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_30

    :cond_2f
    iget v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    if-ne v3, v1, :cond_52

    iget-object v1, v0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v1, :cond_52

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v1, :cond_52

    .line 878
    :cond_30
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 879
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyEnabled:I

    .line 880
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    .line 881
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 882
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 883
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 887
    :cond_31
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v2, v11, :cond_32

    .line 888
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 890
    :cond_32
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v2

    .line 891
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    if-ne v3, v4, :cond_33

    .line 892
    iget-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    xor-int/2addr v2, v8

    iput-boolean v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    .line 893
    invoke-direct {v0, v8}, Lorg/telegram/ui/ChatRightsEditActivity;->updateAsAdmin(Z)V

    goto/16 :goto_d

    .line 894
    :cond_33
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v3, v4, :cond_36

    .line 895
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_35

    if-ne v2, v11, :cond_34

    goto :goto_8

    .line 898
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    :goto_7
    move v2, v3

    goto/16 :goto_d

    .line 896
    :cond_35
    :goto_8
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    goto :goto_7

    .line 900
    :cond_36
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    if-ne v3, v4, :cond_37

    .line 901
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto :goto_7

    .line 902
    :cond_37
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->manageDirectRow:I

    if-ne v3, v4, :cond_38

    .line 903
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    goto :goto_7

    .line 904
    :cond_38
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    if-ne v3, v4, :cond_39

    .line 905
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto :goto_7

    .line 906
    :cond_39
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    if-ne v3, v4, :cond_3a

    .line 907
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto :goto_7

    .line 908
    :cond_3a
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    if-ne v3, v4, :cond_3b

    .line 909
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto :goto_7

    .line 910
    :cond_3b
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    if-ne v3, v4, :cond_3c

    .line 911
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    goto :goto_7

    .line 912
    :cond_3c
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    if-ne v3, v4, :cond_3d

    .line 913
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto :goto_7

    .line 914
    :cond_3d
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    if-ne v3, v4, :cond_3e

    .line 915
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_7

    .line 916
    :cond_3e
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    if-ne v3, v4, :cond_41

    .line 917
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_40

    if-ne v2, v11, :cond_3f

    goto :goto_9

    .line 920
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    goto :goto_7

    .line 918
    :cond_40
    :goto_9
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto/16 :goto_7

    .line 922
    :cond_41
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    if-ne v3, v4, :cond_44

    .line 923
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_43

    if-ne v2, v11, :cond_42

    goto :goto_a

    .line 926
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    goto/16 :goto_7

    .line 924
    :cond_43
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto/16 :goto_7

    .line 928
    :cond_44
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v3, v4, :cond_47

    .line 929
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_46

    if-ne v2, v11, :cond_45

    goto :goto_b

    .line 932
    :cond_45
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    goto/16 :goto_7

    .line 930
    :cond_46
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    goto/16 :goto_7

    .line 934
    :cond_47
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    if-ne v3, v4, :cond_4a

    .line 935
    iget v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v2, :cond_49

    if-ne v2, v11, :cond_48

    goto :goto_c

    .line 938
    :cond_48
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    goto/16 :goto_7

    .line 936
    :cond_49
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    goto/16 :goto_7

    .line 940
    :cond_4a
    iget v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v4, v8, :cond_4f

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v4, :cond_4f

    .line 941
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v4

    .line 942
    iget v5, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    if-ne v3, v5, :cond_4b

    .line 943
    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v3, v8

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    move v2, v3

    :cond_4b
    if-eqz v4, :cond_4d

    .line 946
    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v4, :cond_4c

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v4, :cond_4d

    :cond_4c
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v4, :cond_4d

    .line 947
    iput-boolean v7, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 950
    :cond_4d
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    if-ltz v3, :cond_4e

    .line 951
    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 953
    :cond_4e
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    if-ltz v3, :cond_4f

    .line 954
    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 957
    :cond_4f
    :goto_d
    iget v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v3, v11, :cond_51

    .line 958
    iget-boolean v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v3, :cond_50

    if-eqz v2, :cond_50

    move v7, v8

    :cond_50
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 960
    :cond_51
    invoke-direct {v0, v8}, Lorg/telegram/ui/ChatRightsEditActivity;->updateRows(Z)V

    :cond_52
    :goto_e
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$26()V
    .locals 5

    .line 2400
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 2401
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2403
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2404
    instance-of v4, v3, Lorg/telegram/ui/Cells/UserCell2;

    if-eqz v4, :cond_0

    .line 2405
    check-cast v3, Lorg/telegram/ui/Cells/UserCell2;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/UserCell2;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$initTransfer$10(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1103
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$initTransfer$11(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1120
    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    const/4 p1, 0x0

    .line 1121
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setCurrentPasswordInfo([BLorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 1122
    invoke-static {p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 1123
    invoke-virtual {p3}, Lorg/telegram/ui/TwoStepVerificationActivity;->getNewSrpPassword()Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initTransfer$12(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1118
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initTransfer$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    if-eqz v0, :cond_17

    .line 1015
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_e

    .line 1018
    :cond_0
    const-string v3, "PASSWORD_HASH_INVALID"

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    .line 1020
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1021
    iget-boolean v2, v1, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v2, :cond_1

    .line 1022
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminChannelTransfer:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1024
    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminGroupTransfer:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1026
    :goto_0
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferReadyAlertText:I

    iget-object v3, v1, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v6

    aput-object v7, v8, v5

    invoke-static {v2, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1027
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminTransferChangeOwner:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1032
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1033
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    return-void

    .line 1035
    :cond_3
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v7, "PASSWORD_MISSING"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v8, "PASSWORD_TOO_FRESH_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v8, "SESSION_TOO_FRESH_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1116
    :cond_4
    const-string v3, "SRP_ID_INVALID"

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1117
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 1118
    iget v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda24;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/16 v2, 0x8

    invoke-virtual {v3, v0, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 1126
    :cond_5
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v4, "CHANNELS_TOO_MUCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1127
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1128
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v5, 0x0

    const/4 v3, 0x5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 1130
    :cond_6
    new-instance v0, Lorg/telegram/ui/TooManyCommunitiesActivity;

    invoke-direct {v0, v5}, Lorg/telegram/ui/TooManyCommunitiesActivity;-><init>(I)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_7
    if-eqz v2, :cond_8

    .line 1134
    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    .line 1135
    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    .line 1137
    :cond_8
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLObject;)V

    return-void

    :cond_9
    :goto_1
    if-eqz v2, :cond_a

    .line 1037
    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    .line 1039
    :cond_a
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1040
    sget v3, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1042
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v8, 0x41c00000    # 24.0f

    .line 1043
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v3, v9, v10, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1044
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1045
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1047
    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1048
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v10, 0x41800000    # 16.0f

    .line 1049
    invoke-virtual {v8, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1050
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_b

    const/4 v11, 0x5

    goto :goto_2

    :cond_b
    const/4 v11, 0x3

    :goto_2
    or-int/lit8 v11, v11, 0x30

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1051
    iget-boolean v11, v1, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v11, :cond_c

    .line 1052
    sget v11, Lorg/telegram/messenger/R$string;->EditChannelAdminTransferAlertText:I

    iget-object v14, v1, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v14, v15, v6

    const-string v14, "EditChannelAdminTransferAlertText"

    invoke-static {v14, v11, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1054
    :cond_c
    sget v11, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText:I

    iget-object v14, v1, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v14, v15, v6

    const-string v14, "EditAdminTransferAlertText"

    invoke-static {v14, v11, v15}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v11, -0x1

    const/4 v14, -0x2

    .line 1056
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1059
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x0

    const/high16 v19, 0x41300000    # 11.0f

    .line 1060
    invoke-static/range {v16 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1062
    new-instance v15, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v15, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1063
    sget v12, Lorg/telegram/messenger/R$drawable;->list_circle:I

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v16, 0x41300000    # 11.0f

    if-eqz v12, :cond_d

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_4

    :cond_d
    move v12, v6

    :goto_4
    const/high16 v17, 0x41100000    # 9.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-boolean v19, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v19, :cond_e

    move v13, v6

    goto :goto_5

    :cond_e
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    move/from16 v13, v19

    :goto_5
    invoke-virtual {v15, v12, v4, v13, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1065
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v12, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1067
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1068
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1069
    invoke-virtual {v4, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1070
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_f

    const/4 v12, 0x5

    goto :goto_6

    :cond_f
    const/4 v12, 0x3

    :goto_6
    or-int/lit8 v12, v12, 0x30

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1071
    sget v12, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText1:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_10

    .line 1073
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x5

    .line 1074
    invoke-static {v14, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 1076
    :cond_10
    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    :goto_7
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1081
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x0

    const/high16 v22, 0x41300000    # 11.0f

    .line 1082
    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1085
    sget v12, Lorg/telegram/messenger/R$drawable;->list_circle:I

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1086
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_11

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    goto :goto_8

    :cond_11
    move v12, v6

    :goto_8
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    sget-boolean v17, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v17, :cond_12

    move v11, v6

    goto :goto_9

    :cond_12
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v11, v16

    :goto_9
    invoke-virtual {v8, v12, v15, v11, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1087
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-direct {v6, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1089
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1090
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    invoke-virtual {v6, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1092
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_13

    const/4 v11, 0x5

    goto :goto_a

    :cond_13
    const/4 v11, 0x3

    :goto_a
    or-int/lit8 v11, v11, 0x30

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1093
    sget v11, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText2:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_14

    const/4 v11, -0x1

    .line 1095
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v12, 0x5

    .line 1096
    invoke-static {v14, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_14
    const/4 v11, -0x1

    const/4 v12, 0x5

    .line 1098
    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    invoke-static {v11, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    :goto_b
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1103
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminTransferSetPassword:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda23;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1104
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_d

    .line 1106
    :cond_15
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1107
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1108
    invoke-virtual {v0, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1109
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_16

    goto :goto_c

    :cond_16
    const/4 v12, 0x3

    :goto_c
    or-int/lit8 v4, v12, 0x30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1110
    sget v4, Lorg/telegram/messenger/R$string;->EditAdminTransferAlertText3:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/high16 v8, 0x41300000    # 11.0f

    .line 1111
    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1113
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1115
    :goto_d
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_17
    if-eqz p2, :cond_18

    .line 1141
    iget-object v0, v1, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    iget-object v3, v1, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-interface {v0, v3}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1142
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 1143
    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->needHideProgress()V

    .line 1144
    invoke-virtual {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->finishFragment()V

    :cond_18
    :goto_e
    return-void
.end method

.method private synthetic lambda$initTransfer$14(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1013
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda21;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_editCreator;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initTransfer$7(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 996
    iput-wide p3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    .line 997
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 998
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initTransfer$8(Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;)V
    .locals 0

    .line 1029
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->initTransfer(Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    return-void
.end method

.method private synthetic lambda$initTransfer$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1028
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    .line 1029
    new-instance p2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/TwoStepVerificationActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setDelegate(ILorg/telegram/ui/TwoStepVerificationActivity$TwoStepVerificationActivityDelegate;)V

    .line 1030
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onDonePressed$15(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1364
    iput-wide p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    .line 1365
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1366
    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->onDonePressed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onDonePressed$16()V
    .locals 5

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-eqz v0, :cond_4

    .line 1405
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v2, :cond_3

    :cond_0
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-nez v2, :cond_3

    :cond_1
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 1406
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    .line 1401
    invoke-interface {v0, v2, v1, v3, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onDonePressed$17(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 7

    const/4 v0, 0x0

    .line 1410
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    if-eqz p1, :cond_0

    .line 1411
    const-string v1, "USER_PRIVACY_RESTRICTED"

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1412
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/16 v4, 0xb

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, v2

    .line 1413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    iget-object v2, p1, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    iget-object v2, p1, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setRestrictedUsers(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return v0

    :cond_0
    move-object p1, p0

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$onDonePressed$18()V
    .locals 6

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1461
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 1463
    iput-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->closingKeyboardAfterFinish:Z

    .line 1465
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1466
    const-string/jumbo v3, "scrollToTopOnResume"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1467
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v5, "chat_id"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1468
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1469
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    return-void

    .line 1472
    :cond_2
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1473
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1474
    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1475
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v2, :cond_3

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createAddedAsAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 1477
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v0, :cond_4

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_4
    return-void
.end method

.method private synthetic lambda$onDonePressed$19(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1484
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onDonePressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 0

    const/4 p1, 0x0

    .line 1489
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onDonePressed$21(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 13

    const/4 p1, 0x1

    .line 1458
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    .line 1459
    new-instance v8, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    .line 1482
    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialAsAdmin:Z

    if-eqz p1, :cond_1

    :cond_0
    move-object v6, p0

    goto :goto_0

    .line 1488
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->botHash:Ljava/lang/String;

    new-instance v9, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v6, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    return-void

    .line 1483
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p1, v6, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v3, v6, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, v6, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz p1, :cond_2

    iget-object p1, v6, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :goto_1
    move-object v4, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->emptyAdminRights(Z)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-object v5, v6, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    move-object v11, v8

    iget-boolean v8, v6, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    iget-boolean v9, v6, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    iget-object v10, v6, Lorg/telegram/ui/ChatRightsEditActivity;->botHash:Ljava/lang/String;

    new-instance v12, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda17;

    invoke-direct {v12, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    return-void
.end method

.method private synthetic lambda$setLoading$22(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 1514
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAsAdmin$25(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 2381
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 2382
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private onDonePressed()V
    .locals 16

    move-object/from16 v4, p0

    .line 1358
    iget-boolean v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 1361
    :cond_0
    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iget v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v0, v5, :cond_2

    if-nez v0, :cond_1

    invoke-direct {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->isDefaultAdminRights()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    if-eq v0, v2, :cond_1

    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v0, v3, :cond_3

    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-direct {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->isDefaultAdminRights()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1362
    :cond_2
    iget v0, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, v4, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v4}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 1371
    :cond_3
    iget v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    if-eq v0, v2, :cond_4

    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    if-le v0, v1, :cond_4

    .line 1372
    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v4, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1373
    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, v4, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1374
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1376
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 1380
    :cond_4
    iget v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v0, :cond_5

    if-ne v0, v3, :cond_a

    .line 1381
    :cond_5
    iget-boolean v1, v4, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v1, :cond_6

    .line 1382
    iget-object v2, v4, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 1383
    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    goto :goto_0

    .line 1385
    :cond_6
    iget-object v2, v4, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 1387
    :goto_0
    iget-object v2, v4, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v7, :cond_9

    iget-boolean v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v7, :cond_9

    :cond_7
    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v7, :cond_9

    iget-boolean v7, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v7, :cond_9

    if-eqz v1, :cond_8

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-nez v1, :cond_9

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-nez v1, :cond_9

    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-nez v1, :cond_9

    .line 1390
    :cond_8
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    goto :goto_1

    .line 1392
    :cond_9
    iput-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->other:Z

    :cond_a
    :goto_1
    if-nez v0, :cond_c

    .line 1397
    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-nez v0, :cond_b

    move v13, v5

    goto :goto_2

    :cond_b
    move v13, v6

    .line 1398
    :goto_2
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatRightsEditActivity;->setLoading(Z)V

    .line 1399
    iget v0, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v4, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    iget-object v3, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v4, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-object v6, v5

    iget-object v5, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    move-object v7, v6

    iget-boolean v6, v4, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    iget-boolean v8, v4, Lorg/telegram/ui/ChatRightsEditActivity;->isAddingNew:Z

    new-instance v11, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda6;

    invoke-direct {v11, v4}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    new-instance v12, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda7;

    invoke-direct {v12, v4}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v15, v7

    move-object v7, v4

    move-object v4, v15

    invoke-virtual/range {v0 .. v12}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;Lorg/telegram/messenger/MessagesController$ErrorDelegate;)V

    move-object v4, v7

    move v5, v13

    goto/16 :goto_c

    :cond_c
    const/4 v1, 0x0

    .line 1421
    const-string v2, ""

    if-ne v0, v5, :cond_11

    .line 1422
    iget v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    if-ltz v0, :cond_e

    .line 1423
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatParticipantRank;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatParticipantRank;-><init>()V

    .line 1424
    iget-object v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatParticipantRank;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1425
    iget-object v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatParticipantRank;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1426
    iget-object v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    if-nez v7, :cond_d

    goto :goto_3

    :cond_d
    move-object v2, v7

    :goto_3
    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatParticipantRank;->rank:Ljava/lang/String;

    .line 1427
    iget v2, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1429
    :cond_e
    iget v0, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v4, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    iget-object v10, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v12, v4, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v13, v4, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v14

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v14}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1431
    iget-object v0, v4, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v1, :cond_f

    goto :goto_4

    .line 1435
    :cond_f
    iput v6, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    goto :goto_5

    :cond_10
    :goto_4
    move v3, v5

    .line 1438
    :goto_5
    iget-object v1, v4, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    if-eqz v1, :cond_18

    .line 1439
    iget-object v2, v4, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-object v6, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v0, v6}, Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;->didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_11
    if-ne v0, v3, :cond_18

    .line 1442
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1443
    iget-boolean v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v7, :cond_12

    .line 1444
    sget v7, Lorg/telegram/messenger/R$string;->AddBotAdmin:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 1445
    :cond_12
    sget v7, Lorg/telegram/messenger/R$string;->AddBot:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1443
    :goto_6
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1447
    iget-object v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_13

    move v7, v5

    goto :goto_7

    :cond_13
    move v7, v6

    .line 1448
    :goto_7
    iget-object v8, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v8, :cond_14

    goto :goto_8

    :cond_14
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1450
    :goto_8
    iget-boolean v8, v4, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v8, :cond_16

    if-eqz v7, :cond_15

    .line 1452
    sget v3, Lorg/telegram/messenger/R$string;->AddBotMessageAdminChannel:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 1453
    :cond_15
    sget v3, Lorg/telegram/messenger/R$string;->AddBotMessageAdminGroup:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 1454
    :cond_16
    sget v7, Lorg/telegram/messenger/R$string;->AddMembersAlertNamesText:I

    iget-object v8, v4, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v6

    aput-object v2, v3, v5

    invoke-static {v7, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1449
    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1456
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1457
    iget-boolean v1, v4, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v1, :cond_17

    sget v1, Lorg/telegram/messenger/R$string;->AddAsAdmin:I

    :goto_a
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_17
    sget v1, Lorg/telegram/messenger/R$string;->AddBot:I

    goto :goto_a

    :goto_b
    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1494
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v5, v6

    :cond_18
    :goto_c
    if-eqz v5, :cond_19

    .line 1498
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_19
    :goto_d
    return-void
.end method

.method public static rightsOR(Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;
    .locals 4

    .line 445
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 446
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 447
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 448
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 449
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v1, :cond_7

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v1, v2

    :goto_7
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 450
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v1, :cond_9

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move v1, v3

    goto :goto_9

    :cond_9
    :goto_8
    move v1, v2

    :goto_9
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 451
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    move v1, v3

    goto :goto_b

    :cond_b
    :goto_a
    move v1, v2

    :goto_b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 452
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v1, :cond_d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v1, :cond_c

    goto :goto_c

    :cond_c
    move v1, v3

    goto :goto_d

    :cond_d
    :goto_c
    move v1, v2

    :goto_d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 453
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-nez v1, :cond_f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    move v1, v3

    goto :goto_f

    :cond_f
    :goto_e
    move v1, v2

    :goto_f
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    .line 454
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v1, :cond_11

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v1, :cond_10

    goto :goto_10

    :cond_10
    move v1, v3

    goto :goto_11

    :cond_11
    :goto_10
    move v1, v2

    :goto_11
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 455
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v1, :cond_13

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v1, :cond_12

    goto :goto_12

    :cond_12
    move v1, v3

    goto :goto_13

    :cond_13
    :goto_12
    move v1, v2

    :goto_13
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 456
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v1, :cond_15

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v1, :cond_14

    goto :goto_14

    :cond_14
    move v1, v3

    goto :goto_15

    :cond_15
    :goto_14
    move v1, v2

    :goto_15
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 457
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-nez v1, :cond_17

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    if-eqz v1, :cond_16

    goto :goto_16

    :cond_16
    move v1, v3

    goto :goto_17

    :cond_17
    :goto_16
    move v1, v2

    :goto_17
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    .line 458
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-nez v1, :cond_19

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    if-eqz v1, :cond_18

    goto :goto_18

    :cond_18
    move v1, v3

    goto :goto_19

    :cond_19
    :goto_18
    move v1, v2

    :goto_19
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    .line 459
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    if-eqz v1, :cond_1a

    goto :goto_1a

    :cond_1a
    move v1, v3

    goto :goto_1b

    :cond_1b
    :goto_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    .line 460
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-nez p0, :cond_1d

    iget-boolean p0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    if-eqz p0, :cond_1c

    goto :goto_1c

    :cond_1c
    move v2, v3

    :cond_1d
    :goto_1c
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    return-object v0
.end method

.method private setChannelMessagesEnabled(Z)V
    .locals 2

    .line 2243
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2244
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2245
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 2246
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private setChannelStoriesEnabled(Z)V
    .locals 2

    .line 2264
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_stories:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2265
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_stories:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2266
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_stories:Z

    .line 2267
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private setSendMediaEnabled(Z)V
    .locals 2

    .line 2180
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2181
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2182
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2183
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2184
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2185
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2186
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2187
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2188
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2189
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2190
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 2191
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2192
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 2193
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method private setTextLeft(Landroid/view/View;)V
    .locals 4

    .line 1561
    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_3

    .line 1562
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    rsub-int/lit8 v0, v0, 0x10

    int-to-float v2, v0

    const v3, 0x4099999a    # 4.8f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 1565
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    .line 1566
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    if-gez v0, :cond_1

    .line 1567
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    .line 1568
    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 1571
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setText2(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateAsAdmin(Z)V
    .locals 8

    .line 2290
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2291
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2293
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1a

    .line 2295
    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2296
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    .line 2297
    instance-of v6, v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v6, :cond_19

    .line 2298
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-nez v6, :cond_6

    .line 2299
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v6, :cond_3

    :cond_1
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v6, :cond_3

    :cond_2
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-nez v6, :cond_4

    .line 2304
    :cond_3
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 2305
    invoke-virtual {v4, v1, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(ZZ)V

    goto/16 :goto_5

    .line 2307
    :cond_4
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 2308
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    invoke-virtual {v4, v3, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(ZZ)V

    goto/16 :goto_5

    .line 2312
    :cond_6
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    if-ne v5, v6, :cond_8

    .line 2314
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v5, :cond_18

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_7

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v5, :cond_7

    goto/16 :goto_3

    :cond_7
    move v5, v1

    goto/16 :goto_4

    .line 2315
    :cond_8
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    if-ne v5, v6, :cond_b

    .line 2316
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 2317
    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    move v3, v1

    :cond_a
    :goto_2
    move v7, v5

    move v5, v3

    move v3, v7

    goto/16 :goto_4

    .line 2318
    :cond_b
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    if-ne v5, v6, :cond_c

    .line 2319
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    .line 2320
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    goto/16 :goto_4

    .line 2321
    :cond_c
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageDirectRow:I

    if-ne v5, v6, :cond_d

    .line 2322
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    .line 2323
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_direct_messages:Z

    goto/16 :goto_4

    .line 2324
    :cond_d
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    if-ne v5, v6, :cond_e

    .line 2325
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    .line 2326
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    goto/16 :goto_4

    .line 2327
    :cond_e
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    if-ne v5, v6, :cond_f

    .line 2328
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    .line 2329
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    goto/16 :goto_4

    .line 2330
    :cond_f
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    if-ne v5, v6, :cond_10

    .line 2331
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    .line 2332
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    goto/16 :goto_4

    .line 2333
    :cond_10
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    if-ne v5, v6, :cond_11

    .line 2334
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    .line 2335
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    goto/16 :goto_4

    .line 2336
    :cond_11
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-ne v5, v6, :cond_12

    .line 2337
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    .line 2338
    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v6, :cond_9

    goto :goto_2

    .line 2339
    :cond_12
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    if-ne v5, v6, :cond_13

    .line 2340
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    .line 2341
    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-eqz v6, :cond_9

    goto/16 :goto_2

    .line 2342
    :cond_13
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    if-ne v5, v6, :cond_14

    .line 2343
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 2344
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    goto :goto_4

    .line 2345
    :cond_14
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    if-ne v5, v6, :cond_15

    .line 2346
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    .line 2347
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    goto :goto_4

    .line 2348
    :cond_15
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    if-ne v5, v6, :cond_16

    .line 2349
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    .line 2350
    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_9

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_9

    goto/16 :goto_2

    .line 2351
    :cond_16
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    if-ne v5, v3, :cond_17

    .line 2352
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->adminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    .line 2353
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->myAdminRights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    goto :goto_4

    :cond_17
    move v3, v1

    :cond_18
    :goto_3
    move v5, v3

    .line 2355
    :goto_4
    check-cast v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 2356
    invoke-virtual {v4, v5, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(ZZ)V

    :cond_19
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2368
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2370
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonText:Lorg/telegram/ui/Components/AnimatedTextView;

    if-eqz v0, :cond_1c

    .line 2371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->AddBotButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v4, :cond_1b

    sget v4, Lorg/telegram/messenger/R$string;->AddBotButtonAsAdmin:I

    :goto_6
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_1b
    sget v4, Lorg/telegram/messenger/R$string;->AddBotButtonAsMember:I

    goto :goto_6

    :goto_7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    invoke-virtual {v0, v2, p1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 2373
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1d

    .line 2374
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 2375
    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    :cond_1d
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_20

    .line 2378
    iget p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    iget-boolean v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v4, :cond_1e

    move v4, v2

    goto :goto_8

    :cond_1e
    move v4, v0

    :goto_8
    const/4 v5, 0x2

    new-array v5, v5, [F

    aput p1, v5, v1

    aput v4, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    .line 2379
    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2385
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    iget-boolean v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz v3, :cond_1f

    move v0, v2

    :cond_1f
    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2386
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2388
    :cond_20
    iget-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-eqz p1, :cond_21

    move v0, v2

    :cond_21
    iput v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdminT:F

    .line 2389
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButton:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_22

    .line 2390
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_22
    return-void
.end method

.method private updateRows(Z)V
    .locals 9

    .line 1177
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    iget v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, -0x1

    .line 1179
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    .line 1180
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    .line 1181
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->postMessagesRow:I

    .line 1182
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageDirectRow:I

    .line 1183
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editMesagesRow:I

    .line 1184
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    .line 1185
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    .line 1186
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    .line 1187
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    .line 1188
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    .line 1189
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    .line 1190
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    .line 1191
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    .line 1192
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    .line 1193
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminShadowRow:I

    .line 1194
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    .line 1195
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    .line 1196
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    .line 1197
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankHeaderRow:I

    .line 1198
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    .line 1199
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    .line 1201
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    .line 1202
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    .line 1204
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    .line 1205
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostMessagesRow:I

    .line 1206
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditMessagesRow:I

    .line 1207
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteMessagesRow:I

    .line 1208
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    .line 1209
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostStoriesRow:I

    .line 1210
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    .line 1211
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteStoriesRow:I

    .line 1213
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    .line 1214
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    .line 1215
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    .line 1216
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    .line 1217
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    .line 1218
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    .line 1219
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    .line 1220
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    .line 1221
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    .line 1222
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    .line 1223
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilSectionRow:I

    .line 1224
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    .line 1225
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonRow:I

    .line 1226
    iput v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    const/4 v2, 0x3

    .line 1228
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    .line 1229
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->permissionsStartRow:I

    .line 1230
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v5, :cond_a

    const/4 v3, 0x3

    add-int/2addr v3, v5

    .line 1278
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMessagesRow:I

    add-int/lit8 v6, v3, 0x1

    .line 1279
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaRow:I

    .line 1280
    iget-boolean v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMediaExpanded:Z

    if-eqz v7, :cond_1

    add-int/lit8 v7, v3, 0x2

    .line 1281
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPhotosRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1282
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVideosRow:I

    add-int/lit8 v7, v3, 0x4

    .line 1283
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendFilesRow:I

    add-int/lit8 v6, v3, 0x5

    .line 1284
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendMusicRow:I

    add-int/lit8 v7, v3, 0x6

    .line 1285
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendVoiceRow:I

    add-int/lit8 v6, v3, 0x7

    .line 1286
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendRoundRow:I

    add-int/lit8 v7, v3, 0x8

    .line 1287
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendStickersRow:I

    add-int/lit8 v6, v3, 0x9

    .line 1288
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->sendPollsRow:I

    add-int/lit8 v3, v3, 0xa

    .line 1289
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->embedLinksRow:I

    .line 1292
    :cond_1
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v6, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    add-int/lit8 v7, v3, 0x2

    .line 1293
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1294
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    add-int/lit8 v7, v3, 0x4

    .line 1295
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    .line 1296
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x5

    .line 1297
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    .line 1299
    :cond_2
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v6, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilSectionRow:I

    add-int/2addr v3, v4

    .line 1300
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->untilDateRow:I

    goto/16 :goto_1

    .line 1231
    :cond_3
    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-eqz v6, :cond_6

    const/4 v3, 0x3

    add-int/2addr v3, v5

    .line 1232
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    add-int/lit8 v6, v3, 0x1

    .line 1233
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesRow:I

    .line 1234
    iget-boolean v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelMessagesExpanded:Z

    if-eqz v7, :cond_4

    add-int/lit8 v7, v3, 0x2

    .line 1235
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostMessagesRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1236
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditMessagesRow:I

    add-int/lit8 v3, v3, 0x4

    .line 1237
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteMessagesRow:I

    .line 1239
    :cond_4
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    .line 1240
    iget-boolean v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    if-eqz v7, :cond_5

    add-int/lit8 v7, v3, 0x2

    .line 1241
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostStoriesRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1242
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    add-int/lit8 v3, v3, 0x4

    .line 1243
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteStoriesRow:I

    .line 1245
    :cond_5
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v6, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageDirectRow:I

    add-int/lit8 v7, v3, 0x2

    .line 1246
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1247
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    add-int/lit8 v7, v3, 0x4

    .line 1248
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    add-int/lit8 v3, v3, 0x5

    .line 1249
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    goto :goto_1

    :cond_6
    if-ne v3, v4, :cond_7

    const/4 v6, 0x3

    add-int/2addr v6, v5

    .line 1252
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageRow:I

    .line 1254
    :cond_7
    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v7, v6, 0x1

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->changeInfoRow:I

    add-int/lit8 v8, v6, 0x2

    .line 1255
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->deleteMessagesRow:I

    add-int/lit8 v7, v6, 0x3

    .line 1256
    iput v8, p0, Lorg/telegram/ui/ChatRightsEditActivity;->banUsersRow:I

    add-int/lit8 v8, v6, 0x4

    .line 1257
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addUsersRow:I

    add-int/lit8 v7, v6, 0x5

    .line 1258
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/ChatRightsEditActivity;->pinMessagesRow:I

    if-eq v3, v4, :cond_8

    add-int/lit8 v6, v6, 0x6

    .line 1260
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->editTagsRow:I

    .line 1262
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1263
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesRow:I

    .line 1264
    iget-boolean v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelStoriesExpanded:Z

    if-eqz v7, :cond_9

    add-int/lit8 v7, v3, 0x2

    .line 1265
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelPostStoriesRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1266
    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelEditStoriesRow:I

    add-int/lit8 v3, v3, 0x4

    .line 1267
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->channelDeleteStoriesRow:I

    .line 1270
    :cond_9
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v6, v3, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->startVoiceChatRow:I

    add-int/lit8 v7, v3, 0x2

    .line 1271
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addAdminsRow:I

    add-int/lit8 v6, v3, 0x3

    .line 1272
    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->anonymousRow:I

    .line 1273
    iget-boolean v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isForum:Z

    if-eqz v7, :cond_a

    add-int/lit8 v3, v3, 0x4

    .line 1274
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->manageTopicsRow:I

    .line 1302
    :cond_a
    :goto_1
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->permissionsEndRow:I

    .line 1304
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    if-eqz v6, :cond_11

    .line 1305
    iget-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v6, :cond_d

    iget v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eqz v6, :cond_c

    if-ne v6, v4, :cond_b

    iget-boolean v7, p0, Lorg/telegram/ui/ChatRightsEditActivity;->asAdmin:Z

    if-nez v7, :cond_c

    :cond_b
    if-ne v6, v5, :cond_d

    :cond_c
    add-int/lit8 v5, v3, 0x1

    .line 1306
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    add-int/lit8 v6, v3, 0x2

    .line 1307
    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    add-int/2addr v3, v2

    .line 1308
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    .line 1310
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_f

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_f

    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v2, :cond_f

    invoke-direct {p0}, Lorg/telegram/ui/ChatRightsEditActivity;->hasAllAdminRights()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v2, :cond_f

    .line 1311
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    if-ne v2, v1, :cond_e

    .line 1312
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    .line 1314
    :cond_e
    iget v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    if-eq v2, v1, :cond_f

    add-int/2addr v3, v4

    .line 1316
    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    .line 1319
    :cond_f
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->initialIsSet:Z

    if-eqz v2, :cond_16

    .line 1320
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    if-ne v2, v1, :cond_10

    .line 1321
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    .line 1323
    :cond_10
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminRow:I

    add-int/2addr v2, v4

    .line 1324
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->removeAdminShadowRow:I

    goto :goto_2

    .line 1327
    :cond_11
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-nez v2, :cond_15

    .line 1328
    iget-boolean v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentRank:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1329
    :cond_12
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    add-int/2addr v2, v4

    .line 1331
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankRow:I

    .line 1332
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1333
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rankInfoRow:I

    goto :goto_2

    .line 1335
    :cond_13
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    goto :goto_2

    .line 1338
    :cond_14
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->cantEditInfoRow:I

    goto :goto_2

    :cond_15
    add-int/lit8 v2, v3, 0x1

    .line 1341
    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rightsShadowRow:I

    .line 1344
    :cond_16
    :goto_2
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v2, v4, :cond_17

    .line 1345
    iget v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatRightsEditActivity;->addBotButtonRow:I

    :cond_17
    if-eqz p1, :cond_19

    if-ne v0, v1, :cond_18

    .line 1349
    iget p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    if-eq p1, v1, :cond_18

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerRow:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    :cond_18
    if-eq v0, v1, :cond_19

    .line 1351
    iget p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->transferOwnerShadowRow:I

    if-ne p1, v1, :cond_19

    .line 1352
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {p1, v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_19
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 479
    iget v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->EditAdmin:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AddBot:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictions:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChatRightsEditActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatRightsEditActivity$1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 500
    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->canEdit:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->isChannel:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 503
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 504
    new-instance v5, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v7, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-direct {v7, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v5, v4, v7}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v4, 0x42600000    # 56.0f

    .line 505
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 506
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItem(I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 509
    :cond_3
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$2;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 522
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    .line 524
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 526
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$3;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 543
    iget v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-eq v5, v2, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 544
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$4;

    invoke-direct {v0, p0, p1, v1, v3}, Lorg/telegram/ui/ChatRightsEditActivity$4;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v5, 0x64

    .line 550
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 553
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 554
    iget v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->currentType:I

    if-ne v5, v2, :cond_5

    .line 555
    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setResetSelectorOnChanged(Z)V

    .line 557
    :cond_5
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 558
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 559
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 560
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 561
    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$5;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 1164
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 1165
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 1166
    iget-wide v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->chatId:J

    neg-long v0, v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 52

    move-object/from16 v0, p0

    .line 2397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2399
    new-instance v8, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    .line 2411
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x6

    new-array v12, v2, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Lorg/telegram/ui/Cells/UserCell2;

    aput-object v18, v12, v17

    const/4 v2, 0x1

    const-class v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v3, v12, v2

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v12, v4

    const/4 v4, 0x4

    const-class v7, Lorg/telegram/ui/Cells/TextDetailCell;

    aput-object v7, v12, v4

    const/4 v4, 0x5

    const-class v19, Lorg/telegram/ui/Cells/PollEditTextCell;

    aput-object v19, v12, v4

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2415
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object/from16 v21, v4

    move/from16 v27, v16

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2422
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v12, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v12, v17

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v11, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2424
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v10, v9, v17

    const-string/jumbo v11, "textView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v22, 0x0

    move-object/from16 v21, v4

    move-object/from16 v23, v9

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v3, v9, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    move-object/from16 v21, v4

    move-object/from16 v23, v9

    move/from16 v28, v33

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2427
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v3, v9, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v21, v4

    move-object/from16 v23, v9

    move/from16 v28, v42

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2428
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v3, v9, v17

    const-string/jumbo v10, "valueTextView"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v22, 0x0

    move-object/from16 v21, v4

    move-object/from16 v23, v9

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v9, v2, [Ljava/lang/Class;

    aput-object v3, v9, v17

    const-string/jumbo v3, "valueImageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    move-object/from16 v21, v4

    move-object/from16 v23, v9

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v7, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v38

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v7, v4, v17

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v24

    sget v51, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move/from16 v28, v51

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2435
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v17

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v47

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v45, 0x0

    const/16 v48, 0x0

    move-object/from16 v44, v3

    move-object/from16 v46, v4

    invoke-direct/range {v43 .. v51}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v43

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2436
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v17

    const-string v7, "checkBox"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switch2Track:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2437
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v17

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2439
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2440
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    const-string/jumbo v5, "textView2"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v6, v4, v17

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2443
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v19, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2444
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v19, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2446
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v18, v4, v17

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v38

    const/16 v36, 0x0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2447
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object v4, v3

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v2, [Ljava/lang/Class;

    aput-object v18, v5, v17

    const-string/jumbo v6, "statusColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    move-object v9, v8

    const/4 v8, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move v7, v2

    move-object v2, v4

    const/4 v4, 0x0

    move v12, v7

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2448
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v18, v5, v17

    const-string/jumbo v4, "statusOnlineColor"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2449
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatRightsEditActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v18, v3, v17

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2451
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2452
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2455
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2456
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v2, v12, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/DialogRadioCell;

    aput-object v3, v2, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-array v2, v12, [Ljava/lang/Class;

    aput-object v3, v2, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v2, v12, [Ljava/lang/Class;

    aput-object v3, v2, v17

    const-string v4, "radioButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackground:I

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2461
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v2, v12, [Ljava/lang/Class;

    aput-object v3, v2, v17

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed(Z)Z
    .locals 0

    .line 1578
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->checkDiscard(Z)Z

    move-result p1

    return p1
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 1152
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1153
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 1158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1159
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 969
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 970
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->listViewAdapter:Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 973
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->delegate:Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;

    return-void
.end method

.method public setLoading(Z)V
    .locals 4

    .line 1505
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1506
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1508
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    .line 1509
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1510
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    if-eqz p1, :cond_2

    .line 1511
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result p1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    .line 1512
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatRightsEditActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1516
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity$6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatRightsEditActivity$6;-><init>(Lorg/telegram/ui/ChatRightsEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1523
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->loading:Z

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity;->doneDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method
