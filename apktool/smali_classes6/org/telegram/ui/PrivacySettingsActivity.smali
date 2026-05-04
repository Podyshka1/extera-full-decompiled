.class public Lorg/telegram/ui/PrivacySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static premiumStar:Landroid/text/SpannableString;


# instance fields
.field private advancedSectionRow:I

.field private archiveChats:Z

.field private autoDeleteMesages:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private bioRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final biometryBots:Ljava/util/ArrayList;

.field private birthdayRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private blockedRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private botsAndWebsitesShadowRow:I

.field private botsBiometryRow:I

.field private botsDetailRow:I

.field private botsSectionRow:I

.field private callsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private clear:[Z

.field private contactsDeleteRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private contactsDetailRow:I

.field private contactsSectionRow:I

.field private contactsSuggestRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private contactsSyncRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public currentPasskeys:Ljava/util/ArrayList;

.field private currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

.field private currentSuggest:Z

.field private currentSync:Z

.field private deleteAccountDetailRow:I

.field private deleteAccountRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private deleteAccountUpdate:Z

.field private devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

.field private emailLoginRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private feeValue:Z

.field private forwardsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private giftsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private groupsDetailRow:I

.field private groupsRow:I

.field private lastSeenRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private musicRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private newChatsHeaderRow:I

.field private newChatsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private newChatsSectionRow:I

.field private newSuggest:Z

.field private newSync:Z

.field private noncontactsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private noncontactsValue:Z

.field private passcodeRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private passkeysRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private passportRow:I

.field private passwordRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private paymentsClearRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private phoneNumberRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private privacySectionRow:I

.field private privacyShadowRow:I

.field private profilePhotoRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private rowCount:I

.field private secretDetailRow:I

.field private secretMapRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private secretMapUpdate:Z

.field private secretSectionRow:I

.field private secretWebpageRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private securitySectionRow:I

.field private sessionsDetailRow:I

.field private sessionsRow:I

.field private voicesRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

.field private webSessionsRow:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1cnHm4Rsgo1izGcQwiq0ynYgWAY(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2bInNxaSuXSHzPgnMbf4Bcr-vEg(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2qbr58jGKx2oeZ87pF-Z8fnqVBo(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$3dhBJTAc470lYK6N_CU5rbp2w1M(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasswordSettings$22(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6tM66M8fYAphlC4o33E5HWxc930(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/tl/TL_account$Passkeys;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasskeys$24(Lorg/telegram/tgnet/tl/TL_account$Passkeys;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7czsUpWG7j-37HeEtypf6rh-Pyo(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$DPP8-PtFa-lvDYsSlbRJJHb1FeA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$Krb9AQsYKcIdMaf6USXsZ323DXQ(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasswordSettings$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MEfk8yq7_9EulFHE7FC_OM-cOGY(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$14(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ot_dLFdXNNJxpnJ502-DrfJnkk4(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qo2Ia02P3PunutkjU759z41m4TY(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TbCpifjfFg58q91BkxQAW__hsb8(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcobjhZWboRxZAiAltI45G2egHI(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$YJxV2B3O4Gxwidnpe9hjduwW5fc(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$_ROrzV_QIHwj6awTi9NLspbxPwI(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$13(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQjitvoXaCUubuiYRbmANLB1EAE(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nCUBhXGADMz2X7VlwI6Kii7dtoM(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ozrsefcIfWZf5i3CX7ZHyh19qJA(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$pleyTE38w8CiuUNF2DEVgGpMjNQ(Lorg/telegram/ui/PrivacySettingsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$21(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sQjYztcjqA_KKu1utMkYjzl-Dog(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$19(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$v2lR5qtKdQHPXjWlD1wlykYEZ7c(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$18(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xNG_f-E1A9zBLo8bIIDEdiKRT1c(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$20(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzYW5WrrMS0MxuH4rWdwof1nmFI(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$12(Lorg/telegram/ui/Cells/TextCheckCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yD4lVSTKmcb6hzPAtv741b78HgY(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$zlJeq_JmJLqI9U_gLhd_hzcYZLA(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadvancedSectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetarchiveChats(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetautoDeleteMesages(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbioRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbirthdayRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->birthdayRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetblockedRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotsAndWebsitesShadowRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsAndWebsitesShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotsBiometryRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsBiometryRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotsDetailRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotsSectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcallsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsDeleteRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsDetailRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsSectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsSuggestRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsSyncRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentPassword(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/tl/TL_account$Password;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteAccountDetailRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteAccountRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeleteAccountUpdate(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdevicesActivityPreload(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/SessionsActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemailLoginRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfeeValue(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->feeValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetforwardsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgiftsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->giftsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupsDetailRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgroupsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastSeenRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmusicRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->musicRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewChatsHeaderRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewChatsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewChatsSectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewSuggest(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnewSync(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnoncontactsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnoncontactsValue(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsValue:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasscodeRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasskeysRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passkeysRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpassportRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpaymentsClearRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneNumberRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprivacySectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprivacyShadowRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprofilePhotoRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretDetailRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretMapRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretMapUpdate(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretSectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecretWebpageRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsecuritySectionRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionsDetailRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvoicesRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebSessionsRow(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdeleteAccountUpdate(Lorg/telegram/ui/PrivacySettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsecretMapUpdate(Lorg/telegram/ui/PrivacySettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->biometryBots:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 176
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 79
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method public static addPremiumStar(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .line 1430
    sget-object v0, Lorg/telegram/ui/PrivacySettingsActivity;->premiumStar:Landroid/text/SpannableString;

    if-nez v0, :cond_0

    .line 1431
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u2605"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lorg/telegram/ui/PrivacySettingsActivity;->premiumStar:Landroid/text/SpannableString;

    .line 1432
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarMenuDrawable:Lorg/telegram/ui/Components/Premium/PremiumGradient$InternalDrawable;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$WrapSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 1433
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1434
    sget-object v1, Lorg/telegram/ui/PrivacySettingsActivity;->premiumStar:Landroid/text/SpannableString;

    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    sget-object v0, Lorg/telegram/ui/PrivacySettingsActivity;->premiumStar:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1436
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, " \u2009"

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    sget-object v0, Lorg/telegram/ui/PrivacySettingsActivity;->premiumStar:Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;
    .locals 17

    move/from16 v0, p1

    .line 879
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 880
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v1, :cond_34

    .line 881
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 v4, -0x1

    const/4 v6, 0x0

    move v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 893
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v7, v12, :cond_e

    .line 894
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 895
    instance-of v15, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    if-eqz v15, :cond_3

    .line 896
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    .line 897
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    .line 898
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v15, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 902
    :cond_1
    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v8, v5

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_3
    const/16 v16, 0x0

    .line 904
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    if-eqz v5, :cond_5

    .line 905
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    .line 906
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v13, v16

    :goto_3
    if-ge v13, v5, :cond_d

    .line 907
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    if-nez v14, :cond_4

    goto :goto_4

    .line 911
    :cond_4
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v9, v14

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 913
    :cond_5
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v5, :cond_6

    .line 914
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .line 915
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v8, v5

    goto :goto_6

    .line 916
    :cond_6
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v5, :cond_7

    .line 917
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .line 918
    iget-object v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v9, v5

    goto :goto_6

    .line 919
    :cond_7
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowPremium;

    if-eqz v5, :cond_8

    move v11, v14

    goto :goto_6

    .line 921
    :cond_8
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowBots;

    if-eqz v5, :cond_9

    .line 922
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    move-object v6, v5

    goto :goto_6

    .line 923
    :cond_9
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowBots;

    if-eqz v5, :cond_a

    .line 924
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    if-ne v10, v4, :cond_d

    .line 926
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v5, :cond_b

    move/from16 v10, v16

    goto :goto_6

    .line 928
    :cond_b
    instance-of v5, v12, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v5, :cond_c

    move v10, v14

    goto :goto_6

    :cond_c
    move v10, v13

    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_e
    const/16 v16, 0x0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_f

    if-eqz v2, :cond_f

    .line 935
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v5, :cond_f

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v7, :cond_f

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz v7, :cond_f

    iget-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v7, :cond_f

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-nez v5, :cond_f

    .line 936
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyValueGiftsOnlyPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-ne v0, v1, :cond_10

    if-eqz v2, :cond_10

    .line 937
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->disallowed_stargifts:Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;

    if-eqz v2, :cond_10

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unique_stargifts:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_unlimited_stargifts:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_limited_stargifts:Z

    if-eqz v5, :cond_10

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$DisallowedGiftsSettings;->disallow_premium_gifts:Z

    if-eqz v2, :cond_10

    .line 938
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyValueGiftsNone:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz v10, :cond_2c

    if-ne v10, v4, :cond_11

    if-lez v9, :cond_11

    goto/16 :goto_d

    :cond_11
    if-eq v10, v13, :cond_1c

    if-ne v10, v4, :cond_12

    if-lez v9, :cond_12

    if-lez v8, :cond_12

    goto :goto_9

    :cond_12
    if-eq v10, v14, :cond_15

    if-lez v8, :cond_13

    goto :goto_7

    :cond_13
    if-eqz v6, :cond_14

    .line 1011
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1012
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyValueOnlyBots:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1015
    :cond_14
    const-string v0, "unknown"

    return-object v0

    :cond_15
    :goto_7
    if-ne v0, v3, :cond_17

    if-nez v8, :cond_16

    .line 993
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobody:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 995
    :cond_16
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobodyPlus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    if-nez v8, :cond_1a

    if-eqz v11, :cond_18

    .line 1000
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobodyPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    if-eqz v6, :cond_19

    .line 1002
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1003
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyValueOnlyBots:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1005
    :cond_19
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    if-eqz v11, :cond_1b

    .line 1007
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobodyPremiumPlus:I

    goto :goto_8

    :cond_1b
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobodyPlus:I

    :goto_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    :goto_9
    if-ne v0, v3, :cond_20

    if-nez v8, :cond_1d

    if-nez v9, :cond_1d

    .line 962
    const-string v0, "P2PContacts"

    sget v1, Lorg/telegram/messenger/R$string;->P2PContacts:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1e

    .line 965
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsMinusPlus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v1, v3, v16

    aput-object v2, v3, v14

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    if-eqz v9, :cond_1f

    .line 967
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsMinus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 969
    :cond_1f
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsPlus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    if-nez v8, :cond_23

    if-nez v9, :cond_23

    if-eqz v11, :cond_21

    .line 975
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsPremium:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    if-eqz v6, :cond_22

    .line 976
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 977
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyContactsAndBotUsers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 979
    :cond_22
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContacts:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    if-eqz v8, :cond_26

    if-eqz v9, :cond_26

    if-eqz v6, :cond_24

    .line 982
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyContactsAndBotUsersMinusPlus:I

    goto :goto_a

    :cond_24
    if-eqz v11, :cond_25

    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsPremiumMinusPlus:I

    goto :goto_a

    :cond_25
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsMinusPlus:I

    :goto_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v1, v3, v16

    aput-object v2, v3, v14

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    if-eqz v9, :cond_29

    if-eqz v6, :cond_27

    .line 984
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyContactsAndBotUsersMinus:I

    goto :goto_b

    :cond_27
    if-eqz v11, :cond_28

    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsPremiumMinus:I

    goto :goto_b

    :cond_28
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsMinus:I

    :goto_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    if-eqz v6, :cond_2a

    .line 986
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyContactsAndBotUsersPlus:I

    goto :goto_c

    :cond_2a
    if-eqz v11, :cond_2b

    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsPremiumPlus:I

    goto :goto_c

    :cond_2b
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsPlus:I

    :goto_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    :goto_d
    if-ne v0, v3, :cond_2e

    if-nez v9, :cond_2d

    .line 942
    sget v0, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 944
    :cond_2d
    sget v0, Lorg/telegram/messenger/R$string;->P2PEverybodyMinus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    if-ne v0, v1, :cond_32

    if-nez v9, :cond_30

    if-eqz v6, :cond_2f

    .line 948
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyValueEveryoneExceptBots:I

    goto :goto_e

    :cond_2f
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    :goto_e
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    if-eqz v6, :cond_31

    .line 950
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_31

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyValueEveryoneExceptBotsMinus:I

    goto :goto_f

    :cond_31
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybodyMinus:I

    :goto_f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    if-nez v9, :cond_33

    .line 954
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 956
    :cond_33
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybodyMinus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v1, v2, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    :goto_10
    if-ne v0, v3, :cond_35

    .line 883
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobody:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 885
    :cond_35
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPassword()V
    .locals 6

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 827
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->has_secure_values:Z

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    .line 829
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 830
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v0, :cond_5

    .line 833
    iget v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    .line 834
    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    if-ne v3, v4, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-nez v0, :cond_2

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v5, :cond_3

    if-eqz v1, :cond_5

    .line 838
    :cond_3
    invoke-virtual {p0, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    .line 840
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_5

    if-eqz v5, :cond_4

    .line 842
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    .line 844
    :cond_4
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 850
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_6

    .line 851
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$createView$10()V
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 532
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 533
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 534
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 536
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    if-eq p1, v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v0, p1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    .line 538
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 540
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ContactsController;->deleteAllContacts(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$12(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 1

    .line 561
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    .line 562
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$13(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 560
    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$14(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 555
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 556
    iget-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    const/4 v0, 0x1

    aget-boolean v0, p3, v0

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    const/4 v0, 0x0

    .line 557
    aget-boolean p3, p3, v0

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 558
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    const/4 v1, 0x0

    iput-object v1, p3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 559
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 560
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$15()V
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/view/View;)V
    .locals 4

    .line 614
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 615
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 616
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aget-boolean v2, v1, v0

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 617
    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$createView$18(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 632
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 633
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    const/4 v0, 0x1

    aget-boolean v1, p2, v0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    const/4 v1, 0x0

    .line 634
    aget-boolean p2, p2, v1

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 635
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    const/4 v2, 0x0

    iput-object v2, p2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/tl/TL_account$tmpPassword;

    .line 636
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 637
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p2, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aget-boolean p2, p1, v1

    if-eqz p2, :cond_0

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    .line 642
    const-string p1, "PrivacyPaymentsPaymentShippingCleared"

    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsPaymentShippingCleared:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 644
    const-string p1, "PrivacyPaymentsShippingInfoCleared"

    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsShippingInfoCleared:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 645
    :cond_1
    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2

    .line 646
    const-string p1, "PrivacyPaymentsPaymentInfoCleared"

    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsPaymentInfoCleared:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 650
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$19(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 622
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 626
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 628
    :cond_0
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    const-string p2, "PrivacyPaymentsClearAlertTitle"

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertTitle:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 630
    const-string p2, "PrivacyPaymentsClearAlert"

    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlert:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 631
    const-string p2, "ClearButton"

    sget v0, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 652
    const-string p2, "Cancel"

    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 653
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 654
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 655
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 656
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 658
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$20(Landroid/content/Context;Landroid/view/View;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_8

    .line 315
    :cond_0
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    if-ne v3, v4, :cond_1

    .line 316
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v1

    if-ltz v1, :cond_36

    .line 317
    new-instance v1, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {v1}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 319
    :cond_1
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    if-ne v3, v4, :cond_2

    .line 320
    new-instance v1, Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {v1}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 321
    :cond_2
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    if-ne v3, v4, :cond_3

    .line 322
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->resetFragment()V

    .line 323
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 324
    :cond_3
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    if-ne v3, v4, :cond_4

    .line 325
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->resetFragment()V

    .line 326
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 327
    :cond_4
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v3, v4, :cond_d

    .line 328
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_8

    .line 331
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x3

    if-gt v1, v2, :cond_6

    move v6, v13

    goto :goto_0

    :cond_6
    const/16 v2, 0x5d

    if-gt v1, v2, :cond_7

    move v6, v12

    goto :goto_0

    :cond_7
    const/16 v2, 0xb6

    if-gt v1, v2, :cond_8

    move v6, v8

    goto :goto_0

    :cond_8
    const/16 v2, 0x224

    if-ne v1, v2, :cond_9

    goto :goto_0

    :cond_9
    const/16 v2, 0x2da

    if-ne v1, v2, :cond_a

    move v6, v7

    goto :goto_0

    :cond_a
    move v6, v3

    .line 346
    :goto_0
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    const-string v2, "DeleteAccountTitle"

    sget v4, Lorg/telegram/messenger/R$string;->DeleteAccountTitle:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 348
    new-array v2, v13, [Ljava/lang/Object;

    .line 349
    const-string v4, "Months"

    invoke-static {v4, v12, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    new-array v2, v13, [Ljava/lang/Object;

    .line 350
    invoke-static {v4, v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-array v2, v13, [Ljava/lang/Object;

    .line 351
    invoke-static {v4, v10, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-array v2, v13, [Ljava/lang/Object;

    .line 352
    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v2, 0x12

    new-array v3, v13, [Ljava/lang/Object;

    .line 353
    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v2, 0x18

    new-array v3, v13, [Ljava/lang/Object;

    .line 354
    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 357
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 358
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v4, v13

    :goto_1
    if-ge v4, v10, :cond_c

    .line 361
    new-instance v5, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 362
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v5, v7, v13, v8, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 363
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 364
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 365
    aget-object v7, v2, v4

    if-ne v6, v4, :cond_b

    move v8, v12

    goto :goto_2

    :cond_b
    move v8, v13

    :goto_2
    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 366
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    new-instance v7, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 406
    :cond_c
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 407
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 408
    :cond_d
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    if-ne v3, v4, :cond_e

    .line 409
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v13}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 410
    :cond_e
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    if-ne v3, v4, :cond_f

    .line 411
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v10}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 412
    :cond_f
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    if-ne v3, v4, :cond_10

    .line 413
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v12}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 414
    :cond_10
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    if-ne v3, v4, :cond_11

    .line 415
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v8}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 416
    :cond_11
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    if-ne v3, v4, :cond_12

    .line 417
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 418
    :cond_12
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    if-ne v3, v4, :cond_13

    .line 419
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 420
    :cond_13
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->musicRow:I

    if-ne v3, v4, :cond_14

    .line 421
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 422
    :cond_14
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->birthdayRow:I

    if-ne v3, v4, :cond_15

    .line 423
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 424
    :cond_15
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->giftsRow:I

    if-ne v3, v4, :cond_16

    .line 425
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v5}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 426
    :cond_16
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    if-ne v3, v4, :cond_17

    .line 427
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {v1, v7}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 428
    :cond_17
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    if-ne v3, v4, :cond_18

    .line 429
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 430
    :cond_18
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsRow:I

    if-ne v3, v4, :cond_19

    .line 431
    new-instance v1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 432
    :cond_19
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    const/4 v5, -0x1

    if-ne v3, v4, :cond_1c

    .line 433
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v2, :cond_36

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    if-nez v2, :cond_1a

    goto/16 :goto_8

    .line 437
    :cond_1a
    invoke-static {v2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 438
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 439
    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v6, v6, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v3, v4, :cond_1b

    if-eq v3, v5, :cond_1b

    if-eq v4, v5, :cond_1b

    .line 441
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 442
    iget v6, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 443
    iput v3, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr v4, v12

    .line 444
    iput v4, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 445
    new-instance v6, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v2, v6, v3, v4, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 448
    :cond_1b
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->EmailLoginChangeMessage:I

    .line 450
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ChangeEmail:I

    .line 451
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 464
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 466
    :cond_1c
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    if-ne v3, v4, :cond_21

    .line 467
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-nez v1, :cond_1d

    goto/16 :goto_8

    .line 470
    :cond_1d
    invoke-static {v1, v13}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 471
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "UpdateAppAlert"

    sget v3, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 473
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-eqz v2, :cond_1f

    .line 474
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    .line 475
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 476
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 479
    :cond_1f
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    move v7, v10

    .line 484
    :cond_20
    new-instance v1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {v1, v7, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 486
    :cond_21
    iget v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->passkeysRow:I

    if-ne v3, v4, :cond_26

    .line 487
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_36

    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->SUPPORTS_PASSKEYS:Z

    if-nez v2, :cond_22

    goto/16 :goto_8

    .line 488
    :cond_22
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v2, :cond_25

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_account$Password;->has_password:Z

    if-nez v2, :cond_23

    goto :goto_3

    .line 505
    :cond_23
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPasskeys:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 506
    new-instance v1, Lorg/telegram/ui/PasskeysActivity;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPasskeys:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/telegram/ui/PasskeysActivity;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 508
    :cond_24
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2, v3, v12}, Lorg/telegram/ui/PasskeysActivity;->showLearnSheet(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void

    .line 489
    :cond_25
    :goto_3
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget v3, Lorg/telegram/messenger/R$string;->PaymentCardSavePaymentInformationInfoLine2:I

    .line 492
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    const-string v5, "**"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->Enable:I

    .line 493
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {v5, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    .line 490
    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 503
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 511
    :cond_26
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    if-ne v3, v1, :cond_27

    .line 512
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 513
    :cond_27
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    if-ne v3, v1, :cond_2a

    .line 514
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v1, v12, :cond_28

    .line 515
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iput v13, v1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    goto :goto_4

    .line 517
    :cond_28
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iput v12, v1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 519
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const-string v4, "secretWebpage2"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 520
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_36

    .line 521
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v2, v12, :cond_29

    goto :goto_5

    :cond_29
    move v12, v13

    :goto_5
    invoke-virtual {v1, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 523
    :cond_2a
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    const-string v4, "Cancel"

    if-ne v3, v1, :cond_2c

    .line 524
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2b

    goto/16 :goto_8

    .line 527
    :cond_2b
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 528
    const-string v2, "SyncContactsDeleteTitle"

    sget v3, Lorg/telegram/messenger/R$string;->SyncContactsDeleteTitle:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 529
    const-string v2, "SyncContactsDeleteText"

    sget v3, Lorg/telegram/messenger/R$string;->SyncContactsDeleteText:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 530
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 531
    const-string v2, "Delete"

    sget v3, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 542
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 544
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_36

    .line 546
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 548
    :cond_2c
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    if-ne v3, v1, :cond_2e

    .line 549
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 550
    iget-boolean v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    if-eqz v2, :cond_2d

    .line 551
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    const-string v3, "SuggestContactsTitle"

    sget v6, Lorg/telegram/messenger/R$string;->SuggestContactsTitle:I

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 553
    const-string v3, "SuggestContactsAlert"

    sget v6, Lorg/telegram/messenger/R$string;->SuggestContactsAlert:I

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 554
    const-string v3, "MuteDisable"

    sget v6, Lorg/telegram/messenger/R$string;->MuteDisable:I

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {v2, v3, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 565
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 566
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 567
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 568
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_36

    .line 570
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 573
    :cond_2d
    iput-boolean v12, v0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 575
    :cond_2e
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    if-ne v3, v1, :cond_2f

    .line 576
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 577
    iget-boolean v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    xor-int/2addr v2, v12

    iput-boolean v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 578
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 579
    :cond_2f
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    if-ne v3, v1, :cond_30

    .line 580
    iget-boolean v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    xor-int/2addr v1, v12

    iput-boolean v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    .line 581
    instance-of v3, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_36

    .line 582
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void

    .line 584
    :cond_30
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    if-ne v3, v1, :cond_31

    .line 585
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-static {v1, v2, v3, v13, v11}, Lorg/telegram/ui/Components/AlertsCreator;->showSecretLocationAlert(Landroid/content/Context;ILjava/lang/Runnable;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 589
    :cond_31
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    if-ne v3, v1, :cond_34

    .line 590
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    const-string v2, "PrivacyPaymentsClearAlertTitle"

    sget v3, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertTitle:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 592
    const-string v2, "PrivacyPaymentsClearAlertText"

    sget v3, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertText:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 594
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 595
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 596
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v3, v13

    :goto_6
    if-ge v3, v8, :cond_33

    if-nez v3, :cond_32

    .line 601
    const-string v6, "PrivacyClearShipping"

    sget v7, Lorg/telegram/messenger/R$string;->PrivacyClearShipping:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 603
    :cond_32
    const-string v6, "PrivacyClearPayment"

    sget v7, Lorg/telegram/messenger/R$string;->PrivacyClearPayment:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 605
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aput-boolean v12, v7, v3

    .line 606
    new-instance v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    const/16 v14, 0x15

    invoke-direct {v7, v10, v12, v14, v11}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 607
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 608
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v7, v10, v13, v14, v13}, Landroid/view/View;->setPadding(IIII)V

    const/16 v10, 0x32

    .line 610
    invoke-static {v5, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    invoke-virtual {v7, v6, v11, v12, v13}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 612
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 613
    new-instance v6, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v6, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 620
    :cond_33
    const-string v2, "ClearButton"

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 661
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 663
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 664
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 666
    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_36

    .line 668
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 670
    :cond_34
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    if-ne v3, v1, :cond_35

    .line 671
    new-instance v2, Lorg/telegram/ui/PassportActivity;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v12}, Lorg/telegram/ui/PassportActivity;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$authorizationForm;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 672
    :cond_35
    iget v1, v0, Lorg/telegram/ui/PrivacySettingsActivity;->botsBiometryRow:I

    if-ne v3, v1, :cond_36

    .line 673
    new-instance v1, Lorg/telegram/ui/bots/BotBiometrySettings;

    invoke-direct {v1}, Lorg/telegram/ui/bots/BotBiometrySettings;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_36
    :goto_8
    return-void
.end method

.method private synthetic lambda$createView$21(Ljava/util/ArrayList;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 680
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;)V
    .locals 0

    .line 394
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 396
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 398
    :goto_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    .line 400
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ContactsController;->setDeleteAccountTTL(I)V

    .line 401
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 392
    new-instance p4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda23;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 3

    .line 368
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 369
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    const/16 p1, 0xb6

    goto :goto_0

    .line 378
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_3

    const/16 p1, 0x16d

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    const/16 p1, 0x224

    goto :goto_0

    .line 382
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    const/16 p1, 0x2da

    goto :goto_0

    :cond_5
    move p1, v1

    .line 385
    :goto_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 386
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 387
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 389
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;-><init>()V

    .line 390
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 391
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    .line 392
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p2, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/tl/TL_account$setAccountTTL;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$7()V
    .locals 3

    .line 452
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 453
    sget v1, Lorg/telegram/messenger/R$raw;->email_check_inbox:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 454
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->YourLoginEmailChangedSuccess:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x5dc

    .line 456
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 459
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 451
    new-instance p1, Lorg/telegram/ui/LoginActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LoginActivity;-><init>()V

    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LoginActivity;->changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$9()V
    .locals 3

    .line 494
    new-instance v0, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_account$Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 498
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/tl/TL_account$Password;)V

    .line 494
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$loadPasskeys$24(Lorg/telegram/tgnet/tl/TL_account$Passkeys;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 872
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_account$Passkeys;->passkeys:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPasskeys:Ljava/util/ArrayList;

    .line 873
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadPasswordSettings$22(Lorg/telegram/tgnet/tl/TL_account$Password;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 863
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->initPassword()V

    return-void
.end method

.method private synthetic lambda$loadPasswordSettings$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 860
    check-cast p1, Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 861
    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/tl/TL_account$Password;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$0()V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    if-ltz v1, :cond_0

    .line 209
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$1()V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v0

    .line 218
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    if-gez v1, :cond_0

    if-lez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    :cond_0
    return-void
.end method

.method private loadPasskeys()V
    .locals 4

    .line 870
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/tl/TL_account$getPasskeys;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_account$getPasskeys;-><init>()V

    new-instance v2, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method private loadPasswordSettings()V
    .locals 4

    .line 857
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getPassword;-><init>()V

    .line 858
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 719
    invoke-virtual {p0, v0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 279
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 291
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    .line 293
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 295
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 297
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 298
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 300
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v1, v4}, Lorg/telegram/ui/PrivacySettingsActivity$2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;IZ)V

    iput-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 306
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 307
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 677
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/bots/BotBiometry;->getBots(Landroid/content/Context;ILorg/telegram/messenger/Utilities$Callback;)V

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 688
    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 689
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 691
    iget-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iput-boolean p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 692
    iget-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->new_noncontact_peers_require_premium:Z

    iput-boolean p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsValue:Z

    .line 693
    iget p2, p2, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->feeValue:Z

    .line 695
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p2, :cond_5

    .line 696
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 698
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    if-ne p1, p2, :cond_3

    .line 699
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    iget p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 700
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    if-ne p1, p2, :cond_5

    .line 701
    array-length p2, p3

    if-lez p2, :cond_4

    .line 702
    aget-object p2, p3, v0

    check-cast p2, Lorg/telegram/tgnet/tl/TL_account$Password;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 703
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p2, :cond_5

    .line 704
    iget p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 707
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    .line 708
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    .line 709
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    .line 711
    :cond_5
    :goto_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    if-ne p1, p2, :cond_6

    .line 712
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p1, :cond_6

    .line 713
    iget p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 34

    move-object/from16 v0, p0

    .line 1441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1443
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v11, v5, v10

    const/4 v12, 0x1

    const-class v13, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v13, v5, v12

    const/4 v6, 0x2

    const-class v14, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v14, v5, v6

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v10

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v17, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v11, v3, v10

    const-string v5, "valueTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v13, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v29

    const/16 v32, 0x0

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v3, v10

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v6, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v29

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move/from16 v29, v24

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1465
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    const-string v4, "checkBox"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v14, v3, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 182
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getBlockedPeers(Z)V

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSuggest:Z

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 190
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iput-boolean v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 191
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->new_noncontact_peers_require_premium:Z

    iput-boolean v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsValue:Z

    .line 192
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->feeValue:Z

    .line 195
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    .line 197
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasskeys()V

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 201
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->loadGlobalTTl()V

    .line 206
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    .line 207
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SessionsActivity;->setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    .line 214
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    .line 215
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SessionsActivity;->setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 6

    .line 230
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 231
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 232
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 233
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 236
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz v1, :cond_0

    .line 239
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    .line 241
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SyncContactsAdded"

    sget v4, Lorg/telegram/messenger/R$string;->SyncContactsAdded:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 246
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iget-boolean v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSuggest:Z

    if-eq v1, v4, :cond_3

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearTopPeers()V

    .line 250
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    .line 252
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    .line 253
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    .line 254
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move v0, v2

    .line 258
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 259
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iget-boolean v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    if-eq v4, v5, :cond_5

    .line 260
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    .line 262
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;-><init>()V

    .line 263
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    if-nez v1, :cond_4

    .line 265
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    .line 267
    :cond_4
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;

    iget-boolean v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$GlobalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    .line 268
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    if-eqz v2, :cond_6

    .line 273
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_6
    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 1478
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1020
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1021
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setCurrentPassword(Lorg/telegram/tgnet/tl/TL_account$Password;)Lorg/telegram/ui/PrivacySettingsActivity;
    .locals 0

    .line 818
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz p1, :cond_0

    .line 820
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->initPassword()V

    :cond_0
    return-object p0
.end method

.method public updateRows(Z)V
    .locals 6

    const/4 v0, -0x1

    .line 723
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passkeysRow:I

    const/4 v1, 0x0

    .line 726
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    const/4 v2, 0x1

    add-int v3, v2, v2

    .line 727
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    add-int/lit8 v4, v3, 0x1

    .line 728
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    add-int/lit8 v3, v3, 0x2

    .line 729
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    .line 730
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->config:Lorg/telegram/messenger/AppGlobalConfig;

    iget-object v3, v3, Lorg/telegram/messenger/AppGlobalConfig;->settingsDisplayPasskeys:Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;

    invoke-virtual {v3}, Lorg/telegram/messenger/AppGlobalConfig$ConfigBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->SUPPORTS_PASSKEYS:Z

    if-eqz v3, :cond_0

    .line 731
    iget v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passkeysRow:I

    .line 733
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/tl/TL_account$Password;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_1
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    if-eqz v4, :cond_2

    .line 734
    :goto_0
    iget v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    goto :goto_1

    .line 736
    :cond_2
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    .line 738
    :goto_1
    iget v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    if-eqz v3, :cond_4

    .line 740
    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_account$Password;->login_email_pattern:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    .line 741
    :cond_3
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    if-eq v2, v1, :cond_4

    .line 742
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    .line 743
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 746
    :cond_4
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    add-int/lit8 v3, v1, 0x2

    .line 747
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    add-int/lit8 v2, v1, 0x3

    .line 749
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    add-int/lit8 v3, v1, 0x4

    .line 750
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    add-int/lit8 v2, v1, 0x5

    .line 751
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    add-int/lit8 v3, v1, 0x6

    .line 752
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    add-int/lit8 v2, v1, 0x7

    .line 753
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    add-int/lit8 v1, v1, 0x8

    .line 754
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    .line 755
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    .line 756
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 760
    :cond_5
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    .line 761
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsRow:I

    goto :goto_3

    .line 757
    :cond_6
    :goto_2
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    add-int/lit8 v1, v1, 0x2

    .line 758
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->noncontactsRow:I

    .line 763
    :goto_3
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->birthdayRow:I

    add-int/lit8 v3, v1, 0x2

    .line 764
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->giftsRow:I

    add-int/lit8 v2, v1, 0x3

    .line 765
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    add-int/lit8 v3, v1, 0x4

    .line 766
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->musicRow:I

    add-int/lit8 v2, v1, 0x5

    .line 767
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    add-int/lit8 v1, v1, 0x6

    .line 768
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    .line 770
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->autoarchiveAvailable:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 775
    :cond_7
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    .line 776
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    .line 777
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    goto :goto_5

    .line 771
    :cond_8
    :goto_4
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    add-int/lit8 v3, v1, 0x2

    .line 772
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    add-int/lit8 v1, v1, 0x3

    .line 773
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    .line 779
    :goto_5
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    add-int/lit8 v3, v1, 0x2

    .line 780
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    add-int/lit8 v2, v1, 0x3

    .line 781
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    add-int/lit8 v1, v1, 0x4

    .line 782
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    .line 783
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    if-eqz v1, :cond_9

    .line 784
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    goto :goto_6

    .line 786
    :cond_9
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    .line 788
    :goto_6
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    .line 789
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->biometryBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 790
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsBiometryRow:I

    goto :goto_7

    .line 792
    :cond_a
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsBiometryRow:I

    .line 794
    :goto_7
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 795
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    add-int/lit8 v1, v1, 0x2

    .line 796
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    .line 797
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsAndWebsitesShadowRow:I

    goto :goto_8

    .line 799
    :cond_b
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    .line 800
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    .line 801
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsAndWebsitesShadowRow:I

    .line 803
    :goto_8
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    add-int/lit8 v2, v0, 0x2

    .line 804
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    add-int/lit8 v1, v0, 0x3

    .line 805
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    add-int/lit8 v2, v0, 0x4

    .line 806
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    add-int/lit8 v1, v0, 0x5

    .line 807
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    add-int/lit8 v2, v0, 0x6

    .line 808
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    add-int/lit8 v1, v0, 0x7

    .line 809
    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    add-int/lit8 v2, v0, 0x8

    .line 810
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    add-int/lit8 v0, v0, 0x9

    .line 811
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 813
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_c
    return-void
.end method
