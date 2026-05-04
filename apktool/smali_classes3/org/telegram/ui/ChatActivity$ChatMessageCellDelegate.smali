.class Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatMessageCellDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$-dKGdJDDiEs4cysYSG3gCXsp_RM(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressChannelAvatar$16(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3fXXJgD4mTm8zuOd_T1b1Qx0KnE(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressToDoButton$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$4R2t_UGa8R9dZCw5jB88XtuOQXU([ZLandroid/view/View;)V
    .locals 3

    .line 41428
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 v0, 0x0

    .line 41429
    aget-boolean v1, p0, v0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 41430
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4eFObxnV9fVVh-MwIkLMHwy-Ies(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$10(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7GS6iyPbE5g5wtxahv4YqHhm4NE(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$9(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Q7z-kFvRlZqQM3k2xlLMqRZpbo(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressBotButton$28(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8EAtMxOzrcqiNO7URyePUbhEYRI(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressUserStatus$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8JA-642tXtXzkjKmF04ikbt-SlY(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$sendMessageFromQuickShare$2(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$9sBqpfnR_w0kpdArCnFMwes1c1A(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressInstantButton$47(Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$D6xPlDPzDEQoipLnB_SEzPxBqhY(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressCustomBotButton$20(Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EOsmUgir54ys2BgdxQVjpZkiB2M(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$needShowPremiumBulletin$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$EkMVKwQbP8CH9LuGvhom1wnR0wk(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReplyMessage$43(ILorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-Kdo-dI1eeWzClBkmTeLmRgkQo(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressCustomBotButton$22(Lorg/telegram/messenger/MessageObject;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$F-ymOS6SpAD7Ceyj1ZzcHCmiRmw(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$appendMention$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$G7VZImDjIm8kcQEMBQDQiPwsDAk(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressChannelAvatar$18(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GDIyDFBsEUdhgSFlfyDnTinMgyw(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressMoreChannelRecommendations$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$GUHTavtLYGWpMKqI4wDpaHphWz0(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressInstantButton$48(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBrU8B2MhLV4hI16I2V9KsmyRds(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressChannelAvatar$17(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JwT_Vrs8zayOnAmdoRXrWPTEtVI(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressRevealSensitiveContent$53()V

    return-void
.end method

.method public static synthetic $r8$lambda$KqJddHYkSVVeTxPf5npPYypM3sI(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$needShowPremiumBulletin$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lq3kC6_7SEPSErJOfm5XXpySSX4(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Message;ZLorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressCustomBotButton$24(Lorg/telegram/tgnet/TLRPC$Message;ZLorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mzf7Z4xyBSA5tePgKptqaYN4nDA(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressChannelRecommendation$39(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcZNkSTl5cD-2THl5ZP-aixYfxc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$openChat$19(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OOn9LZCrwcmhTRUhK0kc1PnKi-w(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressImage$45(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q8-sslD1Fbr-1gZAaNa1ttDyo6Y(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressOther$5(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ra0EBPyRGrJuEXBXVsYH5mFng08(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressFactCheckWhat$1(Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$TSJXTfiD9Jx2NJKmWLQgCt96yxQ(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$needShowPremiumBulletin$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$TqwAPKYBlh6sLGEZSE-gNUSzaSc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressImage$44(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UOq7vtkRCmoAgnbxpHgARePUeHE(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Cells/ChatMessageCell;FFLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReplyMessage$40(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Cells/ChatMessageCell;FFLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VA040XTqW7ZbqB7Xk99VdyHDkPk(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressImage$46(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-1jK0125iJgIRgJj2uci04Cs-w(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$appendMention$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2g-T7ehN5iv1OaXmEGgfESsUc4(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressChannelAvatar$14(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZvNHqVJjv5FQzr9DzGAgjslwSGw(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressFactCheckWhat$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOmdgMYHJKSgwSgjcIWvb4UyPzc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressRevealSensitiveContent$54(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c5zwAlXQIeLG1kY7iLif8Nk8K54(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$7(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ewoKsUSOljDPc8BSxK_E00biozY(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$8(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fmZgH5tmvK_wj0SnkhXQSjC81Sc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$11(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJSAhEldbsG5w0n2ohMP-3dIQow([Lorg/telegram/ui/Components/Bulletin;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 39513
    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 39514
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$iHfLCutQmJNhiSqaTlxT89YrHCM(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressRevealSensitiveContent$52(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jhRVhYfnxwXf2QDixyEbIKQsyTU(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;[ZZLorg/telegram/tgnet/tl/TL_account$contentSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressRevealSensitiveContent$55(Lorg/telegram/ui/Cells/ChatMessageCell;[ZZLorg/telegram/tgnet/tl/TL_account$contentSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jo495LHk43sQmv01q-ieCrwyW1Y(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReplyMessage$41(Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kHG0PDERTk8VZWVjfXy_jtZpw3s(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Message;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressCustomBotButton$23(Lorg/telegram/tgnet/TLRPC$Message;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwti35jdA_hd4LdttrWWzVcqd34(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressToDoButton$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$mbNoaz1rhBOW_ijt-dSBOTHWojs(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressChannelRecommendation$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nrHvgb5dSurwKtiK3ckTwBMsoHc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReplyMessage$42(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pUvV9W-bZC5Q78vxRAV91qf8O8Q(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressInstantButton$49(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbD846cvCbng2-q40FFDGT5tN50(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressOther$4(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$teaTjVvQe713HJwvWRtE3wPi4rQ(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressAdmin$50(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vXXwNvcl2U_NW6UprxtTx6A8KSU(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressChannelRecommendation$38(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wj2oKS-69KbZZta6-faipGHEHcw(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/tl/TL_account$contentSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressRevealSensitiveContent$56(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/tl/TL_account$contentSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xYjuCWL_AJSDiu07M5i5SIAeL7s(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressChannelAvatar$15(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xn8CKOIpYZ0rv5QFx7GNUOW6K9g(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressOther$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 38493
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private appendMention(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    .line 39215
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    .line 39217
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 39218
    const-string v1, " "

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 39219
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 39220
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    .line 39221
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 39224
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 39226
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 39227
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 39229
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 39231
    const-string v0, "@"

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39235
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 39236
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda52;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    return-void
.end method

.method private appendMention(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 8

    .line 39241
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_6

    .line 39243
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 39244
    const-string v1, " "

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 39245
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 39246
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    .line 39247
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 39250
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 39252
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 39253
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 39255
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 39256
    const-string v2, ", "

    if-eqz v0, :cond_4

    .line 39257
    const-string p1, "@"

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    if-eqz v0, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 39259
    invoke-static {p1, v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;

    move-result-object v4

    .line 39260
    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/exteragram/messenger/ExteraConfig;->addCommaAfterMention:Z

    if-eqz v7, :cond_5

    move-object v1, v2

    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 39261
    new-instance v1, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x21

    invoke-interface {v5, v1, v0, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 39262
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39264
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 39265
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda53;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method private didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 41245
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 41246
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    .line 41247
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isContextSafe(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 41248
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_f

    if-nez v4, :cond_1

    goto/16 :goto_6

    .line 41249
    :cond_1
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 41254
    :cond_2
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 41255
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 41256
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz p1, :cond_3

    move p1, v2

    move v2, v1

    goto :goto_0

    .line 41260
    :cond_3
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz p1, :cond_5

    .line 41263
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-nez p1, :cond_4

    move p1, v1

    goto :goto_0

    :cond_4
    move p1, v2

    goto :goto_0

    :cond_5
    move p1, v2

    move v1, p1

    .line 41269
    :goto_0
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :goto_1
    move v8, p1

    move-object v5, p2

    :goto_2
    move v6, v1

    move v7, v2

    goto/16 :goto_5

    .line 41270
    :cond_6
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v0, :cond_a

    .line 41271
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 41272
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz p2, :cond_7

    move p2, v2

    move v2, v1

    goto :goto_3

    .line 41276
    :cond_7
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz p2, :cond_9

    .line 41279
    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-nez p2, :cond_8

    move p2, v1

    goto :goto_3

    :cond_8
    move p2, v2

    goto :goto_3

    :cond_9
    move p2, v2

    move v1, p2

    .line 41285
    :goto_3
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-object v5, p1

    move v8, p2

    goto :goto_2

    .line 41286
    :cond_a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v0, :cond_e

    .line 41287
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz p1, :cond_b

    move p1, v2

    move v2, v1

    goto :goto_4

    .line 41291
    :cond_b
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz p1, :cond_d

    .line 41294
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-nez p1, :cond_c

    move p1, v1

    goto :goto_4

    :cond_c
    move p1, v2

    goto :goto_4

    :cond_d
    move p1, v2

    move v1, p1

    .line 41300
    :goto_4
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->rank:Ljava/lang/String;

    goto :goto_1

    .line 41318
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$21100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v2, v2

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$21200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/TagEditCell;->showInfoSheet(Landroid/content/Context;IJLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 41302
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 41303
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;-><init>()V

    .line 41304
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 41305
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 41306
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v0, p2, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    :cond_f
    :goto_6
    return-void
.end method

.method private isAvatarPreviewerEnabled()Z
    .locals 1

    .line 39421
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

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

.method private synthetic lambda$appendMention$12()V
    .locals 1

    .line 39236
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return-void
.end method

.method private synthetic lambda$appendMention$13()V
    .locals 1

    .line 39265
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return-void
.end method

.method private synthetic lambda$didLongPressBotButton$28(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p3, :cond_0

    .line 39644
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    .line 39646
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-virtual {p2, p1}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getTextFromCallback([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 39648
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p3, p2, :cond_3

    .line 39650
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 39653
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 39654
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 39655
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/16 p2, 0x3a

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$didLongPressChannelAvatar$14(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 1

    .line 39296
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 39308
    invoke-direct {p0, p2, p1, p3, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    return-void

    .line 39304
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenSearchWithChat(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void

    .line 39301
    :cond_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void

    .line 39298
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private synthetic lambda$didLongPressChannelAvatar$15(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 39316
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private synthetic lambda$didLongPressChannelAvatar$16(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 39319
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    return-void
.end method

.method private synthetic lambda$didLongPressChannelAvatar$17(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 39322
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private synthetic lambda$didLongPressChannelAvatar$18(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    .line 39325
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenSearchWithChat(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method private synthetic lambda$didLongPressToDoButton$29()V
    .locals 2

    .line 39702
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 39703
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObjectGroup(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$10(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 39198
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$11(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    .line 39201
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenSearchWithUser(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$7(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 1

    .line 39173
    sget-object v0, Lorg/telegram/ui/ChatActivity$143;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    return-void

    .line 39175
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 39184
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenSearchWithUser(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 39181
    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 39178
    :cond_3
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$8(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 39192
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$9(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 39195
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private synthetic lambda$didPressAdmin$50(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 41308
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 41309
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 41310
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipant;->participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz p2, :cond_0

    .line 41311
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressChannelRecommendation$37(Landroid/view/View;)V
    .locals 0

    .line 40129
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40130
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressChannelRecommendation$38(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 6

    .line 40145
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v2, Lorg/telegram/messenger/R$string;->YouJoinedChannel:I

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$didPressChannelRecommendation$39(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;)V
    .locals 8

    .line 40139
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    const/4 p3, 0x0

    .line 40140
    iput-boolean p3, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz p2, :cond_0

    .line 40141
    iget-object v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->channelRecommendationsCell:Lorg/telegram/ui/Cells/ChannelRecommendationsCell;

    if-eqz v0, :cond_0

    .line 40142
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->channelRecommendationsLoaded:I

    iget-object p2, p2, Lorg/telegram/ui/Cells/ChatMessageCell;->channelRecommendationsCell:Lorg/telegram/ui/Cells/ChannelRecommendationsCell;

    iget-wide v2, p2, Lorg/telegram/ui/Cells/ChannelRecommendationsCell;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 40144
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v7, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda29;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$20(Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;)V
    .locals 3

    .line 39452
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->rejectSuggestedMessage(JILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$22(Lorg/telegram/messenger/MessageObject;ZII)V
    .locals 2

    if-eqz p2, :cond_0

    .line 39531
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 39532
    invoke-static {p4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 39531
    invoke-virtual {p2, v0, v1, p1, p3}, Lorg/telegram/messenger/MessagesController;->approveSuggestedMessage(JII)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$23(Lorg/telegram/tgnet/TLRPC$Message;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 6

    .line 39527
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39528
    aget-object p1, p2, v0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39529
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda36;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 39536
    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v1, 0x0

    .line 39529
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createSuggestedMessageDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 39536
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 39538
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 39539
    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 39538
    invoke-virtual {p1, v1, v2, p2, v0}, Lorg/telegram/messenger/MessagesController;->approveSuggestedMessage(JII)V

    return-void
.end method

.method private synthetic lambda$didPressCustomBotButton$24(Lorg/telegram/tgnet/TLRPC$Message;ZLorg/telegram/messenger/MessageObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 39460
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 39461
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptInfo:I

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 39462
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeerName(J)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v4, v8

    .line 39461
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39464
    const-string v0, "\n\n"

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39466
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    invoke-static {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->ofSafe(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    .line 39467
    iget-object v3, v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v4, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->TON:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v3, v4, :cond_0

    .line 39468
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v3, v3, Lorg/telegram/messenger/AppGlobalConfig;->tonSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v3

    goto :goto_0

    .line 39469
    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v3, v3, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostCommissionPermille:Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;

    invoke-virtual {v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigInt;->get()I

    move-result v3

    :goto_0
    if-eqz p2, :cond_1

    .line 39472
    invoke-virtual {v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->asNano()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    int-to-long v9, v3

    mul-long/2addr v4, v9

    iget-object v0, v0, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    invoke-static {v4, v5, v0}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->fromNano(JLorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v0

    :cond_1
    move-object v9, v0

    .line 39475
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    const/4 v4, 0x2

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 39477
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptInfoAnytimeAdmin2:I

    .line 39479
    invoke-virtual {v9}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v5

    .line 39480
    invoke-static {v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v8

    aput-object v3, v4, v7

    .line 39477
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 39483
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptInfoAnytimeUser2:I

    .line 39485
    invoke-virtual {v9}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v8

    .line 39483
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 39490
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptInfoAdmin2:I

    .line 39492
    invoke-virtual {v9}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v5

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    int-to-long v10, v10

    .line 39493
    invoke-static {v10, v11}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->formatDateTime(J)Ljava/lang/String;

    move-result-object v10

    .line 39494
    invoke-static {v3}, Lorg/telegram/ui/bots/AffiliateProgramFragment;->percents(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v8

    aput-object v10, v11, v7

    aput-object v3, v11, v4

    .line 39490
    invoke-static {v0, v11}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 39497
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptInfoUser2:I

    .line 39499
    invoke-virtual {v9}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->formatAsDecimalSpaced()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    int-to-long v10, v5

    .line 39500
    invoke-static {v10, v11}, Lorg/telegram/ui/Stars/MessageSuggestionOfferSheet;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v8

    aput-object v5, v4, v7

    .line 39497
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    const/16 v0, 0x20

    .line 39505
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 39506
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptInfo3:I

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 39508
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$22200(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v3, v3, Lorg/telegram/messenger/AppGlobalConfig;->starsSuggestedPostAgeMin:Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/AppGlobalConfig$ConfigTime;->get(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v8

    .line 39506
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39511
    new-array v10, v7, [Lorg/telegram/ui/Components/Bulletin;

    .line 39512
    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda26;

    invoke-direct {v5, v10}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda26;-><init>([Lorg/telegram/ui/Components/Bulletin;)V

    .line 39518
    new-array v3, v7, [Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 39520
    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v0, Lorg/telegram/messenger/R$string;->SuggestedPostAcceptTitle:I

    .line 39521
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 39522
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->schedule_date:I

    if-nez v0, :cond_5

    .line 39523
    sget v0, Lorg/telegram/messenger/R$string;->Next:I

    goto :goto_2

    .line 39524
    :cond_5
    sget v0, Lorg/telegram/messenger/R$string;->SuggestedPostPublish:I

    .line 39522
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda27;

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Message;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessageObject;Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v14, v1

    move-object/from16 v16, v3

    move-object v15, v5

    const/4 v4, 0x0

    move-object v5, v0

    move-object v2, v6

    move-object v0, v11

    move-object v1, v12

    move-object v3, v13

    .line 39520
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleConfirmAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    aput-object v0, v16, v8

    .line 39545
    invoke-virtual {v0, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p2, :cond_6

    .line 39547
    iget-object v0, v9, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->currency:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    sget-object v1, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;->STARS:Lorg/telegram/messenger/utils/tlutils/AmountUtils$Currency;

    if-ne v0, v1, :cond_6

    .line 39548
    iget-object v0, v14, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    iget-object v1, v14, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$22300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->info:I

    sget v2, Lorg/telegram/messenger/R$string;->SuggestedMessageAcceptStarsDisclaimer:I

    .line 39549
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const v1, 0xea60

    .line 39550
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 39551
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    aput-object v0, v10, v8

    :cond_6
    return-void
.end method

.method private synthetic lambda$didPressFactCheckWhat$0(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    .line 38600
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38601
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 38602
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfactCheckHint(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressFactCheckWhat$1(Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 3

    .line 38608
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 38611
    new-array v0, v0, [I

    .line 38612
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 38613
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x44020000    # 520.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 38614
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 38615
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    return-void
.end method

.method private synthetic lambda$didPressImage$44(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V
    .locals 17

    move-object/from16 v0, p0

    .line 40754
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->checkSlowModeAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40755
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 40756
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut_id:I

    .line 40757
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut:Ljava/lang/String;

    .line 40758
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->dice_stake:J

    .line 40759
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressImage$45(Lorg/telegram/messenger/MessageObject;)V
    .locals 17

    move-object/from16 v0, p0

    .line 40766
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->checkSlowModeAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40767
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 40768
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut_id:I

    .line 40769
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut:Ljava/lang/String;

    .line 40770
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressImage$46(Lorg/telegram/messenger/MessageObject;Ljava/lang/Boolean;)V
    .locals 7

    .line 40752
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40753
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDiceValue()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getStakedDiceAmount()J

    move-result-wide v1

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p2, v0, v1, v2, v3}, Lorg/telegram/ui/StakedDiceSheet;->showStakeToast(Lorg/telegram/ui/ActionBar/BaseFragment;IJLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 40763
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 40764
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 40765
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x10

    :goto_0
    move v3, p2

    goto :goto_1

    :cond_2
    const/16 p2, 0x11

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didPressInstantButton$47(Lorg/telegram/tgnet/TLObject;Z)V
    .locals 10

    .line 41070
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    .line 41071
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 41072
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/telegram/messenger/MediaDataController;->putStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Z)V

    .line 41073
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41075
    :cond_0
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 41076
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 41077
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v2, v5, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    if-eqz p2, :cond_1

    .line 41079
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41080
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41081
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 41082
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 41083
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 41085
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v8, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 41086
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 41087
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    :goto_0
    return-void

    .line 41090
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->error:I

    if-eqz p2, :cond_4

    sget p2, Lorg/telegram/messenger/R$string;->AddEmojiNotFound:I

    goto :goto_1

    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->AddStickersNotFound:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$didPressInstantButton$48(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 41069
    new-instance p3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didPressInstantButton$49(I)V
    .locals 2

    .line 41093
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21800(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$didPressMoreChannelRecommendations$36()V
    .locals 3

    .line 40100
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string/jumbo v2, "similar_channels"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$didPressOther$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 39006
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 39007
    instance-of p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz p1, :cond_1

    .line 39008
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 39009
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p6, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, p6, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 39010
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p6, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p6, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 39011
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39012
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/CreateGroupCallSheet;

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Lorg/telegram/ui/CreateGroupCallSheet;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 39014
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$22400(Lorg/telegram/ui/ChatActivity;)I

    move-result p3

    iget-object p5, p5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-boolean p5, p5, Lorg/telegram/tgnet/TLRPC$MessageAction;->video:Z

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {p1, p3, p4, p5, p2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->joinConference(Landroid/app/Activity;ILorg/telegram/tgnet/TLRPC$InputGroupCall;ZLorg/telegram/tgnet/TLRPC$GroupCall;)V

    return-void

    :cond_1
    if-eqz p6, :cond_2

    .line 39016
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39017
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/CreateGroupCallSheet;

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Lorg/telegram/ui/CreateGroupCallSheet;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    if-eqz p6, :cond_3

    .line 39019
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$didPressOther$4(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 39005
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda32;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v3, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didPressOther$5(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 39022
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$didPressReplyMessage$40(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Cells/ChatMessageCell;FFLandroid/view/View;)V
    .locals 0

    .line 40321
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 40322
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    return-void
.end method

.method private synthetic lambda$didPressReplyMessage$41(Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 6

    .line 40335
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$7;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$7;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 40342
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 40343
    iget-object p1, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    const/4 p1, 0x0

    .line 40344
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    .line 40345
    iget-object p1, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    .line 40346
    iget-object p1, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$didPressReplyMessage$42(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 40509
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;I)V

    .line 40510
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogAtMessageType(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method private synthetic lambda$didPressReplyMessage$43(ILorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V
    .locals 9

    .line 40508
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda30;

    invoke-direct {v8, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZILjava/lang/Integer;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$didPressRevealSensitiveContent$52(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Boolean;)V
    .locals 1

    .line 41442
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 41443
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 41444
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 41445
    instance-of v0, p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v0, :cond_0

    goto :goto_1

    .line 41446
    :cond_0
    check-cast p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 41447
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSensitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41448
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->startRevealMedia()V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 41452
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 41453
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p2, Lorg/telegram/messenger/MessageObject;->isSensitiveCached:Ljava/lang/Boolean;

    .line 41455
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->startRevealMedia()V

    return-void
.end method

.method private synthetic lambda$didPressRevealSensitiveContent$53()V
    .locals 3

    .line 41470
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/ThemeActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v1}, Lorg/telegram/ui/ThemeActivity;->highlightSensitiveRow()Lorg/telegram/ui/ThemeActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$didPressRevealSensitiveContent$54(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 4

    .line 41461
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 41462
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget v0, Lorg/telegram/messenger/R$string;->AgeVerificationFailedTitle:I

    .line 41463
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->AgeVerificationFailedText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 41464
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 41467
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->setContentSettings(Z)V

    .line 41468
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget v2, Lorg/telegram/messenger/R$string;->SensitiveContentSettingsToast:I

    .line 41469
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda51;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinDetail(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    .line 41472
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 41473
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$didPressRevealSensitiveContent$55(Lorg/telegram/ui/Cells/ChatMessageCell;[ZZLorg/telegram/tgnet/tl/TL_account$contentSettings;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 41441
    new-instance p5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda49;

    invoke-direct {p5, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    const/4 p1, 0x0

    .line 41458
    aget-boolean p1, p2, p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    .line 41459
    iget-boolean p1, p4, Lorg/telegram/tgnet/tl/TL_account$contentSettings;->sensitive_can_change:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 41476
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p5, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 41460
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21700(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    new-instance p3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda50;

    invoke-direct {p3, p0, p5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/Utilities$Callback;)V

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 41474
    invoke-virtual {p4}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p4

    .line 41460
    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ThemeActivity;->verifyAge(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 41479
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p5, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$didPressRevealSensitiveContent$56(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/tl/TL_account$contentSettings;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    const-wide/16 v2, 0xc8

    move-object/from16 v0, p1

    .line 41413
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissUnless(J)V

    .line 41414
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v2, v2, Lorg/telegram/messenger/AppGlobalConfig;->needAgeVideoVerification:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    invoke-virtual {v2}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->verifyAgeBotUsername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v5, :cond_1

    .line 41415
    iget-boolean v6, v5, Lorg/telegram/tgnet/tl/TL_account$contentSettings;->sensitive_can_change:Z

    if-nez v6, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v4

    .line 41416
    :goto_1
    new-array v7, v3, [Z

    .line 41417
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41418
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_3

    .line 41420
    aput-boolean v3, v7, v4

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_6

    .line 41421
    iget-boolean v9, v5, Lorg/telegram/tgnet/tl/TL_account$contentSettings;->sensitive_can_change:Z

    if-eqz v9, :cond_6

    .line 41422
    new-instance v9, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v10, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-direct {v9, v0, v3, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 41423
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 41424
    sget v3, Lorg/telegram/messenger/R$string;->MessageShowSensitiveContentAlways:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    aget-boolean v11, v7, v4

    invoke-virtual {v9, v3, v10, v11, v4}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 41425
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v10, 0x41000000    # 8.0f

    const/high16 v11, 0x41800000    # 16.0f

    if-eqz v3, :cond_4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_2

    :cond_4
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_2
    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_5

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_3

    :cond_5
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    :goto_3
    invoke-virtual {v9, v3, v4, v10, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x42400000    # 48.0f

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 41426
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41427
    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda23;

    invoke-direct {v3, v7}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda23;-><init>([Z)V

    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41433
    :cond_6
    :goto_4
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 41434
    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v0, Lorg/telegram/messenger/R$string;->MessageShowSensitiveContentMediaTitle:I

    .line 41435
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    if-eqz v6, :cond_7

    .line 41436
    sget v3, Lorg/telegram/messenger/R$string;->MessageShowSensitiveContentMediaTextClosed:I

    goto :goto_5

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->MessageShowSensitiveContentMediaText:I

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 41437
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    if-eqz v6, :cond_8

    .line 41438
    sget v3, Lorg/telegram/messenger/R$string;->MessageShowSensitiveContentMediaTextClosedButton:I

    goto :goto_6

    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    :goto_6
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v8

    if-nez v6, :cond_9

    .line 41440
    sget v0, Lorg/telegram/messenger/R$string;->MessageShowSensitiveContentButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda24;

    move v4, v2

    move-object v3, v7

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;[ZZLorg/telegram/tgnet/tl/TL_account$contentSettings;)V

    invoke-virtual {v8, v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 41483
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$didPressToDoButton$35()V
    .locals 5

    .line 40036
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$didPressUserStatus$6()V
    .locals 2

    .line 39071
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/exteragram/messenger/components/SupporterBottomSheet;->showAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/components/SupporterBottomSheet;

    return-void
.end method

.method private synthetic lambda$needShowPremiumBulletin$25()V
    .locals 4

    .line 39577
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    .line 39578
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->pressTranscribeButton()V

    return-void
.end method

.method private synthetic lambda$needShowPremiumBulletin$26()V
    .locals 4

    .line 39601
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    .line 39602
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->pressTranscribeButton()V

    return-void
.end method

.method private synthetic lambda$needShowPremiumBulletin$27()V
    .locals 4

    .line 39606
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    .line 39607
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->pressTranscribeButton()V

    return-void
.end method

.method private synthetic lambda$openChat$19(Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/ChatActivity;)V
    .locals 3

    .line 39399
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;

    invoke-direct {p2, p0, p1, p4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1, v2, p3, p2}, Lorg/telegram/messenger/MessagesController;->ensureMessagesLoaded(JILorg/telegram/messenger/MessagesController$MessagesLoadedCallback;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    return-void
.end method

.method private synthetic lambda$sendMessageFromQuickShare$2(Ljava/util/ArrayList;J)V
    .locals 18

    move-object/from16 v0, p0

    .line 38773
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSendMonoForumPeerId()J

    move-result-wide v15

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const-wide/16 v13, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIILorg/telegram/messenger/MessageObject;IJJLorg/telegram/messenger/MessageSuggestionParams;)I

    move-result v1

    .line 38774
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSendMediaAlert(ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IZ)V
    .locals 9

    .line 39382
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 39383
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 v2, 0x0

    .line 39384
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    return-void

    .line 39385
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 39386
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v3, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 39388
    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39389
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39390
    const-string v2, "chat_id"

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_3

    .line 39392
    const-string v2, "message_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 39394
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mmakeProgressForForward(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 39395
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v6, v0, v7, v5, v2}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 39396
    new-instance v5, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    if-eqz v2, :cond_5

    if-eqz p3, :cond_5

    .line 39398
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/ChatActivity;)V

    const-wide/16 v3, 0x1388

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 39412
    invoke-virtual {v2}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    return-void

    .line 39414
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    return-void
.end method

.method private openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 39373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39374
    const-string/jumbo v1, "user_id"

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 39375
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39376
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 39359
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 39364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39365
    const-string v1, "chat_id"

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 39366
    const-string p1, "expandPhoto"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39367
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 39339
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    if-eqz p1, :cond_4

    .line 39344
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-wide/32 v2, 0x77628

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 39345
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    if-eqz v0, :cond_2

    :cond_1
    move p2, v1

    .line 39348
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39349
    const-string/jumbo v2, "user_id"

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 39350
    const-string v2, "expandPhoto"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39351
    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 39352
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 39353
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18600(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 39354
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private sendMessageFromQuickShare(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/Bulletin;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 38742
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 38746
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->getSelectedMessageObject(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 38747
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->getSelectedDialogId(Lorg/telegram/ui/Cells/ChatMessageCell;)J

    move-result-wide v9

    if-eqz v2, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v1, v9, v4

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 38753
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$17400(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v9, v10, v7}, Lorg/telegram/ui/Components/AlertsCreator;->checkSlowMode(Landroid/content/Context;IJZ)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v3

    .line 38759
    :cond_2
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v11

    cmp-long v1, v11, v4

    if-eqz v1, :cond_3

    .line 38760
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgroupedMessagesMap(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v1, :cond_3

    .line 38762
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_4

    .line 38766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38767
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38770
    :cond_4
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v9, v4

    if-nez v2, :cond_5

    const/4 v7, 0x1

    .line 38772
    :cond_5
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda28;

    invoke-direct {v2, v0, v1, v9, v10}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/ArrayList;J)V

    if-eqz v7, :cond_6

    .line 38778
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move-object/from16 v16, v3

    goto :goto_1

    :cond_6
    move-object/from16 v16, v2

    .line 38782
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    .line 38784
    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    .line 38785
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    const/16 v14, 0x1388

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x1

    .line 38782
    invoke-static/range {v5 .. v16}, Lorg/telegram/ui/Components/BulletinFactory;->createForwardedBulletin(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/widget/FrameLayout;IJIIIILjava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 38789
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->allowBlur()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Bulletin$LottieLayoutWithReactions;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    return-object v1

    :cond_7
    :goto_2
    return-object v3
.end method


# virtual methods
.method public canDrawOutboundsContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canPerformActions()Z
    .locals 1

    .line 40063
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canPerformReply()Z
    .locals 1

    .line 40068
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 7

    .line 40057
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZ)Z

    .line 40058
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mstartMultiselect(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method public didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 12

    .line 39619
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 39620
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 39627
    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    if-eqz v0, :cond_2

    .line 39628
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;->copy_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity;->didLongPressCopyButton(Ljava/lang/String;)V

    return-void

    .line 39632
    :cond_2
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 39633
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v7, p1

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenClickableLink(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;Ljava/lang/String;ZLorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Z)V

    goto :goto_2

    :cond_3
    move-object v7, p1

    .line 39635
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, v0, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 39636
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 39637
    sget v0, Lorg/telegram/messenger/R$string;->CopyTitle:I

    .line 39638
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39639
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->CopyCallback:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v4

    .line 39640
    :goto_0
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->query:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget v5, Lorg/telegram/messenger/R$string;->CopyInlineQuery:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v4

    .line 39641
    :goto_1
    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->user_id:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_6

    sget v4, Lorg/telegram/messenger/R$string;->CopyID:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V

    .line 39637
    invoke-virtual {p1, v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 39659
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 39663
    :goto_2
    :try_start_0
    invoke-static {v2}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->getType(I)I

    move-result p1

    invoke-virtual {v7, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_3
    return-void
.end method

.method public didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z
    .locals 6

    .line 39271
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->isAvatarPreviewerEnabled()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_10

    .line 39272
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p5, 0x1

    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_2

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    move p3, p5

    goto :goto_0

    :cond_2
    move p3, p4

    .line 39273
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_5

    :cond_4
    move v0, p5

    goto :goto_1

    :cond_5
    move v0, p4

    .line 39274
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_7

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, p4

    goto :goto_3

    :cond_7
    :goto_2
    move v1, p5

    :goto_3
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p3

    add-int/2addr v2, v0

    .line 39275
    new-array v2, v2, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    .line 39277
    sget-object v3, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v3, v2, p4

    if-eqz v1, :cond_9

    .line 39279
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v3, :cond_8

    sget-object v3, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_CHANNEL:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    goto :goto_4

    :cond_8
    sget-object v3, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_GROUP:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    :goto_4
    aput-object v3, v2, p5

    const/4 v3, 0x2

    goto :goto_5

    :cond_9
    move v3, p5

    :goto_5
    if-eqz p3, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 39282
    sget-object v5, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v5, v2, v3

    move v3, v4

    :cond_a
    if-eqz v0, :cond_b

    .line 39285
    sget-object v4, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEARCH_MESSAGES:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v4, v2, v3

    .line 39287
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 39290
    invoke-static {p2, v3, v2}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v2

    goto :goto_6

    .line 39292
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18500(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-static {p2, v3, v2}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$Chat;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v2

    .line 39294
    :goto_6
    invoke-static {v2}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 39295
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {p3, v0, p4, v2, v1}, Lorg/telegram/ui/AvatarPreviewer;->show(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    return p5

    .line 39314
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v4, Lorg/telegram/messenger/R$string;->OpenProfile:I

    .line 39315
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda43;

    invoke-direct {v5, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    .line 39318
    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v3, :cond_e

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    goto :goto_7

    :cond_e
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    :goto_7
    if-eqz v3, :cond_f

    sget v3, Lorg/telegram/messenger/R$string;->OpenChannel2:I

    goto :goto_8

    :cond_f
    sget v3, Lorg/telegram/messenger/R$string;->OpenGroup2:I

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda44;

    invoke-direct {v5, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v2, v1, v4, v3, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    sget v2, Lorg/telegram/messenger/R$string;->Mention:I

    .line 39321
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda45;

    invoke-direct {v3, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, p3, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v1, Lorg/telegram/messenger/R$string;->AvatarPreviewSearchMessages:I

    .line 39324
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, v0, p3, v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39327
    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 p2, 0x3

    .line 39328
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39329
    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/ItemOptions;->forceBottom(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 p2, 0x42400000    # 48.0f

    .line 39330
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39331
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return p5

    :cond_10
    return p4
.end method

.method public synthetic didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate$-CC;->$default$didLongPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V

    return-void
.end method

.method public didLongPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;)Z
    .locals 9

    .line 39674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 39677
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39678
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsavedMessagesTagHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 39680
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39681
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetvideoConversionTimeHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 39683
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 39684
    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v2

    if-nez v0, :cond_3

    return v1

    .line 39686
    :cond_3
    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaToDo;

    if-nez v2, :cond_4

    return v1

    .line 39690
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 39691
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObjectGroup(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    .line 39693
    new-instance v3, Lorg/telegram/ui/TodoItemMenu;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/TodoItemMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 39694
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TodoItem;->id:I

    invoke-virtual {v3, v1, p1, p2}, Lorg/telegram/ui/TodoItemMenu;->setCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    .line 39696
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39697
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 39698
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 39699
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0, v5, v6, v7}, Lorg/telegram/ui/ChatActivity;->fillMessageMenu(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 39700
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda47;

    invoke-direct {v8, v4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/TodoItemMenu;->setupMessageOptions(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 39701
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda48;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-virtual {v3, p1}, Lorg/telegram/ui/TodoItemMenu;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 39705
    invoke-virtual {v3}, Lorg/telegram/ui/TodoItemMenu;->show()V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public didLongPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)Z
    .locals 7

    .line 39146
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->isAvatarPreviewerEnabled()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_c

    .line 39147
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object p2, p3

    .line 39149
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_3

    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    move p3, v1

    goto :goto_0

    :cond_3
    move p3, p4

    .line 39150
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_6

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, p4

    :goto_1
    add-int/lit8 v2, p3, 0x2

    add-int/2addr v2, v0

    .line 39151
    new-array v2, v2, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    .line 39153
    sget-object v3, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v3, v2, p4

    .line 39154
    sget-object v3, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v3, v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p3, :cond_7

    .line 39156
    sget-object v5, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v5, v2, v4

    move v4, v3

    :cond_7
    if-eqz v0, :cond_8

    .line 39159
    sget-object v5, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEARCH_MESSAGES:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v5, v2, v4

    .line 39161
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 39164
    invoke-static {p2, v4, v2}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$UserFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v4

    .line 39165
    invoke-static {v4}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 39166
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-static {p2, v4, v2}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v4

    goto :goto_2

    .line 39169
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18400(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-static {p2, v4, v2}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v4

    .line 39171
    :cond_a
    :goto_2
    invoke-static {v4}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 39172
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p3, v0, p4, v4, v2}, Lorg/telegram/ui/AvatarPreviewer;->show(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    return v1

    .line 39190
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    sget v5, Lorg/telegram/messenger/R$string;->OpenProfile:I

    .line 39191
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda38;

    invoke-direct {v6, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_discussion:I

    sget v5, Lorg/telegram/messenger/R$string;->SendMessage:I

    .line 39194
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda39;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    sget v4, Lorg/telegram/messenger/R$string;->Mention:I

    .line 39197
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda40;

    invoke-direct {v5, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p1, p3, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_search:I

    sget v2, Lorg/telegram/messenger/R$string;->AvatarPreviewSearchMessages:I

    .line 39200
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda41;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p1, v0, p3, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39203
    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39204
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39205
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ItemOptions;->forceBottom(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/high16 p2, 0x42400000    # 48.0f

    .line 39206
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 39207
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return v1

    :cond_c
    return p4
.end method

.method public didPressAboutRevenueSharingAds()V
    .locals 4

    .line 41401
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$21600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/RevenueSharingAdsInfoBottomSheet;->showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/RevenueSharingAdsInfoBottomSheet;

    :cond_1
    :goto_0
    return-void
.end method

.method public didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 6

    .line 41323
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 41324
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isContextSafe(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 41325
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 41326
    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 41328
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getParticipant(JJ)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressAdmin(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 5

    .line 40173
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    iget-boolean p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 40176
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v1

    .line 40177
    iget-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$20000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 40179
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p2

    if-nez p2, :cond_3

    return v0

    .line 40181
    :cond_3
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 40197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40198
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40199
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p2, v2, v3, v4, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 40200
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->setPreviewEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 40201
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 40202
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public didPressBoostCounter(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 5

    .line 40567
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openBoostForUsersDialog:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 5

    .line 39426
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 39427
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCopy;

    if-nez v0, :cond_1

    goto :goto_1

    .line 39435
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-eqz v4, :cond_2

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, p1, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mmakeProgressForBotButton(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 40049
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 40050
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v0, :cond_0

    .line 40051
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method public didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFFZ)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 38961
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    .line 38965
    iget-boolean p4, p2, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z

    if-eqz p4, :cond_2

    .line 38966
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 38967
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    const-wide/32 v2, 0x4bc5fe8d

    cmp-long p5, v0, v2

    if-eqz p5, :cond_2

    .line 38968
    iget-object p1, p4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    .line 38969
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenUserProfile(Lorg/telegram/ui/ChatActivity;J)V

    return-void

    .line 38973
    :cond_2
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    return-void

    .line 38962
    :cond_3
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3, p4, p5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mprocessRowSelect(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void
.end method

.method public didPressChannelRecommendation(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 5

    .line 40108
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 40111
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40112
    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    .line 40113
    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v4, "chat_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 40114
    :cond_1
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    .line 40115
    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string/jumbo v4, "user_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 40120
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 40122
    new-instance p3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p3, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 40123
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 40125
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 40126
    sget v2, Lorg/telegram/messenger/R$string;->OpenChannel2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    const/16 v2, 0xa0

    .line 40127
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 40128
    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40133
    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 40135
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 40136
    sget v3, Lorg/telegram/messenger/R$string;->ProfileJoinChannel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_addbot:I

    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 40137
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 40138
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40148
    invoke-virtual {p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 40150
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 40151
    iput-boolean p2, p1, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    .line 40152
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    .line 40153
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckShowBlur(Lorg/telegram/ui/ChatActivity;Z)V

    return-void

    .line 40155
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public didPressChannelRecommendationsClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    .line 40161
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40162
    iget v1, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 40163
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->toggleChannelRecommendations()V

    const/4 v1, 0x1

    .line 40164
    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 40165
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->forceResetMessageObject()V

    .line 40166
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->requestLayout()V

    .line 40167
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public didPressCodeCopy(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject$TextLayoutBlock;)V
    .locals 6

    if-eqz p2, :cond_1

    .line 40078
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 40082
    :cond_0
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 40083
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 40084
    new-instance v0, Lorg/telegram/messenger/CodeHighlighting$Span;

    const/4 v3, 0x0

    iget-object v4, p2, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->language:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/CodeHighlighting$Span;-><init>(ZILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 40085
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 40086
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->CodeCopied:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method public didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 10

    .line 41191
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41193
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41194
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 41196
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    goto :goto_0

    .line 41200
    :goto_1
    iget-object p1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    if-eqz p1, :cond_1

    .line 41201
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->read_max_id:I

    .line 41202
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    :goto_2
    move v7, v0

    move-wide v5, v1

    goto :goto_3

    :cond_1
    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    goto :goto_2

    .line 41207
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenDiscussionMessageChat(Lorg/telegram/ui/ChatActivity;JLorg/telegram/messenger/MessageObject;IJIILorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public didPressCustomBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;)V
    .locals 12

    .line 39440
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 39445
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 39450
    :cond_1
    iget p2, p2, Lorg/telegram/messenger/BotInlineKeyboard$ButtonCustom;->id:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 39451
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-static {p1, v3, v4, v2, p2}, Lorg/telegram/ui/Components/AlertsCreator;->showDeclineSuggestedPostDialog(Lorg/telegram/ui/ActionBar/BaseFragment;JZLorg/telegram/messenger/Utilities$Callback;)V

    return-void

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    .line 39455
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    if-eqz p1, :cond_7

    .line 39456
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$18700(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 39457
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$18800(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v4, 0x5

    invoke-static {p2, v3, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoChannelDirectAdminAction(ILorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    .line 39459
    :cond_3
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, v1, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Message;ZLorg/telegram/messenger/MessageObject;)V

    .line 39555
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->suggested_post:Lorg/telegram/tgnet/TLRPC$SuggestedPost;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$SuggestedPost;->price:Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;->of(Lorg/telegram/tgnet/tl/TL_stars$StarsAmount;)Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;

    move-result-object v1

    xor-int/2addr p1, v2

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/ui/ChatActivity;->checkStarsNeedSheet(Ljava/lang/Runnable;Lorg/telegram/messenger/utils/tlutils/AmountUtils$Amount;Z)V

    return-void

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    .line 39558
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLastTouchX()F

    move-result v7

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getLastTouchY()F

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v4, p1

    invoke-static/range {v3 .. v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZZZ)Z

    return-void

    :cond_6
    const/4 p1, 0x4

    if-ne p2, p1, :cond_7

    .line 39560
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/TopicsTabsView;->selectTopic(JZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public didPressEffect(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    .line 38570
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onTapItem(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Z)Z

    .line 38571
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    return-void
.end method

.method public didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 3

    .line 40249
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public didPressFactCheck(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 38622
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 38624
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->factCheckExpanded:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->factCheckExpanded:Z

    .line 38625
    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 38628
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasPendingScrollPosition()Z

    move-result v1

    if-nez v1, :cond_6

    .line 38629
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_6

    .line 38630
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 38631
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_1

    .line 38633
    :cond_2
    instance-of v5, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_4

    .line 38634
    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 38638
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v1

    goto :goto_2

    .line 38640
    :cond_4
    instance-of v5, v2, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v5, :cond_5

    .line 38642
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v1

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    const/4 v4, -0x1

    move v1, v3

    .line 38647
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateMessageAnimatedInternal(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)V

    .line 38648
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 38649
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_7
    if-ltz v4, :cond_8

    .line 38651
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    if-nez p1, :cond_8

    .line 38652
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method public didPressFactCheckWhat(Lorg/telegram/ui/Cells/ChatMessageCell;II)V
    .locals 9

    .line 38576
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38577
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_0
    if-eqz p1, :cond_4

    .line 38579
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 38580
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 38582
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFactCheck()Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 38583
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->country:Ljava/lang/String;

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 38586
    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    const-string v2, ""

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->country:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38588
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 38589
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_factCheck;->country:Ljava/lang/String;

    .line 38591
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    .line 38592
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 38593
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    const-wide/16 v4, -0x1

    .line 38594
    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    .line 38595
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setHideByTouch(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    .line 38596
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->useScale(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    const/high16 v4, 0x41400000    # 12.0f

    .line 38597
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Stories/recorder/HintView2;->setRounding(F)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfactCheckHint(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    .line 38598
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    .line 38599
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 38605
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->FactCheckToast:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 38606
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfactCheckHint(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x44020000    # 520.0f

    const/16 v4, 0x37

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38607
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public didPressGiveawayChatButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 4

    .line 41173
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    if-eqz v0, :cond_1

    .line 41174
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    .line 41175
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;->channels:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 41176
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    neg-long v0, v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 41177
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->of(J)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 41179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->openProfile(Z)V

    .line 41182
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    if-eqz v0, :cond_2

    .line 41183
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;

    .line 41184
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveawayResults;->winners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 41185
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    return-void
.end method

.method public didPressGroupImage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;FF)V
    .locals 10

    .line 40584
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    .line 40585
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz p4, :cond_0

    .line 40586
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mmakeProgressForPaidMedia(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    .line 40587
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$20500(Lorg/telegram/ui/ChatActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object p3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda13;

    invoke-direct {p4, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/browser/Browser$Progress;)V

    invoke-virtual {p3, p2, p4}, Lorg/telegram/ui/Stars/StarsController;->pay(Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 40589
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    .line 40590
    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    return-void

    .line 40594
    :cond_0
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 40595
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of p5, p4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-nez p5, :cond_1

    goto/16 :goto_2

    .line 40596
    :cond_1
    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    .line 40597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x0

    const/4 v0, -0x1

    move v2, p5

    move v3, v0

    .line 40599
    :goto_0
    iget-object v4, p4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 40600
    iget-object v4, p4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 40601
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v5, :cond_5

    .line 40602
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-ne v4, p3, :cond_2

    .line 40604
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 40606
    :cond_2
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 40607
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 40608
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 40609
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_boosts_applied:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_boosts_applied:I

    .line 40610
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 40611
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 40612
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 40613
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->expire_date:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->expire_date:I

    .line 40614
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 40615
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 40616
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 40617
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    .line 40618
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    .line 40619
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 40620
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 40621
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 40622
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 40623
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 40624
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 40625
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 40626
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->forwards:I

    .line 40627
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    .line 40628
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->edit_date:I

    .line 40629
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    .line 40630
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 40631
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_scheduled:Z

    .line 40632
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->legacy:Z

    .line 40633
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->edit_hide:Z

    .line 40634
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->pinned:Z

    .line 40635
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 40636
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    .line 40637
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->via_business_bot_id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->via_business_bot_id:J

    .line 40638
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    .line 40639
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    .line 40640
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    .line 40641
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    .line 40642
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    .line 40643
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl_period:I

    .line 40644
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    .line 40645
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    .line 40646
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    .line 40647
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    .line 40648
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->offline:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->offline:Z

    .line 40649
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->factcheck:Lorg/telegram/tgnet/TLRPC$TL_factCheck;

    .line 40650
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 40651
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 40652
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->attachPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    .line 40653
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->attachPath:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto :goto_1

    .line 40654
    :cond_3
    iget-object v6, p4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 40655
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 40657
    :cond_4
    :goto_1
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 40658
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 40659
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 40660
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 40661
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 40662
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 40663
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Message;->destroyTimeMillis:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->destroyTimeMillis:J

    .line 40664
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->layer:I

    .line 40665
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->seq_in:I

    .line 40666
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->seq_out:I

    .line 40667
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    .line 40668
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 40669
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->reqId:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->reqId:I

    .line 40670
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->realId:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->realId:I

    .line 40671
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->stickerVerified:I

    .line 40672
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->isThreadMessage:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->isThreadMessage:Z

    .line 40673
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscription:Ljava/lang/String;

    .line 40674
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionOpen:Z

    .line 40675
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionRated:Z

    .line 40676
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionFinal:Z

    .line 40677
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionForce:Z

    .line 40678
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->voiceTranscriptionId:J

    .line 40679
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->premiumEffectWasPlayed:Z

    .line 40680
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->originalLanguage:Ljava/lang/String;

    .line 40681
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->translatedToLanguage:Ljava/lang/String;

    .line 40682
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->translatedText:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 40683
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 40684
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 40685
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    .line 40686
    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    .line 40687
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v6, p2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-direct {v4, v6, v5, p5, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 40688
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-le v3, v0, :cond_8

    .line 40691
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 40693
    :cond_7
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 40694
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerPaidMediaProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v9

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move v2, v3

    move-wide v3, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    :cond_8
    :goto_2
    return-void
.end method

.method public didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 38978
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38979
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void

    .line 38982
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowForwardHint(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 38502
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 38503
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowPollSolution(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$PollResults;)V

    goto/16 :goto_5

    :cond_0
    if-ne p2, v1, :cond_9

    .line 38505
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 38506
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->psa_type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 38509
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PsaMessageInfo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->psa_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38510
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 38511
    sget v3, Lorg/telegram/messenger/R$string;->PsaMessageInfoDefault:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38513
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 38514
    invoke-static {v0, v4}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 38515
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 38517
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_7

    .line 38518
    iget-object v7, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 38519
    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v7, v1

    if-eqz v7, :cond_6

    .line 38520
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eq v3, v2, :cond_7

    .line 38523
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_5

    .line 38525
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 38526
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v7, :cond_3

    goto :goto_2

    .line 38529
    :cond_3
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 38530
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessageObject;->equals(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object p1, v6

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 38539
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2, v4, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowInfoHint(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V

    goto :goto_5

    :cond_8
    :goto_4
    return-void

    .line 38541
    :cond_9
    :goto_5
    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->showHintButton(ZZI)V

    return-void
.end method

.method public didPressImage(Lorg/telegram/ui/Cells/ChatMessageCell;FFZ)V
    .locals 21

    move-object/from16 v1, p0

    .line 40699
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 40700
    iget v0, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x17

    const/4 v4, 0x2

    if-ne v0, v2, :cond_0

    .line 40701
    iget-object v0, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v2, :cond_35

    instance-of v5, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-nez v5, :cond_35

    .line 40703
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    iput-wide v5, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 40704
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 40705
    iput v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    .line 40706
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->applyViewedUser(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 40707
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    .line 40710
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 40711
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20600(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 40712
    iput-boolean v8, v3, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    goto :goto_0

    .line 40715
    :cond_1
    iput-boolean v8, v3, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 40717
    :cond_2
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40718
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZ)Z

    return-void

    .line 40720
    :cond_3
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_10

    :cond_4
    const/4 v0, 0x0

    if-eqz p4, :cond_7

    .line 40723
    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 40724
    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 40725
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getHostAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-object v5, v3

    move-object v3, v2

    .line 40726
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    const/4 v7, 0x2

    const/4 v5, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenLinkInternally(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;II)Z

    move-result v2

    move-object/from16 v17, v4

    move-object v4, v3

    move-object/from16 v3, v17

    if-nez v2, :cond_35

    .line 40727
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 40728
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 40730
    :cond_5
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$9;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$9;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_1
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 40746
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v14}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void

    :cond_7
    move-object v5, v3

    move-object/from16 v3, p1

    .line 40750
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 40751
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->loadStakeDiceInfo(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 40775
    :cond_8
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/EmojiAnimationsOverlay;->supports(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40776
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatActivity;->restartSticker(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 40777
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v2, v3, v0, v8}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onTapItem(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Z)Z

    .line 40778
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    return-void

    .line 40779
    :cond_b
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 40780
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msendSecretMessageRead(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    move-result-object v0

    .line 40781
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msendSecretMediaDelete(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Ljava/lang/Runnable;

    move-result-object v2

    .line 40782
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 40783
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 40784
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v0, v2}, Lorg/telegram/ui/SecretMediaViewer;->openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 40785
    :cond_c
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 40786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 40787
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40788
    new-instance v2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 40789
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 40790
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 40791
    :cond_d
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 40792
    new-instance v9, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v12

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    :cond_f
    move-object v14, v0

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    .line 40793
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 40794
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 40795
    :cond_10
    iget v2, v5, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v7, 0xd

    if-eq v2, v7, :cond_32

    const/16 v7, 0xf

    if-ne v2, v7, :cond_11

    goto/16 :goto_d

    .line 40811
    :cond_11
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-nez v2, :cond_2b

    iget v2, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v2, v8, :cond_2b

    if-nez v2, :cond_12

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_12
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_9

    .line 40847
    :cond_13
    iget v2, v5, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    .line 40848
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v5, v8}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msendSecretMessageRead(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    .line 40851
    :try_start_0
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_14

    .line 40852
    new-instance v0, Ljava/io/File;

    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_14
    :goto_2
    if-eqz v0, :cond_15

    .line 40854
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 40855
    :cond_15
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 40857
    :cond_16
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40858
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x18

    const-string/jumbo v6, "video/mp4"

    if-lt v3, v4, :cond_17

    .line 40859
    :try_start_1
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40860
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".provider"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 40862
    :cond_17
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 40864
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 40866
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 40867
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$malertUserOpenError(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_10

    :cond_18
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1e

    .line 40870
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_10

    .line 40873
    :cond_19
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 40874
    new-instance v0, Lorg/telegram/ui/LocationActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_1a

    goto :goto_5

    :cond_1a
    const/4 v4, 0x6

    :cond_1b
    :goto_5
    invoke-direct {v0, v4}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 40875
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 40876
    invoke-virtual {v0, v5}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 40877
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 40879
    :cond_1c
    new-instance v0, Lorg/telegram/ui/LocationActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_1d

    move v6, v3

    :cond_1d
    invoke-direct {v0, v6}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 40880
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 40881
    invoke-virtual {v0, v5}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 40882
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_1e
    const/16 v3, 0x9

    if-eq v2, v3, :cond_1f

    if-nez v2, :cond_35

    .line 40885
    :cond_1f
    invoke-static {}, Lcom/exteragram/messenger/backup/PreferencesUtils;->getInstance()Lcom/exteragram/messenger/backup/PreferencesUtils;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/exteragram/messenger/backup/PreferencesUtils;->isBackup(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 40886
    new-instance v0, Lcom/exteragram/messenger/backup/BackupBottomSheet;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v2, v5}, Lcom/exteragram/messenger/backup/BackupBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0}, Lcom/exteragram/messenger/backup/BackupBottomSheet;->showIfPossible()V

    return-void

    .line 40888
    :cond_20
    invoke-static {v5}, Lcom/exteragram/messenger/plugins/PluginsController;->isPlugin(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 40889
    invoke-static {}, Lcom/exteragram/messenger/plugins/PluginsController;->getInstance()Lcom/exteragram/messenger/plugins/PluginsController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v2, v5}, Lcom/exteragram/messenger/plugins/PluginsController;->showInstallDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 40891
    :cond_21
    sget-object v2, Lcom/exteragram/messenger/icons/IconManager;->INSTANCE:Lcom/exteragram/messenger/icons/IconManager;

    invoke-virtual {v2, v5}, Lcom/exteragram/messenger/icons/IconManager;->isIconPack(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 40892
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v0, v5}, Lcom/exteragram/messenger/icons/IconManager;->handleIconPack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 40894
    :cond_22
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "attheme"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 40896
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    .line 40897
    new-instance v2, Ljava/io/File;

    iget-object v3, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40898
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_6

    :cond_23
    move-object v2, v0

    :goto_6
    if-nez v2, :cond_24

    .line 40903
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v3

    .line 40904
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    move-object v2, v3

    .line 40908
    :cond_24
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 40910
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 40913
    :cond_25
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChatActivity;I)V

    .line 40917
    :cond_26
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 40918
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 40919
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v0, v5, Lorg/telegram/messenger/MessageObject;->type:I

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_27

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    goto :goto_7

    :cond_27
    move-wide v8, v6

    :goto_7
    iget v0, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v0, :cond_28

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    goto :goto_8

    :cond_28
    move-wide v10, v6

    :goto_8
    iget v0, v5, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v0, :cond_29

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v6

    :cond_29
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v0

    move-object v3, v5

    move-wide/from16 v17, v10

    move-object v11, v0

    move-wide/from16 v19, v8

    move-wide v9, v6

    move-wide/from16 v5, v19

    move-wide/from16 v7, v17

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void

    .line 40924
    :cond_2a
    :try_start_2
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v5, v0, v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 40926
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 40927
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$malertUserOpenError(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_10

    .line 40812
    :cond_2b
    :goto_9
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 40813
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_a

    .line 40838
    :cond_2c
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 40839
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v5, v8, v6}, Lorg/telegram/ui/ChatActivity;->logSponsoredClicked(Lorg/telegram/messenger/MessageObject;ZZ)V

    goto :goto_c

    .line 40814
    :cond_2d
    :goto_a
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5, v8, v6}, Lorg/telegram/ui/ChatActivity;->logSponsoredClicked(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 40815
    iget-object v2, v5, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 40816
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 40817
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 40819
    :cond_2e
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_b

    :cond_2f
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$10;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$10;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_b
    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 40835
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, v5, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v11

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v14, v0, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z

    const/4 v15, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v15}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void

    .line 40842
    :cond_30
    :goto_c
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_31

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getVideoStartsTimestamp()I

    move-result v0

    if-lez v0, :cond_31

    iget-boolean v0, v5, Lorg/telegram/messenger/MessageObject;->openedInViewer:Z

    if-nez v0, :cond_31

    .line 40843
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getVideoStartsTimestamp()I

    move-result v0

    int-to-double v6, v0

    .line 40844
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v0, v6

    iput v0, v5, Lorg/telegram/messenger/MessageObject;->forceSeekTo:F

    .line 40846
    :cond_31
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/ChatActivity;->openPhotoViewerForMessage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 40798
    :cond_32
    :goto_d
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 40799
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v6

    :goto_e
    if-ge v4, v2, :cond_34

    .line 40800
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 40801
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v8, :cond_33

    .line 40802
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    .line 40803
    iget v0, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    goto :goto_f

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_34
    move v0, v6

    :goto_f
    const/16 v2, 0x200

    if-gt v6, v2, :cond_36

    if-le v0, v2, :cond_35

    goto :goto_11

    :cond_35
    :goto_10
    return-void

    .line 40808
    :cond_36
    :goto_11
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/ChatActivity;->openPhotoViewerForMessage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 11

    .line 40935
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_2

    .line 40937
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 40938
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 40940
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$11;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$11;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_0
    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 40956
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->openGiveAwayStatusDialog(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    :cond_2
    const/16 v1, 0x15

    if-ne p2, v1, :cond_5

    .line 40958
    sget-object p2, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p2, :cond_22

    .line 40959
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 40960
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 40962
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$12;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$12;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_1
    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 40978
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/LaunchActivity;->checkAppUpdate(ZLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void

    :cond_5
    const/16 v1, 0x8

    if-ne p2, v1, :cond_6

    .line 40981
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->showForPoll(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void

    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 40983
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_22

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_22

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p1, :cond_22

    .line 40984
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getBottomSheetTabs()Lorg/telegram/ui/ActionBar/BottomSheetTabs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheetTabs;->tryReopenTab(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ActionBar/BottomSheetTabs$WebTabData;

    move-result-object p1

    if-eqz p1, :cond_7

    goto/16 :goto_9

    .line 40987
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createArticleViewer(Z)Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    :cond_8
    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    if-ne p2, v4, :cond_a

    .line 40990
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    cmp-long v1, p1, v5

    if-eqz v1, :cond_9

    .line 40993
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_9
    move-object v4, v2

    .line 40995
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/ChatActivity;->openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const/16 v4, 0x1e

    .line 40996
    const-string/jumbo v7, "user_id"

    if-ne p2, v4, :cond_b

    .line 40997
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    .line 40998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40999
    invoke-virtual {v0, v7, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41000
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_b
    const/16 v4, 0x1f

    if-ne p2, v4, :cond_10

    .line 41002
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    cmp-long v1, p1, v5

    if-eqz v1, :cond_c

    .line 41005
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_c
    if-eqz v2, :cond_22

    .line 41009
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->vCardData:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 41010
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->vCardData:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 41012
    :cond_d
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 41013
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 41015
    :cond_e
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 41016
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 41017
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 41019
    :cond_f
    sget p1, Lorg/telegram/messenger/R$string;->NumberUnknown:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 41024
    :goto_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 41025
    iget-wide v0, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v7, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41026
    const-string v0, "phone"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41027
    const-string p1, "addContact"

    invoke-virtual {p2, p1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41028
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_10
    const/16 v4, 0x17

    const/16 v5, 0x18

    if-eq p2, v4, :cond_11

    if-ne p2, v5, :cond_12

    :cond_11
    move-object v6, p1

    goto/16 :goto_6

    .line 41099
    :cond_12
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 41100
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, v0, v1, v1}, Lorg/telegram/ui/ChatActivity;->logSponsoredClicked(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 41101
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;

    if-eqz p2, :cond_22

    .line 41102
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 41103
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 41105
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_3

    :cond_14
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$14;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$14;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_3
    invoke-static {p2, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 41121
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->sponsoredUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean v9, p1, Lorg/telegram/messenger/MessagesController;->sponsoredLinksInappAllow:Z

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v10}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void

    .line 41124
    :cond_15
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getStoryMentionWebpage()Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p2

    if-nez p2, :cond_16

    .line 41125
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_16

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_16

    .line 41126
    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :cond_16
    if-nez p2, :cond_17

    goto/16 :goto_9

    .line 41131
    :cond_17
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    if-eqz v4, :cond_19

    .line 41132
    :goto_4
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_19

    .line 41133
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    if-eqz v4, :cond_18

    .line 41134
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;

    .line 41135
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_18

    .line 41136
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    iput-wide p1, v5, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 41137
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 41138
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput v3, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    .line 41139
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeStory;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 41145
    :cond_19
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    const/4 v9, 0x2

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenLinkInternally(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;II)Z

    move-result p1

    if-nez p1, :cond_22

    .line 41146
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 41147
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 41149
    :cond_1a
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_1b

    goto :goto_5

    :cond_1b
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$15;

    invoke-direct {v2, p0, v6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$15;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_5
    invoke-static {p1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 41165
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void

    :goto_6
    if-ne p2, v5, :cond_1c

    move v1, v3

    .line 41033
    :cond_1c
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_1d

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_1d

    .line 41034
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_7

    :cond_1d
    move-object p1, v2

    :goto_7
    if-eqz p1, :cond_22

    .line 41036
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-nez p2, :cond_1e

    goto/16 :goto_9

    .line 41037
    :cond_1e
    const-string p2, "^https?\\:\\/\\/t\\.me\\/add(?:emoji|stickers)\\/(.+)$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 41038
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 41040
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 41041
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 41043
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_8

    :cond_20
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$13;

    invoke-direct {v2, p0, v6}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$13;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_8
    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 41060
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-le v0, v3, :cond_21

    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 41061
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 41062
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_21

    .line 41064
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    .line 41065
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 41066
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 41067
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 41068
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 41069
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$21000(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Z)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 41093
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;I)V

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)Lorg/telegram/messenger/browser/Browser$Progress;

    return-void

    .line 41097
    :cond_21
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    :cond_22
    :goto_9
    return-void
.end method

.method public didPressMoreChannelRecommendations(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    .line 40091
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40092
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 40093
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const-string v2, "dialog_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40094
    const-string/jumbo v0, "start_from"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40095
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/Components/MediaActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSharedMediaPreloader()Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Components/MediaActivity;-><init>(Landroid/os/Bundle;Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 40097
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 40099
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->recommendedChannelsLimitPremium:I

    const-string v2, "UnlockSimilarChannelsPremium"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 40097
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 40102
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public didPressOther(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 20

    move-object/from16 v1, p0

    .line 38987
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 38988
    iget v0, v5, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    .line 38989
    iget-object v0, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 38990
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    move v2, v3

    .line 38991
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 38992
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38993
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->other_participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v2, v2, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 38994
    invoke-static {v6}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38997
    :cond_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;-><init>()V

    .line 38998
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->msg_id:I

    .line 39000
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x3

    invoke-direct {v2, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 39002
    new-instance v6, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {v6}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 39003
    iput-object v4, v6, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 39004
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->conferenceCallSizeLimit:I

    iput v0, v6, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    .line 39005
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda10;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/HashSet;Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallInviteMessage;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 39022
    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-wide/16 v3, 0x258

    .line 39023
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    return-void

    :cond_1
    move v2, v3

    .line 39024
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_3

    .line 39025
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isVideoCall()Z

    move-result v7

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v8, v3

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v10

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    :cond_3
    return-void

    .line 39028
    :cond_4
    iget-object v12, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v18

    const/16 v19, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v13, p1

    move/from16 v16, p2

    move/from16 v17, p3

    invoke-static/range {v12 .. v19}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZZ)Z

    return-void
.end method

.method public didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V
    .locals 6

    .line 39669
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->didPressReaction(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZFF)V

    return-void
.end method

.method public didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;IFFZ)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v3, p2

    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz p5, :cond_2

    .line 40301
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->replyEmoji:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v10, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, v2, v10}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getEmojiIdFrom(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v10

    cmp-long v0, v10, v4

    if-lez v0, :cond_2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40302
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 40303
    new-instance v10, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$6;

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v10, v1, v0, v3, v4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$6;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 40318
    invoke-virtual {v10, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 40320
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_select:I

    sget v3, Lorg/telegram/messenger/R$string;->Select:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v10, v0, v3, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v11

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda7;

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    move-object v12, v1

    move v1, v4

    move-object v4, v0

    move-object v0, v3

    move-object v3, v2

    move v2, v5

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 40326
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v5

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    invoke-virtual {v5, v11, v13}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getSetFrom(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40328
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v11, -0x2

    if-eqz v5, :cond_0

    .line 40329
    new-instance v5, Landroid/widget/FrameLayout;

    iget-object v13, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40330
    iget-object v13, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-virtual {v13, v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v13, 0x8

    .line 40331
    invoke-static {v7, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v5, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 40333
    new-instance v13, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)I

    move-result v14

    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/16 v18, 0x4

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    .line 40334
    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v5, v12, v4, v3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v13, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40348
    invoke-static {v7, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v13, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 40351
    :cond_0
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-direct {v4, v10, v11, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 40352
    invoke-virtual {v4, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v5, 0xdc

    .line 40353
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 40354
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 40355
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 40356
    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 40357
    invoke-virtual {v4, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/high16 v5, 0x447a0000    # 1000.0f

    .line 40358
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/high16 v11, -0x80000000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v10, v7, v5}, Landroid/view/View;->measure(II)V

    .line 40359
    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 40360
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 40361
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 40363
    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    .line 40364
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40365
    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 40366
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v1, v5

    .line 40367
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    add-float/2addr v2, v5

    .line 40369
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    .line 40370
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 40372
    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {v4, v3, v8, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 40373
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    .line 40374
    invoke-virtual {v0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 40375
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 40376
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    return-void

    :cond_2
    move-object/from16 v0, p1

    move/from16 v2, p4

    move-object v12, v1

    move/from16 v1, p3

    .line 40379
    invoke-virtual {v12}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->canPerformActions()Z

    move-result v10

    if-nez v10, :cond_5

    if-nez p5, :cond_5

    .line 40381
    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 40382
    :cond_3
    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_8

    .line 40385
    :cond_4
    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result v4

    xor-int/2addr v4, v9

    invoke-static {v3, v0, v4, v1, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mprocessRowSelect(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void

    .line 40390
    :cond_5
    iget-object v1, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40391
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void

    .line 40394
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-nez v1, :cond_7

    goto/16 :goto_8

    .line 40396
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isReplyToStory()Z

    move-result v2

    const/4 v10, 0x3

    if-eqz v2, :cond_9

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v11, :cond_9

    .line 40397
    instance-of v0, v11, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    if-eqz v0, :cond_8

    .line 40398
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->story_bomb1:I

    sget v2, Lorg/telegram/messenger/R$string;->StoryNotFound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 40401
    :cond_8
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iput-wide v2, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 40402
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageId:I

    .line 40403
    iput v10, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->messageType:I

    .line 40404
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v11, v0}, Lorg/telegram/ui/Stories/StoriesUtilities;->applyViewedUser(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 40405
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v0

    iget-object v1, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v11, v2}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;)V

    return-void

    .line 40411
    :cond_9
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_a

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v13, :cond_a

    iget v14, v13, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_a

    .line 40412
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->todo_item_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_c

    .line 40413
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v2, :cond_c

    iget-boolean v13, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    if-eqz v13, :cond_c

    .line 40414
    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    .line 40415
    iget v14, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    and-int/lit16 v14, v14, 0x400

    if-eqz v14, :cond_b

    .line 40416
    iget v7, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    :cond_c
    const/4 v2, 0x0

    goto :goto_0

    .line 40419
    :goto_1
    iget-object v14, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v14

    move-wide/from16 v16, v4

    .line 40421
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-wide v18, 0x7fffffffffffffffL

    if-eqz v4, :cond_10

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v4, :cond_10

    .line 40422
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_f

    .line 40423
    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-nez v4, :cond_d

    .line 40424
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    move v4, v9

    goto :goto_3

    .line 40426
    :cond_d
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget-object v11, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v20

    cmp-long v4, v4, v20

    if-eqz v4, :cond_10

    :cond_e
    move v4, v8

    move-wide/from16 v14, v18

    goto :goto_3

    .line 40429
    :cond_f
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_10

    .line 40431
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_11

    .line 40432
    instance-of v4, v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-nez v4, :cond_e

    .line 40433
    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    :cond_10
    :goto_2
    move v4, v8

    goto :goto_3

    .line 40435
    :cond_11
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_e

    .line 40436
    invoke-static {v4}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    goto :goto_2

    :goto_3
    cmp-long v5, v14, v16

    if-gez v5, :cond_12

    .line 40442
    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v8, v14

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    goto :goto_4

    :cond_12
    const/4 v5, 0x0

    :goto_4
    cmp-long v8, v14, v18

    if-eqz v8, :cond_1f

    .line 40444
    iget-object v9, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v17

    cmp-long v9, v14, v17

    if-eqz v9, :cond_13

    if-eqz v5, :cond_13

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v9, :cond_1f

    iget-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-eqz v9, :cond_13

    goto/16 :goto_9

    .line 40471
    :cond_13
    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v17

    cmp-long v5, v14, v17

    if-nez v5, :cond_14

    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz v4, :cond_15

    :cond_14
    if-nez v8, :cond_1c

    :cond_15
    iget-object v4, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-ne v4, v10, :cond_16

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v4

    iget-object v8, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-eqz v4, :cond_16

    goto/16 :goto_7

    .line 40494
    :cond_16
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eq v0, v6, :cond_1b

    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_17

    goto :goto_6

    :cond_17
    if-eqz v2, :cond_18

    .line 40499
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object v2, v0, Lorg/telegram/ui/ChatActivity;->highlightTaskId:Ljava/lang/Integer;

    goto :goto_5

    .line 40500
    :cond_18
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v0, :cond_19

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    if-eqz v4, :cond_19

    .line 40501
    iget-object v4, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteFirst:Z

    .line 40502
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    iput-object v0, v4, Lorg/telegram/ui/ChatActivity;->highlightMessageQuote:Ljava/lang/String;

    .line 40503
    iput v7, v4, Lorg/telegram/ui/ChatActivity;->highlightMessageQuoteOffset:I

    .line 40504
    iput-boolean v5, v4, Lorg/telegram/ui/ChatActivity;->showNoQuoteAlert:Z

    .line 40507
    :cond_19
    :goto_5
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;

    invoke-direct {v0, v12, v3, v1, v2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILorg/telegram/messenger/MessageObject;Ljava/lang/Integer;)V

    .line 40513
    iget-object v1, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz v1, :cond_1a

    .line 40514
    iget-object v1, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v11, 0x0

    invoke-static {v1, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsearchingFiltered(Lorg/telegram/ui/ChatActivity;Z)V

    const/4 v4, 0x1

    invoke-static {v1, v11, v4, v11}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msetFilterMessages(Lorg/telegram/ui/ChatActivity;ZZZ)V

    .line 40515
    iget-object v1, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getMask()I

    move-result v2

    iget-object v3, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getSearchPosition()I

    move-result v3

    iget-object v4, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getSearchCount()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateSearchButtons(Lorg/telegram/ui/ChatActivity;III)V

    const-wide/16 v1, 0x50

    .line 40516
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 40518
    :cond_1a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 40495
    :cond_1b
    :goto_6
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatActivityDelegate(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;->openReplyMessage(I)V

    .line 40496
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    return-void

    .line 40472
    :cond_1c
    :goto_7
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v4, :cond_1e

    .line 40473
    iget-object v4, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 40474
    iget-object v4, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel()V

    .line 40475
    iget-object v4, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    .line 40477
    :cond_1d
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget-object v5, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v6, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$8;

    invoke-direct {v6, v12, v1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$8;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-static {v5, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    move-object v5, v6

    .line 40492
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    move-object v8, v2

    move-object v0, v4

    move-object v4, v13

    move-wide v1, v14

    .line 40477
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/LaunchActivity;->openMessage(JILjava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;IILjava/lang/Integer;)V

    :cond_1e
    :goto_8
    return-void

    .line 40445
    :cond_1f
    :goto_9
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->replyTextEllipsized:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->replyTextRevealed:Z

    if-nez v0, :cond_20

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v4, 0x1

    .line 40446
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject;->replyTextRevealed:Z

    .line 40447
    iget-object v0, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateMessageAnimated(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    .line 40450
    :cond_20
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_23

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v0, :cond_23

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    if-eqz v0, :cond_23

    if-eqz v5, :cond_21

    .line 40451
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_21

    .line 40452
    sget v0, Lorg/telegram/messenger/R$string;->QuotePrivateGroup:I

    goto :goto_a

    .line 40453
    :cond_21
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 40454
    sget v0, Lorg/telegram/messenger/R$string;->QuotePrivateChannel:I

    goto :goto_a

    .line 40456
    :cond_22
    sget v0, Lorg/telegram/messenger/R$string;->QuotePrivate:I

    goto :goto_a

    :cond_23
    if-eqz v5, :cond_24

    .line 40459
    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_24

    .line 40460
    sget v0, Lorg/telegram/messenger/R$string;->ReplyPrivateGroup:I

    goto :goto_a

    .line 40461
    :cond_24
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 40462
    sget v0, Lorg/telegram/messenger/R$string;->ReplyPrivateChannel:I

    goto :goto_a

    .line 40464
    :cond_25
    sget v0, Lorg/telegram/messenger/R$string;->ReplyPrivate:I

    .line 40467
    :goto_a
    iget-object v1, v12, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->error:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public didPressRevealSensitiveContent(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 3

    .line 41409
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->showSensitiveContent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41410
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0xc8

    .line 41411
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 41412
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getContentSettings(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 41487
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41488
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject;->isSensitiveCached:Ljava/lang/Boolean;

    .line 41490
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->startRevealMedia()V

    return-void
.end method

.method public didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 38794
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 38797
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetthreadMessageId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isMonoForum:Z

    if-eqz v2, :cond_2

    .line 38798
    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->topicsTabs:Lorg/telegram/ui/Components/TopicsTabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getTopicId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Lorg/telegram/ui/Components/TopicsTabsView;->selectTopic(JZ)V

    return-void

    .line 38801
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->isFrozen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38802
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/AccountFrozenAlert;->show(I)V

    return-void

    .line 38805
    :cond_3
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_4

    .line 38806
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 38808
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 38809
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 38810
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatActivityDelegate(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-interface {v2, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;->openReplyMessage(I)V

    .line 38811
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    return-void

    .line 38812
    :cond_5
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v7, 0x3

    const/4 v8, 0x7

    if-eq v2, v7, :cond_c

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ne v2, v8, :cond_6

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchType(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-eq v2, v3, :cond_c

    :cond_6
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_8

    goto/16 :goto_3

    .line 38822
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9

    .line 38823
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgroupedMessagesMap(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v2, :cond_9

    .line 38825
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_a

    .line 38829
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38830
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38832
    :cond_a
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->canRepostMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_1
    move v13, v4

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 38833
    :goto_2
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v16, v0

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v3

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v6, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move/from16 v16, v13

    move-object/from16 v19, v4

    move-object v4, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v18

    invoke-direct/range {v0 .. v17}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLorg/telegram/messenger/MessageObject;)V

    move-object/from16 v14, v19

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 38903
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 38904
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    .line 38813
    :cond_c
    :goto_3
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v4, :cond_d

    iget v11, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    if-eqz v11, :cond_d

    .line 38814
    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v15, v2, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    move-object/from16 v16, v0

    invoke-static/range {v7 .. v16}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenDiscussionMessageChat(Lorg/telegram/ui/ChatActivity;JLorg/telegram/messenger/MessageObject;IJIILorg/telegram/messenger/MessageObject;)V

    return-void

    .line 38815
    :cond_d
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ne v2, v8, :cond_e

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsearchType(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 38816
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenMessageInOriginalDialog(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 38818
    :cond_e
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mopenOriginalReplyChat(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public didPressSponsoredClose(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 39034
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputselectedObject(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 39035
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mhideAds(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public didPressSponsoredInfo(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 8

    .line 39051
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateMenu(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZZ)Z

    return-void
.end method

.method public didPressSummarize(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 5

    .line 39040
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    .line 39041
    iget-object v0, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->summarizedOpen:Z

    .line 39043
    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    .line 39044
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/MessagesStorage;->updateMessageCustomParams(JLorg/telegram/tgnet/TLRPC$Message;)V

    .line 39045
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/TranslateController;->checkTranslation(Lorg/telegram/messenger/MessageObject;Z)V

    .line 39046
    invoke-virtual {p0, p1, v2, v2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;ZZ)V

    return-void
.end method

.method public didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    .line 38949
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 38950
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 38953
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method

.method public didPressToDoButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$TodoItem;Z)Z
    .locals 10

    .line 40021
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 40022
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromPeer()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    .line 40023
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$raw;->passcode_lock_close:I

    sget v3, Lorg/telegram/messenger/R$string;->TodoCompleteForbiddenForward:I

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 40024
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$19200(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-static {v4, p1, p2}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 40025
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return v1

    .line 40027
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->canCompleteTodo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40028
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromPeer()Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    .line 40029
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$raw;->passcode_lock_close:I

    sget v3, Lorg/telegram/messenger/R$string;->TodoCompleteForbidden:I

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 40030
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$19300(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-static {v4, p1, p2}, Lorg/telegram/messenger/DialogObject;->getName(IJ)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 40031
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return v1

    .line 40033
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40034
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->star_premium_2:I

    sget p3, Lorg/telegram/messenger/R$string;->TodoPremiumRequired:I

    .line 40035
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-static {p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->premiumText(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 40038
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return v1

    .line 40041
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/ChatObject;->getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J

    move-result-wide v4

    .line 40042
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/4 v9, 0x0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->toggleTodo(JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TodoItem;ZLjava/lang/Runnable;)I

    return v2
.end method

.method public didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V
    .locals 2

    .line 40073
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1, p1}, Lorg/telegram/ui/ChatActivity;->didPressMessageUrl(Landroid/text/style/CharacterStyle;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FFZ)V
    .locals 1

    .line 39133
    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p5}, Lorg/telegram/ui/ChatActivity;->access$18200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p5

    const/4 v0, 0x1

    if-nez p5, :cond_4

    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p5}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 39137
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p2, 0xa

    .line 39138
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void

    .line 39141
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void

    .line 39134
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1, v0, p3, p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mprocessRowSelect(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void
.end method

.method public didPressUserStatus(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_a

    .line 39059
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39060
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/nft/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 39063
    :cond_1
    iget-boolean p4, p2, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_c

    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    invoke-static {p4}, Lorg/telegram/messenger/DialogObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-nez p4, :cond_2

    goto/16 :goto_6

    .line 39076
    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p4, v3, v4, p2, v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x2

    .line 39077
    new-array v3, v3, [I

    .line 39078
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 39079
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNameStatusX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromX:F

    .line 39080
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getNameStatusY()I

    move-result v3

    int-to-float v3, v3

    iput v3, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromY:F

    .line 39081
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    .line 39082
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iput v3, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromX1:F

    .line 39083
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromY1:F

    .line 39084
    iput-object p1, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromView:Landroid/view/View;

    .line 39085
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result p2

    const/4 v3, 0x7

    if-ge p2, v3, :cond_3

    .line 39087
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p2, v4, p2

    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    goto :goto_1

    .line 39089
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v4, :cond_4

    .line 39090
    invoke-virtual {v4, p2}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_5

    .line 39091
    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    iput-object v2, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    .line 39093
    :goto_1
    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->currentNameStatusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_b

    .line 39094
    iget p1, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    const p2, 0x3f733333    # 0.95f

    mul-float/2addr p1, p2

    iput p1, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->startEnterFromScale:F

    if-eqz p3, :cond_b

    .line 39096
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 39100
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {p1, p2, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v9

    .line 39101
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 p2, 0x5a

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 39102
    const-string/jumbo p2, "video/webm"

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v2, 0x200

    const-string v5, "160_160"

    if-eqz p2, :cond_7

    .line 39103
    invoke-static {p3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    .line 39104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "g"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v9, :cond_6

    .line 39106
    invoke-virtual {v9, v2, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_6
    :goto_2
    move-object v6, v5

    move-object v5, p2

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    .line 39109
    invoke-static {p3, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 39110
    invoke-virtual {v9, v2, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 39112
    :cond_8
    invoke-static {p3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p2

    goto :goto_2

    .line 39115
    :goto_3
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 39116
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {v4, p2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 39117
    invoke-static {p1, p3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    const-string v8, "140_140"

    move-object v10, p3

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 39118
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 39119
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->accentColor:Ljava/lang/Integer;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_4

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    :goto_4
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 39120
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_5

    .line 39122
    :cond_a
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    iput-object p1, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->statusStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 39124
    :goto_5
    iput-object v4, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->overrideTitleIcon:Landroid/view/View;

    .line 39125
    iput-boolean v0, p4, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->isEmojiStatus:Z

    .line 39128
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 39064
    :cond_c
    :goto_6
    sget-object p1, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/badges/BadgesController;->getBadge(Lorg/telegram/tgnet/TLObject;)Lcom/exteragram/messenger/api/dto/BadgeDTO;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 39066
    invoke-virtual {p1, p2}, Lcom/exteragram/messenger/badges/BadgesController;->isDeveloper(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    .line 39067
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p4

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 39068
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {p3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 39069
    invoke-virtual {p3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p3}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/exteragram/messenger/utils/text/LocaleUtils;->formatWithUsernames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_8

    :cond_d
    if-eqz p1, :cond_e

    sget p3, Lorg/telegram/messenger/R$string;->Developer:I

    goto :goto_7

    :cond_e
    sget p3, Lorg/telegram/messenger/R$string;->Supporter:I

    :goto_7
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_8
    if-eqz p1, :cond_f

    goto :goto_9

    .line 39070
    :cond_f
    sget p1, Lorg/telegram/messenger/R$string;->FragmentUsernameOpen:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda18;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    .line 39067
    invoke-virtual {p4, v3, p2, v2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 39072
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_10
    :goto_a
    return-void
.end method

.method public didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 2

    .line 40556
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomChannelButtonsLayout(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/layouts/ChatActivityChannelButtonsLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetbottomOverlay(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 40559
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 40560
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 40561
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_2
    :goto_0
    return-void
.end method

.method public didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell;J)V
    .locals 2

    .line 40547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40548
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40549
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p2, v0, p3, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40550
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V
    .locals 11

    if-gez p3, :cond_1

    .line 39978
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40015
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p3

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lorg/telegram/messenger/SendMessagesHelper;->sendVote(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/lang/Runnable;)I

    return-void

    .line 39979
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 39982
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 39983
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/Components/HintView;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5, v4}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpollHintView(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/HintView;)V

    .line 39984
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 39985
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39986
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatInputViewsContainer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/chat/ChatInputViewsContainer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :goto_1
    return-void

    .line 39990
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    const/high16 v9, 0x41980000    # 19.0f

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41980000    # 19.0f

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39992
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    if-gez p3, :cond_8

    .line 39993
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtons()Ljava/util/ArrayList;

    move-result-object p2

    .line 39995
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_6

    .line 39996
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 39997
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v5

    iget v6, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->y:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v6, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    sub-float/2addr v5, v7

    .line 39998
    iget v7, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->x:I

    const v8, 0x4154cccd    # 13.3f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpollHintX(Lorg/telegram/ui/ChatActivity;I)V

    .line 39999
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v4, v4, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->y:I

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v4, v7

    add-int v4, v4, p5

    invoke-static {v6, v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpollHintY(Lorg/telegram/ui/ChatActivity;I)V

    cmpl-float v4, v5, v1

    if-lez v4, :cond_5

    .line 40002
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintX(Lorg/telegram/ui/ChatActivity;)I

    move-result p2

    .line 40003
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintY(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    move v4, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_2

    :cond_6
    move p2, p4

    move/from16 v0, p5

    :goto_3
    cmpl-float v1, v4, v1

    if-eqz v1, :cond_7

    .line 40008
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p2

    float-to-int p3, v4

    invoke-virtual {p2, v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 40009
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputpollHintCell(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void

    :cond_7
    move v3, p2

    move v4, v0

    goto :goto_4

    :cond_8
    move v3, p4

    move/from16 v4, p5

    .line 40013
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpollHintView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    return-void
.end method

.method public didPressWebPage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)V
    .locals 10

    if-nez p3, :cond_0

    goto :goto_0

    .line 40266
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p2, 0x1

    if-nez p4, :cond_2

    const/4 v0, 0x0

    .line 40270
    invoke-static {p3, v0}, Lorg/telegram/messenger/browser/Browser;->isTelegraphUrl(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move p4, p2

    .line 40273
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 40274
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 40276
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$5;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$5;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    goto :goto_2

    :cond_5
    :goto_1
    move-object v3, v2

    :goto_2
    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    if-nez p4, :cond_6

    .line 40292
    invoke-static {v1, v2}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;[Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 40293
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    xor-int/lit8 v7, p4, 0x1

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v8

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v9, p1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p3

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZZZLorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 40295
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogCurrent(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZZLorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public didQuickShareEnd(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 0

    .line 38734
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 38738
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object p2

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->sendMessageFromQuickShare(Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->close(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public didQuickShareMove(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 1

    .line 38727
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38728
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->onTouchMoveEvent(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V

    :cond_0
    return-void
.end method

.method public didQuickShareStart(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 2

    .line 38713
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 38717
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object p2

    if-nez p2, :cond_1

    .line 38718
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;)V

    .line 38719
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object p2

    const/16 v0, 0x30

    const/4 v1, -0x1

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38722
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetquickShareSelectorOverlay(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/quickforward/QuickShareSelectorOverlayLayout;->open(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didStartVideoStream(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 40572
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40573
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msendSecretMessageRead(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public doNotShowLoadingReply(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 41396
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    const-wide/32 v2, 0x4bc5fe8d

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatMode(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38658
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;ZZ)V

    return-void
.end method

.method public forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 38667
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;ZZZ)V

    return-void
.end method

.method public forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;ZZZ)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    .line 38672
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 38674
    iput-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 38677
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->hasPendingScrollPosition()Z

    move-result v2

    if-nez v2, :cond_6

    .line 38678
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_6

    .line 38679
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 38680
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_2

    .line 38682
    :cond_2
    instance-of v5, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_4

    .line 38683
    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 38687
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v1

    goto :goto_3

    .line 38690
    :cond_4
    instance-of v5, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v5, :cond_5

    .line 38692
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mgetScrollingOffsetForView(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v1

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    const/4 v4, -0x1

    move v1, v3

    :goto_3
    if-eqz p2, :cond_8

    if-ltz v4, :cond_8

    .line 38698
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    if-nez p2, :cond_8

    if-eqz p4, :cond_7

    .line 38700
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatListView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatListRecyclerView;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v1, v1, Lorg/telegram/ui/ChatActivity;->chatListViewPaddingTop:F

    float-to-int v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p4, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    goto :goto_4

    .line 38702
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 38706
    :cond_8
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputignoreItemAnimation(Lorg/telegram/ui/ChatActivity;Z)V

    .line 38707
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateMessageAnimatedInternal(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)V

    .line 38708
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputignoreItemAnimation(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public forceUpdateNoAnimation(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38663
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->forceUpdate(Lorg/telegram/ui/Cells/ChatMessageCell;ZZZ)V

    return-void
.end method

.method public getAdminRank(J)Ljava/lang/String;
    .locals 4

    .line 41228
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isBotForum(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 41232
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41233
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/telegram/messenger/MessagesController;->getAdminRank(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 41238
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetforumTopic(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_3

    .line 41239
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->TopicCreator:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getPinchToZoomHelper()Lorg/telegram/ui/PinchToZoomHelper;
    .locals 1

    .line 41358
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetpinchToZoomHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    return-object v0
.end method

.method public getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;
    .locals 1

    .line 40539
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageType(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 40540
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogBotButtonUrl(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProgressLoadingLink(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/style/CharacterStyle;
    .locals 1

    .line 40531
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageType(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 40532
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogLinkSpan(Lorg/telegram/ui/ChatActivity;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextSelectionHelper()Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
    .locals 1

    .line 41343
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettextSelectionHelper(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public hasSelectedMessages()Z
    .locals 4

    .line 41348
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetselectedMessagesIds(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$SparseArrayWithTouch;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-lez v0, :cond_0

    return v3

    :cond_0
    return v1
.end method

.method public invalidateBlur()V
    .locals 1

    .line 41372
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->invalidateBlur()V

    return-void
.end method

.method public isAdmin(J)Z
    .locals 3

    .line 41212
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41213
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->isAdmin(JJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLandscape()Z
    .locals 2

    .line 41367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOwner(J)Z
    .locals 3

    .line 41220
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41221
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->isOwner(JJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell;I)Z
    .locals 1

    .line 40526
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetprogressDialogAtMessageType(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isReplyOrSelf()Z
    .locals 1

    .line 38496
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

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

.method public keyboardIsOpened()Z
    .locals 2

    .line 41363
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;->getKeyboardHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatEmojiViewPadding(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needOpenWebView(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 40255
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetphotoViewerProvider(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v9

    move-object v1, p1

    move-object v6, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 40257
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public needPlayMessage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 11

    .line 38910
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoiceOnce()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundOnce()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v6, p2

    goto :goto_1

    .line 38932
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move-object v6, p2

    goto :goto_0

    .line 38936
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 38937
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getMessages()Ljava/util/ArrayList;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmergeDialogId(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFiltered:Z

    xor-int/lit8 v9, p1, 0x1

    const/4 v10, 0x0

    move-object v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z

    move-result p1

    return p1

    :cond_4
    return v3

    .line 38933
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v6, p3}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p1

    .line 38934
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    if-eqz p1, :cond_5

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, v6, v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcreateVoiceMessagesPlaylist(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;

    move-result-object v1

    :cond_5
    invoke-virtual {p2, v1, v3}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    return p1

    .line 38911
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsecretVoicePlayer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/SecretVoicePlayer;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsecretVoicePlayer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/SecretVoicePlayer;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/SecretVoicePlayer;->isShown()Z

    move-result p2

    if-eqz p2, :cond_6

    return v3

    .line 38913
    :cond_6
    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    const/4 p3, 0x3

    .line 38915
    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 38917
    invoke-virtual {p2, p3, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 38918
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    if-nez p2, :cond_7

    .line 38919
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->tooltip_sound:I

    sget v0, Lorg/telegram/messenger/R$string;->VoiceOnceTurnOnSound:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createImageBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 38924
    :catch_0
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/ui/SecretVoicePlayer;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/telegram/ui/SecretVoicePlayer;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputsecretVoicePlayer(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/SecretVoicePlayer;)V

    .line 38925
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsecretVoicePlayer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/SecretVoicePlayer;

    move-result-object p2

    .line 38927
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3, v6, v2}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msendSecretMessageRead(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    move-result-object p3

    goto :goto_2

    :cond_8
    move-object p3, v1

    .line 38928
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$msendSecretMediaDelete(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Ljava/lang/Runnable;

    move-result-object v1

    .line 38925
    :cond_9
    invoke-virtual {p2, p1, p3, v1}, Lorg/telegram/ui/SecretVoicePlayer;->setCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 38930
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetsecretVoicePlayer(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/SecretVoicePlayer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v3
.end method

.method public needReloadPolls()V
    .locals 1

    .line 40579
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    return-void
.end method

.method public needShowPremiumBulletin(I)V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-nez p1, :cond_1

    .line 39572
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mcheckTopUndoView(Lorg/telegram/ui/ChatActivity;)V

    .line 39573
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 39576
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v2

    new-instance v7, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda33;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    const-wide/16 v3, 0x0

    const/16 v5, 0x54

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 39581
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettopUndoView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 39584
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->transcribeAudioTrialCooldownUntil:I

    int-to-long v5, p1

    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p1

    .line 39585
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->transcribeAudioTrialCooldownUntil:I

    if-lez v5, :cond_2

    .line 39586
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$18900(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranscribeButton;->getTranscribeTrialCount(I)I

    move-result v5

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const-string p1, "TranscriptionTrialLeftUntil"

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_0

    .line 39587
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$19000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranscribeButton;->getTranscribeTrialCount(I)I

    move-result p1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "TranscriptionTrialLeft"

    invoke-static {v5, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 39588
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$raw;->transcribe:I

    invoke-virtual {v3, v5, p1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 39590
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    if-eq p1, v1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    :catch_0
    :cond_4
    :goto_1
    return-void

    .line 39593
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->transcribeAudioTrialCooldownUntil:I

    int-to-long v5, v0

    invoke-static {v5, v6, v4}, Lorg/telegram/messenger/LocaleController;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    .line 39594
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$raw;->transcribe:I

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 39597
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->transcribeAudioTrialWeeklyNumber:I

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "TranscriptionTrialEnd"

    invoke-static {v10, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 39596
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const-string v8, " "

    .line 39598
    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    if-ne p1, v1, :cond_6

    .line 39600
    sget p1, Lorg/telegram/messenger/R$string;->TranscriptionTrialEndBuy:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    goto :goto_3

    .line 39604
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->transcribeAudioTrialCooldownUntil:I

    if-gtz p1, :cond_7

    const-string p1, ""

    goto :goto_3

    .line 39605
    :cond_7
    sget p1, Lorg/telegram/messenger/R$string;->TranscriptionTrialEndWaitOrBuy:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 39598
    :goto_3
    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 v0, 0x1b58

    .line 39594
    invoke-virtual {v5, v6, p1, v2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;II)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 39612
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 39613
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void
.end method

.method public onAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1

    .line 41382
    sget p2, Lorg/telegram/messenger/R$id;->acc_action_small_button:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$id;->acc_action_msg_options:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 41383
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$21300(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    if-eqz v0, :cond_3

    .line 41384
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 41385
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    :cond_2
    return p2

    .line 41389
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->canPerformActions()Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method

.method public onDiceFinished()V
    .locals 1

    .line 41353
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->startFireworks()V

    return-void
.end method

.method public setShouldNotRepeatSticker(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 41338
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetalreadyPlayedStickers(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldDrawAvatarOnlineStatus(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell;Z)Z
    .locals 5

    .line 38546
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38548
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38549
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    .line 38551
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return v1

    .line 38556
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgethideCommentLoading(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcommentLoadingMessageId(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 38558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcommentLoadingStartedAt(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, p1, v3

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return p1
.end method

.method public shouldRepeatSticker(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 41333
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetalreadyPlayedStickers(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public videoTimerReached()V
    .locals 1

    .line 38944
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mshowNoSoundHint(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
