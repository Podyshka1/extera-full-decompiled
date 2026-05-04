.class public Lorg/telegram/ui/NewContactBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/NewContactBottomSheet$AccountInfo;
    }
.end annotation


# instance fields
.field private checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field private checkLayout:Landroid/widget/LinearLayout;

.field private checkTextView:Landroid/widget/TextView;

.field classGuid:I

.field private codeDividerView:Landroid/view/View;

.field private codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private codesMap:Ljava/util/HashMap;

.field private contentLayout:Landroid/widget/LinearLayout;

.field private countriesArray:Ljava/util/ArrayList;

.field private countryCodeForHint:Ljava/lang/String;

.field private countryFlag:Landroid/widget/TextView;

.field private doneButton:Landroid/widget/TextView;

.field private doneButtonContainer:Landroid/widget/FrameLayout;

.field private donePressed:Z

.field private editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

.field private firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private initialFirstName:Ljava/lang/String;

.field private initialLastName:Ljava/lang/String;

.field private initialPhoneNumber:Ljava/lang/String;

.field private initialPhoneNumberWithCountryCode:Z

.field private lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

.field private lastPhone:Ljava/lang/String;

.field private notesField:Lorg/telegram/ui/Components/OutlineEditText;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private phoneFormatMap:Ljava/util/HashMap;

.field private phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private phoneStatusView:Landroid/widget/ImageView;

.field private plusTextView:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private qrButtonContainer:Landroid/widget/FrameLayout;

.field private qrButtonSeparator:Landroid/view/View;

.field private requestingPhoneId:I

.field private underPhoneTextView:Landroid/widget/TextView;

.field private wasCountryHintIndex:I


# direct methods
.method public static synthetic $r8$lambda$0M9bxP7_nAGGvZtAgup5X1aop3k(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    .line 734
    iget-object p0, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic $r8$lambda$0PY0qvgygP7aPM219MWjKFoPcbM(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 978
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0z0j2pYS5klEhhSfTKb-nZ_7ahQ(Lorg/telegram/ui/NewContactBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3dMo8wzBk0k-JbnHMZGkWjxrUa0(Lorg/telegram/ui/NewContactBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Cd9lGyGI5QTt7YvIi2qRk8Wpg4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 180
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$9ifIqMxLheppfoRz6wX97W-gQ9w(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updatedPhone$20(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CpljrHMaIAqFTZHiW6dKgh8o7nU(Lorg/telegram/ui/NewContactBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DL8fv78VwHKyP3gJ-aC3QhX7vMw(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updatedPhone$16(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DdJXRzUZasLhsvu7l3NvCQbbBBU(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EtiHdbjDsnebNYG9Pf-nPiq-B_Y(Lorg/telegram/ui/NewContactBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$dismiss$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$GJfB395zhaQDzkTF_oZ33bCXQ7k(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updatedPhone$18(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J7kNgOja4ip_TiqczYIQWUzafqg(Lorg/telegram/ui/NewContactBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$show$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$QACjOc6uZJ9a6QXB8Z4sy_5y7DQ(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$doOnDone$21(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SThkTrpozKElu1GdN6D1wWxpYE0(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$done$22(Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T45EydQYa54gWp9evuvPRpvLGwg(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$8(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Vq1w46aXsnCPd0u7I1VD5vc3CKk(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updatedPhone$15(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZJ2KERld7MlhiOMk-q_LaM4M9s8(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$4(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hDwQTMvJ5GwttteHJPULsbBtFUU(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jWeFzcfEek__E4Uim_1QrO9wHaY(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updatedPhone$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdPkE1D7MZCkGhpEdopsxSSl5Z8(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kVUsKvkEVB9d9fjGHYF2k_d2GzE(Lorg/telegram/ui/NewContactBottomSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updateQrButtonVisible$13(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lA_d3h6Lkqdn9_2PP3dUApfOjfw(Lorg/telegram/ui/NewContactBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nwM5v4pJOChaKkaB19CZz_CcGJI(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updatedPhone$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$onsNsJAGS0Gx3WSVhKxE2gw-x4M(Lorg/telegram/ui/NewContactBottomSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updateQrButtonVisible$12(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tSkcyCoVlHIv5QM9xbOQS6XMSCk(Lorg/telegram/ui/NewContactBottomSheet;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$updateQrButtonVisible$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7B7niSVWLnDL3UwrdJ-I--U4kY(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$done$23(Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcodeField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcodesMap(Lorg/telegram/ui/NewContactBottomSheet;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcountriesArray(Lorg/telegram/ui/NewContactBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnPhoneChange(Lorg/telegram/ui/NewContactBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/NewContactBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneField(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetphoneOutlineView(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputignoreOnPhoneChange(Lorg/telegram/ui/NewContactBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnPhoneChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/NewContactBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputignoreSelection(Lorg/telegram/ui/NewContactBottomSheet;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreSelection:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCountryButtonText(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCountryHint(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatedTextPhone(Lorg/telegram/ui/NewContactBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->updatedTextPhone()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    .line 125
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    .line 126
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    const/4 p2, -0x1

    .line 910
    iput p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->requestingPhoneId:I

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 162
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    .line 163
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    .line 164
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->classGuid:I

    .line 165
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 167
    sget p1, Lorg/telegram/messenger/R$string;->NewContactTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/NewContactBottomSheet;)I
    .locals 0

    .line 111
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method private doOnDone()V
    .locals 4

    .line 1002
    iget-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->donePressed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1011
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 1015
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1016
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 1021
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1022
    sget v0, Lorg/telegram/messenger/R$raw;->permission_request_contacts:I

    sget v1, Lorg/telegram/messenger/R$string;->PermissionNoContactsSaving:I

    new-instance v2, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/ui/Components/PermissionRequest;->ensurePermission(IILjava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 1028
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->done()V

    :cond_5
    :goto_0
    return-void
.end method

.method private done()V
    .locals 9

    const/4 v0, 0x1

    .line 1034
    iput-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->donePressed:Z

    .line 1035
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/NewContactBottomSheet;->showEditDoneProgress(ZZ)V

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1039
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1040
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 1042
    :goto_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 1043
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1044
    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1045
    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1046
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1047
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1048
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->flags:I

    or-int/2addr v0, v7

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->flags:I

    .line 1049
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;-><init>()V

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->note:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    .line 1050
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->text:Ljava/lang/String;

    .line 1052
    :cond_1
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v3, v2}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 1075
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 1077
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/NewContactBottomSheet;->saveContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/NewContactBottomSheet$AccountInfo;)Z

    :cond_2
    return-void
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1098
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1100
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v4, "countries.txt"

    invoke-virtual {p0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1102
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1103
    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1104
    aget-object v3, p0, v1

    const/4 v4, 0x2

    aget-object p0, p0, v4

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 1106
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1108
    :goto_1
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1110
    :goto_2
    const-string p0, "+"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    .line 1112
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_5

    .line 1115
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 p3, 0x4

    :goto_3
    const/4 v2, 0x1

    if-lt p3, v2, :cond_4

    .line 1117
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1118
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-object p2

    .line 1113
    :cond_5
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invalidateCountryHint()V
    .locals 12

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryCodeForHint:Ljava/lang/String;

    .line 1211
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 1213
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1215
    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1216
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "0"

    const-string v9, "X"

    const/4 v10, 0x0

    if-nez v7, :cond_2

    move v7, v10

    .line 1217
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 1218
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1219
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_2
    if-ne v7, v6, :cond_6

    move v1, v10

    .line 1226
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1227
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1228
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    move v7, v1

    :cond_5
    if-ne v7, v6, :cond_6

    goto :goto_5

    :cond_6
    move v10, v7

    .line 1238
    :goto_5
    iget v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    if-eq v1, v10, :cond_9

    .line 1239
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1240
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1241
    iget-object v3, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_7

    const/16 v4, 0x58

    const/16 v5, 0x30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 1243
    iput v10, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    return-void

    .line 1245
    :cond_8
    iget v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    if-eq v0, v6, :cond_9

    .line 1246
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1247
    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 1248
    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 1249
    iput v6, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    :cond_9
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->doOnDone()V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    .line 258
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 259
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$2;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 573
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;)V
    .locals 2

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 603
    invoke-direct {p0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->updateQrButtonVisible(Z)V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 3

    .line 658
    invoke-virtual {p0}, Lorg/telegram/ui/NewContactBottomSheet;->dismiss()V

    .line 659
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$7;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Landroid/app/Activity;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$dismiss$25()V
    .locals 1

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$doOnDone$21(Ljava/lang/Boolean;)V
    .locals 0

    .line 1023
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1024
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->done()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$done$22(Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V
    .locals 7

    const/4 v0, 0x0

    .line 1056
    iput-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->donePressed:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 1058
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1059
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1060
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 1061
    invoke-virtual {p0}, Lorg/telegram/ui/NewContactBottomSheet;->dismiss()V

    return-void

    .line 1063
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1066
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->showEditDoneProgress(ZZ)V

    .line 1067
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-static {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createContactInviteDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1070
    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->showEditDoneProgress(ZZ)V

    .line 1071
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$done$23(Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 1054
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 1055
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda21;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$show$24()V
    .locals 1

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$updateQrButtonVisible$11(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 839
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateQrButtonVisible$12(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 848
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateQrButtonVisible$13(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatedPhone$14(Ljava/lang/String;)V
    .locals 4

    .line 945
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 947
    sget p1, Lorg/telegram/messenger/R$string;->InviteText2:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "https://telegram.org/dl"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$updatedPhone$15(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 956
    invoke-virtual {p0}, Lorg/telegram/ui/NewContactBottomSheet;->dismiss()V

    .line 958
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 960
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->of(J)Lorg/telegram/ui/ProfileActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatedPhone$16(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x402aaaab

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 943
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/String;)V

    const-string p1, "This phone number is not on Telegram. **Invite >**"

    invoke-static {p1, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 949
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 944
    invoke-static {p1, v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_text_check:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 952
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 953
    iget-object v3, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz p1, :cond_1

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, p2}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$User;)V

    const-string p2, "This phone number is already in your contacts. **View >**"

    invoke-static {p2, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 962
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 955
    invoke-static {p2, v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 964
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    const-string p2, "This phone number is on Telegram."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    .line 967
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->updateBottomTranslation(Z)V

    return-void
.end method

.method private synthetic lambda$updatedPhone$18(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 977
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getUser(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 978
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda25;

    invoke-direct {v0, p2, p1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updatedPhone$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 4

    .line 986
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    if-eqz v0, :cond_0

    .line 987
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 988
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 989
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 991
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 993
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 996
    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$updatedPhone$20(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 984
    new-instance p3, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda22;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/NewContactBottomSheet$AccountInfo;)Z
    .locals 7

    .line 1323
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1327
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1333
    const-string v1, "account_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1334
    const-string v1, "account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1337
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1340
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1341
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v4, "vnd.android.cursor.item/name"

    .line 1342
    const-string v5, "mimetype"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "data2"

    if-nez v4, :cond_0

    .line 1344
    invoke-virtual {v1, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1346
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1347
    invoke-virtual {v1, v6, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1349
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    const-string p2, "data1"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 1352
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 1353
    invoke-virtual {p3, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string v1, "vnd.android.cursor.item/phone_v2"

    .line 1354
    invoke-virtual {p3, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 1356
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/4 p3, 0x2

    .line 1358
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1357
    invoke-virtual {p1, v6, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1359
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 1352
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p4, :cond_3

    .line 1362
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1363
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1364
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const-string p3, "vnd.android.cursor.item/note"

    .line 1365
    invoke-virtual {p1, v5, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1367
    invoke-virtual {p1, p2, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 1368
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 1363
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1373
    const-string p1, "com.android.contacts"

    invoke-virtual {p0, p1, p5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1376
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method private setCountryButtonText(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x96

    if-eqz v0, :cond_0

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1204
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    .line 1184
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1185
    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1187
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1189
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 1190
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryCodeForHint:Ljava/lang/String;

    const/4 p1, -0x1

    .line 1191
    iput p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    .line 1192
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->invalidateCountryHint()V

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 3

    .line 1093
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v0, p1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method

.method private updateBottomTranslation(Z)V
    .locals 5

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, 0x41aaa3d7    # 21.33f

    .line 818
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 819
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1a4

    .line 820
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x412aa3d7    # 10.665f

    .line 823
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float v1, p1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 824
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 825
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateQrButtonVisible(Z)V
    .locals 9

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 834
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 835
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v6, 0x1a4

    .line 836
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v8, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Z)V

    .line 837
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 842
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 843
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-nez v0, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 845
    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 846
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 847
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v8, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Z)V

    .line 848
    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 849
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz v0, :cond_2

    move v2, v3

    .line 852
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 853
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 854
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Z)V

    .line 855
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 856
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 858
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 859
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x4

    if-nez v0, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v1

    :goto_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-nez v0, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 861
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    if-nez v0, :cond_6

    move v5, v4

    goto :goto_4

    :cond_6
    const/16 v5, 0x8

    :goto_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    if-nez v0, :cond_7

    move v5, v3

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 866
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    if-eqz v0, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updatedPhone(Ljava/lang/String;)V
    .locals 7

    .line 912
    iget v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->requestingPhoneId:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 913
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->requestingPhoneId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    .line 914
    iput v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->requestingPhoneId:I

    .line 917
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const-wide/16 v3, 0x1a4

    if-eqz v0, :cond_1

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 919
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 921
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 922
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 924
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    invoke-direct {p0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->updateBottomTranslation(Z)V

    return-void

    .line 929
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 930
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 931
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 932
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 933
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/Components/CircularProgressDrawable;

    const/high16 v4, 0x41f00000    # 30.0f

    .line 936
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue:I

    invoke-virtual {p0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lorg/telegram/ui/Components/CircularProgressDrawable;-><init>(FFI)V

    .line 935
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    invoke-direct {p0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->updateBottomTranslation(Z)V

    .line 941
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/String;)V

    .line 970
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v1, :cond_3

    .line 972
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 974
    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 976
    :cond_2
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 982
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;-><init>()V

    .line 983
    invoke-static {p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvePhone;->phone:Ljava/lang/String;

    .line 984
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->requestingPhoneId:I

    return-void
.end method

.method private updatedTextPhone()V
    .locals 8

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 873
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_4

    .line 874
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 876
    iget-object v6, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 877
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 878
    iget-object v6, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 880
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 885
    const-string v7, " "

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v7, v6, :cond_1

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastPhone:Ljava/lang/String;

    .line 898
    invoke-direct {p0, v0}, Lorg/telegram/ui/NewContactBottomSheet;->updatedPhone(Ljava/lang/String;)V

    return-void

    .line 903
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastPhone:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 904
    iput-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastPhone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/NewContactBottomSheet;->updatedPhone(Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 171
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, 0x4

    .line 172
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 174
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    const/high16 v6, 0x41a00000    # 20.0f

    .line 177
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 178
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x33

    const/4 v8, -0x1

    const/4 v10, -0x2

    invoke-static {v8, v10, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 183
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v7, Lorg/telegram/ui/Components/OutlineEditText;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/OutlineEditText;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    .line 186
    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    const v11, 0xc000

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 187
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    const/4 v12, 0x5

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 188
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v13, Lorg/telegram/messenger/R$string;->FirstName:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/telegram/ui/Components/OutlineEditText;->setHint(Ljava/lang/String;)V

    .line 189
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    .line 190
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iput-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x42680000    # 58.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    new-instance v14, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v14, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 203
    new-instance v7, Lorg/telegram/ui/Components/OutlineEditText;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/OutlineEditText;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    .line 204
    invoke-virtual {v7, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 206
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 207
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v14, Lorg/telegram/messenger/R$string;->LastName:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/telegram/ui/Components/OutlineEditText;->setHint(Ljava/lang/String;)V

    .line 208
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 209
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v7

    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iput-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    .line 212
    :cond_1
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v14, -0x1

    const/high16 v15, 0x42680000    # 58.0f

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/high16 v18, 0x42880000    # 68.0f

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 222
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    new-instance v7, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x41000000    # 8.0f

    const/4 v14, -0x1

    const/high16 v15, -0x40000000    # -2.0f

    const/16 v16, 0x10

    const/high16 v17, 0x40800000    # 4.0f

    const/high16 v18, 0x41000000    # 8.0f

    .line 226
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v0, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v14, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 228
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v19, 0x0

    const/high16 v20, 0x40c00000    # 6.0f

    const/4 v15, -0x1

    const/16 v16, 0x3a

    const/16 v17, 0x0

    const/high16 v18, 0x41400000    # 12.0f

    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v7, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41400000    # 12.0f

    .line 231
    invoke-virtual {v7, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-virtual {v1, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 234
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->underPhoneTextView:Landroid/widget/TextView;

    const/high16 v19, 0x41400000    # 12.0f

    const/16 v20, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/high16 v17, 0x41400000    # 12.0f

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v14, Lorg/telegram/ui/NewContactBottomSheet$1;

    invoke-direct {v14, v1, v2}, Lorg/telegram/ui/NewContactBottomSheet$1;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V

    iput-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    const/high16 v15, 0x41800000    # 16.0f

    .line 254
    invoke-virtual {v14, v3, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 255
    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {v14, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 256
    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    new-instance v14, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v14, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v14, 0x40c00000    # 6.0f

    .line 270
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v14, v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    const/16 v14, 0x10

    invoke-static {v8, v10, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x2a

    .line 272
    invoke-static {v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    .line 275
    const-string v7, "+"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v4, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 278
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$3;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/NewContactBottomSheet$3;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 287
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move/from16 v17, v6

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 288
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 289
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 290
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 291
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 292
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 293
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 294
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 295
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const v6, 0x10000005

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 296
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v6, Lorg/telegram/messenger/R$string;->LoginAccessibilityCountryCode:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v18, 0x37

    const/16 v19, 0x24

    const/high16 v20, -0x3ef00000    # -9.0f

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v6, Lorg/telegram/ui/NewContactBottomSheet$4;

    invoke-direct {v6, v1}, Lorg/telegram/ui/NewContactBottomSheet$4;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 417
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v6, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v6, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 425
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeDividerView:Landroid/view/View;

    const/high16 v22, 0x41400000    # 12.0f

    const/high16 v23, 0x41000000    # 8.0f

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/high16 v20, 0x40800000    # 4.0f

    const/high16 v21, 0x41000000    # 8.0f

    .line 426
    invoke-static/range {v18 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v6, 0x3f000000    # 0.5f

    .line 427
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v12, 0x2

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 428
    iget-object v6, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeDividerView:Landroid/view/View;

    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$5;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/NewContactBottomSheet$5;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 448
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 449
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 450
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 451
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 452
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 453
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v3, v6}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 454
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 455
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 456
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const v6, 0x10000005

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 457
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v6, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v6, 0x24

    invoke-static {v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$6;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$6;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 571
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 579
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f000000    # 0.5f

    .line 580
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 581
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 582
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 583
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneStatusView:Landroid/widget/ImageView;

    const/high16 v24, 0x41400000    # 12.0f

    const/16 v25, 0x0

    const/16 v19, 0x18

    const/high16 v20, 0x41c00000    # 24.0f

    const/16 v21, 0x15

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v0, Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0x15

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v4, v6}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    .line 586
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {v0, v4, v6, v12}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 587
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    .line 588
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v0, v9, v9}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 589
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 591
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkTextView:Landroid/widget/TextView;

    .line 592
    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v14, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 594
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->AddContactSync:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    .line 597
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 598
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v0, v4, v6, v12, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 599
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 v24, 0x9

    const/16 v25, 0x0

    const/16 v19, 0x15

    const/16 v20, 0x15

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkTextView:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-static {v10, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    const v4, -0x3e555c29    # -21.33f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 606
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 607
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    const v4, 0x3c4ccccd    # 0.0125f

    const v6, 0x3f99999a    # 1.2f

    invoke-static {v0, v4, v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 608
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v15, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    const/4 v6, 0x6

    invoke-static {v4, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 609
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->checkLayout:Landroid/widget/LinearLayout;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x0

    const/high16 v22, 0x40a00000    # 5.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonContainer:Landroid/widget/FrameLayout;

    const v4, -0x3ed55c29    # -10.665f

    .line 644
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 645
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonContainer:Landroid/widget/FrameLayout;

    const/high16 v24, -0x3f400000    # -6.0f

    const/16 v19, -0x1

    const/high16 v22, 0x40c00000    # 6.0f

    invoke-static/range {v19 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    .line 648
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v6, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 649
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonContainer:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonSeparator:Landroid/view/View;

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v20, v10, v6

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v21, 0x30

    const/16 v22, 0x0

    const/high16 v23, 0x40c00000    # 6.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v9, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 652
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v4, "QR"

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 653
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v6, Lorg/telegram/messenger/R$drawable;->header_qr_24:I

    invoke-direct {v4, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v10, 0x21

    invoke-virtual {v0, v4, v9, v6, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 654
    const-string v4, "  "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 655
    sget v4, Lorg/telegram/messenger/R$string;->AddContactQr:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 656
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v0, v9}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 657
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonContainer:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v20, 0x42400000    # 48.0f

    const/high16 v23, 0x41400000    # 12.0f

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    new-instance v0, Lorg/telegram/ui/Components/OutlineEditText;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/OutlineEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    .line 690
    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 691
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 692
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 693
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    const-string v4, "Notes"

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/OutlineEditText;->setHint(Ljava/lang/String;)V

    .line 694
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->qrButtonContainer:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    const/16 v23, 0x0

    const/16 v18, -0x1

    const/high16 v19, 0x42680000    # 58.0f

    const/16 v20, 0x30

    const/16 v21, 0x0

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->notesField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 703
    invoke-direct {v1, v9}, Lorg/telegram/ui/NewContactBottomSheet;->updateQrButtonVisible(Z)V

    .line 705
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 708
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "countries.txt"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 710
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 711
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 712
    new-instance v10, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v10}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    const/4 v11, 0x2

    .line 713
    aget-object v11, v6, v11

    iput-object v11, v10, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 714
    aget-object v11, v6, v9

    iput-object v11, v10, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 715
    aget-object v11, v6, v3

    iput-object v11, v10, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 716
    iget-object v11, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v11, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 718
    iget-object v11, v1, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-nez v11, :cond_2

    .line 720
    iget-object v11, v1, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    aget-object v12, v6, v9

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v14

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 722
    :cond_2
    :goto_1
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    array-length v10, v6

    const/4 v11, 0x3

    if-le v10, v11, :cond_3

    .line 725
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v11, v6, v9

    const/4 v12, 0x3

    aget-object v12, v6, v12

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_3
    aget-object v10, v6, v3

    const/4 v11, 0x2

    aget-object v6, v6, v11

    invoke-virtual {v4, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 729
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 731
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 734
    :goto_3
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v6}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 736
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 737
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 738
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 739
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 740
    :cond_5
    iget-boolean v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumberWithCountryCode:Z

    if-nez v4, :cond_9

    if-eqz v0, :cond_9

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    .line 743
    :cond_6
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 v4, 0x4

    :goto_4
    if-lt v4, v3, :cond_8

    .line 745
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 746
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_7

    .line 748
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 752
    :cond_8
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 741
    :cond_9
    :goto_6
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    :goto_7
    iput-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    goto :goto_b

    .line 758
    :cond_a
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b

    .line 760
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 763
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    move-object v0, v13

    :goto_8
    if-eqz v0, :cond_e

    .line 767
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    move v4, v9

    .line 770
    :goto_9
    iget-object v6, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_d

    .line 771
    iget-object v6, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v6, v6, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-static {v6, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 772
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    move-object v0, v13

    :goto_a
    if-eqz v0, :cond_e

    .line 778
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v0, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 783
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 788
    :cond_f
    :goto_b
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    .line 789
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    .line 790
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 791
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 792
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 793
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 794
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->CreateContact:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 797
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 799
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 800
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 801
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 802
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x11

    const/16 v6, 0x28

    invoke-static {v6, v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 807
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v0, v9, v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 808
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    new-array v3, v3, [F

    const/high16 v4, 0x40c00000    # 6.0f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeDividerView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v5
.end method

.method public dismiss()V
    .locals 3

    .line 1309
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1310
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 37

    move-object/from16 v0, p0

    .line 1280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v9, 0x0

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/4 v10, 0x0

    move/from16 v11, v28

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v31, v3, v4

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v2

    move/from16 v36, v10

    invoke-direct/range {v29 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1288
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v10, v36

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v10, v36

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v10, v36

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/NewContactBottomSheet;->editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/NewContactBottomSheet;->editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v11, 0x0

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1255
    iget-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreSelection:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1256
    iput-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreSelection:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1259
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    .line 1260
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 1261
    iget-object p3, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    iput-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    const/4 v0, 0x1

    .line 1266
    iput-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    .line 1267
    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 1268
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    const/4 p1, 0x0

    .line 1270
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return-void
.end method

.method public setInitialName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1174
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    .line 1176
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    if-eqz p1, :cond_1

    .line 1177
    invoke-virtual {p1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1179
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    return-void
.end method

.method public setInitialPhoneNumber(Ljava/lang/String;Z)Lorg/telegram/ui/NewContactBottomSheet;
    .locals 5

    .line 1128
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    .line 1129
    iput-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumberWithCountryCode:Z

    .line 1131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1132
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1133
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1134
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1135
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumberWithCountryCode:Z

    if-nez p2, :cond_6

    if-eqz p1, :cond_6

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_3

    .line 1139
    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 p2, 0x4

    .line 1140
    :goto_0
    const-string v1, "0"

    if-lt p2, v0, :cond_3

    const/4 v2, 0x0

    .line 1141
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1142
    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1143
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1144
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 1145
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1154
    :cond_3
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    .line 1156
    const-class p2, Landroid/telephony/TelephonyManager;

    .line 1155
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 1156
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 1157
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1159
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    .line 1162
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1136
    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 p1, 0x0

    .line 1164
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    :cond_7
    return-object p0
.end method

.method public show()V
    .locals 3

    .line 1084
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 1087
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
