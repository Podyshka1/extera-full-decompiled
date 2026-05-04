.class public Lorg/telegram/ui/Components/GroupCallPipAlertView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field currentAccount:I

.field cx:F

.field cy:F

.field groupInfoContainer:Landroid/widget/FrameLayout;

.field private invalidateGradient:Z

.field leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field linearGradient:Landroid/graphics/LinearGradient;

.field muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field muteProgress:F

.field private mutedByAdmin:Z

.field mutedByAdminProgress:F

.field paint:Landroid/graphics/Paint;

.field private position:I

.field rectF:Landroid/graphics/RectF;

.field soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

.field subtitleView:Landroid/widget/TextView;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$TYRWZUik-Ziyx5niEZ0R7yKVs08(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VbPJ3k-SbJTXMek3CeG95zxHjDM(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W0Mmh2Wm2RSUPaGN2kLCCZxC9Hk(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X4v34cFND7hrV-1ZGVnBox7YIkA(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kpe7pWk0oJPP0pwIcIkJTUcoVMY(Landroid/content/Context;)V
    .locals 0

    .line 153
    invoke-static {p0}, Lorg/telegram/ui/Components/GroupCallPip;->updateVisibility(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 73
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    .line 68
    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    .line 74
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move/from16 v2, p2

    .line 75
    iput v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    .line 77
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xea

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    new-instance v2, Lorg/telegram/ui/Components/GroupCallPipAlertView$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$1;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x41000000    # 8.0f

    .line 91
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 93
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v4, 0x42300000    # 44.0f

    .line 94
    invoke-static {v4}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 95
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v6, 0x2c

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, -0x1

    const/16 v7, 0x4c

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v5, v9, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 111
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 113
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    const/4 v8, -0x2

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    const/high16 v10, 0x41400000    # 12.0f

    .line 117
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    const/16 v10, 0x99

    invoke-static {v6, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    const/16 v12, 0x10

    const/high16 v13, 0x425c0000    # 55.0f

    const/4 v14, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->groupInfoContainer:Landroid/widget/FrameLayout;

    const/16 v15, 0xa

    const/16 v16, 0xa

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/16 v13, 0xa

    const/16 v14, 0xa

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/16 v5, 0xc

    .line 127
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setTextSize(I)V

    .line 128
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v8, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setCheckable(Z)V

    .line 135
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/16 v3, 0x26

    invoke-static {v6, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setBackgroundColor(II)V

    .line 137
    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    .line 138
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setTextSize(I)V

    .line 139
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v3, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-direct {v2, v1, v4}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;-><init>(Landroid/content/Context;F)V

    iput-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    .line 151
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setTextSize(I)V

    .line 152
    iget-object v10, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v11, Lorg/telegram/messenger/R$drawable;->calls_decline:I

    sget v2, Lorg/telegram/messenger/R$string;->VoipGroupLeave:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x1

    const v13, -0x31b5b6

    const v14, 0x3e99999a    # 0.3f

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v18}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    .line 153
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    new-instance v3, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/GroupCallPipAlertView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x44

    .line 156
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->setChildSize(I)V

    .line 157
    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/voip/VoIPButtonsLayout;->setUseStartPadding(Z)V

    .line 158
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    const/high16 v4, 0x427c0000    # 63.0f

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->leaveButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v0, v9}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    .line 163
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 98
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "voip_chat"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 100
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getAccount()I

    move-result v0

    const-string v1, "currentAccount"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    .line 140
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->shakeView()V

    .line 143
    invoke-static {}, Lcom/exteragram/messenger/utils/system/VibratorUtils;->vibrate()V

    return-void

    .line 145
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/GroupCallPipAlertView$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p2, v0, p1}, Lorg/telegram/ui/GroupCallActivity;->onLeaveClick(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private updateButtons(Z)V
    .locals 13

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 362
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 367
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 369
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    invoke-virtual {v3, v2, p1}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setChecked(ZZ)V

    if-eqz v1, :cond_3

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_bluetooth:I

    sget v1, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 374
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    sget v1, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    const/4 v9, 0x1

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 377
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_headphones:I

    sget v1, Lorg/telegram/messenger/R$string;->VoipAudioRoutingHeadset:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    goto :goto_1

    .line 379
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->soundButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_speaker:I

    sget v1, Lorg/telegram/messenger/R$string;->VoipSpeaker:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    .line 383
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    .line 384
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_unmute:I

    const/16 v0, 0x4c

    invoke-static {v2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    sget v0, Lorg/telegram/messenger/R$string;->VoipMutedByAdminShort:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v6, -0x1

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    goto :goto_5

    .line 386
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteButton:Lorg/telegram/ui/Components/voip/VoIPToggleButton;

    sget v5, Lorg/telegram/messenger/R$drawable;->calls_unmute:I

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x3e99999a    # 0.3f

    goto :goto_2

    :cond_7
    const v1, 0x3e19999a    # 0.15f

    :goto_2
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lorg/telegram/messenger/R$string;->VoipUnmute:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_4

    :cond_8
    sget v1, Lorg/telegram/messenger/R$string;->VoipMute:I

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v11

    const/4 v6, -0x1

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/ui/Components/voip/VoIPToggleButton;->setData(IIIFZLjava/lang/String;ZZ)V

    .line 388
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    :goto_6
    return-void
.end method

.method private updateMembersCount()V
    .locals 4

    .line 347
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    .line 350
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupConnecting:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->subtitleView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v2, :cond_2

    const-string v2, "ViewersWatching"

    goto :goto_0

    :cond_2
    const-string v2, "Participants"

    :goto_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 411
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    if-ne p1, p2, :cond_0

    .line 412
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateMembersCount()V

    .line 413
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result p1

    .line 415
    iget-boolean p2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eq p1, p2, :cond_0

    .line 416
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .line 276
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 277
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 278
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_f

    .line 279
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 280
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 281
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background:[I

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_0

    .line 282
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    invoke-static {v7, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v7

    aget v4, v4, v7

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_background2:[I

    if-eqz v3, :cond_1

    .line 283
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    :cond_1
    invoke-static {v5, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->getColorIndex(J)I

    move-result v5

    aget v5, v7, v5

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    .line 281
    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(II)V

    .line 285
    iget v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    if-eqz v3, :cond_2

    .line 287
    iget-object v4, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    const-string v6, "50_50"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v2, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 291
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v2

    const-string v4, " "

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_7

    .line 292
    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 293
    sget v2, Lorg/telegram/messenger/R$string;->ConferenceChat:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 295
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    .line 296
    :goto_1
    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v3, v5, :cond_5

    if-lez v3, :cond_4

    .line 298
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_4
    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    .line 301
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    :cond_5
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_6

    .line 304
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "AndOther"

    invoke-static {v6, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 309
    :cond_7
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 310
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 312
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_2

    .line 314
    :cond_9
    const-string v2, ""

    :goto_2
    if-eqz v2, :cond_a

    .line 317
    const-string v3, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 319
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateMembersCount()V

    .line 322
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 324
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 325
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->mutedByAdmin()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    .line 327
    :cond_b
    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_3

    :cond_c
    move v0, v2

    :goto_3
    iput v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    .line 328
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eqz v0, :cond_e

    :cond_d
    move v2, v3

    .line 329
    :cond_e
    iput v2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    .line 331
    :cond_f
    iget v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 332
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateButtons(Z)V

    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateButtons(Z)V

    return-void
.end method

.method public synthetic onCameraFirstFrameAvailable()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraFirstFrameAvailable(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    return-void
.end method

.method public synthetic onCameraSwitch(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onCameraSwitch(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 337
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 338
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    .line 343
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 172
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const v5, 0x3dda740e

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    .line 173
    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpl-float v9, v8, v6

    if-eqz v9, :cond_3

    add-float/2addr v8, v5

    .line 174
    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpl-float v2, v8, v6

    if-ltz v2, :cond_2

    .line 176
    iput v6, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    .line 178
    :cond_2
    iput-boolean v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    .line 180
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_5

    sub-float/2addr v2, v5

    .line 181
    iput v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_4

    .line 183
    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    .line 185
    :cond_4
    iput-boolean v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 189
    :cond_5
    :goto_2
    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdmin:Z

    if-eqz v2, :cond_7

    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpl-float v9, v8, v6

    if-eqz v9, :cond_7

    add-float/2addr v8, v5

    .line 190
    iput v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpl-float v2, v8, v6

    if-ltz v2, :cond_6

    .line 192
    iput v6, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    .line 194
    :cond_6
    iput-boolean v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_7
    if-nez v2, :cond_9

    .line 196
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_9

    sub-float/2addr v2, v5

    .line 197
    iput v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    .line 199
    iput v7, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    .line 201
    :cond_8
    iput-boolean v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 204
    :cond_9
    :goto_3
    iget-boolean v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    const/4 v5, 0x2

    if-eqz v2, :cond_d

    .line 205
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    sub-float v9, v6, v9

    invoke-static {v2, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 206
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientMuted2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertGradientUnmuted2:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    iget v10, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->muteProgress:F

    sub-float/2addr v6, v10

    invoke-static {v8, v9, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    .line 208
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    invoke-static {v2, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 209
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_overlayAlertMutedByAdmin2:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->mutedByAdminProgress:F

    invoke-static {v6, v8, v9}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    .line 211
    iput-boolean v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    .line 212
    iget v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x42700000    # 60.0f

    if-nez v3, :cond_a

    .line 213
    new-instance v10, Landroid/graphics/LinearGradient;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v11, v3

    iget v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v9

    sub-float v12, v3, v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v13, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v14, v3, v8

    filled-new-array {v2, v6}, [I

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    goto/16 :goto_4

    :cond_a
    if-ne v3, v4, :cond_b

    .line 215
    new-instance v11, Landroid/graphics/LinearGradient;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v3, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v14, v3

    iget v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v8

    sub-float v15, v3, v8

    filled-new-array {v6, v2}, [I

    move-result-object v16

    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    goto :goto_4

    :cond_b
    if-ne v3, v5, :cond_c

    .line 217
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    sub-float v13, v3, v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v14, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v3, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    filled-new-array {v2, v6}, [I

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v16, v3

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    goto :goto_4

    .line 219
    :cond_c
    new-instance v13, Landroid/graphics/LinearGradient;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v14, v3, v8

    iget v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v8

    sub-float v16, v3, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v3, v8

    int-to-float v3, v3

    filled-new-array {v6, v2}, [I

    move-result-object v18

    const/16 v19, 0x0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v15, 0x0

    move/from16 v17, v3

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v13, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    .line 222
    :cond_d
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v7, v7, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 224
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 226
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    if-nez v2, :cond_e

    .line 227
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sub-float/2addr v2, v6

    move v6, v7

    goto :goto_5

    :cond_e
    if-ne v2, v4, :cond_f

    .line 230
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    sub-float/2addr v2, v6

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_5

    :cond_f
    if-ne v2, v5, :cond_10

    .line 233
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    sub-float v6, v2, v6

    move v2, v7

    goto :goto_5

    .line 236
    :cond_10
    iget v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    sub-float v6, v2, v6

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 239
    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setPivotX(F)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 242
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 243
    iget v8, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    const/high16 v9, 0x42340000    # 45.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v11, 0x41700000    # 15.0f

    if-nez v8, :cond_11

    .line 244
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-virtual {v1, v4, v5, v6, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 245
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_6

    :cond_11
    if-ne v8, v4, :cond_12

    .line 248
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-virtual {v1, v6, v4, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 249
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 250
    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_6

    :cond_12
    if-ne v8, v5, :cond_13

    .line 252
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    invoke-virtual {v1, v4, v5, v8, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 253
    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 254
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 256
    :cond_13
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v6, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-virtual {v1, v4, v2, v5, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 257
    invoke-virtual {v1, v9, v6, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 258
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v6, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v4, v5, v7, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 263
    iget-object v2, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 266
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/high16 p1, 0x43660000    # 230.0f

    .line 271
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public synthetic onMediaStateUpdated(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onMediaStateUpdated(Lorg/telegram/messenger/voip/VoIPService$StateListener;II)V

    return-void
.end method

.method public synthetic onScreenOnChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onScreenOnChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public synthetic onSignalBarsCountChanged(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onSignalBarsCountChanged(Lorg/telegram/messenger/voip/VoIPService$StateListener;I)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lorg/telegram/ui/Components/GroupCallPipAlertView;->updateMembersCount()V

    return-void
.end method

.method public synthetic onVideoAvailableChange(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener$-CC;->$default$onVideoAvailableChange(Lorg/telegram/messenger/voip/VoIPService$StateListener;Z)V

    return-void
.end method

.method public setPosition(IFF)V
    .locals 0

    .line 402
    iput p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->position:I

    .line 403
    iput p2, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cx:F

    .line 404
    iput p3, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->cy:F

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupCallPipAlertView;->invalidateGradient:Z

    return-void
.end method
