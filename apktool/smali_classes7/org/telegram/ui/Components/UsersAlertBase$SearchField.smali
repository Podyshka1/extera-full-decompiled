.class public Lorg/telegram/ui/Components/UsersAlertBase$SearchField;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UsersAlertBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchField"
.end annotation


# instance fields
.field private final clearSearchImageView:Landroid/widget/ImageView;

.field private final progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

.field private final searchBackground:Landroid/view/View;

.field protected searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private final searchIconImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/telegram/ui/Components/UsersAlertBase;


# direct methods
.method public static synthetic $r8$lambda$d4D21HzzNHlJEgS-nk7Em0opHVY(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gAqdLPfFDPT6Nvh6JsAxCkrIWtM(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetclearSearchImageView(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V
    .locals 12

    .line 211
    iput-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    .line 212
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 214
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchBackground:Landroid/view/View;

    const/high16 v1, 0x41900000    # 18.0f

    .line 215
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget v2, p1, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchBackground:I

    invoke-static {p1}, Lorg/telegram/ui/Components/UsersAlertBase;->access$100(Lorg/telegram/ui/Components/UsersAlertBase;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v4, 0x33

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x41300000    # 11.0f

    .line 216
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchIconImageView:Landroid/widget/ImageView;

    .line 219
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 220
    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_inputsearch:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p1, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchPlaceholder:I

    invoke-static {p1}, Lorg/telegram/ui/Components/UsersAlertBase;->access$200(Lorg/telegram/ui/Components/UsersAlertBase;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x24

    const/high16 v6, 0x42100000    # 36.0f

    const/16 v7, 0x33

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41300000    # 11.0f

    .line 222
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 226
    new-instance v1, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$1;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;Lorg/telegram/ui/Components/UsersAlertBase;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->progressDrawable:Lorg/telegram/ui/Components/CloseProgressDrawable2;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 232
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CloseProgressDrawable2;->setSide(I)V

    const v1, 0x3dcccccd    # 0.1f

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x0

    const/16 v2, 0x24

    const/high16 v3, 0x42100000    # 36.0f

    const/16 v4, 0x35

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x41300000    # 11.0f

    .line 236
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v1, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$2;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;Landroid/content/Context;Lorg/telegram/ui/Components/UsersAlertBase;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 p2, 0x41800000    # 16.0f

    const/4 v1, 0x1

    .line 255
    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 256
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p1, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchPlaceholder:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 257
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p1, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 258
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 260
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 261
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 262
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 263
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v0, 0x10000003

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 264
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v0, Lorg/telegram/messenger/R$string;->VoipGroupSearchMembers:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget v0, p1, Lorg/telegram/ui/Components/UsersAlertBase;->keySearchText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 266
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 267
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 268
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x42380000    # 46.0f

    const/4 v6, 0x0

    const/4 v0, -0x1

    const/high16 v1, 0x42200000    # 40.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42580000    # 54.0f

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    iget-object p2, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$3;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;Lorg/telegram/ui/Components/UsersAlertBase;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance p2, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/UsersAlertBase$SearchField$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/UsersAlertBase$SearchField;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    .line 307
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 308
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public closeSearch()V
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->clearSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-object v1, p0, Lorg/telegram/ui/Components/UsersAlertBase$SearchField;->searchEditText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/UsersAlertBase;->onSearchViewTouched(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
