.class public Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private final red:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1721
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 1913
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->red:[Z

    if-nez p1, :cond_0

    .line 1730
    sget-object p1, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1731
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 1733
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->createAlertDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 1725
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method protected constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 1

    .line 1716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 1913
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->red:[Z

    .line 1717
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public aboveMessageView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputaboveMessageView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    return-object p0
.end method

.method public addBottomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputbottomView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    return-object p0
.end method

.method public create()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method protected createAlertDialog(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 1737
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fgetdismissRunnable(Lorg/telegram/ui/ActionBar/AlertDialog;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public makeCustomMaxHeight()Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 2

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputcustomMaxHeight(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-object p0
.end method

.method public makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 3

    neg-int p1, p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 1916
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->red:[Z

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 1917
    aput-boolean v0, v1, p1

    :cond_0
    return-object p0
.end method

.method public notDrawBackgroundOnTopView(Z)V
    .locals 1

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputnotDrawBackgroundOnTopView(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    .line 1959
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputblurredBackground(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-void
.end method

.method public overrideDismissListener(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputoverridenDissmissListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/Utilities$Callback;)V

    return-object p0
.end method

.method public setAdditionalHorizontalPadding(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputadditioanalHorizontalPadding(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public setButtonsVertical(Z)V
    .locals 1

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputverticalButtons(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-void
.end method

.method public setCheckFocusable(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1756
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputcheckFocusable(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-object p0
.end method

.method public setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1900
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputcustomViewOffset(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputdialogButtonColorKey(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public setDimAlpha(F)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputdimAlpha(Lorg/telegram/ui/ActionBar/AlertDialog;F)V

    return-object p0
.end method

.method public setDimEnabled(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1948
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputdimEnabled(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1750
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputitems(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)V

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputonClickListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1761
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputitems(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)V

    .line 1762
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputitemIcons(Lorg/telegram/ui/ActionBar/AlertDialog;[I)V

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputonClickListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputmessage(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setMessageTextViewClickable(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputmessageTextViewClickable(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputnegativeButtonText(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V

    .line 1879
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputnegativeButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputneutralButtonText(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V

    .line 1885
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputneutralButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    return-object p0
.end method

.method public setOnBackButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1890
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputonBackButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1939
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1967
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputonDismissListener(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputpositiveButtonText(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V

    .line 1873
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputpositiveButtonListener(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1798
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputsubtitle(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtitle(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1820
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTopAnimation(IIZILjava/util/Map;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1824
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopAnimationId(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1825
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopAnimationSize(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1826
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopAnimationAutoRepeat(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    .line 1827
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopBackgroundColor(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1828
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p5}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopAnimationLayerColors(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/util/Map;)V

    return-object p0
.end method

.method public setTopAnimationIsNew(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopAnimationIsNew(Lorg/telegram/ui/ActionBar/AlertDialog;Z)V

    return-object p0
.end method

.method public setTopImage(II)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1804
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopResId(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    .line 1805
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopBackgroundColor(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public setTopImage(Landroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopDrawable(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/graphics/drawable/Drawable;)V

    .line 1843
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopBackgroundColor(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public setTopView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1810
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputtopView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    return-object p0
.end method

.method public setTopViewAspectRatio(F)V
    .locals 1

    .line 1944
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputaspectRatio(Lorg/telegram/ui/ActionBar/AlertDialog;F)V

    return-void
.end method

.method public setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    const/4 v0, -0x2

    .line 1768
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setView(Landroid/view/View;I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputcustomView(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)V

    .line 1773
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputcustomViewHeight(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public setWidth(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    .line 1778
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->-$$Nest$fputcustomWidth(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-object p0
.end method

.method public show()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v0, 0x0

    .line 1924
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->red:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1925
    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 1926
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1928
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1931
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method
