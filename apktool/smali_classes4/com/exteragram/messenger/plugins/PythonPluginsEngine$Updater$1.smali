.class Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;
.super Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->checkUpdates(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private enableAutoUpdate:Z

.field final synthetic val$update:Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;


# direct methods
.method public static synthetic $r8$lambda$LVAwT8fdaBPdVclMrTghMwCeq4Y(Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->lambda$addContentAfterDoneButton$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$UkeVHmwigb4Cv_idY26Q4mqE3r8(Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->lambda$addContentBeforeDoneButton$0(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;ILcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;)V
    .locals 0

    .line 1524
    iput-object p4, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->val$update:Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;-><init>(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V

    const/4 p1, 0x0

    .line 1525
    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->enableAutoUpdate:Z

    return-void
.end method

.method private synthetic lambda$addContentAfterDoneButton$1()V
    .locals 4

    .line 1571
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v1, -0x5313213c1c0974dbL    # -2.768093653341412E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/exteragram/messenger/ExteraConfig;->sdkUpdateScheduleTimestamp:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1572
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method private synthetic lambda$addContentBeforeDoneButton$0(Lorg/telegram/ui/Components/CheckBox2;Landroid/view/View;)V
    .locals 1

    .line 1559
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1560
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->enableAutoUpdate:Z

    return-void
.end method


# virtual methods
.method protected addContentAfterDoneButton(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1570
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1$$ExternalSyntheticLambda1;-><init>(Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->addRemindLaterButton(Landroid/widget/FrameLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected addContentBeforeDoneButton(Landroid/widget/FrameLayout;)V
    .locals 14

    .line 1539
    new-instance p1, Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x15

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1540
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackgroundChecked:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 v0, 0x1

    .line 1541
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawUnchecked(Z)V

    const/4 v1, 0x0

    .line 1542
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    const/16 v2, 0xa

    .line 1543
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 1545
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1546
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 1547
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1548
    sget v0, Lorg/telegram/messenger/R$string;->EnableAutoUpdate:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x15

    const/high16 v5, 0x41a80000    # 21.0f

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1551
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1553
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1554
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 1555
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v1, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/16 v7, 0x18

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1556
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, -0x2

    const/16 v1, 0x10

    .line 1557
    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    new-instance v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1$$ExternalSyntheticLambda0;-><init>(Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;Lorg/telegram/ui/Components/CheckBox2;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x3d4ccccd    # 0.05f

    const v0, 0x3f99999a    # 1.2f

    .line 1562
    invoke-static {v3, p1, v0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;FF)V

    .line 1564
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p1

    const/16 v0, 0x8

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    iget-object p1, p0, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected getDoneButtonText()Ljava/lang/String;
    .locals 1

    .line 1529
    sget v0, Lorg/telegram/messenger/R$string;->AppUpdateNow:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 3

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x531320d91c0974dbL    # -2.768238492703635E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDone()V
    .locals 4

    .line 1578
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->enableAutoUpdate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1579
    sget-object v0, Lcom/exteragram/messenger/ExteraConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-wide v2, -0x531320ea1c0974dbL    # -2.768213621298001E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    sput-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->pluginsPySdkAutoUpdate:Z

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1580
    sget-boolean v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->notifyWhenChangeStatus:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->-$$Nest$sfgetnotifyRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1584
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->val$update:Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;

    iget-object v2, v0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2, v0, v1}, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater;->savePythonSdkArchive(Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$Document;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531321011c0974dbL    # -2.7681799717492015E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->val$update:Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, -0x5313212a1c0974dbL    # -2.768119987770907E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$1;->val$update:Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;

    iget-object v2, v2, Lcom/exteragram/messenger/plugins/PythonPluginsEngine$Updater$PythonSdkUpdateInfo;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v2, -0x5313213a1c0974dbL    # -2.7680965793891335E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1588
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public bridge synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method
