.class public abstract Lcom/exteragram/messenger/utils/ui/PopupUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$6jb6sQCYPJdYYKDI25r3PRtH-Z4(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 78
    invoke-interface {p1, p3}, Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;->onClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$82yGHJGHEfp_DRvEkaoSvyOG5NY(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 73
    invoke-interface {p1, p3}, Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;->onClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RTfkaKFFZM5qIJnQKtbp3r-qWks(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 88
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic $r8$lambda$mmJcbiSq33fgrEuatbB4zTeZu-A(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 66
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;->onClick(I)V

    return-void
.end method

.method public static showDialog([Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 37
    invoke-static/range {v0 .. v7}, Lcom/exteragram/messenger/utils/ui/PopupUtils;->showDialog([Ljava/lang/CharSequence;[ILjava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public static showDialog([Ljava/lang/CharSequence;[ILjava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 41
    invoke-static/range {v0 .. v7}, Lcom/exteragram/messenger/utils/ui/PopupUtils;->showDialog([Ljava/lang/CharSequence;[ILjava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method

.method public static showDialog([Ljava/lang/CharSequence;[ILjava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
    .locals 5

    .line 49
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p4, p6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 50
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz p7, :cond_1

    .line 52
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 54
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 p7, 0x0

    move v1, p7

    .line 55
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 56
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p4}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x40800000    # 4.0f

    .line 57
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v4, p7, v3, p7}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v3, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v4, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 60
    aget-object v3, p0, v1

    if-ne p3, v1, :cond_0

    move v4, p2

    goto :goto_1

    :cond_0
    move v4, p7

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 61
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    new-instance v3, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p5}, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 71
    new-instance p2, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0, p5}, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 76
    :cond_2
    new-instance p1, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p5}, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 81
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 83
    :cond_3
    sget p0, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public static showDialogWithoutRadio(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;)V
    .locals 8

    .line 88
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/exteragram/messenger/utils/ui/PopupUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/exteragram/messenger/utils/ui/PopupUtils;->showDialog([Ljava/lang/CharSequence;[ILjava/lang/String;ILandroid/content/Context;Lcom/exteragram/messenger/utils/ui/PopupUtils$OnItemClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    return-void
.end method
