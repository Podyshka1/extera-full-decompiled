.class Lorg/telegram/ui/Components/ProfileActionsView$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ProfileActionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Action"
.end annotation


# instance fields
.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/Rect;

.field callDelay:I

.field private drawableAnimated:Lorg/telegram/ui/Components/RLottieDrawable;

.field private drawableFilled:Landroid/graphics/drawable/Drawable;

.field private drawableOutline:Landroid/graphics/drawable/Drawable;

.field private final from:Landroid/graphics/RectF;

.field iconScale:F

.field iconTranslationY:I

.field isDeleted:Z

.field isDeleting:Z

.field isLoading:Z

.field isOpening:Z

.field key:I

.field loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

.field final prevRect:Landroid/graphics/RectF;

.field final rect:Landroid/graphics/RectF;

.field private final rippleDrawable:Landroid/graphics/drawable/Drawable;

.field startTime:J

.field stopDelay:I

.field supportsAnimate:I

.field supportsLoading:Z

.field private text:Lorg/telegram/ui/Components/Text;

.field private textScale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ProfileActionsView;

.field private final to:Landroid/graphics/RectF;

.field wasFirst:Z

.field wasLast:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbounce(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/ButtonBounce;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbounds(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawableAnimated(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/RLottieDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableAnimated:Lorg/telegram/ui/Components/RLottieDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawableFilled(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableFilled:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawableOutline(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableOutline:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrippleDrawable(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettext(Lorg/telegram/ui/Components/ProfileActionsView$Action;)Lorg/telegram/ui/Components/Text;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->text:Lorg/telegram/ui/Components/Text;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->textScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputtextScale(Lorg/telegram/ui/Components/ProfileActionsView$Action;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->textScale:F

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ProfileActionsView;)V
    .locals 8

    .line 1108
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1052
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    .line 1053
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    .line 1055
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0xfa

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1056
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    .line 1057
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    .line 1059
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1064
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->textScale:F

    const/4 v0, 0x0

    .line 1089
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isOpening:Z

    .line 1090
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    .line 1091
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    .line 1094
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->iconTranslationY:I

    .line 1095
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->iconScale:F

    .line 1101
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->callDelay:I

    .line 1105
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->createRippleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ProfileActionsView;Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V
    .locals 8

    .line 1111
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1052
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    .line 1053
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    .line 1055
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0xfa

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1056
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    .line 1057
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    .line 1059
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1064
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->textScale:F

    const/4 v0, 0x0

    .line 1089
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isOpening:Z

    .line 1090
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    .line 1091
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    .line 1094
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->iconTranslationY:I

    .line 1095
    iput p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->iconScale:F

    .line 1101
    iput v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->callDelay:I

    .line 1105
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->createRippleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 1112
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->update(Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V

    return-void
.end method

.method private animatePosition()V
    .locals 4

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1246
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1247
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, v1, Landroid/graphics/RectF;->right:F

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1249
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isOpening:Z

    .line 1250
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1251
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleted:Z

    :cond_1
    return-void
.end method

.method private checkBounds()V
    .locals 2

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableAnimated:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableFilled:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1078
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableOutline:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1079
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private createRippleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x10ffffff

    const/16 v2, 0x10

    .line 1127
    invoke-static {v0, v1, v2, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object v0
.end method


# virtual methods
.method public delete()V
    .locals 7

    .line 1133
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->loadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    .line 1135
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->supportsLoading:Z

    .line 1136
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isLoading:Z

    :cond_0
    const/4 v0, 0x1

    .line 1138
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    .line 1140
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetfirstAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v2

    if-ne p0, v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->wasFirst:Z

    .line 1141
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetlastAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v2

    if-ne p0, v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->wasLast:Z

    .line 1143
    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v6, v5, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    .line 1144
    :goto_2
    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v5, v5, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    sub-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v1, v3

    .line 1149
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1150
    iget-object v3, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v1, :cond_6

    .line 1153
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    .line 1155
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_5

    .line 1156
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v1, v1, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    if-ne v1, v0, :cond_9

    .line 1157
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_5

    .line 1159
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1161
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void
.end method

.method public getAlpha()F
    .locals 2

    .line 1116
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    sub-float/2addr v1, v0

    return v1

    .line 1118
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isOpening:Z

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getScale()F
    .locals 2

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d23d70a    # 0.04f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    return v0
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1068
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->checkBounds()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1084
    new-instance v0, Lorg/telegram/ui/Components/Text;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    const/4 p1, 0x3

    .line 1085
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Text;->multiline(I)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1086
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Text;->align(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Components/Text;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->text:Lorg/telegram/ui/Components/Text;

    return-void
.end method

.method public update(Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;)V
    .locals 3

    .line 1261
    iget v0, p1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->filledIcon:I

    iget v1, p1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->outlineIcon:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updateDrawable(III)V

    .line 1262
    iget p1, p1, Lorg/telegram/ui/Components/ProfileActionsView$ActionButton;->title:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateDrawable(III)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1268
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/high16 v2, 0x42600000    # 56.0f

    .line 1269
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    .line 1270
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 1271
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1272
    iput-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableAnimated:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_0

    .line 1274
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableAnimated:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_0
    if-eqz p2, :cond_1

    .line 1276
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableFilled:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    .line 1277
    iget-object p1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->drawableOutline:Landroid/graphics/drawable/Drawable;

    .line 1279
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->checkBounds()V

    return-void
.end method

.method public updateDrawable(ZI)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1167
    invoke-virtual {p0, p2, v0, v0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updateDrawable(III)V

    return-void

    .line 1169
    :cond_0
    invoke-virtual {p0, v0, p2, p2}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->updateDrawable(III)V

    return-void
.end method

.method public updatePosition()V
    .locals 8

    .line 1180
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-eqz v0, :cond_0

    .line 1181
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->animatePosition()V

    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ProfileActionsView;->isOpeningLayout:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1186
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isOpening:Z

    .line 1187
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    return-void

    .line 1194
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_10

    .line 1195
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isOpening:Z

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v7, v6, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    .line 1200
    :goto_0
    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v7, v6, Lorg/telegram/ui/Components/ProfileActionsView;->xpadding:F

    sub-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v5, :cond_4

    if-nez v0, :cond_6

    .line 1202
    :cond_4
    invoke-static {v6}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetfirstAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetfirstAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    iget v6, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    if-eq v1, v6, :cond_6

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetlastAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetlastAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    iget v1, v1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    iget v6, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    if-ne v1, v6, :cond_7

    :cond_6
    move v0, v2

    move v5, v0

    .line 1208
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->key:I

    const/4 v6, 0x5

    if-eq v1, v6, :cond_8

    const/4 v6, 0x6

    if-ne v1, v6, :cond_9

    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v6, v6, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    if-nez v6, :cond_9

    :goto_2
    move v0, v2

    move v2, v3

    goto :goto_3

    :cond_9
    const/4 v6, 0x3

    if-eq v1, v6, :cond_a

    const/4 v6, 0x2

    if-ne v1, v6, :cond_b

    .line 1211
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    iget v1, v1, Lorg/telegram/ui/Components/ProfileActionsView;->mode:I

    if-ne v1, v3, :cond_b

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    .line 1214
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetfirstAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetfirstAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-nez v1, :cond_c

    move v0, v3

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    .line 1217
    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetlastAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->this$0:Lorg/telegram/ui/Components/ProfileActionsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProfileActionsView;->-$$Nest$fgetlastAction(Lorg/telegram/ui/Components/ProfileActionsView;)Lorg/telegram/ui/Components/ProfileActionsView$Action;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ProfileActionsView$Action;->isDeleting:Z

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    move v2, v5

    :goto_3
    if-eqz v2, :cond_e

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_4

    :cond_e
    if-eqz v0, :cond_f

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_4

    .line 1227
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1230
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1233
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->from:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->to:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->positionFraction:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 1239
    :cond_11
    invoke-direct {p0}, Lorg/telegram/ui/Components/ProfileActionsView$Action;->animatePosition()V

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->prevRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/ProfileActionsView$Action;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
