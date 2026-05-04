.class public Lorg/telegram/ui/Components/JoinToSendSettingsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field public isJoinRequest:Z

.field public isJoinToSend:Z

.field public joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

.field public joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field public joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field public joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field public joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field public onVisibilityChanged:Ljava/lang/Runnable;

.field private toggleAnimator:Landroid/animation/ValueAnimator;

.field private toggleValue:F


# direct methods
.method public static synthetic $r8$lambda$7cBYJeaL7E_gM1cVZN2Vjwpw-F0(Lorg/telegram/ui/Components/JoinToSendSettingsView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$new$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CJV-NxNrUonNXvAhBzq3HXi4lVY(Lorg/telegram/ui/Components/JoinToSendSettingsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JXHII4rWZD7GoodKuMeYmJdCNGw(Lorg/telegram/ui/Components/JoinToSendSettingsView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$new$0(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnoOhFcnwrF6CFh-1we7oVBE76Y(Lorg/telegram/ui/Components/JoinToSendSettingsView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WLxaj9ttjeWilFCcJwCxcwfwg_I(Lorg/telegram/ui/Components/JoinToSendSettingsView;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$new$1(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZctaP8YbifINJUSyLCsQcwCUa7c(Lorg/telegram/ui/Components/JoinToSendSettingsView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$setJoinToSend$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7QmoqNSRnu7_56HW3yK6dKqlwY(Lorg/telegram/ui/Components/JoinToSendSettingsView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->lambda$new$3(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 5

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 40
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->join_to_send:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    .line 41
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->join_request:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v2, 0x14

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 46
    sget v3, Lorg/telegram/messenger/R$string;->ChannelSettingsJoinTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 51
    sget v3, Lorg/telegram/messenger/R$string;->ChannelSettingsJoinToSend:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    invoke-virtual {v1, v3, v4, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 52
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 53
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v3, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v1, p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 67
    sget v2, Lorg/telegram/messenger/R$string;->ChannelSettingsJoinRequest:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 68
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 69
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v3, :cond_3

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 70
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v0, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/16 v0, 0xc

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 81
    sget v1, Lorg/telegram/messenger/R$string;->ChannelSettingsJoinToSendInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 85
    sget p1, Lorg/telegram/messenger/R$string;->ChannelSettingsJoinRequestInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    iget-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    if-eqz p1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    iput v2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    .line 89
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0x8

    :goto_3
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->updateToggleValue(F)V

    return-void
.end method

.method private calcHeight()I
    .locals 4

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 218
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private synthetic lambda$new$0(ZZ)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinRequest(Z)V

    .line 58
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinToSend(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(ZZ)V
    .locals 1

    .line 56
    new-instance v0, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;ZZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    .line 54
    iget-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    xor-int/lit8 v0, p1, 0x1

    .line 55
    iget-boolean v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    .line 56
    new-instance v2, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;ZZ)V

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->onJoinToSendToggle(ZLjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinRequest(Z)V

    .line 61
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinToSend(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Z)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinRequest(Z)V

    return-void
.end method

.method private synthetic lambda$new$4(Z)V
    .locals 1

    .line 72
    new-instance v0, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 2

    .line 71
    iget-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    xor-int/lit8 v0, p1, 0x1

    .line 72
    new-instance v1, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;Z)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->onJoinRequestToggle(ZLjava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->setJoinRequest(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setJoinToSend$6(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->updateToggleValue(F)V

    return-void
.end method

.method private layoutChild(Landroid/view/View;II)I
    .locals 4

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 204
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 207
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 208
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v3

    .line 210
    invoke-virtual {p1, v2, p2, p3, v1}, Landroid/view/View;->layout(IIII)V

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    return p1
.end method

.method private updateToggleValue(F)V
    .locals 5

    .line 114
    iput p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 118
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 119
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 122
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public getBottomInfoMargin()F
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public onJoinRequestToggle(ZLjava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onJoinToSendToggle(ZLjava/lang/Runnable;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p4}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->layoutChild(Landroid/view/View;II)I

    move-result p1

    .line 182
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 183
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0, p2, p1, p4}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->layoutChild(Landroid/view/View;II)I

    move-result p2

    add-int/2addr p1, p2

    .line 186
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 187
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {p0, p2, p1, p4}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->layoutChild(Landroid/view/View;II)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_0

    .line 189
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p3, 0x42480000    # 50.0f

    .line 190
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    .line 191
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p5

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    .line 194
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p0, p2, p1, p4}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->layoutChild(Landroid/view/View;II)I

    .line 195
    iget-object p2, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p0, p2, p1, p4}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->layoutChild(Landroid/view/View;II)I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinHeaderCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object v6, v0

    move v8, v2

    move v10, v4

    .line 229
    iget-object v7, v6, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 230
    iget-object v7, v6, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 231
    iget-object v7, v6, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    iget-object v7, v6, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 234
    invoke-direct {p0}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->calcHeight()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v8, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 4

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    return-void
.end method

.method public setJoinRequest(Z)V
    .locals 1

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method public setJoinToSend(Z)V
    .locals 3

    .line 142
    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setDivider(Z)V

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinRequest:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 148
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 151
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleValue:F

    iget-boolean v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/JoinToSendSettingsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/JoinToSendSettingsView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/JoinToSendSettingsView$1;-><init>(Lorg/telegram/ui/Components/JoinToSendSettingsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    iget-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    if-eqz p1, :cond_2

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->onVisibilityChanged:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 169
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->toggleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public showJoinToSend(Z)V
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinToSendCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->isJoinToSend:Z

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/JoinToSendSettingsView;->joinRequestCell:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 131
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/JoinToSendSettingsView;->updateToggleValue(F)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
