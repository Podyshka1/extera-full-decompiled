.class public Lorg/telegram/ui/ChatEditTypeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;
    }
.end annotation


# instance fields
.field private activatingEditableLink:Z

.field private adminedChannelCells:Ljava/util/ArrayList;

.field private adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private adminnedChannelsLayout:Landroid/widget/LinearLayout;

.field private canCreatePublic:Z

.field private chatId:J

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private deactivatingLinks:Z

.field private doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

.field private doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private editableUsernameCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

.field private editableUsernameUpdated:Ljava/lang/Boolean;

.field private editableUsernameWasActive:Ljava/lang/Boolean;

.field private editableUsernames:Ljava/util/ArrayList;

.field private enableDoneLoading:Ljava/lang/Runnable;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreScroll:Z

.field private ignoreTextChanges:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field private inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

.field private isChannel:Z

.field private isForcePublic:Z

.field private isPrivate:Z

.field private isSaveRestricted:Z

.field private joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linearLayoutTypeContainer:Landroid/widget/LinearLayout;

.field private linkContainer:Landroid/widget/LinearLayout;

.field private loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

.field private loadingAdminedChannels:Z

.field private loadingInvite:Z

.field private loadingUsernames:Ljava/util/ArrayList;

.field private manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

.field private permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

.field private privateContainer:Landroid/widget/LinearLayout;

.field private publicContainer:Landroid/widget/LinearLayout;

.field private radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

.field private saveContainer:Landroid/widget/LinearLayout;

.field private saveHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private textCell2:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private usernames:Ljava/util/ArrayList;

.field private usernamesListView:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

.field usersMap:Ljava/util/HashMap;


# direct methods
.method public static synthetic $r8$lambda$-_zuWuYiRCNN5YwJg90vedFPYeA(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$generateLink$26(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$0lvAWdfN62Cq2m3MWt2Qe-hwFuY(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$checkUserName$25(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3eXDRwatXm1BKhbOZAjSnK_sRow(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$checkUserName$23(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    return-void
.end method

.method public static synthetic $r8$lambda$42mB6cLXd8tH5gGM1lINLFlltmA(Lorg/telegram/ui/ChatEditTypeActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$tryUpdateJoinSettings$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$6NjhqfYrZD5Uq-8oKwKvQBmnU2M(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$updateDoneProgress$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7BiWVIVJfjJwMGmi0tqs2kaDvMs(Lorg/telegram/ui/ChatEditTypeActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$trySetRestrict$10(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$A9f7sbczlD7VZb-0Fo8YNWEF7wQ(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$new$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$AzXWM1aqWpzrtZ5rUdgBcJjbbD8(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cwkv0Sdt7Csl7dkWQ1kFf7cGVpE(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$loadAdminedChannels$19(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FuoxIRG-FiFMPZ7zNxzciWBZZTU(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$loadAdminedChannels$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GdCPtZhs6PgBOXW2eMu6yHfKk1A(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$trySetUsername$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$GkIT0UH4iRXtyxJ70w2BfRlqf88(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$onFragmentCreate$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8sn_3O19jbBjJEWqV_b4EwzRqI(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$onFragmentCreate$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lam26LIOpU_qAQiQXdDyOLNe4Vw(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$checkUserName$24(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzKZULcG2n2bgWgunopZulX4hwg(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$loadAdminedChannels$21(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SH8s-5zdJFBuZWn_TRGAqaX7ltE(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$loadAdminedChannels$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UDYDdVwT8XNCEZtiPj6AQc7gvP0(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$loadAdminedChannels$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAa-Z4m3nixCcVkJm2hHix-AtUM(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$trySetUsername$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z6xEXcNA2TfNXm5Eg2-ogI4027g(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$tryDeactivateAllLinks$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$afTvnq2sfiCa-eHP-zIn-TnPi1s(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bS9ONNG384sZQYs2QsqLTONpkVU(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$getThemeDescriptions$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$dcHmER48tTv1G-yeKS2WVeD0PMc(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$loadAdminedChannels$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$i4HlN0RXhDBZt6uAgQIjzRv3_Bc(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-gjA4IxFx3NSgE4UewlhSr0WwI(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWFIkEYJajK_3fgXvLFu8_Nkn2Q(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$tryDeactivateAllLinks$14(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rjW3xwvxxn5rD6bo525LD16VAdc(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->processDone()V

    return-void
.end method

.method public static synthetic $r8$lambda$seh81AbmKw8csda9JhXV4Vnlm2Q(Lorg/telegram/ui/ChatEditTypeActivity;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$generateLink$27(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7ii6MdGJmgGCOYSHZw0dLmo-yE(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$showPremiumIncreaseLimitDialog$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$zqKvEiNyJxtfuq8kPQKwkJnWyAo(Lorg/telegram/ui/ChatEditTypeActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatEditTypeActivity;->lambda$trySetUsername$11(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchatId(Lorg/telegram/ui/ChatEditTypeActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcheckTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdoneButtonDrawable(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditableUsernameCell(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernameCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditableUsernameWasActive(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernameWasActive:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditableUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreScroll(Lorg/telegram/ui/ChatEditTypeActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->ignoreScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreTextChanges(Lorg/telegram/ui/ChatEditTypeActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->ignoreTextChanges:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinfo(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinvite(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinviteLinkBottomSheet(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Components/InviteLinkBottomSheet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinearLayout(Lorg/telegram/ui/ChatEditTypeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkContainer(Lorg/telegram/ui/ChatEditTypeActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingUsernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusernameTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputeditableUsernameCell(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernameCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeditableUsernameUpdated(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernameUpdated:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeditableUsernameWasActive(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernameWasActive:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreScroll(Lorg/telegram/ui/ChatEditTypeActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->ignoreScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinviteLinkBottomSheet(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDoneButton(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->checkDoneButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUserName(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->checkUserName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgenerateLink(Lorg/telegram/ui/ChatEditTypeActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->generateLink(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessDone(Lorg/telegram/ui/ChatEditTypeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->processDone()V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1

    .line 162
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernames:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingUsernames:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usersMap:Ljava/util/HashMap;

    .line 628
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->enableDoneLoading:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1190
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->deactivatingLinks:Z

    .line 1227
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->activatingEditableLink:Z

    .line 163
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    .line 164
    iput-boolean p3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    return-void
.end method

.method private checkDoneButton()V
    .locals 2

    .line 1384
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->hasActiveLink()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1388
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    return-void

    .line 1385
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1386
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    return-void
.end method

.method private checkUserName(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1408
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1410
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1413
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1414
    iput-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 1415
    iput-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 1416
    iget v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkReqId:I

    if-eqz v1, :cond_1

    .line 1417
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkReqId:I

    invoke-virtual {v1, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 1420
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastNameAvailable:Z

    if-eqz p1, :cond_a

    .line 1422
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    move v1, v0

    .line 1427
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1428
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    const/16 v5, 0x30

    if-nez v1, :cond_4

    if-lt v3, v5, :cond_4

    if-gt v3, v4, :cond_4

    .line 1430
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz p1, :cond_3

    .line 1431
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalidStartNumber:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1433
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalidStartNumberMega:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    return v0

    :cond_4
    if-lt v3, v5, :cond_5

    if-le v3, v4, :cond_8

    :cond_5
    const/16 v4, 0x61

    if-lt v3, v4, :cond_6

    const/16 v4, 0x7a

    if-le v3, v4, :cond_8

    :cond_6
    const/16 v4, 0x41

    if-lt v3, v4, :cond_7

    const/16 v4, 0x5a

    if-le v3, v4, :cond_8

    :cond_7
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_8

    .line 1439
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalid:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1423
    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalid:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1424
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    return v0

    :cond_a
    if-eqz p1, :cond_d

    .line 1445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_b

    goto :goto_4

    .line 1454
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x20

    if-le v1, v3, :cond_c

    .line 1455
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalidLong:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1456
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    return v0

    .line 1460
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkChecking:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    .line 1462
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastCheckName:Ljava/lang/String;

    .line 1463
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    .line 1497
    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v2

    .line 1446
    :cond_d
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz p1, :cond_e

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalidShort:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1449
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/messenger/R$string;->LinkInvalidShortMega:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    return v0
.end method

.method private generateLink(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 1502
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingInvite:Z

    .line 1503
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    .line 1504
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    .line 1505
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1506
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Z)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 1529
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private synthetic lambda$checkUserName$23(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V
    .locals 2

    const/4 v0, 0x0

    .line 1468
    iput v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkReqId:I

    .line 1469
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastCheckName:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    .line 1470
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p3, :cond_0

    .line 1471
    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p3, Lorg/telegram/messenger/R$string;->LinkAvailable:I

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "LinkAvailable"

    invoke-static {p1, p3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    .line 1473
    iput-boolean p4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastNameAvailable:Z

    return-void

    :cond_0
    const/4 p1, 0x4

    if-eqz p2, :cond_1

    .line 1475
    const-string p3, "USERNAME_INVALID"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p1, :cond_1

    .line 1476
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShort:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 1478
    const-string p3, "USERNAME_PURCHASE_AVAILABLE"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1479
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShortPurchase:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1482
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInUsePurchase:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 1485
    const-string p1, "CHANNELS_ADMIN_PUBLIC_TOO_MUCH"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1486
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    .line 1487
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->showPremiumIncreaseLimitDialog()V

    goto :goto_1

    .line 1489
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/messenger/R$string;->LinkInUse:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColorByKey(I)V

    .line 1492
    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastNameAvailable:Z

    :cond_5
    return-void
.end method

.method private synthetic lambda$checkUserName$24(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1467
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda24;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUserName$25(Ljava/lang/String;)V
    .locals 4

    .line 1464
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 1465
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 1466
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1467
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkReqId:I

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    .line 346
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    .line 350
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 0

    .line 361
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    if-nez p1, :cond_1

    .line 365
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->showPremiumIncreaseLimitDialog()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 368
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    .line 369
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 6

    .line 579
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 581
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 1

    .line 603
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    .line 604
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$generateLink$26(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1508
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1509
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 1510
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    :cond_0
    if-eqz p3, :cond_2

    .line 1513
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1516
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1517
    sget p2, Lorg/telegram/messenger/R$string;->RevokeAlertNewLink:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1518
    sget p2, Lorg/telegram/messenger/R$string;->RevokeLink:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1519
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1520
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    const/4 p1, 0x0

    .line 1523
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingInvite:Z

    .line 1524
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    if-eqz p1, :cond_4

    .line 1525
    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz p2, :cond_3

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 1526
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$generateLink$27(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1506
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$28()V
    .locals 4

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1537
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1539
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1540
    instance-of v3, v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    if-eqz v3, :cond_0

    .line 1541
    check-cast v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/AdminedChannelCell;->update()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1546
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    if-eqz v0, :cond_2

    .line 1548
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColors()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$17()V
    .locals 1

    const/4 v0, 0x1

    .line 1299
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->checkUserName(Ljava/lang/String;)Z

    .line 1303
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1297
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    .line 1298
    new-instance p1, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$19(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 1293
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;-><init>()V

    .line 1294
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1295
    const-string p1, ""

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_updateUsername;->username:Ljava/lang/String;

    .line 1296
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    const/16 v0, 0x40

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$20(Landroid/view/View;)V
    .locals 8

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    .line 1283
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AdminedChannelCell;->getCurrentChannel()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    .line 1284
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1286
    iget-boolean v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "/"

    if-eqz v1, :cond_0

    .line 1287
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinkAlertChannel:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    aput-object v6, v4, v2

    const-string v2, "RevokeLinkAlertChannel"

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1289
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLinkAlert:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    aput-object v6, v4, v2

    const-string v2, "RevokeLinkAlert"

    invoke-static {v2, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1291
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1292
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1308
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$21(Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 1269
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedChannels:Z

    if-eqz p1, :cond_4

    .line 1271
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move v1, v0

    .line 1274
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1275
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1278
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    move v1, v0

    .line 1280
    :goto_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1281
    new-instance v2, Lorg/telegram/ui/Cells/AdminedChannelCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-direct {v2, v3, v4, v0, v0}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;ZI)V

    .line 1310
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1311
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedChannelCells:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    const/16 v5, 0x48

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1314
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadAdminedChannels$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1268
    new-instance p2, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 1

    const/4 v0, 0x1

    .line 628
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->updateDoneProgress(Z)V

    return-void
.end method

.method private synthetic lambda$onFragmentCreate$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "CHANNELS_ADMIN_PUBLIC_TOO_MUCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    if-nez p1, :cond_2

    .line 193
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->loadAdminedChannels()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 191
    new-instance p1, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showPremiumIncreaseLimitDialog$8()V
    .locals 1

    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    .line 657
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    return-void
.end method

.method private synthetic lambda$tryDeactivateAllLinks$14(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 1210
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    .line 1211
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1212
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v1, :cond_0

    .line 1213
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-nez v2, :cond_0

    .line 1214
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1218
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->deactivatingLinks:Z

    .line 1219
    new-instance p1, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryDeactivateAllLinks$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1209
    new-instance p2, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$trySetRestrict$10(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1133
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    .line 1134
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    neg-long v0, v0

    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->toggleChatNoForwards(JZ)V

    .line 1136
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->processDone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$trySetUsername$11(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1167
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    .line 1168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1169
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->processDone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$trySetUsername$12()V
    .locals 3

    .line 1175
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1176
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$trySetUsername$13()V
    .locals 1

    const/4 v0, 0x0

    .line 1178
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatEditTypeActivity;->updateDoneProgress(Z)V

    return-void
.end method

.method private synthetic lambda$tryUpdateJoinSettings$9(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 712
    iput-wide p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    .line 713
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 714
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->processDone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateDoneProgress$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private loadAdminedChannels()V
    .locals 3

    .line 1262
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedChannels:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1265
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedChannels:Z

    .line 1266
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    .line 1267
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminedPublicChannels;-><init>()V

    .line 1268
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private processDone()V
    .locals 3

    .line 695
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->enableDoneLoading:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 696
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->trySetUsername()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->trySetRestrict()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->tryUpdateJoinSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private showPremiumIncreaseLimitDialog()V
    .locals 7

    .line 650
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v6, 0x0

    const/4 v4, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 654
    iget-boolean v0, v2, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    iput-boolean v0, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->parentIsChannel:Z

    .line 655
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->onSuccessRunnable:Ljava/lang/Runnable;

    .line 659
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private tryDeactivateAllLinks()Z
    .locals 6

    .line 1192
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1195
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->deactivatingLinks:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 1198
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->deactivatingLinks:Z

    move v0, v2

    move v3, v0

    .line 1200
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1201
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v4, :cond_2

    .line 1202
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v5, :cond_2

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-nez v4, :cond_2

    move v3, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 1207
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deactivateAllUsernames;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_deactivateAllUsernames;-><init>()V

    .line 1208
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_deactivateAllUsernames;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1209
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v2, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    .line 1222
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->deactivatingLinks:Z

    :goto_1
    xor-int/lit8 v0, v3, 0x1

    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method private trySetRestrict()Z
    .locals 10

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    iget-boolean v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 1129
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    invoke-direct {p0, v3}, Lorg/telegram/ui/ChatEditTypeActivity;->updateDoneProgress(Z)V

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    new-instance v9, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda20;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    move-object v8, p0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v8, p0

    .line 1141
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v8, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    neg-long v1, v1

    iget-object v4, v8, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v8, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    iput-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    invoke-virtual {v0, v1, v2, v5}, Lorg/telegram/messenger/MessagesController;->toggleChatNoForwards(JZ)V

    goto :goto_0

    :cond_1
    move-object v8, p0

    :goto_0
    return v3
.end method

.method private trySetUsername()Z
    .locals 11

    .line 1148
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1151
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;

    move-result-object v0

    .line 1152
    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1153
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->lastNameAvailable:Z

    if-nez v3, :cond_3

    .line 1154
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 1156
    invoke-direct {p0, v1}, Lorg/telegram/ui/ChatEditTypeActivity;->updateDoneProgress(Z)V

    return v1

    .line 1161
    :cond_3
    const-string v3, ""

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 1162
    :goto_0
    iget-boolean v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v4, :cond_5

    :goto_1
    move-object v8, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1163
    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1165
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    new-instance v7, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    move-object v5, v6

    return v1

    :cond_6
    move-object v5, p0

    .line 1174
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, v5, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    new-instance v9, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    new-instance v10, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda19;

    invoke-direct {v10, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/MessagesController;->updateChannelUserName(Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return v1

    .line 1184
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->tryDeactivateAllLinks()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method private tryUpdateJoinSettings()Z
    .locals 14

    .line 702
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    if-nez v0, :cond_1

    :cond_0
    move-object v7, p0

    goto :goto_2

    .line 705
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 708
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-boolean v3, v0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    if-nez v3, :cond_4

    iget-boolean v0, v0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v7, p0

    goto :goto_1

    .line 710
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    new-instance v8, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda16;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    move-object v7, p0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return v2

    .line 719
    :goto_1
    iget-object v0, v7, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    iget-object v2, v7, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    if-eq v0, v2, :cond_5

    .line 720
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v7, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    iget-object v0, v7, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v7, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-boolean v11, v2, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    iput-boolean v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController;->toggleChatJoinToSend(JZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 722
    :cond_5
    iget-object v0, v7, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    iget-object v2, v7, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    if-eq v0, v2, :cond_6

    .line 723
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-wide v9, v7, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    iget-object v0, v7, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v7, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-boolean v11, v2, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    iput-boolean v11, v0, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lorg/telegram/messenger/MessagesController;->toggleChatJoinRequest(JZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return v1
.end method

.method private updateDoneProgress(Z)V
    .locals 6

    if-nez p1, :cond_0

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->enableDoneLoading:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 638
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v3, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    .line 639
    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CrossfadeDrawable;->getProgress()F

    move-result v3

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawableAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void
.end method

.method private updatePrivatePublic()V
    .locals 9

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-nez v0, :cond_0

    return-void

    .line 1323
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->canCreatePublic:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/messenger/R$string;->ChangePublicLimitReached:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1326
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 1327
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedChannels:Z

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 1335
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 1339
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1340
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    .line 1341
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    if-eqz v0, :cond_3

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1344
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz v0, :cond_6

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_4

    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivateLinkHelp:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->ChannelUsernameHelp:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_5

    sget v3, Lorg/telegram/messenger/R$string;->ChannelInviteLinkTitle:I

    :goto_3
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->ChannelLinkTitle:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1354
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivateLinkHelp:I

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->MegaUsernameHelp:I

    goto :goto_5

    :goto_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_8

    sget v3, Lorg/telegram/messenger/R$string;->ChannelInviteLinkTitle:I

    :goto_7
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->ChannelLinkTitle:I

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    :goto_9
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->privateContainer:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->saveContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_c
    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Components/LinkActionView;->loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V

    .line 1365
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->length()I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    .line 1367
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 1368
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_media_allowed:Z

    if-eqz v0, :cond_e

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lorg/telegram/messenger/R$string;->ManageLinksInfoHelpPaid:I

    goto :goto_f

    :cond_e
    sget v0, Lorg/telegram/messenger/R$string;->ManageLinksInfoHelp:I

    :goto_f
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    :goto_10
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Cells/RadioButtonCell;->setChecked(ZZ)V

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    if-eqz v0, :cond_11

    .line 1374
    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-nez v3, :cond_f

    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_11

    :cond_f
    move v3, v1

    :goto_11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_10

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_10

    goto :goto_12

    :cond_10
    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->showJoinToSend(Z)V

    .line 1377
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernamesListView:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    if-eqz v0, :cond_14

    .line 1378
    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :cond_13
    :goto_13
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1380
    :cond_14
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->checkDoneButton()V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 263
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 264
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 266
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditTypeActivity$1;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 280
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 281
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 282
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 283
    new-instance v4, Lorg/telegram/ui/Components/CrossfadeDrawable;

    new-instance v6, Lorg/telegram/ui/Components/CircularProgressDrawable;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(I)V

    invoke-direct {v4, v3, v6}, Lorg/telegram/ui/Components/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v1, Lorg/telegram/ui/ChatEditTypeActivity;->doneButtonDrawable:Lorg/telegram/ui/Components/CrossfadeDrawable;

    const/high16 v3, 0x42600000    # 56.0f

    .line 284
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v4, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->doneButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 286
    new-instance v0, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SectionsScrollView$SectionsLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    .line 287
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$2;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatEditTypeActivity$2;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 309
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 310
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/SectionsScrollView;

    .line 311
    invoke-virtual {v0, v8}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 312
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Lorg/telegram/ui/Components/SectionsScrollView;)V

    .line 315
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 317
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->TypeLocationGroup:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelSettingsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->GroupSettingsTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    .line 326
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 327
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v11, 0x17

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v12, 0x2e

    .line 330
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 331
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelTypeHeader:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 334
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/messenger/R$string;->GroupTypeHeader:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 338
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 339
    iget-boolean v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    const/4 v13, 0x0

    if-eqz v3, :cond_3

    .line 340
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPrivate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->ChannelPrivateInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v3, v4, v13, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 342
    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->MegaPrivate:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->MegaPrivateInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    invoke-virtual {v0, v3, v4, v13, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 344
    :goto_2
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v0, Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 354
    iget-boolean v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz v3, :cond_4

    .line 355
    sget v3, Lorg/telegram/messenger/R$string;->ChannelPublic:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->ChannelPublicInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    xor-int/2addr v5, v8

    invoke-virtual {v0, v3, v4, v13, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 357
    :cond_4
    sget v3, Lorg/telegram/messenger/R$string;->MegaPublic:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->MegaPublicInfo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    xor-int/2addr v5, v8

    invoke-virtual {v0, v3, v4, v13, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 359
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 373
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    const/16 v14, 0x8

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    .line 383
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 384
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 387
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 389
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    .line 390
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 391
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    const/high16 v19, 0x41b80000    # 23.0f

    const/16 v20, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x24

    const/high16 v17, 0x41b80000    # 23.0f

    const/high16 v18, 0x40e00000    # 7.0f

    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v8, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 396
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 397
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 398
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 399
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 400
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 401
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 403
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 404
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v6, 0x28000

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 405
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 406
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v14, 0x24

    invoke-static {v10, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$3;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity$3;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 421
    invoke-virtual {v0, v8, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 422
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 423
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 424
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 425
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 426
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v13, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 428
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 429
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v3, 0x28020

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 430
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 431
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/messenger/R$string;->ChannelUsernamePlaceholder:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 433
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 434
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 435
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->publicContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v9, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditTypeActivity$4;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 460
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->privateContainer:Landroid/widget/LinearLayout;

    .line 461
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 462
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->privateContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    new-instance v0, Lorg/telegram/ui/Components/LinkActionView;

    iget-wide v4, v1, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    const/4 v3, 0x0

    move v12, v6

    const/4 v6, 0x1

    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/LinkActionView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BottomSheet;JZZ)V

    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    .line 465
    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$5;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity$5;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkActionView;->setDelegate(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    .line 477
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0, v13, v15, v13}, Lorg/telegram/ui/Components/LinkActionView;->setUsers(ILjava/util/ArrayList;Z)V

    .line 478
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->privateContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 480
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$6;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/ChatEditTypeActivity$6;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 556
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 557
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 560
    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 561
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    .line 564
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    .line 567
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 568
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 571
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernamesListView:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernamesListView:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-boolean v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v3, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v14, v13

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v14, 0x8

    :goto_5
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 576
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    .line 577
    sget v3, Lorg/telegram/messenger/R$string;->ManageInviteLinks:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v0, v3, v5, v13}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 578
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 586
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    new-instance v0, Lorg/telegram/ui/Components/JoinToSendSettingsView;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/JoinToSendSettingsView;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    .line 589
    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_8

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_6

    :cond_8
    move v3, v13

    :goto_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->showJoinToSend(Z)V

    .line 590
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->joinContainer:Lorg/telegram/ui/Components/JoinToSendSettingsView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 592
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveContainer:Landroid/widget/LinearLayout;

    .line 593
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 594
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 596
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v3, 0x2e

    .line 597
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 598
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/messenger/R$string;->SavingContentTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 601
    sget v3, Lorg/telegram/messenger/R$string;->RestrictSavingContent:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    invoke-virtual {v0, v3, v5, v13}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 602
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v3, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveContainer:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 608
    iget-boolean v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 609
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$string;->RestrictSavingContentInfoChannel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 611
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/messenger/R$string;->RestrictSavingContentInfoGroup:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :goto_7
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveContainer:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    iget-object v0, v1, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v8}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;Z)Ljava/lang/String;

    move-result-object v0

    .line 617
    iget-boolean v2, v1, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    .line 618
    iput-boolean v8, v1, Lorg/telegram/ui/ChatEditTypeActivity;->ignoreTextChanges:Z

    .line 619
    iget-object v2, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v2, v1, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 621
    iput-boolean v13, v1, Lorg/telegram/ui/ChatEditTypeActivity;->ignoreTextChanges:Z

    .line 623
    :cond_a
    invoke-direct {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    .line 625
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 664
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 665
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 666
    iget-wide p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    .line 667
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 668
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 669
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity;->updatePrivatePublic()V

    return-void

    .line 671
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-ne p1, p2, :cond_2

    .line 672
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 673
    iget-wide v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    neg-long v0, v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 675
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 677
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 66

    move-object/from16 v0, p0

    .line 1534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    new-instance v8, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    .line 1552
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

    .line 1555
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v16, 0x0

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ChatEditTypeActivity;->sectionCell2:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v3, v2, v11

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move/from16 v20, v23

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v3, v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->infoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v4, v15, v11

    const-string v24, "textView"

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v16

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v33

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1564
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ChatEditTypeActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v16, 0x0

    move/from16 v20, v32

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ChatEditTypeActivity;->textCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v2, v10, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v3, v2, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v18

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move/from16 v22, v42

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->textCell2:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->textCell2:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v3, v15, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v16

    sget v51, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v20, v51

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v35, v2

    move/from16 v41, v51

    invoke-direct/range {v34 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayoutTypeContainer:Landroid/widget/LinearLayout;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v50, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    move-object/from16 v35, v2

    move/from16 v41, v50

    invoke-direct/range {v34 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->linkContainer:Landroid/widget/LinearLayout;

    sget v45, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v44, v2

    invoke-direct/range {v43 .. v50}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v43

    move/from16 v2, v50

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v52, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v56

    sget v65, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v54, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v53, v3

    move-object/from16 v55, v5

    move/from16 v60, v65

    invoke-direct/range {v52 .. v60}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v52

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    new-instance v57, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->headerCell2:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v6, v5, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v61

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v59, 0x0

    const/16 v62, 0x0

    move-object/from16 v58, v3

    move-object/from16 v60, v5

    invoke-direct/range {v57 .. v65}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v57

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance v57, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v6, v5, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v61

    move-object/from16 v58, v3

    move-object/from16 v60, v5

    invoke-direct/range {v57 .. v65}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v57

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object/from16 v35, v3

    move/from16 v41, v51

    invoke-direct/range {v34 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v34

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v20, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v26, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v25

    move/from16 v3, v32

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v47

    const/16 v50, 0x0

    const/16 v45, 0x0

    move-object/from16 v44, v5

    move-object/from16 v46, v6

    invoke-direct/range {v43 .. v51}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v43

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v7, v15, v11

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v7, v6, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/4 v15, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v38

    const/16 v41, 0x0

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v34

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v4, v15, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ChatEditTypeActivity;->checkTextView:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGreenText:I

    move-object/from16 v16, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v29

    const/16 v32, 0x0

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v25

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->typeInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v34

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v25

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v34

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v16

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1598
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v25

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->saveRestrictInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v5, v34

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChatEditTypeActivity;->adminedInfoCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v4, v6, v11

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v45, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v50, v2

    move-object/from16 v44, v4

    invoke-direct/range {v43 .. v50}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v43

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->loadingAdminedCell:Lorg/telegram/ui/Cells/LoadingCell;

    new-array v15, v10, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v2, v15, v11

    const-string v2, "progressBar"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v2

    move/from16 v32, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v15, v10, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/RadioButtonCell;

    aput-object v2, v15, v11

    const-string v3, "radioButton"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v2, v5, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v37

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    const/16 v38, 0x0

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v33

    move/from16 v5, v41

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v45, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v2, v6, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v47

    const/16 v50, 0x0

    move-object/from16 v44, v4

    move-object/from16 v46, v6

    invoke-direct/range {v43 .. v51}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v43

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell1:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v6, v10, [Ljava/lang/Class;

    aput-object v2, v6, v11

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v37

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v34, v4

    move-object/from16 v36, v6

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v33

    move/from16 v6, v41

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v26, v4

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v25

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v9, v10, [Ljava/lang/Class;

    aput-object v2, v9, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v4

    move-object/from16 v36, v9

    move/from16 v41, v20

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v33

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1611
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v40, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v9, v10, [Ljava/lang/Class;

    aput-object v2, v9, v11

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v4

    move/from16 v46, v5

    move-object/from16 v41, v9

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v38

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v45, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v10, [Ljava/lang/Class;

    aput-object v2, v4, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v47

    move-object/from16 v44, v3

    move-object/from16 v46, v4

    invoke-direct/range {v43 .. v51}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v43

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    new-instance v38, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->radioButtonCell2:Lorg/telegram/ui/Cells/RadioButtonCell;

    sget v40, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v10, [Ljava/lang/Class;

    aput-object v2, v4, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v42

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, v3

    move-object/from16 v41, v4

    move/from16 v46, v6

    invoke-direct/range {v38 .. v46}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v38

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v45, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/AdminedChannelCell;

    aput-object v4, v3, v11

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v47

    move-object/from16 v44, v2

    move-object/from16 v46, v3

    invoke-direct/range {v43 .. v51}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v43

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1616
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v4, v15, v11

    const-string v2, "statusTextView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1617
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v5, v10, [Ljava/lang/Class;

    aput-object v4, v5, v11

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v37

    const/16 v40, 0x0

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v34, v3

    move-object/from16 v36, v5

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->adminnedChannelsLayout:Landroid/widget/LinearLayout;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    const-string v4, "deleteButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v37

    move-object/from16 v34, v2

    move-object/from16 v36, v3

    move/from16 v41, v20

    invoke-direct/range {v33 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1629
    new-instance v43, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    sget v45, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v10, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCell;

    aput-object v4, v3, v11

    filled-new-array/range {v24 .. v24}, [Ljava/lang/String;

    move-result-object v47

    move-object/from16 v44, v2

    move-object/from16 v46, v3

    invoke-direct/range {v43 .. v51}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v43

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ChatEditTypeActivity;->manageLinksTextView:Lorg/telegram/ui/Cells/TextCell;

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v4, v15, v11

    const-string v2, "imageView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasActiveLink()Z
    .locals 4

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1397
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1398
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_1

    .line 1399
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBecomeFullyVisible()V
    .locals 1

    .line 254
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 255
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernameTextView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 10

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->getChatSync(J)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-wide v4, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(JZLjava/util/concurrent/CountDownLatch;ZZ)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_1

    :cond_0
    return v1

    .line 184
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isChannel:Z

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isSaveRestricted:Z

    .line 187
    iget-boolean v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isForcePublic:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_6

    .line 188
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;-><init>()V

    .line 189
    const-string v3, "1"

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->username:Ljava/lang/String;

    .line 190
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputChannelEmpty;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_checkUsername;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 191
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatEditTypeActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 198
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->isPrivate:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_7

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    iget v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v3, v4, v5, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 201
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_b

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->editableUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 204
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 205
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v2, :cond_8

    .line 206
    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    :cond_9
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v0, :cond_a

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->usernames:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 221
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 222
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 223
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 228
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 229
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 230
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 2

    .line 1642
    iget-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->linearLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/high16 p2, 0x41400000    # 12.0f

    .line 1643
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

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 236
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->textCell2:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 240
    sget v1, Lorg/telegram/messenger/R$string;->GroupStickers:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->stickerset:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 242
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->GroupStickers:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 245
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LinkActionView;->setLink(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity;->permanentLinkView:Lorg/telegram/ui/Components/LinkActionView;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v2, p0, Lorg/telegram/ui/ChatEditTypeActivity;->chatId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/LinkActionView;->loadUsers(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;J)V

    :cond_3
    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_1

    .line 686
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz p1, :cond_0

    .line 687
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 689
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity;->generateLink(Z)V

    :cond_1
    return-void
.end method
