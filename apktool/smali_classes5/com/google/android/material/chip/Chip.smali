.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/ChipDrawable$Delegate;
.implements Lcom/google/android/material/shape/Shapeable;
.implements Lcom/google/android/material/internal/MaterialCheckable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$ChipTouchHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/widget/AppCompatCheckBox;",
        "Lcom/google/android/material/chip/ChipDrawable$Delegate;",
        "Lcom/google/android/material/shape/Shapeable;",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "Lcom/google/android/material/chip/Chip;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.Button"

.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHIP_BODY_VIRTUAL_ID:I = 0x0

.field private static final CLOSE_ICON_VIRTUAL_ID:I = 0x1

.field private static final DEF_STYLE_RES:I

.field private static final EMPTY_BOUNDS:Landroid/graphics/Rect;

.field private static final GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.widget.RadioButton"

.field private static final SELECTED_STATE:[I

.field private static final TAG:Ljava/lang/String; = "Chip"


# instance fields
.field private accessibilityClassName:Ljava/lang/CharSequence;

.field private chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

.field private closeIconFocused:Z

.field private closeIconHovered:Z

.field private closeIconPressed:Z

.field private deferredCheckedValue:Z

.field private ensureMinTouchTargetSize:Z

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

.field private lastLayoutDirection:I

.field private minTouchTargetSize:I

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
            "Lcom/google/android/material/chip/Chip;",
            ">;"
        }
    .end annotation
.end field

.field private onCloseIconClickListener:Landroid/view/View$OnClickListener;

.field private final rect:Landroid/graphics/Rect;

.field private final rectF:Landroid/graphics/RectF;

.field private ripple:Landroid/graphics/drawable/RippleDrawable;

.field private final touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

.field private touchHelperEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$BX4ppTUZCDnixncojra1Ulz3cAk(Lcom/google/android/material/chip/Chip;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p0, p2}, Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;->onCheckedChanged(Ljava/lang/Object;Z)V

    .line 263
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_1

    .line 264
    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 141
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    const v0, 0x10100a1

    .line 147
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    const v0, 0x101009f

    .line 148
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 200
    sget v0, Lcom/google/android/material/R$attr;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 204
    sget v4, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    .line 180
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    .line 181
    new-instance p1, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/Chip;->validateAttributes(Landroid/util/AttributeSet;)V

    .line 210
    invoke-static {v0, p2, p3, v4}, Lcom/google/android/material/chip/ChipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object p1

    .line 212
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/material/chip/Chip;->initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 215
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 v1, 0x0

    new-array v5, v1, [I

    move-object v1, p2

    move v3, p3

    .line 216
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 228
    sget p3, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    .line 229
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    new-instance p2, Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$ChipTouchHelper;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 232
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    if-nez p3, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->initOutlineProvider()V

    .line 237
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 238
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 241
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    .line 244
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 246
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_1
    const p1, 0x800013

    .line 250
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 252
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    .line 258
    new-instance p1, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/chip/Chip;)Z
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/material/chip/Chip;)Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/chip/Chip;Z)Z
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Landroid/graphics/Rect;
    .locals 1

    .line 136
    sget-object v0, Lcom/google/android/material/chip/Chip;->EMPTY_BOUNDS:Landroid/graphics/Rect;

    return-object v0
.end method

.method private applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 0

    .line 477
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    return-void
.end method

.method private createCloseIconDrawableState()[I
    .locals 3

    .line 877
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 880
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 883
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 886
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 889
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 893
    :cond_3
    new-array v0, v0, [I

    .line 896
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const v1, 0x101009e

    .line 897
    aput v1, v0, v2

    const/4 v2, 0x1

    .line 900
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconFocused:Z

    if-eqz v1, :cond_5

    const v1, 0x101009c

    .line 901
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 904
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eqz v1, :cond_6

    const v1, 0x1010367

    .line 905
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 908
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v1, :cond_7

    const v1, 0x10100a7

    .line 909
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 912
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x10100a1

    .line 913
    aput v1, v0, v2

    :cond_8
    return-object v0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 927
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTouchBounds(Landroid/graphics/RectF;)V

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5

    .line 937
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 939
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasCloseIcon()Z
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initMinTouchTarget(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 322
    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    sget v4, Lcom/google/android/material/chip/Chip;->DEF_STYLE_RES:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 323
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 329
    sget p2, Lcom/google/android/material/R$styleable;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    .line 331
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialAttributes;->resolveMinimumAccessibleTouchTarget(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    .line 332
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinTouchTargetSize:I

    .line 335
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-double p2, p2

    .line 334
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 337
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initOutlineProvider()V
    .locals 1

    .line 414
    new-instance v0, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private insetChipBackgroundDrawable(IIII)V
    .locals 6

    .line 2372
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    return-void
.end method

.method private removeBackgroundInset()V
    .locals 1

    .line 2362
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2363
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    .line 2364
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2365
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 2366
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    :cond_0
    return-void
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 853
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    if-eq v0, p1, :cond_0

    .line 854
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconHovered:Z

    .line 855
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 846
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eq v0, p1, :cond_0

    .line 847
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    .line 848
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setDelegate(Lcom/google/android/material/chip/ChipDrawable$Delegate;)V

    :cond_0
    return-void
.end method

.method private updateAccessibilityDelegate()V
    .locals 1

    .line 310
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->hasCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 315
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    return-void
.end method

.method private updateBackgroundDrawable()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    return-void
.end method

.method private updateFrameworkRippleBackground()V
    .locals 4

    .line 459
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 461
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 462
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    .line 464
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setUseCompatRipple(Z)V

    .line 466
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 467
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    return-void
.end method

.method private updatePaddingInternal()V
    .locals 4

    .line 345
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 351
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 352
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 353
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 355
    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 356
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    .line 357
    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 358
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    .line 359
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 360
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 361
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 362
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTextPaintDrawState()V
    .locals 4

    .line 1399
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1400
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v1, :cond_0

    .line 1401
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1403
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1405
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    :cond_1
    return-void
.end method

.method private validateAttributes(Landroid/util/AttributeSet;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    const-string v0, "background"

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Chip"

    if-eqz v0, :cond_1

    .line 385
    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    const-string v0, "drawableLeft"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 390
    const-string v0, "drawableStart"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 393
    const-string v0, "drawableEnd"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Please set end drawable using R.attr#closeIcon."

    if-nez v0, :cond_5

    .line 396
    const-string v0, "drawableRight"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 399
    const-string v0, "singleLine"

    const/4 v3, 0x1

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lines"

    .line 400
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "minLines"

    .line 401
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    const-string v0, "maxLines"

    .line 402
    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 406
    const-string v0, "gravity"

    const v3, 0x800013

    invoke-interface {p1, v1, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v3, :cond_2

    .line 409
    const-string p1, "Chip text must be vertically center and start aligned"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    .line 403
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-nez v0, :cond_0

    .line 801
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 804
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 809
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-nez v0, :cond_0

    .line 810
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 820
    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 823
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 861
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->drawableStateChanged()V

    .line 865
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->createCloseIconDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public ensureAccessibleTouchTarget(I)Z
    .locals 5

    .line 2286
    iput p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    .line 2287
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->shouldEnsureMinTouchTargetSize()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2288
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 2289
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    goto :goto_0

    .line 2291
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    :goto_0
    return v1

    .line 2296
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2297
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v2}, Lcom/google/android/material/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_3

    if-gtz v0, :cond_3

    .line 2300
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    .line 2301
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->removeBackgroundInset()V

    goto :goto_1

    .line 2303
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    :goto_1
    return v1

    :cond_3
    if-lez v2, :cond_4

    .line 2308
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-lez v0, :cond_5

    .line 2309
    div-int/lit8 v1, v0, 0x2

    .line 2311
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 2312
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2313
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2314
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v4, v1, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v1, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v4, v2, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_6

    .line 2318
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    return v3

    .line 2322
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_7

    .line 2323
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 2325
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_8

    .line 2326
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 2328
    :cond_8
    invoke-direct {p0, v2, v1, v2, v1}, Lcom/google/android/material/chip/Chip;->insetChipBackgroundDrawable(IIII)V

    .line 2329
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateBackgroundDrawable()V

    return v3
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 3

    .line 2345
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->accessibilityClassName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->accessibilityClassName:Ljava/lang/CharSequence;

    return-object v0

    .line 2347
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    const-string v1, "android.widget.Button"

    if-eqz v0, :cond_2

    .line 2348
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2349
    instance-of v2, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->isSingleSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2350
    const-string v0, "android.widget.RadioButton"

    return-object v0

    :cond_1
    return-object v1

    .line 2354
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 2357
    :cond_3
    const-string v0, "android.view.View"

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->insetBackgroundDrawable:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    :cond_0
    return-object v0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCheckedIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipCornerRadius()F
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipCornerRadius()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    return-object v0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1546
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconSize()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1509
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipMinHeight()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getChipStrokeWidth()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1283
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1753
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconSize()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getCloseIconTint()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 836
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 837
    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getKeyboardFocusedVirtualViewId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    .line 838
    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 841
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->getFocusedRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1377
    :cond_0
    invoke-super {p0}, Landroid/widget/CheckBox;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getHideMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 2058
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getIconStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getRippleColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getShowMotionSpec()Lcom/google/android/material/animation/MotionSpec;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 2126
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextEndPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->getTextStartPadding()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckedIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1803
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckedIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCheckedIconVisible()Z
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckedIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChipIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1427
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChipIconVisible()Z

    move-result v0

    return v0
.end method

.method public isChipIconVisible()Z
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isChipIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCloseIconEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1590
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCloseIconVisible()Z

    move-result v0

    return v0
.end method

.method public isCloseIconVisible()Z
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCloseIconVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 271
    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    .line 273
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    return-void
.end method

.method public onChipDrawableSizeChange()V
    .locals 1

    .line 689
    iget v0, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 691
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 482
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 483
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/google/android/material/chip/Chip;->SELECTED_STATE:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    sget-object v0, Lcom/google/android/material/chip/Chip;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 828
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CheckBox;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 829
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 784
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 790
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 787
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 795
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 286
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isCheckable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 291
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 293
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 295
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->isSingleLine()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->getIndexOfChip(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 298
    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/FlowLayout;->getRowIndex(Landroid/view/View;)I

    move-result v2

    const/4 v6, 0x0

    .line 303
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 297
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 296
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 946
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1

    .line 949
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 370
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRtlPropertiesChanged(I)V

    .line 374
    iget v0, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 375
    iput p1, p0, Lcom/google/android/material/chip/Chip;->lastLayoutDirection:I

    .line 376
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updatePaddingInternal()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 751
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 760
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    .line 762
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_3

    .line 768
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->closeIconPressed:Z

    if-eqz v0, :cond_3

    .line 769
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 774
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 755
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_0

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-nez v0, :cond_7

    .line 779
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    return v3

    :cond_7
    :goto_4
    return v2
.end method

.method public performCloseIconClick()Z
    .locals 3

    const/4 v0, 0x0

    .line 727
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 730
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 731
    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v2

    .line 737
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/chip/Chip;->touchHelperEnabled:Z

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->touchHelper:Lcom/google/android/material/chip/Chip$ChipTouchHelper;

    invoke-virtual {v1, v2, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_1
    return v0
.end method

.method public setAccessibilityClassName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2339
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->accessibilityClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    .line 524
    const-string p1, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 526
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 513
    const-string p1, "Chip"

    const-string v0, "Do not set the background color; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    .line 533
    const-string p1, "Chip"

    const-string v0, "Do not set the background drawable; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 518
    const-string p1, "Chip"

    const-string v0, "Do not set the background resource; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 503
    const-string p1, "Chip"

    const-string v0, "Do not set the background tint list; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 508
    const-string p1, "Chip"

    const-string v0, "Do not set the background tint mode; Chip manages its own background drawable."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1785
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1786
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckable(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1774
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckableResource(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_0

    .line 698
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->deferredCheckedValue:Z

    return-void

    .line 699
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1839
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1833
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1861
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconResource(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1908
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1909
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1896
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconTintResource(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1814
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCheckedIconVisible(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipBackgroundColorResource(I)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadius(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipCornerRadiusResource(I)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eq v0, p1, :cond_0

    .line 435
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->unapplyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 436
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipDrawable;->setShouldDrawText(Z)V

    .line 440
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->applyChipDrawable(Lcom/google/android/material/chip/ChipDrawable;)V

    .line 441
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    :cond_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 2250
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2251
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1

    .line 2238
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2239
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1463
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1457
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1

    .line 1484
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1485
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1572
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1573
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSize(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1559
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconSizeResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1532
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1

    .line 1519
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconTintResource(I)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1438
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(I)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipIconVisible(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeight(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipMinHeightResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2013
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeColorResource(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidth(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1

    .line 1218
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setChipStrokeWidthResource(I)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1317
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1311
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1741
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1742
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1626
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1620
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2217
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1

    .line 2204
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2205
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconResource(I)V

    .line 1650
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSize(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1719
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconSizeResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 2182
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2183
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1

    .line 2170
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2171
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1

    .line 1684
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1685
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconTintResource(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1

    .line 1600
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1611
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setCloseIconVisible(Z)V

    .line 1614
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 552
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 549
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 546
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 596
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 593
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 590
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 609
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 606
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 603
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 624
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 622
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 619
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 564
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 561
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 580
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 577
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 574
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 1

    .line 278
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setElevation(F)V

    .line 279
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 641
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    :goto_0
    return-void

    .line 639
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Text within a chip are not allowed to scroll."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 2274
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    .line 2275
    iget p1, p0, Lcom/google/android/material/chip/Chip;->minTouchTargetSize:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->ensureAccessibleTouchTarget(I)Z

    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .locals 1

    .line 1383
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 1389
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setFontVariationSettings(Ljava/lang/String;)V

    .line 1391
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    .line 495
    const-string p1, "Chip"

    const-string v0, "Chip text must be vertically center and start aligned"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 497
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setHideMotionSpecResource(I)V

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2081
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2069
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2047
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1

    .line 2034
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setIconStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
            "Lcom/google/android/material/chip/Chip;",
            ">;)V"
        }
    .end annotation

    .line 957
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListenerInternal:Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_0

    return-void

    .line 1291
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutDirection(I)V

    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 660
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLines(I)V

    return-void

    .line 658
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 676
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxLines(I)V

    return-void

    .line 674
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 681
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMaxWidth(I)V

    .line 682
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 668
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setMinLines(I)V

    return-void

    .line 666
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 708
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->onCloseIconClickListener:Landroid/view/View$OnClickListener;

    .line 714
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateAccessibilityDelegate()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1271
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1272
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setRippleColorResource(I)V

    .line 1255
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipDrawable;->getUseCompatRipple()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1256
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateFrameworkRippleBackground()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V
    .locals 1

    .line 1943
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1944
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpec(Lcom/google/android/material/animation/MotionSpec;)V

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1932
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setShowMotionSpecResource(I)V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 652
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setSingleLine(Z)V

    return-void

    .line 650
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Chip does not support multi-line text"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1300
    const-string p1, ""

    .line 1302
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->shouldDrawText()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1303
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p2, :cond_3

    .line 1304
    invoke-virtual {p2, p1}, Lcom/google/android/material/chip/ChipDrawable;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 1354
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setTextAppearance(I)V

    .line 1355
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1358
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 1345
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextAppearance(Landroid/content/Context;I)V

    .line 1346
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz p1, :cond_0

    .line 1347
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearanceResource(I)V

    .line 1349
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 1340
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1

    .line 1327
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 2148
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPadding(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1

    .line 2136
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2137
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextEndPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    .line 1363
    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 1365
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextSize(F)V

    .line 1368
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->updateTextPaintDrawState()V

    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 2114
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2115
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPadding(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->chipDrawable:Lcom/google/android/material/chip/ChipDrawable;

    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/ChipDrawable;->setTextStartPaddingResource(I)V

    :cond_0
    return-void
.end method

.method public shouldEnsureMinTouchTargetSize()Z
    .locals 1

    .line 2263
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->ensureMinTouchTargetSize:Z

    return v0
.end method
