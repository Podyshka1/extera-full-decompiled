.class public Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# static fields
.field private static currentRole:Lcom/exteragram/messenger/ai/data/Role;


# instance fields
.field private doneButton:Landroid/view/View;

.field private nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;


# direct methods
.method public static synthetic $r8$lambda$-PvFLZ5VxLFpr4ClbLwQHtNX3ws(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$En3vVUqyBIFNOBSj9KT9FdG6cKI(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->lambda$createView$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FFYVYW_gr0PeYJFcdEuzo5ehzWw(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->lambda$createView$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RZDlYB1-sSHOgTj7naL0qxxe3nw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 89
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$UaE4JxdZSyflKu-_0WreMMDcWhw(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->lambda$createView$6(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$arWPt0jJUaEyPFZ6PT6UNmbxSjg(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->lambda$createView$4(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vY0W6TNxDRHgs85FY-TW5fUuRQI(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->lambda$createView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnameFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpromptFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveName(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->saveName()V

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 62
    sput-object p1, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;Z)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 114
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->doneButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createView$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;Z)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 181
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->doneButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createView$6(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveName()V
    .locals 5

    .line 267
    new-instance v0, Lcom/exteragram/messenger/ai/data/Role;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/exteragram/messenger/ai/data/Role;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 270
    invoke-virtual {v0}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 283
    :cond_0
    sget-object v1, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v1

    sget-object v2, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    invoke-virtual {v1, v2, v0}, Lcom/exteragram/messenger/ai/AiController;->updateRole(Lcom/exteragram/messenger/ai/data/Role;Lcom/exteragram/messenger/ai/data/Role;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/ai/AiController;->addRole(Lcom/exteragram/messenger/ai/data/Role;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    .line 285
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->rolesUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 273
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    if-eqz v1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :cond_3
    if-eqz v2, :cond_4

    .line 278
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 68
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 69
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 70
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v4, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->EditRole:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->NewRole:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$1;

    invoke-direct {v4, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 82
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 83
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->doneButton:Landroid/view/View;

    .line 84
    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 86
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v5, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    new-instance v4, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x1

    const/16 v8, 0x18

    const/16 v9, 0x18

    .line 92
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v4, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x41900000    # 18.0f

    .line 95
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 96
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 97
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 99
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 100
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v7, 0x24001

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 101
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 102
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 103
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 104
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 105
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v12, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x5

    goto :goto_1

    :cond_1
    const/4 v12, 0x3

    :goto_1
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 106
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v12, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 107
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    .line 108
    iget-object v15, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v13, 0x0

    invoke-virtual {v15, v13, v12, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    iget-object v15, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v16, 0x41a00000    # 20.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v15, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 110
    iget-object v14, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v15, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v22, 0x41800000    # 16.0f

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x0

    const/high16 v20, 0x41800000    # 16.0f

    const/16 v21, 0x0

    move/from16 v24, v13

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v14, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    .line 112
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda2;

    invoke-direct {v14, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 121
    new-instance v13, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$2;

    const/16 v14, 0x40

    invoke-direct {v13, v0, v14}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$2;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;I)V

    new-array v15, v3, [Landroid/text/InputFilter;

    aput-object v13, v15, v24

    .line 132
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 133
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v15, 0x42100000    # 36.0f

    move/from16 v17, v14

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 134
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v14, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$3;

    invoke-direct {v14, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$3;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v13, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v14, Lorg/telegram/messenger/R$string;->RoleName:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v18, v15

    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/Object;

    aput-object v14, v11, v24

    aput-object v17, v11, v3

    const-string v14, "%s \u2022 %d"

    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 160
    new-instance v11, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v30, 0x18

    const/16 v31, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x1

    const/16 v28, 0x18

    const/16 v29, 0x18

    .line 161
    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v11, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {v11, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 164
    invoke-virtual {v11, v3, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 165
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 166
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 169
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 170
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 171
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 172
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 173
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_2

    :cond_2
    const/4 v5, 0x3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move/from16 v5, v24

    invoke-virtual {v4, v5, v12, v5, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 176
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 177
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/high16 v7, -0x40000000    # -2.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    iget-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    .line 179
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 188
    new-instance v4, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$4;

    const/16 v5, 0x400

    invoke-direct {v4, v0, v5}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$4;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;I)V

    new-array v6, v3, [Landroid/text/InputFilter;

    const/16 v24, 0x0

    aput-object v4, v6, v24

    .line 199
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 200
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 201
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 208
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$5;

    invoke-direct {v6, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$5;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v6, Lorg/telegram/messenger/R$string;->RolePrompt:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v15, [Ljava/lang/Object;

    const/16 v24, 0x0

    aput-object v6, v7, v24

    aput-object v5, v7, v3

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 227
    new-instance v4, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v1, 0x41700000    # 15.0f

    .line 229
    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 230
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText8:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 232
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 233
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    sget v1, Lorg/telegram/messenger/R$string;->PromptInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_4

    const/4 v7, 0x5

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    :goto_4
    const/16 v10, 0x18

    const/4 v11, 0x0

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v8, 0x18

    const/16 v9, 0xc

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    sget-object v1, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    if-eqz v1, :cond_5

    .line 238
    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v2, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    invoke-virtual {v2}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 240
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-object v2, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    invoke-virtual {v2}, Lcom/exteragram/messenger/ai/data/Role;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 242
    :cond_5
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->promptField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    sput-object v0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->currentRole:Lcom/exteragram/messenger/ai/data/Role;

    .line 263
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 251
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 252
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    const-string v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 256
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 294
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->nameField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
