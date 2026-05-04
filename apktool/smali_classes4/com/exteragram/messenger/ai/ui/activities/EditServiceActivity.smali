.class public Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# static fields
.field private static currentService:Lcom/exteragram/messenger/ai/data/Service;


# instance fields
.field private buttons:Landroid/widget/LinearLayout;

.field private final clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private deleteView:Landroid/widget/TextView;

.field private doneButton:Landroid/view/View;

.field private hasChanges:Z

.field private initialKey:Ljava/lang/String;

.field private initialModel:Ljava/lang/String;

.field private initialUrl:Ljava/lang/String;

.field private keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private keyFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private modelField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private modelFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private pasteString:Ljava/lang/String;

.field private pasteView:Landroid/widget/TextView;

.field private separator:Landroid/view/View;

.field private urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private urlFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;


# direct methods
.method public static synthetic $r8$lambda$1FDBzip8PpEkl4i18C2ldwKmxgk(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->lambda$createView$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IF2OhztNDHZYo9j2dTSdnYl0q1I(Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Lcom/exteragram/messenger/ai/network/Client;->stopRequest(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-Gx8x7hS55mO2jk0piKbPJb9_w(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SKvhWVW9nlaz4lmaKZuVmrVH41U(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 120
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$UH3hKW8Q_XJ8T1jBDBzBiullPWE(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$c94qhdpvhlsrRkEDEoueggj9pIM(Lorg/telegram/ui/Components/OutlineTextContainerView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 318
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->animateSelection(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$jF1-xOmojQCTHCjd01LitG2MReg(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kcBUwzy81b0EMkJpZLvBipLYvJI(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->lambda$createView$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tb8Xw-gm1Hj_PQEukzcU_9nlp6U(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->updateButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetinitialKey(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialModel(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialModel:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialUrl(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodelFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturlFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhasChanges(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->hasChanges:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveConfig(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->saveConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDoneButton(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->updateDoneButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetcurrentService()Lcom/exteragram/messenger/ai/data/Service;
    .locals 1

    .line 0
    sget-object v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->hasChanges:Z

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda6;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    iput-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->hasChanges:Z

    .line 91
    sput-object p1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    return-void
.end method

.method private createField(Landroid/content/Context;Ljava/lang/String;[Landroid/text/InputFilter;)Landroid/util/Pair;
    .locals 8

    .line 302
    new-instance v0, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 305
    new-instance p2, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    .line 306
    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 307
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 310
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 311
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 312
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setInputType(I)V

    const/high16 p1, 0x10000000

    .line 313
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    const/4 p1, 0x6

    .line 314
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 315
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 316
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 317
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    new-instance p1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/OutlineTextContainerView;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p2, v1, p1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 321
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v5, 0x0

    .line 322
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/OutlineTextContainerView;->attachEditText(Landroid/widget/EditText;)V

    .line 325
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/high16 p1, 0x42100000    # 36.0f

    .line 326
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 328
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private synthetic lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 143
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 144
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1
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

    .line 173
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 174
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$createView$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->doneButton:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 1

    .line 230
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->hasChanges:Z

    .line 236
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->updateDoneButton()V

    return-void
.end method

.method private synthetic lambda$createView$5(Landroid/view/View;)V
    .locals 1

    .line 259
    sget-object p1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object p1

    sget-object v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {p1, v0}, Lcom/exteragram/messenger/ai/AiController;->removeService(Lcom/exteragram/messenger/ai/data/Service;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearSelectedService()V

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method

.method private saveConfig()V
    .locals 5

    .line 351
    new-instance v0, Lcom/exteragram/messenger/ai/data/Service;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 352
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 353
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/ai/data/Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/exteragram/messenger/ai/AiController;->getInstance()Lcom/exteragram/messenger/ai/AiController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/ai/AiController;->contains(Lcom/exteragram/messenger/ai/data/Service;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Lcom/exteragram/messenger/ai/network/Client$Builder;

    invoke-direct {v1}, Lcom/exteragram/messenger/ai/network/Client$Builder;-><init>()V

    .line 357
    invoke-virtual {v1, v0}, Lcom/exteragram/messenger/ai/network/Client$Builder;->serviceOverride(Lcom/exteragram/messenger/ai/data/Service;)Lcom/exteragram/messenger/ai/network/Client$Builder;

    move-result-object v1

    sget-object v2, Lcom/exteragram/messenger/ai/data/Suggestions;->ASSISTANT:Lcom/exteragram/messenger/ai/data/Suggestions;

    .line 358
    invoke-virtual {v2}, Lcom/exteragram/messenger/ai/data/Suggestions;->getRole()Lcom/exteragram/messenger/ai/data/Role;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/exteragram/messenger/ai/network/Client$Builder;->roleOverride(Lcom/exteragram/messenger/ai/data/Role;)Lcom/exteragram/messenger/ai/network/Client$Builder;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/network/Client$Builder;->build()Lcom/exteragram/messenger/ai/network/Client;

    move-result-object v1

    .line 360
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 361
    new-instance v3, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;

    invoke-direct {v3, p0, v2, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$5;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/exteragram/messenger/ai/data/Service;)V

    const-string v0, "Say \'hi\'."

    invoke-virtual {v1, v0, v3}, Lcom/exteragram/messenger/ai/network/Client;->getResponse(Ljava/lang/String;Lcom/exteragram/messenger/ai/network/GenerationCallback;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v3, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda8;-><init>(Lcom/exteragram/messenger/ai/network/Client;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 405
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private updateButtons()V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 427
    sget-object v3, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    const/16 v4, 0x8

    if-nez v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->separator:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->separator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_2
    iput-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteString:Ljava/lang/String;

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->separator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 443
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateDoneButton()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->doneButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 296
    iget-boolean v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->hasChanges:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->hasChanges:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 97
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 98
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 99
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v4, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/messenger/R$string;->EditService:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->NewService:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$1;

    invoke-direct {v4, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 111
    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipboardManager:Landroid/content/ClipboardManager;

    .line 113
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 114
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->doneButton:Landroid/view/View;

    .line 115
    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 119
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    new-instance v5, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v5, v3, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 124
    sget v4, Lorg/telegram/messenger/R$string;->ServiceURL:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v5}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->createField(Landroid/content/Context;Ljava/lang/String;[Landroid/text/InputFilter;)Landroid/util/Pair;

    move-result-object v4

    .line 125
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 126
    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$2;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$2;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/ui/Components/OutlineTextContainerView;

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/16 v10, 0x18

    const/16 v11, 0x18

    .line 150
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v5, v3, [Landroid/text/InputFilter;

    aput-object v4, v5, v6

    .line 154
    sget v4, Lorg/telegram/messenger/R$string;->ServiceModel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v5}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->createField(Landroid/content/Context;Ljava/lang/String;[Landroid/text/InputFilter;)Landroid/util/Pair;

    move-result-object v4

    .line 155
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 156
    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$3;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$3;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda2;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 179
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/ui/Components/OutlineTextContainerView;

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v7, -0x1

    .line 180
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-array v5, v3, [Landroid/text/InputFilter;

    aput-object v4, v5, v6

    .line 184
    sget v4, Lorg/telegram/messenger/R$string;->ServiceKey:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v5}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->createField(Landroid/content/Context;Ljava/lang/String;[Landroid/text/InputFilter;)Landroid/util/Pair;

    move-result-object v4

    .line 185
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 186
    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$4;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$4;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda3;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 208
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/telegram/ui/Components/OutlineTextContainerView;

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyFieldContainer:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v7, -0x1

    .line 209
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    .line 212
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    const v5, 0x3ca3d70a    # 0.02f

    const/high16 v7, 0x3fc00000    # 1.5f

    .line 215
    invoke-static {v4, v5, v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 216
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 217
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v14

    invoke-static {v10, v12, v14}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 220
    const-string v10, ".."

    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    new-instance v14, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_copy_filled:I

    invoke-static {v1, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v14, v6, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 221
    new-instance v12, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v12, v15}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v15, 0x2

    invoke-virtual {v4, v12, v3, v15, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v12, 0x104000b

    .line 222
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 223
    const-string v12, "."

    move/from16 v16, v9

    invoke-virtual {v4, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    move/from16 v17, v14

    new-instance v14, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    const/high16 v18, 0x40400000    # 3.0f

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-direct {v14, v15}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    sub-int/2addr v15, v3

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v9, v14, v15, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 224
    iget-object v5, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v19, v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v9, v15, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 226
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 229
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    new-instance v7, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda4;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->pasteView:Landroid/widget/TextView;

    const/4 v9, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v20, v14

    invoke-static {v6, v9, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v4, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->separator:Landroid/view/View;

    .line 241
    iget-object v7, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    const v14, 0x3d75c28f    # 0.06f

    invoke-static {v6, v9, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    const/high16 v7, 0x3fc00000    # 1.5f

    const v14, 0x3ca3d70a    # 0.02f

    .line 244
    invoke-static {v4, v14, v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 245
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 246
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-static {v7, v8, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 249
    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_delete_filled:I

    invoke-static {v1, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v8, v6, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 250
    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-direct {v1, v7}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    const/4 v7, 0x2

    invoke-virtual {v4, v1, v3, v7, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 251
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 252
    invoke-virtual {v4, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v1, v7, v8, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 253
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v1, v4, v7, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 255
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    move/from16 v4, v20

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 256
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 258
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    new-instance v3, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$$ExternalSyntheticLambda5;-><init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->deleteView:Landroid/widget/TextView;

    invoke-static {v6, v9, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->buttons:Landroid/widget/LinearLayout;

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v8, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    sget-object v1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialUrl:Ljava/lang/String;

    .line 270
    sget-object v1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialModel:Ljava/lang/String;

    .line 271
    sget-object v1, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialKey:Ljava/lang/String;

    .line 272
    invoke-direct {v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->updateDoneButton()V

    goto :goto_1

    .line 274
    :cond_1
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->DEFAULT_SERVICE:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialUrl:Ljava/lang/String;

    .line 275
    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getModel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialModel:Ljava/lang/String;

    .line 276
    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialKey:Ljava/lang/String;

    .line 278
    :goto_1
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->modelField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->initialKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 283
    invoke-direct {v0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->updateButtons()V

    .line 285
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 42

    move-object/from16 v0, p0

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 460
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v11, 0x0

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v12, 0x0

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v7, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v13, 0x0

    move/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v8, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v9, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v25, v15

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v33, v16

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->urlField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v36, v3, v4

    sget v41, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v35, v2

    invoke-direct/range {v34 .. v41}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v18, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v26, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v28, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v2

    invoke-direct/range {v26 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v10, v41

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    sput-object v0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->currentService:Lcom/exteragram/messenger/ai/data/Service;

    .line 291
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 333
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 334
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 339
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 340
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 341
    const-string v1, "view_animations"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 344
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->clipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 347
    invoke-direct {p0}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->updateButtons()V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 452
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->keyField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
