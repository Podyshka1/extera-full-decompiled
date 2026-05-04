.class public Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field lensItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field public searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;


# direct methods
.method public static synthetic $r8$lambda$1hfxzJ9WqaJKJsNDDg9PEyJMRbI(Lorg/telegram/messenger/Utilities$Callback2;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4hvZAQ2RdJivJh3GSmB8iyGNGEs(Lorg/telegram/messenger/Utilities$Callback2;Landroid/view/View;)V
    .locals 1

    .line 75
    const-string p1, "https://yandex.com/images/search?rpt=imageview&url="

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7aAWDqJSz375zX9ImluknRMUk00(Lorg/telegram/messenger/Utilities$Callback2;Landroid/view/View;)V
    .locals 1

    .line 80
    const-string p1, "https://www.google.com/searchbyimage?client=app&image_url="

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I217GNeQuON34dQ202L9obOSFkQ(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method public static synthetic $r8$lambda$YaFGK7o24Zblcf-wMG1yvdo5gXY(Lorg/telegram/messenger/Utilities$Callback2;Landroid/view/View;)V
    .locals 1

    .line 90
    const-string p1, "https://tineye.com/search/?url="

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$quAkAGki38l6-4sdb-rvrsOVRo8(Lorg/telegram/messenger/Utilities$Callback2;Landroid/view/View;)V
    .locals 1

    .line 85
    const-string p1, "https://www.bing.com/images/search?view=detailv2&iss=SBI&form=SBIIDP&sbisrc=UrlPaste&q=imgurl:"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lorg/telegram/messenger/Utilities$Callback2;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/PopupSwipeBackLayout;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 10

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v3, 0x1

    .line 49
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 51
    iget-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    sget v5, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 52
    new-instance v4, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, -0x50506

    .line 53
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const v4, 0xfffffff

    .line 54
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 56
    new-instance v0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$1;-><init>(Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;Landroid/content/Context;)V

    const/high16 v5, 0x43440000    # 196.0f

    .line 62
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumWidth(I)V

    const v6, -0xe7e7e8

    .line 63
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    iget-object v7, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    .line 67
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/4 v8, -0x1

    .line 69
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x41000000    # 8.0f

    .line 70
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 71
    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v9, "Yandex"

    invoke-static {v0, v1, v9, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 75
    new-instance v9, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v9, p3}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 78
    iget-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v9, "Google"

    invoke-static {v0, v1, v9, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 80
    new-instance v9, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v9, p3}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 83
    iget-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v9, "Bing"

    invoke-static {v0, v1, v9, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 85
    new-instance v9, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v9, p3}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 88
    iget-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v9, "TinEye"

    invoke-static {v0, v1, v9, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 90
    new-instance v9, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v9, p3}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 93
    invoke-static {}, Lcom/exteragram/messenger/utils/system/SystemUtils;->isLensAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const-string v9, "Google Lens"

    invoke-static {v0, v1, v9, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->lensItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 95
    invoke-virtual {v0, p2, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 96
    new-instance p2, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda5;

    invoke-direct {p2, p3}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/Utilities$Callback2;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    .line 100
    :cond_1
    new-instance p2, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$2;

    invoke-direct {p2, p0, p1}, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper$2;-><init>(Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;Landroid/content/Context;)V

    .line 106
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 107
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    iget-object p3, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance p2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    .line 112
    sget p1, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 113
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 114
    invoke-virtual {p2, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    new-instance p3, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {p3}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 117
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    new-instance p3, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;

    invoke-direct {p3}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 118
    sget p1, Lorg/telegram/messenger/R$string;->SearchPhotoInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p0, Lcom/exteragram/messenger/components/SearchPhotoPopupWrapper;->searchSwipeBackLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method
