.class public Lorg/telegram/ui/ProxySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# instance fields
.field private addingNewProxy:Z

.field private bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

.field private currentType:I

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnTextChange:Z

.field private inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private inputFieldsContainer:Landroid/widget/LinearLayout;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private pasteFields:[Ljava/lang/String;

.field private pasteString:Ljava/lang/String;

.field private pasteType:I

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

.field private shareDoneAnimator:Landroid/animation/ValueAnimator;

.field private shareDoneEnabled:Z

.field private shareDoneProgress:F

.field private shareDoneProgressAnimValues:[F

.field private typeCell:[Lorg/telegram/ui/Cells/RadioCell;


# direct methods
.method public static synthetic $r8$lambda$2qNTxetJ_hROkcaSTspigUrjIhA(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$3PhIY7Hc3_uTtuC-AfdtwaYSTOY(Lorg/telegram/ui/ProxySettingsActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$setShareDoneEnabled$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8A4gHnqnhx588kwz0c1QgKDV4JU(Lorg/telegram/ui/ProxySettingsActivity;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$createView$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GmCXEdQ2da-_PpW3clZuyJZ7h8g(Lorg/telegram/ui/ProxySettingsActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HijxomgJtl8JUg0-fNs-B90KRvo(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$getThemeDescriptions$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vigctjnv37aGbJNOs9B_br6uQ7g(Lorg/telegram/ui/ProxySettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qt1kf1FZweWADtS7u50MtO5uzPs(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProxySettingsActivity;->updatePasteCell()V

    return-void
.end method

.method public static synthetic $r8$lambda$ueO50vyXR2Y8etK7epK8SIUY9Jc(Lorg/telegram/ui/ProxySettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxySettingsActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddingNewProxy(Lorg/telegram/ui/ProxySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ProxySettingsActivity;->addingNewProxy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentType(Lorg/telegram/ui/ProxySettingsActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetignoreOnTextChange(Lorg/telegram/ui/ProxySettingsActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ProxySettingsActivity;->ignoreOnTextChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinputFields(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputignoreOnTextChange(Lorg/telegram/ui/ProxySettingsActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->ignoreOnTextChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckShareDone(Lorg/telegram/ui/ProxySettingsActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProxySettingsActivity;->checkShareDone(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 170
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v0, 0x2

    .line 93
    new-array v1, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 97
    new-array v1, v0, [Lorg/telegram/ui/Cells/RadioCell;

    iput-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    .line 100
    iput v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    iput v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    .line 105
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgressAnimValues:[F

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneEnabled:Z

    .line 180
    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 171
    new-instance v2, Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    const-string v6, ""

    const-string v7, ""

    const-string v3, ""

    const/16 v4, 0x438

    const-string v5, ""

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SharedConfig$ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 172
    iput-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->addingNewProxy:Z

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Lorg/telegram/ui/Cells/ShadowSectionCell;

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v0, 0x2

    .line 93
    new-array v1, v0, [Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iput-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 97
    new-array v1, v0, [Lorg/telegram/ui/Cells/RadioCell;

    iput-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    const/4 v1, -0x1

    .line 98
    iput v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    .line 100
    iput v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 104
    iput v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    .line 105
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgressAnimValues:[F

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneEnabled:Z

    .line 180
    new-instance v0, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 177
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    return-void
.end method

.method private checkShareDone(Z)V
    .locals 4

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    invoke-direct {p0, v1, p1}, Lorg/telegram/ui/ProxySettingsActivity;->setShareDoneEnabled(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 1

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ProxySettingsActivity;->setProxyType(IZ)V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x5

    const/4 v0, 0x1

    if-ne p2, p3, :cond_1

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    .line 424
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 426
    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    .line 430
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$2()V
    .locals 3

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 475
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 476
    iget v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    if-nez v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 482
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 5

    .line 454
    iget p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 p1, 0x0

    move v0, p1

    .line 455
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_4

    .line 456
    iget v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    if-nez v2, :cond_0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 462
    :cond_1
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 464
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v0

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 466
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 469
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 473
    iget p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    new-instance v0, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-direct {p0, p1, v3, v0}, Lorg/telegram/ui/ProxySettingsActivity;->setProxyType(IZLjava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .line 500
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    iget-object v3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    iget-object v4, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    iget-object v6, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 508
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "UTF-8"

    if-nez v7, :cond_0

    .line 509
    :try_start_1
    const-string v7, "server="

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "&"

    if-nez v0, :cond_2

    .line 512
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_1
    const-string v0, "port="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    if-ne v0, v5, :cond_4

    .line 518
    const-string v0, "https://t.me/proxy?"

    .line 519
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_3
    const-string v2, "secret="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 524
    :cond_4
    const-string v0, "https://t.me/socks?"

    .line 525
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 526
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 527
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_5
    const-string v4, "user="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 532
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 533
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_7
    const-string v3, "pass="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 541
    :cond_8
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    .line 544
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 545
    new-instance v3, Lorg/telegram/ui/Components/QRCodeBottomSheet;

    sget p2, Lorg/telegram/messenger/R$string;->ShareQrCode:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget p2, Lorg/telegram/messenger/R$string;->QRCodeLinkHelpProxy:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 546
    sget p1, Lorg/telegram/messenger/R$raw;->qr_dog:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->readRes(I)Ljava/lang/String;

    move-result-object p1

    const/high16 p2, 0x42700000    # 60.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1, v0, p2, v1}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 547
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setCenterImage(Landroid/graphics/Bitmap;)V

    .line 548
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :catch_0
    :goto_1
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$6()V
    .locals 5

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 771
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneEnabled:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 773
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 774
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 775
    aget-object v1, v1, v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    .line 776
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    .line 777
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 775
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private synthetic lambda$setShareDoneEnabled$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 669
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgressAnimValues:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    .line 670
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    return-void
.end method

.method private setProxyType(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 697
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ProxySettingsActivity;->setProxyType(IZLjava/lang/Runnable;)V

    return-void
.end method

.method private setProxyType(IZLjava/lang/Runnable;)V
    .locals 5

    .line 701
    iget v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    if-eq v0, p1, :cond_6

    .line 702
    iput p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 707
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2, p1}, Landroid/transition/Fade;-><init>(I)V

    .line 708
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    .line 709
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2, v0}, Landroid/transition/Fade;-><init>(I)V

    .line 710
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 711
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v1

    const-wide/16 v2, 0xfa

    .line 712
    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 715
    new-instance v2, Lorg/telegram/ui/ProxySettingsActivity$4;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/ProxySettingsActivity$4;-><init>(Lorg/telegram/ui/ProxySettingsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 739
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-static {p3, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 741
    :cond_1
    iget p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez p3, :cond_2

    .line 742
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object p3, p3, v4

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 743
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object p3, p3, v0

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p3, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-ne p3, v0, :cond_3

    .line 748
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object p3, p3, v4

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object p3, p3, v0

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p3, p3, v2

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p3, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object p1, p1, v4

    iget p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    if-nez p3, :cond_4

    move p3, v0

    goto :goto_1

    :cond_4
    move p3, v4

    :goto_1
    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object p1, p1, v0

    iget p3, p0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    if-ne p3, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    :cond_6
    return-void
.end method

.method private setShareDoneEnabled(ZZ)V
    .locals 4

    .line 662
    iget-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneEnabled:Z

    if-eq v0, p1, :cond_7

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    .line 666
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    .line 667
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 668
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    .line 675
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgressAnimValues:[F

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    aput v3, p2, v2

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    const/4 v1, 0x1

    .line 676
    aput v0, p2, v1

    .line 677
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    move v0, v1

    .line 679
    :cond_4
    iput v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    .line 680
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_5

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_5
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    goto :goto_1

    :goto_2
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 681
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_3
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 683
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(Z)V

    .line 684
    iget-object p2, p0, Lorg/telegram/ui/ProxySettingsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 685
    iput-boolean p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneEnabled:Z

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePasteCell()V
    .locals 11

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 577
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    .line 585
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteString:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v3, -0x1

    .line 589
    iput v3, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    .line 590
    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteString:Ljava/lang/String;

    .line 591
    iget-object v4, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    const/4 v4, 0x2

    if-eqz v0, :cond_d

    .line 595
    const-string v5, "t.me/socks?"

    const-string v6, "tg://socks?"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    move v6, v2

    .line 596
    :goto_1
    const-string v7, "&"

    if-ge v6, v4, :cond_3

    .line 597
    aget-object v8, v5, v6

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 599
    iput v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    .line 600
    aget-object v1, v5, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v8, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v5, 0x1

    if-nez v1, :cond_5

    .line 606
    const-string v6, "t.me/proxy?"

    const-string v8, "tg://proxy?"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    move v8, v2

    :goto_3
    if-ge v8, v4, :cond_5

    .line 608
    aget-object v9, v6, v8

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    .line 610
    iput v5, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    .line 611
    aget-object v1, v6, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v9, v1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v1, :cond_d

    move v0, v2

    .line 618
    :goto_5
    array-length v6, v1

    if-ge v0, v6, :cond_d

    .line 619
    aget-object v6, v1, v0

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 620
    array-length v7, v6

    if-eq v7, v4, :cond_6

    goto/16 :goto_8

    .line 621
    :cond_6
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    sparse-switch v8, :sswitch_data_0

    :goto_6
    move v7, v3

    goto :goto_7

    :sswitch_0
    const-string v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_6

    :cond_7
    move v7, v9

    goto :goto_7

    :sswitch_1
    const-string v8, "port"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    move v7, v10

    goto :goto_7

    :sswitch_2
    const-string v8, "pass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    move v7, v4

    goto :goto_7

    :sswitch_3
    const-string v8, "server"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_6

    :cond_a
    move v7, v5

    goto :goto_7

    :sswitch_4
    const-string v8, "secret"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    move v7, v2

    :goto_7
    packed-switch v7, :pswitch_data_0

    goto :goto_8

    .line 629
    :pswitch_0
    iget v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    if-nez v7, :cond_c

    .line 630
    iget-object v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    aget-object v6, v6, v5

    aput-object v6, v7, v4

    goto :goto_8

    .line 626
    :pswitch_1
    iget-object v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    aget-object v6, v6, v5

    aput-object v6, v7, v5

    goto :goto_8

    .line 634
    :pswitch_2
    iget v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    if-nez v7, :cond_c

    .line 635
    iget-object v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    aget-object v6, v6, v5

    aput-object v6, v7, v10

    goto :goto_8

    .line 623
    :pswitch_3
    iget-object v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    aget-object v6, v6, v5

    aput-object v6, v7, v2

    goto :goto_8

    .line 639
    :pswitch_4
    iget v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    if-ne v7, v5, :cond_c

    .line 640
    iget-object v7, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteFields:[Ljava/lang/String;

    aget-object v6, v6, v5

    aput-object v6, v7, v9

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 648
    :cond_d
    iget v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    if-eq v0, v3, :cond_e

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_f

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 654
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    .line 655
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3604b150 -> :sswitch_4
        -0x35fdd0bd -> :sswitch_3
        0x346411 -> :sswitch_2
        0x349881 -> :sswitch_1
        0x36ebcb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ProxyDetails:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 200
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 201
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 205
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ProxySettingsActivity$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ProxySettingsActivity$1;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 255
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 256
    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 260
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    .line 265
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 266
    iget-object v4, v0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 267
    iget-object v4, v0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v7, -0x1

    invoke-static {v7, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 270
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v4, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    new-instance v2, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 276
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    new-instance v9, Lorg/telegram/ui/Cells/RadioCell;

    invoke-direct {v9, v1}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    aput-object v9, v5, v4

    .line 277
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v4

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez v4, :cond_2

    .line 280
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v4

    sget v9, Lorg/telegram/messenger/R$string;->UseProxySocks5:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    if-ne v4, v10, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v3

    :goto_1
    invoke-virtual {v5, v9, v10, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    goto :goto_3

    .line 282
    :cond_2
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v4

    sget v9, Lorg/telegram/messenger/R$string;->UseProxyTelegram:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    if-ne v4, v10, :cond_3

    move v10, v6

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    invoke-virtual {v5, v9, v10, v3}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/CharSequence;ZZ)V

    .line 284
    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v9, v9, v4

    const/16 v10, 0x32

    invoke-static {v7, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 289
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v4, v4, v3

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    .line 292
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 293
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 295
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setElevation(F)V

    .line 296
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 297
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x5

    .line 299
    new-array v10, v2, [Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v10, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move v10, v3

    :goto_4
    if-ge v10, v2, :cond_f

    .line 301
    new-instance v11, Landroid/widget/FrameLayout;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 302
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    const/16 v13, 0x40

    invoke-static {v7, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v13, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v13, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    aput-object v13, v12, v10

    .line 305
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v12, v6, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 307
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 308
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 309
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    invoke-virtual {v12, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 311
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 312
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 313
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 314
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v14, 0x3

    if-eqz v13, :cond_5

    move v13, v2

    goto :goto_5

    :cond_5
    move v13, v14

    :goto_5
    or-int/lit8 v13, v13, 0x10

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 315
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHeaderHintColor(I)V

    .line 316
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTransformHintToHeader(Z)V

    .line 317
    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v12, v12, v10

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v12, v13, v15, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setLineColors(III)V

    if-nez v10, :cond_6

    .line 320
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    const v12, 0x80011

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setInputType(I)V

    .line 321
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    new-instance v12, Lorg/telegram/ui/ProxySettingsActivity$2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProxySettingsActivity$2;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_6

    :cond_6
    if-ne v10, v6, :cond_7

    .line 338
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 339
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    new-instance v12, Lorg/telegram/ui/ProxySettingsActivity$3;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProxySettingsActivity$3;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_6

    :cond_7
    if-ne v10, v14, :cond_8

    .line 387
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    const/16 v12, 0x81

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setInputType(I)V

    .line 388
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 389
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_6

    .line 391
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    const v12, 0x80001

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setInputType(I)V

    .line 393
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    const v12, 0x10000005

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setImeOptions(I)V

    if-eqz v10, :cond_d

    if-eq v10, v6, :cond_c

    if-eq v10, v5, :cond_b

    if-eq v10, v14, :cond_a

    const/4 v2, 0x4

    if-eq v10, v2, :cond_9

    goto/16 :goto_7

    .line 412
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    sget v12, Lorg/telegram/messenger/R$string;->UseProxySecret:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v12, v12, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 400
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    sget v12, Lorg/telegram/messenger/R$string;->UseProxyPassword:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v12, v12, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 408
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    sget v12, Lorg/telegram/messenger/R$string;->UseProxyUsername:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v12, v12, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 404
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    sget v12, Lorg/telegram/messenger/R$string;->UseProxyPort:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget v13, v13, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 396
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    sget v12, Lorg/telegram/messenger/R$string;->UseProxyAddress:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v12, v12, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 418
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 419
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    if-nez v10, :cond_e

    const/high16 v12, 0x41400000    # 12.0f

    :goto_8
    move/from16 v21, v12

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    goto :goto_8

    :goto_9
    const/high16 v22, 0x41880000    # 17.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x33

    const/high16 v20, 0x41880000    # 17.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v11, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v2, v2, v10

    new-instance v11, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v11, v0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x5

    goto/16 :goto_4

    :cond_f
    move v2, v3

    :goto_a
    const/16 v10, 0x8

    if-ge v2, v5, :cond_11

    .line 438
    iget-object v11, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    new-instance v12, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v12, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    aput-object v12, v11, v2

    .line 439
    iget-object v11, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v11, v11, v2

    sget v12, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez v2, :cond_10

    .line 441
    iget-object v10, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v10, v10, v2

    sget v11, Lorg/telegram/messenger/R$string;->UseProxyInfo:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 443
    :cond_10
    iget-object v11, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v11, v11, v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget v13, Lorg/telegram/messenger/R$string;->UseProxyTelegramInfo:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lorg/telegram/messenger/R$string;->UseProxyTelegramInfo2:I

    invoke-static {v13}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v11, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v11, v11, v2

    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :goto_b
    iget-object v10, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v11, v11, v2

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 449
    :cond_11
    new-instance v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 450
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v11, Lorg/telegram/messenger/R$string;->PasteFromClipboard:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 452
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 453
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v12, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v12, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v12, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v12, v2, v5

    .line 490
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v2, v2, v5

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v12, v13, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v12, v12, v5

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v12, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v2, v2, v5

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 494
    new-instance v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 495
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v5, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 497
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 498
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-instance v5, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ProxySettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v6

    .line 552
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v2, v2, v6

    sget v5, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v1, v5, v14}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 553
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v5, v5, v6

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    iput-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->clipboardManager:Landroid/content/ClipboardManager;

    .line 557
    iput-boolean v6, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneEnabled:Z

    .line 558
    iput v4, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareDoneProgress:F

    .line 559
    invoke-direct {v0, v3}, Lorg/telegram/ui/ProxySettingsActivity;->checkShareDone(Z)V

    .line 561
    iput v7, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentType:I

    .line 562
    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->currentProxyInfo:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v1, v1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ProxySettingsActivity;->setProxyType(IZ)V

    .line 564
    iput v7, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteType:I

    .line 565
    iput-object v9, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteString:Ljava/lang/String;

    .line 566
    invoke-direct {v0}, Lorg/telegram/ui/ProxySettingsActivity;->updatePasteCell()V

    .line 568
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 30

    move-object/from16 v0, p0

    .line 769
    new-instance v7, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ProxySettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    .line 781
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 782
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v16

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v17, 0x0

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearch:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSearchPlaceholder:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFieldsContainer:Landroid/widget/LinearLayout;

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v25, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move/from16 v22, v25

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v12

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v18, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v16

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v18

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxySettingsActivity;->shareCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v14, v20

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v7, v8

    move v13, v9

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v7, v8

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v23, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v18

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v1

    move/from16 v23, v14

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v16

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->pasteCell:Lorg/telegram/ui/Cells/TextSettingsCell;

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v3, v2, v12

    const-string v9, "textView"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v19

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move/from16 v23, v13

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v12

    .line 802
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 803
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v14, v2, v1

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v15, v2, v1

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v16, v2, v1

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v3, v2, v12

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v17, v2, v1

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    const-string v4, "radioButton"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->typeCell:[Lorg/telegram/ui/Cells/RadioCell;

    aget-object v14, v2, v1

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 810
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v1, :cond_1

    move v13, v12

    .line 811
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    array-length v1, v1

    if-ge v13, v1, :cond_2

    .line 812
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v15, v1, v13

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v23, v1, v13

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v28, 0x0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v22

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v23, v1, v13

    sget v1, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    or-int v24, v1, v2

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v22

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object v18, v1, v13

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v21

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v1, v17

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v6, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 821
    :cond_1
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v7, 0x0

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_2
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ProxySettingsActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ProxySettingsActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    new-array v1, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v2, v1, v12

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v12

    .line 826
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 827
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 828
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:[Lorg/telegram/ui/Cells/ShadowSectionCell;

    aget-object v14, v2, v1

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v3, v2, v12

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v12

    .line 831
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 832
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v14, v2, v1

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v3, v2, v12

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v15, v2, v1

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCells:[Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aget-object v16, v2, v1

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v2, v11, [Ljava/lang/Class;

    aput-object v3, v2, v12

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v19

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v10
.end method

.method public onPause()V
    .locals 2

    .line 192
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 184
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 187
    invoke-direct {p0}, Lorg/telegram/ui/ProxySettingsActivity;->updatePasteCell()V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 761
    iget-boolean p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->addingNewProxy:Z

    if-eqz p1, :cond_0

    .line 762
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Lorg/telegram/ui/Components/EditTextBoldCursor;

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
