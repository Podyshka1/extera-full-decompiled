.class public Lorg/telegram/ui/SettingsActivity$SettingCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SettingsActivity$SettingCell$Background;,
        Lorg/telegram/ui/SettingsActivity$SettingCell$Factory;
    }
.end annotation


# instance fields
.field private final iconBackground:Lorg/telegram/ui/SettingsActivity$SettingCell$Background;

.field private final iconView:Landroid/widget/ImageView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final subtitleView:Landroid/widget/TextView;

.field private final textLayout:Landroid/widget/LinearLayout;

.field private final titleView:Landroid/widget/TextView;

.field private twoLines:Z

.field private final valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 1142
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1144
    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p2, 0x0

    .line 1145
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1147
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconView:Landroid/widget/ImageView;

    .line 1148
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1149
    new-instance v0, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;

    invoke-direct {v0}, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconBackground:Lorg/telegram/ui/SettingsActivity$SettingCell$Background;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->textLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 1152
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1154
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->titleView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    .line 1155
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1156
    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->subtitleView:Landroid/widget/TextView;

    const/high16 v4, 0x41500000    # 13.0f

    .line 1159
    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v8, 0x40800000    # 4.0f

    .line 1160
    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->valueView:Landroid/widget/TextView;

    .line 1163
    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1164
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x10

    const/16 v6, 0x14

    const/4 v7, 0x0

    .line 1165
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x12

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x17

    const/16 v7, 0x14

    .line 1166
    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    const/16 v3, 0x15

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1167
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    .line 1169
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x17

    const/16 v7, 0x12

    .line 1170
    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v3, -0x2

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1171
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1173
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity$SettingCell;->updateColors()V

    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1212
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1213
    iget-boolean v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->twoLines:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1211
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public set(IIILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->titleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-nez p3, :cond_1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->subtitleView:Landroid/widget/TextView;

    if-nez p3, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconBackground:Lorg/telegram/ui/SettingsActivity$SettingCell$Background;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;->setColor(II)V

    .line 1201
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1202
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->subtitleView:Landroid/widget/TextView;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p3, p2, 0x1

    iput-boolean p3, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->twoLines:Z

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->valueView:Landroid/widget/TextView;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->valueView:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->titleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->valueView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1181
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconBackground:Lorg/telegram/ui/SettingsActivity$SettingCell$Background;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity$SettingCell$Background;->setDrawBorder(Z)V

    .line 1183
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v0

    .line 1184
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 1185
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$SettingCell;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
