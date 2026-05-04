.class public Lorg/telegram/ui/ActionBar/AlertDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;,
        Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;,
        Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;,
        Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private aboveMessageView:Landroid/view/View;

.field private additioanalHorizontalPadding:I

.field private aspectRatio:F

.field private backgroundColor:I

.field private backgroundPaddings:Landroid/graphics/Rect;

.field blurAlpha:F

.field private blurBehind:Z

.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurMatrix:Landroid/graphics/Matrix;

.field private blurOpacity:F

.field private blurPaint:Landroid/graphics/Paint;

.field private blurShader:Landroid/graphics/BitmapShader;

.field private blurredBackground:Z

.field private blurredNativeBackground:Z

.field private bottomView:Landroid/view/View;

.field protected buttonsLayout:Landroid/view/ViewGroup;

.field private canCacnel:Z

.field private cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private checkFocusable:Z

.field private containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

.field private containerViewLocation:[I

.field private contentScrollView:Landroid/widget/ScrollView;

.field private currentProgress:I

.field private customMaxHeight:Z

.field private customView:Landroid/view/View;

.field private customViewHeight:I

.field private customViewOffset:I

.field private customWidth:I

.field private dialogButtonColorKey:I

.field private dimAlpha:F

.field private dimBlurPaint:Landroid/graphics/Paint;

.field private dimCustom:Z

.field private dimEnabled:Z

.field private dismissDialogByButtons:Z

.field private dismissRunnable:Ljava/lang/Runnable;

.field private dismissed:Z

.field private drawBackground:Z

.field private focusable:Z

.field private fullscreenContainerView:Landroid/widget/FrameLayout;

.field private itemIcons:[I

.field private itemViews:Ljava/util/ArrayList;

.field private items:[Ljava/lang/CharSequence;

.field private lastScreenWidth:I

.field private lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

.field private lineProgressViewPercent:Landroid/widget/TextView;

.field private message:Ljava/lang/CharSequence;

.field private messageTextView:Landroid/widget/TextView;

.field private messageTextViewClickable:Z

.field private needStarsBalance:Z

.field private negative2ButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

.field private negative2ButtonText:Ljava/lang/CharSequence;

.field private negativeButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

.field private negativeButtonText:Ljava/lang/CharSequence;

.field private neutralButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

.field private neutralButtonText:Ljava/lang/CharSequence;

.field private notDrawBackgroundOnTopView:Z

.field private onBackButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

.field private onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private overridenDissmissListener:Lorg/telegram/messenger/Utilities$Callback;

.field private positiveButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

.field private positiveButtonText:Ljava/lang/CharSequence;

.field private progressViewContainer:Landroid/widget/FrameLayout;

.field private progressViewStyle:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollContainer:Landroid/widget/LinearLayout;

.field private secondTitle:Ljava/lang/CharSequence;

.field private secondTitleTextView:Landroid/widget/TextView;

.field private shadow:[Landroid/graphics/drawable/BitmapDrawable;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shadowVisibility:[Z

.field private showRunnable:Ljava/lang/Runnable;

.field private shownAt:J

.field private starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

.field private subtitle:Ljava/lang/CharSequence;

.field private subtitleTextView:Landroid/widget/TextView;

.field private title:Ljava/lang/CharSequence;

.field private titleContainer:Landroid/widget/FrameLayout;

.field private titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

.field private topAnimationAutoRepeat:Z

.field private topAnimationId:I

.field private topAnimationIsNew:Z

.field private topAnimationLayerColors:Ljava/util/Map;

.field private topAnimationSize:I

.field private topBackgroundColor:I

.field private topDrawable:Landroid/graphics/drawable/Drawable;

.field private topHeight:I

.field private topImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private topResId:I

.field private topView:Landroid/view/View;

.field private verticalButtons:Z

.field private withCancelDialog:Z


# direct methods
.method public static synthetic $r8$lambda$B4fp4rFk_mbEv-WTBZXG5SwPoB0(Landroid/view/View;)V
    .locals 1

    .line 1327
    instance-of v0, p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;

    if-eqz v0, :cond_0

    .line 1328
    check-cast p0, Lorg/telegram/ui/ActionBar/TextViewWithLoading;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->setLoading(ZZ)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$DXM_s6CuDfx-TxDGYrvPlfKL79g(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$7(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FXEBdsAyzJG0wArGveg3L0IRLPM(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$showCancelAlert$12(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KoQ32WBjcO_pBlLSNc6Na6gKXMs(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$makeButtonLoading$10(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQkqNvGIpA-9WQ3xZfCNyfS29SE(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$4(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3jilUJATzttMutpPOVyBWF9O6E(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i4y60nxOZ1o_5TDSG1NbFot71Tk(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kW3dnLaIe4bjxj8t1vSTA0XytLk(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$dismiss$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$kmzbX9kQQSGWmv3wbWDdeqabd9E(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$mgRAJWZOc6xEJG7R4rqmm0uuj9Y(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oIZuucIc5F7k41A6qaIo344hDvg(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$6(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qw5AyPIqsdS8utJ8X9AgUXFUC9Q(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$8(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uo1Y8ueB27IfaLa5iwRKSkEFwDA(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$showCancelAlert$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDPYCjOl00VlFswMfb0Hnu0Seek(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->lambda$inflateContent$5(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaspectRatio(Lorg/telegram/ui/ActionBar/AlertDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->aspectRatio:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundColor(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundPaddings(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurMatrix(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Matrix;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurOpacity(Lorg/telegram/ui/ActionBar/AlertDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurOpacity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetblurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurShader(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/BitmapShader;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurredBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetblurredNativeBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainerViewLocation(Lorg/telegram/ui/ActionBar/AlertDialog;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerViewLocation:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentScrollView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomWidth(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdimAlpha(Lorg/telegram/ui/ActionBar/AlertDialog;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdimBlurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimBlurPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdismissRunnable(Lorg/telegram/ui/ActionBar/AlertDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdrawBackground(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastScreenWidth(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlineProgressView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlineProgressViewPercent(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotDrawBackgroundOnTopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->notDrawBackgroundOnTopView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonScrollChangedListener(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressViewContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressViewStyle(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsecondTitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshadow(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowAnimation(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowDrawable(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsubtitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleContainer(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleTextView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/spoilers/SpoilersTextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopAnimationIsNew(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopAnimationSize(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopHeight(Lorg/telegram/ui/ActionBar/AlertDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopImageView(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopView(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwithCancelDialog(Lorg/telegram/ui/ActionBar/AlertDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->withCancelDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaboveMessageView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->aboveMessageView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputadditioanalHorizontalPadding(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->additioanalHorizontalPadding:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputaspectRatio(Lorg/telegram/ui/ActionBar/AlertDialog;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->aspectRatio:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputblurredBackground(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbottomView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->bottomView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcheckFocusable(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->checkFocusable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomMaxHeight(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customMaxHeight:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomViewHeight(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomViewOffset(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcustomWidth(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdialogButtonColorKey(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdimAlpha(Lorg/telegram/ui/ActionBar/AlertDialog;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdimBlurPaint(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/Paint;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimBlurPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdimEnabled(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitemIcons(Lorg/telegram/ui/ActionBar/AlertDialog;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputitems(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastScreenWidth(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmessage(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmessageTextViewClickable(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextViewClickable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnegativeButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnegativeButtonText(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneutralButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneutralButtonText(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnotDrawBackgroundOnTopView(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->notDrawBackgroundOnTopView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonBackButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onBackButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonClickListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonDismissListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonScrollChangedListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoverridenDissmissListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->overridenDissmissListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpositiveButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpositiveButtonText(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsubtitle(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtitle(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopAnimationAutoRepeat(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationAutoRepeat:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopAnimationId(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopAnimationIsNew(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopAnimationLayerColors(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationLayerColors:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopAnimationSize(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopBackgroundColor(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topBackgroundColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopDrawable(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopResId(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topResId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputverticalButtons(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunShadowAnimation(Lorg/telegram/ui/ActionBar/AlertDialog;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->runShadowAnimation(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    .line 301
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 96
    iput v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customWidth:I

    const/4 v0, -0x2

    .line 101
    iput v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewHeight:I

    const/4 v0, 0x2

    .line 112
    new-array v1, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    .line 113
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    .line 114
    new-array v1, v0, [Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    const/16 v1, 0xc

    .line 115
    iput v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewOffset:I

    .line 122
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButton:I

    iput v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    const/16 v1, 0x84

    .line 146
    iput v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextViewClickable:Z

    .line 154
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->canCacnel:Z

    .line 156
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    .line 172
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerViewLocation:[I

    .line 178
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->checkFocusable:Z

    .line 194
    new-instance v0, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    .line 208
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimEnabled:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 209
    iput v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimCustom:Z

    .line 212
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationAutoRepeat:Z

    const v2, 0x3f4ccccd    # 0.8f

    .line 216
    iput v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurAlpha:F

    .line 302
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 304
    iput p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    .line 305
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    .line 306
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p3

    const v3, 0x3f389375    # 0.721f

    cmpg-float p3, p3, v3

    if-gez p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    .line 307
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->supportsNativeBlur()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    if-nez v3, :cond_2

    .line 308
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->supportsNativeBlur()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x100

    invoke-static {v3}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    .line 310
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    .line 311
    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v4, :cond_7

    .line 312
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p2, v3, :cond_5

    const v2, 0x3f0ccccd    # 0.55f

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    const v2, 0x3f7c28f6    # 0.985f

    .line 313
    :goto_3
    iput v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurOpacity:F

    .line 314
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 317
    :cond_7
    iget p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-ne p1, v3, :cond_8

    goto :goto_4

    :cond_8
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->withCancelDialog:Z

    return-void
.end method

.method private canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 1481
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1484
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1487
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 1488
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 1491
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1492
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private synthetic lambda$dismiss$13()V
    .locals 2

    .line 1532
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$inflateContent$1(Landroid/view/View;)V
    .locals 0

    .line 674
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$inflateContent$2(Landroid/view/View;)V
    .locals 2

    .line 681
    new-instance p1, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsIntroActivity$StarsOptionsSheet;->show()V

    return-void
.end method

.method private synthetic lambda$inflateContent$3(Landroid/view/View;)V
    .locals 1

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 923
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$inflateContent$4(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 1093
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    if-eqz p1, :cond_1

    const/4 p2, -0x1

    .line 1095
    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;->onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1097
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_2

    .line 1098
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$inflateContent$5(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 1134
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    if-eqz p1, :cond_1

    const/4 p2, -0x2

    .line 1136
    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;->onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1138
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_2

    .line 1139
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$inflateContent$6(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 1175
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1176
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    if-eqz p1, :cond_1

    const/4 p2, -0x2

    .line 1177
    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;->onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1179
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_2

    .line 1180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$inflateContent$7(Lorg/telegram/ui/ActionBar/TextViewWithLoading;Landroid/view/View;)V
    .locals 0

    .line 1216
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1217
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negative2ButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    if-eqz p1, :cond_1

    const/4 p2, -0x2

    .line 1218
    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;->onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1220
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    if-eqz p1, :cond_2

    .line 1221
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$inflateContent$8(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1297
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    .line 1299
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    .line 1300
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    .line 1301
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1302
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x41000000    # 8.0f

    .line 1303
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1304
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerViewLocation:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    neg-int v2, v2

    int-to-float v2, v2

    aget v0, v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1305
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1306
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$makeButtonLoading$10(Landroid/view/View;Z)V
    .locals 2

    .line 1331
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/TextViewWithLoading;

    if-eqz v0, :cond_0

    .line 1332
    check-cast p1, Lorg/telegram/ui/ActionBar/TextViewWithLoading;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->setLoading(ZZ)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1335
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$showCancelAlert$11(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 1412
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p1, :cond_0

    .line 1413
    invoke-interface {p1, p0}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 1415
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showCancelAlert$12(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1417
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private runShadowAnimation(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    .line 1427
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowVisibility:[Z

    aput-boolean p2, v0, p1

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 1429
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1431
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v1, v0, p1

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_4

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/16 p2, 0xff

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_0
    filled-new-array {p2}, [I

    move-result-object p2

    const-string v3, "alpha"

    invoke-static {v0, v3, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1435
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p2, p2, p1

    const-wide/16 v0, 0x96

    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1436
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p2, p2, p1

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$9;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$9;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1452
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1454
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private updateLineProgressTextView()V
    .locals 4

    .line 1473
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%d%%"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 1501
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 1503
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->overridenDissmissListener:Lorg/telegram/messenger/Utilities$Callback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1526
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->overridenDissmissListener:Lorg/telegram/messenger/Utilities$Callback;

    .line 1527
    new-instance v1, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1530
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1531
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissed:Z

    .line 1532
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    .line 1534
    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1536
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_3

    .line 1537
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1540
    :cond_3
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    :catchall_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1547
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1548
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurShader:Landroid/graphics/BitmapShader;

    .line 1549
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurPaint:Landroid/graphics/Paint;

    .line 1550
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :goto_0
    return-void
.end method

.method public dismissUnless(J)V
    .locals 4

    .line 1509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shownAt:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 1511
    new-instance v2, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    sub-long/2addr v0, p1

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public getButton(I)Landroid/view/View;
    .locals 1

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1660
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getButtonsLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 1709
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContainerView()Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    return-object v0
.end method

.method public getFullscreenContainerView()Landroid/widget/FrameLayout;
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->fullscreenContainerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMessageTextView()Landroid/widget/TextView;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStarsBalanceCloud()Lorg/telegram/ui/Stars/BalanceCloud;
    .locals 1

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method protected inflateContent(Z)Landroid/view/View;
    .locals 31

    move-object/from16 v0, p0

    .line 643
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    const/4 v2, 0x1

    .line 644
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 645
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x2

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-nez v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-ne v1, v7, :cond_2

    :cond_0
    iget v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-eq v1, v5, :cond_2

    .line 646
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 647
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 648
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    if-nez v1, :cond_1

    .line 649
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 651
    :cond_1
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    goto :goto_0

    .line 653
    :cond_2
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->notDrawBackgroundOnTopView:Z

    if-eqz v1, :cond_3

    .line 654
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 655
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 656
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 657
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    goto :goto_0

    .line 659
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 660
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 661
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->boundsWithPaddingRoundRect(IF)Landroid/view/ViewOutlineProvider;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 664
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 666
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->drawBackground:Z

    .line 669
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    .line 670
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->needStarsBalance:Z

    const/16 v10, 0x11

    const/4 v11, -0x2

    if-eqz v9, :cond_6

    .line 671
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->fullscreenContainerView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    .line 672
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->fullscreenContainerView:Landroid/widget/FrameLayout;

    .line 673
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda1;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    if-nez v1, :cond_5

    .line 678
    new-instance v1, Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v9, v12, v13}, Lorg/telegram/ui/Stars/BalanceCloud;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    .line 679
    invoke-static {v1}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 680
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 685
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 686
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->fullscreenContainerView:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    invoke-static {v11, v11, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->fullscreenContainerView:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->starsBalanceCloud:Lorg/telegram/ui/Stars/BalanceCloud;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x31

    const/4 v15, 0x0

    const/high16 v16, 0x42400000    # 48.0f

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->fullscreenContainerView:Landroid/widget/FrameLayout;

    :cond_6
    const/4 v9, -0x1

    if-eqz p1, :cond_9

    .line 691
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->needStarsBalance:Z

    if-eqz v12, :cond_7

    .line 692
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x77

    .line 693
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 694
    invoke-virtual {v0, v1, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 695
    :cond_7
    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customWidth:I

    if-lez v12, :cond_8

    .line 696
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 697
    iput v10, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    invoke-virtual {v0, v1, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 700
    :cond_8
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 704
    :cond_9
    :goto_1
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    if-nez v12, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-nez v12, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negative2ButtonText:Ljava/lang/CharSequence;

    if-nez v12, :cond_b

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_a

    goto :goto_2

    :cond_a
    move v12, v8

    goto :goto_3

    :cond_b
    :goto_2
    move v12, v2

    .line 706
    :goto_3
    iget v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topResId:I

    const/4 v14, 0x0

    const/high16 v15, 0x41800000    # 16.0f

    if-nez v13, :cond_c

    iget v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationId:I

    if-nez v13, :cond_c

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_d

    :cond_c
    move/from16 v16, v6

    goto :goto_4

    .line 777
    :cond_d
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    if-eqz v13, :cond_e

    .line 778
    invoke-virtual {v13, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 779
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    move/from16 v16, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topView:Landroid/view/View;

    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v18, v3

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :cond_e
    move/from16 v16, v6

    goto/16 :goto_9

    .line 707
    :goto_4
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 708
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_f

    .line 709
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v3, Lorg/telegram/ui/Components/AttachableDrawable;

    if-eqz v6, :cond_12

    .line 711
    check-cast v3, Lorg/telegram/ui/Components/AttachableDrawable;

    .line 712
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v13, Lorg/telegram/ui/ActionBar/AlertDialog$1;

    invoke-direct {v13, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/AttachableDrawable;)V

    invoke-virtual {v6, v13}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 722
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-interface {v3, v6}, Lorg/telegram/ui/Components/AttachableDrawable;->setParent(Landroid/view/View;)V

    goto :goto_6

    .line 724
    :cond_f
    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topResId:I

    if-eqz v6, :cond_10

    .line 725
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_6

    .line 727
    :cond_10
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationAutoRepeat:Z

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 728
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationId:I

    iget v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationSize:I

    invoke-virtual {v3, v6, v13, v13}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 729
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationLayerColors:Ljava/util/Map;

    if-eqz v3, :cond_11

    .line 730
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    .line 731
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationLayerColors:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 732
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v10, v13}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    const/16 v10, 0x11

    goto :goto_5

    .line 735
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 737
    :cond_12
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 738
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v3, :cond_13

    .line 739
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 740
    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topBackgroundColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v6, 0x43000000    # 128.0f

    .line 741
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 742
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$2;

    invoke-direct {v10, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x5c

    .line 766
    iput v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    goto :goto_7

    .line 768
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topBackgroundColor:I

    invoke-static {v6, v8, v10}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 770
    :goto_7
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v3, :cond_14

    .line 771
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_8

    .line 773
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 775
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 776
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topHeight:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/16 v26, 0x33

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v25, v10

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    :goto_9
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    const/16 v17, 0x5

    if-eqz v3, :cond_1c

    .line 783
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    .line 784
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    const/16 v29, 0x18

    const/16 v30, 0x0

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v27, 0x18

    const/16 v28, 0x0

    move/from16 v26, v10

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    new-instance v3, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, v8}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    .line 787
    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 788
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iput v7, v3, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->cacheType:I

    .line 789
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 791
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 792
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 793
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v6, :cond_15

    move v6, v2

    goto :goto_a

    :cond_15
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_16

    move/from16 v6, v17

    goto :goto_a

    :cond_16
    move v6, v7

    :goto_a
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 794
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v10, :cond_17

    move/from16 v20, v2

    goto :goto_b

    :cond_17
    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_18

    move/from16 v20, v17

    goto :goto_b

    :cond_18
    move/from16 v20, v7

    :goto_b
    or-int/lit8 v26, v20, 0x30

    if-eqz v10, :cond_19

    const/high16 v30, 0x40800000    # 4.0f

    goto :goto_d

    :cond_19
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1a

    move v10, v5

    goto :goto_c

    :cond_1a
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v10, :cond_1b

    const/16 v10, 0xe

    goto :goto_c

    :cond_1b
    const/16 v10, 0xa

    :goto_c
    int-to-float v10, v10

    move/from16 v30, v10

    :goto_d
    const/16 v24, -0x2

    const/high16 v25, -0x40000000    # -2.0f

    const/16 v27, 0x0

    const/high16 v28, 0x41980000    # 19.0f

    const/16 v29, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitle:Ljava/lang/CharSequence;

    const/high16 v6, 0x41900000    # 18.0f

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1f

    .line 798
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    .line 799
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 802
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_1d

    move v10, v7

    goto :goto_e

    :cond_1d
    move/from16 v10, v17

    :goto_e
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 803
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleContainer:Landroid/widget/FrameLayout;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->secondTitleTextView:Landroid/widget/TextView;

    sget-boolean v20, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v20, :cond_1e

    move/from16 v20, v7

    goto :goto_f

    :cond_1e
    move/from16 v20, v17

    :goto_f
    or-int/lit8 v26, v20, 0x30

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v24, -0x2

    const/high16 v25, -0x40000000    # -2.0f

    const/16 v27, 0x0

    const/high16 v28, 0x41a80000    # 21.0f

    move/from16 v20, v4

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    :cond_1f
    move/from16 v20, v4

    .line 806
    :goto_10
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    const/high16 v4, 0x41600000    # 14.0f

    if-eqz v3, :cond_23

    .line 807
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    .line 808
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 810
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 811
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_20

    move/from16 v10, v17

    goto :goto_11

    :cond_20
    move v10, v7

    :goto_11
    or-int/lit8 v10, v10, 0x30

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 812
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->subtitleTextView:Landroid/widget/TextView;

    sget-boolean v21, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v21, :cond_21

    move/from16 v21, v17

    goto :goto_12

    :cond_21
    move/from16 v21, v7

    :goto_12
    or-int/lit8 v26, v21, 0x30

    move/from16 v21, v6

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_22

    const/16 v30, 0xe

    goto :goto_13

    :cond_22
    const/16 v30, 0xa

    :goto_13
    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v27, 0x18

    const/16 v28, 0x0

    const/16 v29, 0x18

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    :cond_23
    move/from16 v21, v6

    .line 815
    :goto_14
    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-nez v3, :cond_24

    .line 816
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v6, v3, v8

    .line 817
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lorg/telegram/messenger/R$drawable;->header_shadow_reverse:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v6, v3, v2

    .line 818
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v8

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 819
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 820
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v8

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 821
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadow:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 823
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$3;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    .line 840
    invoke-virtual {v3, v8}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 841
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-static {v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 842
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x2

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    .line 845
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 846
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v9, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    :cond_24
    new-instance v3, Lorg/telegram/ui/Components/EffectsTextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/EffectsTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    .line 850
    invoke-static {v3}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    .line 851
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v6, :cond_25

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    goto :goto_15

    :cond_25
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    :goto_15
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 852
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 853
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 854
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 855
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextViewClickable:Z

    if-nez v3, :cond_26

    .line 856
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    .line 857
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 859
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v6, :cond_27

    move v6, v2

    goto :goto_16

    :cond_27
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_28

    move/from16 v6, v17

    goto :goto_16

    :cond_28
    move v6, v7

    :goto_16
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 860
    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-ne v3, v5, :cond_2d

    .line 861
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v10, :cond_29

    move/from16 v10, v17

    goto :goto_17

    :cond_29
    move v10, v7

    :goto_17
    or-int/lit8 v26, v10, 0x30

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    if-nez v10, :cond_2a

    const/16 v10, 0x13

    move/from16 v28, v10

    goto :goto_18

    :cond_2a
    move/from16 v28, v8

    :goto_18
    const/16 v29, 0x18

    const/16 v30, 0x14

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v27, 0x18

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    new-instance v3, Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 864
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/LineProgressView;->setProgressType(I)V

    .line 865
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    int-to-float v6, v6

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v6, v10

    invoke-virtual {v3, v6, v8}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 866
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgress:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 867
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogLineProgressBackground:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/LineProgressView;->setBackColor(I)V

    .line 868
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v30, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x4

    const/16 v26, 0x13

    const/16 v28, 0x0

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    .line 871
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 872
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2b

    move/from16 v6, v17

    goto :goto_19

    :cond_2b
    move v6, v7

    :goto_19
    or-int/lit8 v6, v6, 0x30

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 873
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray2:I

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 874
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 875
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressViewPercent:Landroid/widget/TextView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2c

    move/from16 v6, v17

    goto :goto_1a

    :cond_2c
    move v6, v7

    :goto_1a
    or-int/lit8 v26, v6, 0x30

    const/16 v29, 0x17

    const/16 v30, 0x18

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v27, 0x17

    const/16 v28, 0x4

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->updateLineProgressTextView()V

    move/from16 v19, v5

    goto/16 :goto_1e

    :cond_2d
    if-ne v3, v7, :cond_30

    .line 878
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 879
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 881
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    .line 882
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgressBackground:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    .line 883
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v3, :cond_2e

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    if-eqz v3, :cond_2f

    .line 884
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 886
    :cond_2f
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    const/16 v6, 0x56

    move/from16 v19, v5

    const/16 v10, 0x11

    invoke-static {v6, v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 888
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 889
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setStyle(I)V

    const/high16 v4, 0x42000000    # 32.0f

    .line 890
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 891
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_inlineProgress:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 892
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    const/16 v10, 0x11

    invoke-static {v6, v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1e

    :cond_30
    move/from16 v19, v5

    .line 894
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->aboveMessageView:Landroid/view/View;

    if-eqz v3, :cond_31

    .line 895
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/high16 v28, 0x41b00000    # 22.0f

    const/high16 v29, 0x41400000    # 12.0f

    const/16 v24, -0x1

    const/16 v25, -0x2

    const/high16 v26, 0x41b00000    # 22.0f

    const/high16 v27, 0x40800000    # 4.0f

    invoke-static/range {v24 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    :cond_31
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-boolean v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v5, :cond_32

    move v5, v2

    goto :goto_1b

    :cond_32
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_33

    move/from16 v5, v17

    goto :goto_1b

    :cond_33
    move v5, v7

    :goto_1b
    or-int/lit8 v26, v5, 0x30

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-nez v5, :cond_35

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_34

    goto :goto_1c

    :cond_34
    move/from16 v30, v8

    goto :goto_1d

    :cond_35
    :goto_1c
    iget v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewOffset:I

    move/from16 v30, v5

    :goto_1d
    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v27, 0x18

    const/16 v28, 0x0

    const/16 v29, 0x18

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->bottomView:Landroid/view/View;

    if-eqz v3, :cond_36

    .line 899
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    const/high16 v28, 0x41b00000    # 22.0f

    const/16 v29, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x2

    const/high16 v26, 0x41b00000    # 22.0f

    const/high16 v27, 0x41400000    # 12.0f

    invoke-static/range {v24 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    :cond_36
    :goto_1e
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_37

    .line 903
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f

    .line 906
    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :goto_1f
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    const/16 v5, 0x32

    if-eqz v3, :cond_3a

    move v3, v8

    .line 910
    :goto_20
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    array-length v10, v6

    if-ge v3, v10, :cond_3a

    .line 911
    aget-object v6, v6, v3

    if-nez v6, :cond_38

    const/high16 p1, 0x40800000    # 4.0f

    goto :goto_22

    .line 914
    :cond_38
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 p1, 0x40800000    # 4.0f

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v6, v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 915
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;

    aget-object v10, v10, v3

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I

    if-eqz v13, :cond_39

    aget v13, v13, v3

    goto :goto_21

    :cond_39
    move v13, v8

    :goto_21
    invoke-virtual {v6, v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 916
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 917
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v10, v6, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda3;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3a
    const/high16 p1, 0x40800000    # 4.0f

    .line 927
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 928
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 929
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 930
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 932
    :cond_3b
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customViewHeight:I

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3c
    const/4 v3, 0x7

    if-eqz v12, :cond_51

    .line 935
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-nez v10, :cond_44

    .line 937
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 938
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 939
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 940
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    const/high16 v21, 0x41c00000    # 24.0f

    const/high16 v22, 0x41400000    # 12.0f

    if-eqz v13, :cond_3d

    int-to-float v6, v8

    const/high16 v23, 0x42800000    # 64.0f

    .line 942
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v10, v13, v8, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v6, v12

    float-to-int v6, v6

    goto :goto_23

    :cond_3d
    const/high16 v23, 0x42800000    # 64.0f

    move v6, v8

    .line 944
    :goto_23
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_3f

    if-lez v6, :cond_3e

    .line 945
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    :cond_3e
    int-to-float v6, v6

    .line 946
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v10, v12, v8, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v6, v12

    float-to-int v6, v6

    .line 948
    :cond_3f
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negative2ButtonText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_41

    if-lez v6, :cond_40

    .line 949
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    :cond_40
    int-to-float v6, v6

    .line 950
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negative2ButtonText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v10, v12, v8, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v12

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    add-float/2addr v6, v12

    float-to-int v6, v6

    .line 952
    :cond_41
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_43

    if-lez v6, :cond_42

    .line 953
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v6, v12

    :cond_42
    int-to-float v6, v6

    .line 954
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-virtual {v10, v12, v8, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v10

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    add-float/2addr v6, v10

    float-to-int v6, v6

    .line 956
    :cond_43
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int/2addr v10, v12

    if-le v6, v10, :cond_45

    .line 957
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    goto :goto_24

    :cond_44
    const/high16 v22, 0x41400000    # 12.0f

    const/high16 v23, 0x42800000    # 64.0f

    .line 960
    :cond_45
    :goto_24
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v6, :cond_46

    .line 961
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 962
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 963
    iput-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    goto :goto_25

    .line 965
    :cond_46
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$4;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    .line 1053
    :goto_25
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->bottomView:Landroid/view/View;

    if-eqz v6, :cond_47

    .line 1054
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v21, 0x40c00000    # 6.0f

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v6, v12, v8, v13, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1055
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_26

    :cond_47
    const/high16 v21, 0x40c00000    # 6.0f

    .line 1057
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v6, v10, v12, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1059
    :goto_26
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->containerView:Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogView;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v10, 0x34

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1060
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->topAnimationIsNew:Z

    if-eqz v4, :cond_48

    .line 1061
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1064
    :cond_48
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    const/16 v6, 0x35

    const/16 v10, 0x28

    if-eqz v4, :cond_4a

    .line 1065
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$5;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$5;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 1078
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1079
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1080
    invoke-virtual {v4, v2, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1081
    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->setTextColor(I)V

    const/16 v12, 0x11

    .line 1082
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1083
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1084
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v4, v12, v8, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1087
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v12, :cond_49

    .line 1088
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v9, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_27

    .line 1090
    :cond_49
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v11, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    :goto_27
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    :cond_4a
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4c

    .line 1104
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$6;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$6;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 1117
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 1118
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1119
    invoke-virtual {v4, v2, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1120
    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->setTextColor(I)V

    const/16 v12, 0x11

    .line 1121
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1122
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1123
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1124
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1125
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1127
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v4, v12, v8, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1128
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v12, :cond_4b

    .line 1129
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v9, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_28

    .line 1131
    :cond_4b
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v11, v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    :goto_28
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda5;

    invoke-direct {v12, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    :cond_4c
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4e

    .line 1145
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$7;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v4, v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$7;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 1158
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v12, -0x3

    .line 1159
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1160
    invoke-virtual {v4, v2, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1161
    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->setTextColor(I)V

    const/16 v12, 0x11

    .line 1162
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1163
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1164
    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1165
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1166
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v13

    invoke-static {v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1168
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v4, v12, v8, v13, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1169
    iget-boolean v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v12, :cond_4d

    .line 1170
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v9, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v4, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    .line 1172
    :cond_4d
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    const/16 v13, 0x33

    invoke-static {v11, v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v12, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    :goto_29
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda6;

    invoke-direct {v10, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    :cond_4e
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negative2ButtonText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_50

    .line 1186
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$8;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$8;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V

    .line 1199
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v10, -0x4

    .line 1200
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1201
    invoke-virtual {v4, v2, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1202
    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/ui/ActionBar/TextViewWithLoading;->setTextColor(I)V

    const/16 v12, 0x11

    .line 1203
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1204
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1205
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1206
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1207
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->negative2ButtonText:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget v12, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dialogButtonColorKey:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v12

    invoke-static {v10, v12}, Lorg/telegram/ui/ActionBar/Theme;->getRoundRectSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1209
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v10, v8, v12, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1210
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    const/16 v12, 0x24

    if-eqz v10, :cond_4f

    .line 1211
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v9, v12, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v4, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    .line 1213
    :cond_4f
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-static {v11, v12, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1215
    :goto_2a
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/TextViewWithLoading;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    :cond_50
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->verticalButtons:Z

    if-eqz v4, :cond_52

    move v4, v2

    .line 1227
    :goto_2b
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_52

    .line 1228
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->buttonsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_51
    const/high16 v22, 0x41400000    # 12.0f

    .line 1233
    :cond_52
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1234
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1235
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1236
    iget-boolean v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->needStarsBalance:Z

    if-eqz v10, :cond_53

    .line 1238
    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1239
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1241
    sget v9, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {v4, v9}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_2e

    .line 1242
    :cond_53
    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-ne v10, v7, :cond_54

    .line 1243
    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2e

    .line 1245
    :cond_54
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimEnabled:Z

    if-eqz v9, :cond_55

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimCustom:Z

    if-nez v9, :cond_55

    .line 1246
    iget v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->dimAlpha:F

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1247
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2c

    .line 1249
    :cond_55
    iput v14, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1250
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v9, v9, 0x2

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1253
    :goto_2c
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iput v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->lastScreenWidth:I

    const/high16 v10, 0x42400000    # 48.0f

    .line 1254
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->additioanalHorizontalPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 1256
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_57

    .line 1257
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v10

    if-eqz v10, :cond_56

    const/high16 v10, 0x43df0000    # 446.0f

    .line 1258
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_2d

    :cond_56
    const/high16 v10, 0x43f80000    # 496.0f

    .line 1260
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    goto :goto_2d

    :cond_57
    const/high16 v10, 0x43b20000    # 356.0f

    .line 1263
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    .line 1266
    :goto_2d
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundPaddings:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v11

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1268
    :goto_2e
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;

    const/4 v10, 0x4

    if-eqz v9, :cond_59

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->checkFocusable:Z

    if-eqz v11, :cond_59

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;->canTextInput(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_58

    goto :goto_2f

    .line 1271
    :cond_58
    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_30

    .line 1269
    :cond_59
    :goto_2f
    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x20000

    or-int/2addr v9, v11

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1273
    :goto_30
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-lt v9, v11, :cond_5a

    .line 1274
    invoke-static {v6, v8}, Lorg/telegram/messenger/AndroidUtilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1277
    :cond_5a
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    if-eqz v9, :cond_5c

    .line 1278
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->supportsNativeBlur()Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 1279
    iget v9, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    if-nez v9, :cond_5c

    .line 1280
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredNativeBackground:Z

    .line 1281
    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 1282
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    .line 1283
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v11, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v12, 0x8

    new-array v12, v12, [F

    aput v5, v12, v8

    aput v5, v12, v2

    aput v5, v12, v19

    aput v5, v12, v7

    aput v5, v12, v10

    aput v5, v12, v17

    const/4 v2, 0x6

    aput v5, v12, v2

    aput v5, v12, v3

    const/4 v2, 0x0

    invoke-direct {v11, v12, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1284
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    iget v5, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurAlpha:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v3, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1285
    invoke-virtual {v4, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1286
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBehind:Z

    if-eqz v2, :cond_5c

    .line 1287
    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v10

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x14

    .line 1288
    invoke-virtual {v6, v2}, Landroid/view/WindowManager$LayoutParams;->setBlurBehindRadius(I)V

    goto :goto_31

    .line 1292
    :cond_5b
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    move/from16 v3, v16

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->makeGlobalBlurBitmap(Lorg/telegram/messenger/Utilities$Callback;F)V

    .line 1311
    :cond_5c
    :goto_31
    invoke-virtual {v4, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1667
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1668
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->scrollContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isDismissed()Z
    .locals 1

    .line 1519
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissed:Z

    return v0
.end method

.method public makeButtonLoading(I)Lorg/telegram/messenger/browser/Browser$Progress;
    .locals 1

    const/4 v0, 0x1

    .line 1318
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->makeButtonLoading(IZZ)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    return-object p1
.end method

.method public makeButtonLoading(IZZ)Lorg/telegram/messenger/browser/Browser$Progress;
    .locals 2

    .line 1322
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 1324
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    .line 1326
    :cond_0
    new-instance p3, Lorg/telegram/messenger/browser/Browser$Progress;

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda12;-><init>(Landroid/view/View;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;Z)V

    invoke-direct {p3, v0, v1}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object p3
.end method

.method public onBackPressed()V
    .locals 2

    .line 1349
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onBackButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    .line 1351
    invoke-interface {v0, p0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;->onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1342
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1343
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->inflateContent(Z)Landroid/view/View;

    .line 1344
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public redPositive()V
    .locals 2

    const/4 v0, -0x1

    .line 231
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1673
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    .line 1674
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    .line 1373
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    .line 1374
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1375
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setBlurParams(FZZ)V
    .locals 0

    .line 221
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurAlpha:F

    .line 222
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurBehind:Z

    .line 223
    iput-boolean p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->blurredBackground:Z

    return-void
.end method

.method public setCanCancel(Z)V
    .locals 0

    .line 1477
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->canCacnel:Z

    return-void
.end method

.method public setCancelDialog(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->withCancelDialog:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1556
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setDismissDialogByButtons(Z)V
    .locals 0

    .line 1461
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissDialogByButtons:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 1356
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->focusable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1359
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->focusable:Z

    .line 1360
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1361
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1362
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->focusable:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    .line 1363
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1364
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    .line 1366
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1367
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1369
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setItemColor(III)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1612
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;

    .line 1613
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->-$$Nest$fgettextView(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1614
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;->-$$Nest$fgetimageView(Lorg/telegram/ui/ActionBar/AlertDialog$AlertDialogCell;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1622
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1625
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1628
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setMessageLineSpacing(F)V
    .locals 2

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1399
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 1599
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;

    .line 1600
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;

    .line 1605
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 1687
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 1688
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 1594
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;

    .line 1595
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method public setPositiveButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V
    .locals 0

    .line 1692
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1465
    iput p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->currentProgress:I

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/4 v1, 0x1

    .line 1467
    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 1468
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->updateLineProgressTextView()V

    :cond_0
    return-void
.end method

.method public setShowStarsBalance(Z)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    .line 621
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->needStarsBalance:Z

    return-object p0
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1380
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 1383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setTextSize(II)V
    .locals 2

    .line 1389
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 1390
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1392
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->messageTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    int-to-float p2, p2

    .line 1393
    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1583
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->titleTextView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    if-eqz v0, :cond_0

    .line 1585
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 324
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isSafeToShow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->dismissed:Z

    .line 326
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->progressViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xbe

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 336
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->shownAt:J

    return-void
.end method

.method public showCancelAlert()V
    .locals 3

    .line 1404
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->canCacnel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1407
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1408
    sget v1, Lorg/telegram/messenger/R$string;->StopLoadingTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1409
    sget v1, Lorg/telegram/messenger/R$string;->StopLoading:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1410
    sget v1, Lorg/telegram/messenger/R$string;->WaitMore:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1411
    sget v1, Lorg/telegram/messenger/R$string;->Stop:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1417
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1419
    :try_start_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->cancelDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public showDelayed(J)V
    .locals 1

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->showRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected supportsNativeBlur()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1680
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog;->contentScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    .line 1681
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
